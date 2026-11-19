# TCP Connections: References, Changes and Close

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/core/tcp_conn.h`, `src/core/tcp_conn_api.h`, `src/core/tcp_conn_api.c`,
`src/core/tcp_main.c`, `src/core/tcp_reactor.c`.

## Reference counting: who frees, with which call

| Call | Use | Notes |
| --- | --- | --- |
| `tcpconn_get()` | any process; takes a reference | |
| `tcpconn_put()` | `atomic_dec_and_test()`; returns 1 when the caller dropped the last reference | the caller must free the connection on 1, or it leaks |
| `tcpconn_chld_put()` | release in a worker | frees at zero. In modes 1/2 it passes a TLS/WSS connection to `PROC_TCP_MAIN` (`tcpconn_free_in_main`); otherwise it calls `_tcpconn_free()`. It aborts if the connection still looks open. |
| `tcpconn_put_destroy()` | teardown in `PROC_TCP_MAIN` | closes the descriptor and sets `F_CONN_FD_CLOSED` before it drops its reference; a worker's last release is safe after that |
| `tcpconn_destroy()` | `PROC_TCP_MAIN`, at reference count zero | if the descriptor is still in the poll set, which only a reference bug causes, it logs CRITICAL and, on the io_wait thread, removes the descriptor first |

Rule: a worker that takes a reference with `tcpconn_get()` releases it with
`tcpconn_chld_put()`.

History: since 2007 the last holder of a reference frees the connection, but
`tcpconn_chld_put()` remained private to `tcp_main.c`. Modules (tls,
websocket, tcpops, msrp, outbound, registrar, usrloc and others) called
`tcpconn_put()` and ignored its result, so their last release leaked the
connection. 6.2 exported `tcpconn_chld_put()` and fixed about a hundred call
sites. The check in `tcpconn_destroy()` exists because a reference bug that
freed a connection still in the poll set made every later connection on the
same descriptor number fail until restart.

A close request passes its reference to `PROC_TCP_MAIN` in the `CONN_EOF`
command. If sending the command fails, the requester releases the reference
itself. Modules get both steps from `tcpconn_ctrl()` (below).

## Mode 2: `c->flags` has one writer

In mode 2 only the io_wait thread writes `c->flags`. Other code asks the
io_wait thread to change a flag, through a channel that already exists:

| Code outside io_wait | Request | io_wait then |
| --- | --- | --- |
| a close from a worker or the TCP timer scan (`tcpconn_ctrl()` with `TCPCONN_CTRL_CLOSE` or `_MARK_BAD`) | `CONN_EOF` | closes the connection, or marks it to close if a pool job owns it |
| end of file in TLS encode (pool write job) | job result `resp = -1` | closes the connection when the job completes |

`c->flags |= X` reads, modifies and writes the whole word, and the io_wait
thread rewrites the word on every shield and unshield. A write from another
thread can therefore lose its own change or undo the io_wait thread's.
Tests showed both failures: a connection that stayed marked as owned by the
pool, so it ignored input or never finished closing, and a flag cleared
while a read job ran. Atomic operations on one side do not help, because the
io_wait thread's writes are plain. Code outside the io_wait thread that needs
a flag changed calls `tcpconn_ctrl()`, sends a command, or returns the
change in a job result.

Pool jobs may change `c->state`, the read state `c->req` (while the read job
owns it) and the buffers under `c->write_lock`.

In modes 0/1 this rule does not apply: the connection's current owner, the
reading worker or `PROC_TCP_MAIN`, changes the flags.

## Changing a connection from a module: `tcpconn_ctrl()`

Added in 6.2 (`686f03b219`, `cd76b0c7bd`).

`struct tcp_connection` is public and in shared memory, so a module can
access every field. Reading a field is safe. Writing one is not: the owner
of a field depends on the mode (in modes 0/1 the reading worker or
`PROC_TCP_MAIN`; in mode 2 the io_wait thread for the flags, the timer and
the socket), and a write from any other process or thread races with the
owner. Before 6.2, tcpops, usrloc, websocket, `tls.kill` and the core
message-timeout scan wrote fields directly, each with its own handling of
mode 2, or none.

Rules:

- **Read** fields directly (`state`, `id`, `rcv`, `type` and others).
- **Change** a connection by its id with `tcpconn_ctrl(conid, cmd, ...)`,
  which works like `fcntl()`: the core applies the change in the owning
  process or thread.
- **Transport code** that runs as the connection's owner (the read and write
  hooks of tls, tls_wolfssl and websocket) writes fields directly.

Commands (`tcp_conn_api.h`):

| Command | Argument | Effect | Modes 0/1 | Mode 2 |
| --- | --- | --- | --- | --- |
| `TCPCONN_CTRL_CLOSE` | `int` close reason (`enum tcp_closed_reason`, 0 for none) | close after the pending writes; the `tcp:closed`, `tcp:timeout` and `tcp:reset` events report the reason | sets `SND_F_CON_CLOSE` and `F_CONN_FORCE_EOF`, sends `CONN_EOF` | sends `CONN_EOF`; io_wait closes the connection, or marks it to close while a job owns it |
| `TCPCONN_CTRL_SET_LIFETIME` | `unsigned int` seconds | set the idle lifetime | sets `lifetime` and `timeout` | io_wait task (`tcp_reactor_set_lifetime()`) |
| `TCPCONN_CTRL_SET_KEEPALIVE` | `struct tcpconn_keepalive *` (`on`, `idle`, `cnt`, `intvl`) | enable or disable TCP keepalive | `setsockopt()` on the reader's own descriptor, or on a copy from `PROC_TCP_MAIN` (`CONN_GET_FD`) | io_wait task on the socket |
| `TCPCONN_CTRL_SET_FLAGS` | `unsigned int` flags; only `F_CONN_CLOSE_EV` is allowed | set the flags | sets them in the caller | io_wait task |
| `TCPCONN_CTRL_MARK_BAD` | none | close now and drop queued data | sets the send flag under `write_lock`, the bad state and the timeout, then sends `CONN_EOF` | sends `CONN_EOF`; a pool job on its own connection marks it, and the job's completion closes it |

Return codes: `1` for success, `-1` for failure, `TCPCONN_API_NOCONN` (`-2`)
when no connection has the id. A connection that is already closed returns
`-2`, which is often not an error for the caller.

Calling it:

- The caller passes only the id. `tcpconn_ctrl()` takes and releases its own
  reference; `CLOSE` and `MARK_BAD` pass it to `PROC_TCP_MAIN` with
  `CONN_EOF`.
- Call it from a SIP worker, a timer or RPC process, or the io_wait thread.
  In mode 2 the setting commands run as a task on the io_wait thread
  (`KSR_TCPX_F_IOWAIT`), and the caller waits for the result.
- On a mode 2 pool thread the setting commands return `-1`, because the
  io_wait thread owns what they change. `MARK_BAD` works there for the job's
  own connection.

Callers: tcpops (keepalive, lifetime, close, the close event flag), usrloc
`close_connection()`, websocket and `tls.kill` (`MARK_BAD`), and the core
message-timeout scan (`CLOSE` with `TCP_CLOSED_TIMEOUT`).

### Adding a command

If a module needs a change that no command covers, add a command; do not
write the field. In `tcp_conn_api.h`, add the command and its argument to
`enum tcpconn_ctrl_cmd` and describe it in the comment above. In
`tcp_conn_api.c`, add a `tcpconn_api_*()` function and a case in
`tcpconn_ctrl()`. The function:

- returns `-1` on a pool thread (`tcpconn_api_pool_refuse()`) if it changes
  the flags, the timer or the socket
- looks up the connection by id (`tcpconn_get()`) and returns
  `TCPCONN_API_NOCONN` if none exists
- in modes 0/1, applies the change in the calling process; a socket option
  needs the descriptor, either the reader's own or one from
  `tcpconn_api_get_fd()`
- in mode 2, defines a `TCPCONN_OP_*` that `tcpconn_api_task_exec()` applies
  on the io_wait thread (sent with `tcpconn_api_run()`), or uses a command
  that `PROC_TCP_MAIN` already handles, such as `CONN_EOF`
- releases its reference with `tcpconn_chld_put()`, unless a command carries
  the reference to `PROC_TCP_MAIN`

Add a flag to `TCPCONN_API_FLAGS` only if setting it from outside the owner
is safe in modes 0/1.

## Close after send (`SND_F_CON_CLOSE`)

A send with `SND_F_CON_CLOSE` closes the connection after its data is
written, and `tcp_send()` no longer reuses the connection.

Sources of the flag: `set_reply_close()` and `set_forward_close()` (and
their KEMI versions), `sl`, tcpops `tcp_close_connection_id()`, the
read-timeout path in `tcp_timer_check_connections()`, and websocket (the
reply to a peer's CLOSE frame, `wsconn_close_now()`).

| Mode | Message written in full | Message queued (socket full) |
| --- | --- | --- |
| 0 / 1 | `tcpconn_do_send()` returns `CONN_EOF` | the POLLOUT handler closes the connection when the queue is empty |
| 2 | the `TCP_R_WRITE` job returns `resp < 0` after writing everything | the POLLOUT handler |

TLS and WSS: `tls_encode()` clears the flag on every chunk except the last,
and while data waits for the handshake, so read the flag from each chunk's
send flags. WebSocket sends carry it in `ws_event_info_t.send_flags`.

## Mode 2: running code in `PROC_TCP_MAIN` (`CONN_TCPX_TASK_REQ`)

A process that needs code run in `PROC_TCP_MAIN` (for example `tls.reload`
from an RPC worker) sends a `tcpx_task_t` in shared memory over its
`unix_tcp_sock`, then blocks in `ksr_tcpx_task_result_recv()`.
`PROC_TCP_MAIN` runs the task as a `TCP_R_RUN` pool job, or on the io_wait
thread if the task has `KSR_TCPX_F_IOWAIT` (the `tcpconn_ctrl()` setting
commands), and sends the result to the requester's process index.

The wait has no timeout, by design. A caller that stopped waiting would free
the task while a pool thread might still run it, and the late reply would
arrive during the caller's next exchange. A timeout needs a
reference-counted task, or a cancel flag plus draining of late replies.
