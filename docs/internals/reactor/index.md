# TCP Threading Modes and the Mode 2 Reactor

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/core/tcp_main.c`, `src/core/tcp_read.c`, `src/core/tcp_reactor.c`,
`src/core/tcp_reactor.h`, `src/core/tcp_conn.h`, `src/core/tcp_mtops.c`.

The core cookbook documents the settings (`tcp_main_threads`,
`tcp_reactor_threads`, `tcp_conn_wq_max`).

## The three modes

The global parameter `tcp_main_threads` sets the variable
`ksr_tcp_main_threads`; search the code for the `ksr_` name.

| Mode | Reads and writes TCP/TLS connections | Calls OpenSSL |
| --- | --- | --- |
| 0 (default) | the SIP workers; `PROC_TCP_MAIN` accepts connections and passes the file descriptors to them | every worker |
| 1 | as mode 0 | `PROC_TCP_MAIN` only; workers send their TLS calls to it (`tcp_mtops.c`) |
| 2 | a thread pool in `PROC_TCP_MAIN`; workers only process SIP messages | `PROC_TCP_MAIN` only, on its pool threads |

Mode 2 requires `tcp_async=yes` and the `TCP_ASYNC` compile flag. Its
outbound connects run on a single thread, the io_wait thread, and a blocking
connect would stall every connection, so Kamailio refuses to start without
them.

## Modes 0/1: connection ownership moves between processes

A worker does not keep a connection for its lifetime:

1. `PROC_TCP_MAIN` accepts the connection, and `send2child()` passes the
   descriptor to the least busy worker. The worker adds it to its own poll
   set and reads it.
2. Each read extends a 5 second idle timer (`TCP_CHILD_TIMEOUT`).
3. After 5 seconds without input, the worker returns the connection to
   `PROC_TCP_MAIN` (`CONN_RELEASE`), which polls it again.
4. On the next input, `PROC_TCP_MAIN` calls `send2child()` again; the
   connection may go to a different worker.

A busy connection stays with one worker. A quiet connection, such as a
registered phone between calls, changes worker each time it wakes up.

`send2child()` logs `CRITICAL: ... queue full` when a worker's socket is
full. The hand-off is retried from `send2child_q` for up to 2 s; the
connection is not dropped. Count client-visible failures before treating
this message as a regression.

## Mode 2: threads

`PROC_TCP_MAIN` runs:

- one **io_wait thread** (its main thread), which owns every socket, the
  poll set `io_h` and the local timer `tcp_main_ltimer`
- the **pool threads** (`tcp_reactor_threads`), which run read and write
  jobs

Workers receive complete messages over one shared `AF_UNIX SOCK_DGRAM`
socket: any idle worker takes the next message, as with UDP. Workers send
their writes to `PROC_TCP_MAIN` as `CONN_WRITE_REQ` commands.

`io_h` and `tcp_main_ltimer` are `static` in `tcp_main.c`. Other files reach
them only through the `tcpmain_*` wrappers, and only the io_wait thread may
call those. Each function header in `tcp_reactor.c` names the thread that
calls it: `[io_wait]`, `[pool]`, `[worker]`, `[any]` or `[init]`.

## Mode 2: the job model

The io_wait thread does not read or write connections. To hand a connection
to the pool, it **shields** the connection: it removes the connection from
`io_h` and from the timer, takes a reference for the pool, and queues a job:

| Job | Runs on | Does |
| --- | --- | --- |
| `TCP_R_READ` | pool thread | `tcp_read_req()`: read, decrypt TLS, frame, send complete messages to workers |
| `TCP_R_WRITE` | pool thread | move staged writes (`wsq`) into `wbuf_q`, encoding TLS there, and flush to the socket |
| `TCP_R_RUN` | pool thread | a task without a connection (`tcpx_task_t`, e.g. `tls.reload`) |

Rules:

- A connection has at most one read job and one write job, and the two may
  run at the same time (`F_CONN_POOL_RD`, `F_CONN_POOL_WR`). They share the
  SSL object and `wbuf_q` under `c->write_lock`.
- Each finished job returns to the io_wait thread
  (`tcp_reactor_handle_done()`). When the last job on a connection finishes,
  the io_wait thread closes the connection, queues its next write (a
  *chained* write), or unshields it.
- A read can start while a write runs, and a write while a read runs (see
  [Beside jobs](#beside-jobs-keeping-both-directions-moving)).
- When the socket is full, the io_wait thread unshields the connection and
  polls it for POLLIN and POLLOUT instead of chaining the write. POLLIN is
  re-armed in one function only, `tcp_reactor_read_rearm()`.
- Code in `PROC_TCP_MAIN` that sends data (CRLF pong, WebSocket control
  frames) stages it on `wsq` when it runs on a pool thread. Only the io_wait
  thread changes `io_h` or a connection's watch flags.

### Beside jobs: keeping both directions moving

While a connection is shielded, it is not in the poll set, so the io_wait
thread receives no events for it until its last job finishes. If each
connection ran one job at a time, a connection with traffic in both
directions (a trunk, a WebSocket gateway) would read nothing during a run of
writes and would hold its writes during a long read. The reactor therefore
starts a job for the other direction next to the running one, under the
same shield and pool reference:

- **Write beside read** (`tcp_reactor_write_beside_read()`): a write that
  arrives while only a read job runs starts a write job at once. Without
  it, the data would wait until the read finished.
- **Read beside write** (`tcp_reactor_read_beside_write()`): when the
  io_wait thread chains a write, or when a read finishes while a write
  still runs, it checks the socket with a zero-timeout `poll(POLLIN)`. If
  input is waiting, it starts a read job.

Read beside write was added to fix read starvation (`d635ea9a0d`, 2026-10).
Before the fix, `tcp_reactor_unshield_or_chain()` chained a write whenever
data was staged and did not re-arm POLLIN. Under a continuous stream of
relayed messages the connection never returned to the poll set, so
Kamailio never read it. The sequence was:

1. The peer's 200 OK replies accumulated unread in Kamailio's receive
   buffer (about 217 KB).
2. The peer blocked while sending them and stopped reading its own socket.
3. The peer's receive window closed, Kamailio's writes stalled, and the
   write queue limit closed the connection.

Local tests did not show the bug: on loopback the receiver read every
message at once, the write chain stopped often, and each stop re-armed
POLLIN.

The same check serves OpenSSL's `WANT_READ` rule: a TLS write on a new
outbound connection cannot complete until a read finishes the handshake.

The beside jobs keep the limit of one read and one write job per
connection. A beside job starts only when no job of its kind is running, and
not when a close is pending or the connection is bad. One delay remains:
input that arrives during a write job, while no read runs, waits for the
write job to end, from microseconds to a few milliseconds. Polling for
input during write jobs would remove the delay but would allow a second read
job on a shielded connection; this change waits for measurements that call
for it.

Two counters (`kamcmd cnt.grp_get_all core`) measure the beside jobs:

- `reactor_rw_overlap`: write jobs started while a read job owned the
  connection
- `reactor_writes_behind_read`: writes that arrived during a read job and
  could not start a write job; under load it should stay near 0

### FUTURE: a separate write queue

The pool has one job queue (`job_head` in `struct tcp_reactor_pool`). The
io_wait thread appends read and write jobs in arrival order, and the next
free pool thread takes the oldest job (`tcp_reactor_next_job()`). A possible
design uses two queues, one for reads and one for writes. Either the same
threads serve both under a selection policy, or some threads serve writes
only.

Reasons for it:

- **Head-of-line blocking.** A burst of read jobs (many new connections, TLS
  handshakes, large messages) delays the write jobs queued behind it. Writes
  carry the replies and relayed requests that complete transactions, so
  their latency matters more.
- **Memory.** Unread input stays in the kernel's buffers. A staged write
  occupies shared memory (`wsq`, `wbuf_q`) and counts against
  `tcp_conn_wq_max` and `tcp_wq_max`. Running writes first keeps the queues
  short and below the limits that close connections.
- **Isolation.** During a flood of reads or of new TLS connections, writes
  for established calls still get pool time.
- **Measurement.** Two queues make queue depth and waiting time per
  direction easy to count and to alert on.

Costs and risks:

- **Starvation in the other direction.** Strict priority for writes stops
  reads under a continuous stream of writes, which is the failure that the
  beside jobs fixed. The selection policy needs a limit, such as one read
  after every few writes, or a weighted share. Dedicated write threads need
  the same limit when traffic flows mostly one way.
- **TLS handshakes.** A TLS write on a new connection waits for a read to
  finish the handshake (`WANT_READ`). Reads must keep enough priority for
  handshakes to complete.
- **Thread use.** Dedicated write threads are idle when traffic is mostly
  inbound, and they leave fewer threads for reads. One pool that serves
  both queues avoids this but adds the selection policy to every job pickup.
- **Locking and wakeups.** The pool lock protects two lists, and a new job
  must wake a thread that will take its kind. The cost is small but sits on
  every job.
- **Unchanged rules.** A connection still has at most one read and one write
  job, the last job to finish still decides, and the io_wait thread still
  owns the flags. Only the start order of queued jobs changes.
- **More parameters.** Weights or a thread split become settings, and each
  setting multiplies the test matrix. For this reason the earlier
  read/write split changed from an opt-in setting to fixed behaviour; a
  separate queue should also ship as one built-in policy.

Measure before building it: per direction, the time from enqueue to start
and the queue depth, under the burst and soak tests, compared with the
single queue. The beside-job counters count overlaps, not time spent in
the queue.

## Mode 2: write path and the queue limit

```text
worker tcp_send() -> tcp_reactor_send_put() -> CONN_WRITE_REQ
io_wait: tcp_reactor_handle_write_req() -> tcp_reactor_wsq_add()   [limit check]
pool:    TCP_R_WRITE -> tls_encode() -> write through when wbuf_q is empty,
         queue the rest
