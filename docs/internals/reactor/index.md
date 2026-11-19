# TCP Threading Modes and the Mode 2 Reactor

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/core/tcp_main.c`, `src/core/tcp_read.c`, `src/core/tcp_reactor.c`,
`src/core/tcp_reactor.h`, `src/core/tcp_conn.h`, `src/core/tcp_mtops.c`.

The user side of these settings is in the core cookbook (`tcp_main_threads`,
`tcp_reactor_threads`, `tcp_conn_wq_max`).

## The three modes

The global `tcp_main_threads` sets `ksr_tcp_main_threads` (note the `ksr_`
prefix when searching the code).

| Mode | Who reads and writes TCP/TLS connections | Who calls OpenSSL |
| --- | --- | --- |
| 0 (default) | the SIP workers; `PROC_TCP_MAIN` accepts and passes file descriptors to them | every worker |
| 1 | as mode 0 | `PROC_TCP_MAIN` only: workers relay TLS calls to it (`tcp_mtops.c`) |
| 2 | a thread pool inside `PROC_TCP_MAIN`; workers only process SIP messages | `PROC_TCP_MAIN` only (its pool threads) |

Mode 2 needs `tcp_async=yes` (startup fails otherwise: outbound connects run
on its single io_wait thread, and a blocking connect would stall every
connection) and the `TCP_ASYNC` compile flag.

## Modes 0/1: connection ownership moves back and forth

A connection is not handed to one worker for good:

1. `PROC_TCP_MAIN` accepts it and `send2child()` passes the descriptor to the
   least busy worker, which adds it to its own poll set and reads it.
2. Each read extends a 5 second idle timer (`TCP_CHILD_TIMEOUT`).
3. After 5 seconds without input the worker releases the connection
   (`CONN_RELEASE`); `PROC_TCP_MAIN` watches it again.
4. The next input makes `PROC_TCP_MAIN` call `send2child()` again, possibly
   to another worker.

A busy connection stays with one worker; a quiet one (a registered phone
between calls) moves on each reactivation. `CRITICAL: ... queue full` from
`send2child()` is a retried hand-off (`send2child_q`, 2 s per entry), not a
dropped connection: check client-visible failures before treating it as a
regression.

## Mode 2: threads

`PROC_TCP_MAIN` runs:

- one **io_wait thread** (its main thread): owns every socket, the poll set
  `io_h` and the local timer `tcp_main_ltimer`
- **pool threads** (`tcp_reactor_threads`): run read and write jobs

SIP workers receive complete messages over a shared `AF_UNIX SOCK_DGRAM`
socket (any worker may take the next message, as with UDP), and send their
writes to `PROC_TCP_MAIN` as `CONN_WRITE_REQ`.

`io_h` and `tcp_main_ltimer` are `static` in `tcp_main.c`; other files reach
them only through the `tcpmain_*` wrappers, which may be called from the
io_wait thread only. Each function header in `tcp_reactor.c` names its
calling thread: `[io_wait]`, `[pool]`, `[worker]`, `[any]`, `[init]`.

## Mode 2: the job model

The io_wait thread never reads or writes a connection itself. It
**shields** the connection (removes it from `io_h` and the timer, takes the
in-pool reference) and queues a job:

| Job | Runs on | Does |
| --- | --- | --- |
| `TCP_R_READ` | pool thread | `tcp_read_req()`: read, TLS decrypt, frame, send complete messages to workers |
| `TCP_R_WRITE` | pool thread | move staged writes (`wsq`) into `wbuf_q` (TLS encode there), flush to the socket |
| `TCP_R_RUN` | pool thread | a task with no connection (`tcpx_task_t`, e.g. `tls.reload`) |

Rules:

- at most one read job and one write job per connection, at the same time if
  needed (`F_CONN_POOL_RD`, `F_CONN_POOL_WR`); they share the SSL object and
  `wbuf_q` under `c->write_lock`
- a finished job returns to the io_wait thread (`tcp_reactor_handle_done()`);
  the **last job out** decides: close, chain the next write, or unshield
- **write beside read** and **read beside write**: the other direction
  starts next to a running job, so neither starves (see below)
- a full socket unshields with POLLIN|POLLOUT instead of re-chaining the
  write; POLLIN is re-armed in one place only, `tcp_reactor_read_rearm()`
- code running inside `PROC_TCP_MAIN` that sends (CRLF pong, WebSocket
  control frames) stages on `wsq` from a pool thread; only the io_wait thread
  touches `io_h` or the watch flags

### Beside jobs: keeping both directions moving

A shielded connection is out of the poll set, so the io_wait thread learns
nothing new about it until its last job finishes. With one job at a time,
that is a trap for a connection that carries traffic both ways, such as a
trunk or a WebSocket gateway: while a write chain runs, nothing reads, and
while a long read runs, staged writes wait. The reactor therefore lets the
other direction start *beside* the running job, under the same shield and
the same in-pool reference:

- **write beside read** (`tcp_reactor_write_beside_read()`): when a worker's
  write arrives while only a read job runs, the io_wait thread starts the
  write job at once instead of leaving the data staged until the read ends
- **read beside write** (`tcp_reactor_read_beside_write()`): when a write is
  chained, and when a read finishes while a write still runs, the io_wait
  thread probes the socket with a zero-timeout `poll(POLLIN)` and starts a
  read job if input is waiting

Read beside write fixes a real starvation (`d635ea9a0d`, 2026-10). Before it,
`tcp_reactor_unshield_or_chain()` chained the next write whenever data was
staged and returned without re-arming POLLIN. Under a steady stream of
relays the connection never went back to the poll set, so its input was
never read: the peer's 200 OKs piled up unread (about 217 KB), the peer
blocked in its own send and stopped reading, its window closed, and the
write queue limit finally closed the connection. On loopback the receiver
drained at once, the chain broke often and POLLIN was re-armed in the gaps,
which hid the bug in local tests. The same probe is the reactor's half of
OpenSSL's `WANT_READ` contract: a TLS write on a new outbound connection
waits for a read to complete the handshake.

The rule of at most one read job and one write job per connection still
holds: a beside job starts only when its own kind is idle, and it is skipped
when a close is pending or the connection is bad. What remains is a short
delay: input that arrives during a write job, with no read running, waits
for that job to end (microseconds to a few milliseconds). Keeping the reader
armed in the poll set during write jobs would remove it, but would let a
second read start on a shielded connection; that is left until measurements
ask for it. Two counters (`kamcmd cnt.grp_get_all core`) show the effect:
`reactor_rw_overlap` counts write jobs started while a read job owned the
connection, `reactor_writes_behind_read` counts writes that arrived during a
read job and could not start a write job beside it (near 0 under load is
the healthy value).

### FUTURE: a separate write queue

Today the pool has one job queue (`job_head` in `struct tcp_reactor_pool`):
the io_wait thread appends read and write jobs in arrival order, and any
pool thread takes the oldest (`tcp_reactor_next_job()`). A possible design
splits it into a read queue and a write queue, served by the same threads
with a pick policy, or by a set of threads reserved for writes.

Why it may be wanted:

- **head-of-line blocking**: a burst of read jobs (many connections
  arriving, TLS handshakes, large messages) delays the writes queued behind
  them. Writes carry replies and relays that complete transactions, so they
  are the latency-sensitive side.
- **memory**: unread input stays in the kernel and costs Kamailio nothing,
  while a staged write holds shared memory (`wsq`, `wbuf_q`) and counts
  against `tcp_conn_wq_max` and `tcp_wq_max`. Draining writes first keeps
  the queues short and away from the limits that close connections.
- **isolation**: under a flood of reads (or of new TLS connections), writes
  for established calls keep a share of the pool
- **visibility**: per-direction queue depth and wait time are easier to
  measure, and to alarm on, with two queues

What it would change:

- **starvation moves, it does not vanish**: strict write priority starves
  reads under sustained writes, the failure the beside jobs fixed. The pick
  policy needs a bound (for example a few writes, then a read) or a
  weighted share, and so does a reserved writer set when traffic is
  one-sided.
- **handshakes couple the directions**: a TLS write on a new connection
  waits for a read to finish the handshake (`WANT_READ`), so read priority
  cannot drop below what handshakes need
- **thread use**: reserved writer threads sit idle when traffic is mostly
  inbound, and the read side has fewer threads; one pool picking from two
  queues avoids that at the cost of a policy in the hot path
- **locking and wakeups**: two lists under the pool lock, and waking a
  thread that will take the queued kind; small, but in the hot path
- **invariants stay**: at most one read and one write job per connection,
  the last job out decides, and the io_wait thread owns the flags. The
  split changes only the order in which queued jobs start.
- **tuning surface**: weights or a thread split become parameters and
  multiply the test matrix. The earlier read/write split was unwound from an
  opt-in switch to always-on for this reason; a separate queue should land
  the same way, as one built-in policy.

Before building it, measure it: per-direction wait from enqueue to start
and queue depth under the burst and soak gates, compared with the single
queue. The beside counters above show overlap, not waiting time in the
queue.

## Mode 2: write path and the queue limit

```text
worker tcp_send() -> tcp_reactor_send_put() -> CONN_WRITE_REQ
io_wait: tcp_reactor_handle_write_req() -> tcp_reactor_wsq_add()   [limit check]
pool:    TCP_R_WRITE -> tls_encode() -> write through when wbuf_q is empty,
         queue the rest
