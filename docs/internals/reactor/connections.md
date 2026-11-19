# TCP Connections: References, Changes and Close

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/core/tcp_conn.h`, `src/core/tcp_conn_api.h`, `src/core/tcp_conn_api.c`,
`src/core/tcp_main.c`, `src/core/tcp_reactor.c`.

## Reference counting: who frees, with which call

| Call | Use | Notes |
| --- | --- | --- |
| `tcpconn_get()` | any process; takes a reference | |
| `tcpconn_put()` | `atomic_dec_and_test()`; returns whether the caller dropped the last reference | the caller must act on the result, or the connection leaks |
| `tcpconn_chld_put()` | release in a worker | frees at zero: in modes 1/2 a TLS/WSS connection is handed to `PROC_TCP_MAIN` (`tcpconn_free_in_main`), else `_tcpconn_free()`; aborts if the connection still looks open |
| `tcpconn_put_destroy()` | `PROC_TCP_MAIN` teardown | closes the descriptor and sets `F_CONN_FD_CLOSED` before dropping its reference, which makes a worker's last release safe |
| `tcpconn_destroy()` | `PROC_TCP_MAIN`, reference count zero | if the descriptor is still watched (only a reference bug gets here) it logs CRITICAL and, on the io_wait thread, removes the watch first |

Rule: a reference taken in a worker with `tcpconn_get()` is released with
`tcpconn_chld_put()`.

History: since 2007 the last holder frees a connection, but
`tcpconn_chld_put()` stayed private to `tcp_main.c`, so modules (tls,
websocket, tcpops, msrp, outbound, registrar, usrloc, ...) used plain
`tcpconn_put()` and ignored its result. The 6.2 work exported it and fixed
about a hundred call sites; a refcount bug that destroys a watched connection
used to make every later connection on that descriptor number fail until
restart, hence the net in `tcpconn_destroy()`.

A close request hands its reference to `PROC_TCP_MAIN` inside `CONN_EOF`,
and releases it itself if that send fails; `tcpconn_ctrl()` (below) does
both for modules.

## Mode 2: `c->flags` has one writer

Only the io_wait thread writes `c->flags`. Everything else reports through a
channel it already uses, and the io_wait thread changes the flags:

| Outside writer | Message to io_wait | io_wait then |
| --- | --- | --- |
| a close from a worker or the TCP timer scan (`tcpconn_ctrl()` `TCPCONN_CTRL_CLOSE` / `_MARK_BAD`) | `CONN_EOF` | closes the connection, or marks it to close when a pool job owns it |
| TLS encode EOF (pool write job) | the job result `resp = -1` | closes at the job completion |

`c->flags |= X` is a plain read-modify-write, and the io_wait thread rewrites
the word on every shield/unshield, so an outside write can be lost or undo
the io_wait thread's own update. Seen in testing: a connection stuck as
"pool owned" (deaf to input, or a close that never completes), or a flag
cleared under a running read job. Atomics on one side do not help. New code
outside the io_wait thread that needs a flag changed uses `tcpconn_ctrl()`,
sends a command, or returns it in a job result.

Pool jobs may change `c->state`, the read state `c->req` (under the read
job's ownership) and the buffers under `c->write_lock`.

Modes 0/1 are not covered by this rule: there the connection's owner (the
reading worker or `PROC_TCP_MAIN`) changes it.

## Changing a connection from a module: `tcpconn_ctrl()`

Added in 6.2 (`686f03b219`, `cd76b0c7bd`).

`struct tcp_connection` is public and lives in shared memory, so any module
can reach every field. Reading is fine. Writing is not: which process or
thread owns a field depends on the mode (the reading worker or
`PROC_TCP_MAIN` in modes 0/1, the io_wait thread for the flags, the timer and
the socket in mode 2), and a write from anywhere else races the owner.
Before 6.2 tcpops, usrloc, websocket, `tls.kill` and the core message-timeout
scan each wrote fields directly, each with its own handling of mode 2 or
none.

The rules:

- **read** fields directly (`state`, `id`, `rcv`, `type`, ...)
- **change** a connection by its id with `tcpconn_ctrl(conid, cmd, ...)`,
  fcntl-style: the core applies the change where the owner is
- **transport code** that runs as the connection's owner (the tls,
  tls_wolfssl and websocket read/write hooks) keeps direct access

Commands (`tcp_conn_api.h`):

| Command | Argument | Effect | Modes 0/1 | Mode 2 |
| --- | --- | --- | --- | --- |
| `TCPCONN_CTRL_CLOSE` | `int` close reason (`enum tcp_closed_reason`, 0 none) | close after the pending writes; the `tcp:closed` / `tcp:timeout` / `tcp:reset` events report the reason | sets `SND_F_CON_CLOSE` and `F_CONN_FORCE_EOF`, sends `CONN_EOF` | sends `CONN_EOF`; io_wait closes it, or marks it to close while a job owns it |
| `TCPCONN_CTRL_SET_LIFETIME` | `unsigned int` seconds | idle lifetime | sets `lifetime` and `timeout` | io_wait task (`tcp_reactor_set_lifetime()`) |
| `TCPCONN_CTRL_SET_KEEPALIVE` | `struct tcpconn_keepalive *` (`on`, `idle`, `cnt`, `intvl`) | TCP keepalive on or off | `setsockopt()` on the reader's own descriptor, or on a copy fetched from `PROC_TCP_MAIN` (`CONN_GET_FD`) | io_wait task on the socket |
| `TCPCONN_CTRL_SET_FLAGS` | `unsigned int` flags; allowed: `F_CONN_CLOSE_EV` | OR the flags in | direct | io_wait task |
| `TCPCONN_CTRL_MARK_BAD` | none | close now; data still queued is dropped | marks it bad (send flag under `write_lock`, state, timeout), sends `CONN_EOF` | sends `CONN_EOF`; from a pool job on its own connection it marks it and the job's completion closes it |

Return codes: `1` success, `-1` failure, `TCPCONN_API_NOCONN` (`-2`) when no
connection has that id (already closed: often not an error for the caller).

Calling it:

- the caller needs only the id: `tcpconn_ctrl()` takes and releases its own
  reference (`CLOSE` and `MARK_BAD` hand it to `PROC_TCP_MAIN` with
  `CONN_EOF`)
- call it from a SIP worker, a timer or RPC process, or the io_wait thread.
  In mode 2 the setters run as an io_wait task (`KSR_TCPX_F_IOWAIT`) and the
  caller waits for the result
- on a mode 2 pool thread the setters return `-1`: the io_wait thread owns
  what they change. `MARK_BAD` works there, for the job's own connection

Users: tcpops (keepalive, lifetime, close, the close event flag), usrloc
`close_connection()`, websocket and `tls.kill` (`MARK_BAD`), the core
message-timeout scan (`CLOSE` with `TCP_CLOSED_TIMEOUT`).

### Adding a command

When a module needs a new kind of change, add it here instead of writing the
field. In `tcp_conn_api.h`, add the command and its argument to
`enum tcpconn_ctrl_cmd`, with a line in the comment above it. In
`tcp_conn_api.c`, add a `tcpconn_api_*()` function and a case in
`tcpconn_ctrl()`. The function:

- refuses on a pool thread (`tcpconn_api_pool_refuse()`) if it changes the
  flags, the timer or the socket
- looks the connection up by id (`tcpconn_get()`) and returns
  `TCPCONN_API_NOCONN` when it is gone
- in modes 0/1, applies the change in the calling process (a socket option
  needs the descriptor: the reader's own, or `tcpconn_api_get_fd()`)
- in mode 2, uses a new `TCPCONN_OP_*` handled in `tcpconn_api_task_exec()`
  on the io_wait thread (`tcpconn_api_run()`), or a command `PROC_TCP_MAIN`
  already handles (`CONN_EOF`)
- releases the reference with `tcpconn_chld_put()`, unless it travels with
  a command

Widen `TCPCONN_API_FLAGS` only for a flag that is safe to set from outside
the owner in modes 0/1.

## Close after send (`SND_F_CON_CLOSE`)

A send with `SND_F_CON_CLOSE` closes the connection once its data is
written; `tcp_send()` then skips the connection for reuse.

Producers: `set_reply_close()` / `set_forward_close()` (and their KEMI
versions), `sl`, tcpops `tcp_close_connection_id()`, the read-timeout path in
`tcp_timer_check_connections()`, and websocket (the reply to a peer's CLOSE
frame, `wsconn_close_now()`).

| Mode | Message written in full | Message queued (socket full) |
| --- | --- | --- |
| 0 / 1 | `tcpconn_do_send()` returns `CONN_EOF` | the POLLOUT drain closes when the queue empties |
| 2 | the `TCP_R_WRITE` job returns `resp < 0` after writing everything | the POLLOUT drain |

TLS and WSS: `tls_encode()` clears the flag on every chunk but the last (and
while data waits for the handshake), so take it from the per-chunk send
flags. WebSocket sends carry it in `ws_event_info_t.send_flags`.

## Mode 2: running code in `PROC_TCP_MAIN` (`CONN_TCPX_TASK_REQ`)

A process that needs a task run in `PROC_TCP_MAIN` (for example `tls.reload`
from an RPC worker) sends a shm `tcpx_task_t` over its `unix_tcp_sock` and
blocks in `ksr_tcpx_task_result_recv()`. `PROC_TCP_MAIN` runs it as a
`TCP_R_RUN` pool job, or on the io_wait thread when the task has
`KSR_TCPX_F_IOWAIT` (the `tcpconn_ctrl()` setters), and replies to the
requester's process index.

The wait has no timeout on purpose: a caller that gave up would free the
task while a pool thread may still run it, and a late reply would confuse
the next exchange. A timeout needs a reference-counted task or a cancel flag
plus a drain.