```

- When nothing is queued, a message goes straight to the socket, so
  `tcp_conn_wq_max` does not limit message size in mode 2.
- The limit is checked when a write is staged, and only while the socket is
  full: data that waits for its pool job is not backpressure. Do not make
  the check unconditional; that reintroduces false "write queue full"
  closes. A slow peer that keeps the socket partly writable is limited only
  by the global `tcp_wq_max`.
- In every mode, the first message on a new outbound connection is queued
  whole until the connect completes, so it must fit in `tcp_conn_wq_max`.
- A failed write is reported as a closed connection, not as a send error:
  tm answers 408 when its timer expires, where mode 0 answers 477.

## Memory

Kamailio code allocates with `pkg_malloc` (memory private to a process) or
`shm_malloc` (memory shared between processes). It does not call `malloc`
directly.

The pkg managers `qm`, `fm` and `tlsf` keep a separate heap per process and
take no lock. Mode 2 runs several threads in `PROC_TCP_MAIN`, so
`tcp_reactor_pkg_lock_install()` adds a lock to that process's allocator
before the pool starts (`tcp_reactor_mem.c`). The `sm` pkg manager
(`-X sm`, `7eded19363`) uses the system `malloc`, which is already
thread-safe, so the lock is not installed. `sm` serves pkg memory only; shm
rejects it because system memory is private to a process.

Libraries use their own allocation. OpenSSL in modes 1/2 uses the system
allocator; in mode 0 the tls module directs it to shm.

## Timers

| Timer | Owner | Purpose |
| --- | --- | --- |
| `tcp_reader_ltimer` | each worker (modes 0/1) | the 5 s idle release to `PROC_TCP_MAIN` |
| `tcp_main_ltimer` | `PROC_TCP_MAIN` (mode 2: io_wait thread) | lifetime of the connections it holds |
| none | mode 2 pool threads | shielding removes a connection from the timer; unshielding re-arms it |

## Debugging mode 2

- Counters `reactor_rw_overlap` and `reactor_writes_behind_read`:
  `kamcmd cnt.grp_get_all core`.
- To see the reactor's decisions, attach uprobes to its own functions
  (`tcp_reactor_enqueue_job`, `tcp_reactor_stamp`, `tcp_reactor_wsq_add`)
  and kernel probes to `tcp_recvmsg` and `tcp_sendmsg`. A starved connection
  shows no read jobs while its socket's unread bytes grow. Network-level
  probes alone show only the stall, not its cause.

See also [Connections: references, changes, close](connections.md).