```

- a message goes straight to the socket when nothing is queued, so
  `tcp_conn_wq_max` is not a maximum message size in mode 2
- the limit is checked when a write is staged, and only while the socket is
  full: a batch waiting for its pool flush is not backpressure. Do not make
  the check unconditional: it brings back false "write queue full" closes.
  Only the global `tcp_wq_max` bounds a slow peer that keeps the socket
  partly writable.
- the first message on a new outbound connection waits whole until the
  connect completes, in every mode, so it must fit `tcp_conn_wq_max`
- a write that fails is reported as a connection close, not a send error:
  tm answers 408 after its timer instead of 477

## Memory

Kamailio code allocates with `pkg_malloc` (memory private to a process) or
`shm_malloc` (memory shared between processes), never with `malloc`
directly.

The pkg managers (`qm`, `fm`, `tlsf`) keep their own heap per process and
take no lock; mode 2 runs several threads in `PROC_TCP_MAIN`, so
`tcp_reactor_pkg_lock_install()` wraps that process's allocator with a lock
before the pool starts (`tcp_reactor_mem.c`). The exception is the `sm` pkg
manager (`-X sm`, `7eded19363`), which is the system `malloc`: it is
thread-safe already, so the lock is not installed. `sm` backs pkg only; shm
refuses it, because system memory is private to a process.

Libraries keep their own allocation: OpenSSL in modes 1/2, for example, uses
the system allocator, while in mode 0 the tls module points it at shm.

## Timers

| Timer | Owner | Purpose |
| --- | --- | --- |
| `tcp_reader_ltimer` | each worker (modes 0/1) | the 5 s idle release to `PROC_TCP_MAIN` |
| `tcp_main_ltimer` | `PROC_TCP_MAIN` (mode 2: io_wait thread) | connection lifetime of the connections it holds |
| none | mode 2 pool threads | shield removes a connection from the timer; unshield re-arms it |

## Debugging mode 2

- counters `reactor_rw_overlap` and `reactor_writes_behind_read`:
  `kamcmd cnt.grp_get_all core`
- to see what the reactor decided, trace its own calls with uprobes
  (`tcp_reactor_enqueue_job`, `tcp_reactor_stamp`, `tcp_reactor_wsq_add`)
  next to kernel probes on `tcp_recvmsg`/`tcp_sendmsg`: a starved connection
  shows as missing read jobs while the socket's unread bytes grow; network
  level probes alone see only the stall

See also [Connections: references, changes, close](connections.md).
