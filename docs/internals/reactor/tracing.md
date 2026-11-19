# Tracing the Reactor: How the Read Starvation Was Found

Last checked: `60d373b604` (6.2.0-dev); script tested on AlmaLinux 10
(kernel 6.12), bpftrace 0.26

Source: `src/core/tcp_reactor.c` (`tcp_reactor_stamp()`,
`tcp_reactor_enqueue_job()`, `tcp_reactor_dispatch_send()`,
`tcp_reactor_wsq_add()`).

This page shows how to trace one mode 2 connection with bpftrace, and how
that trace found the read starvation that the
[beside jobs](index.md#beside-jobs-keeping-both-directions-moving) fix.

## The problem

In October 2026 a burst test lost connections in mode 2: Kamailio relayed
800 messages of 8 KB over TLS to a receiver, from 4 senders, with a write
queue limit of 256 KiB. Some runs closed the connection with "write queue
full".

Kernel-side tracing came first: queueing disciplines, virtio, ACK timing.
It showed the connection stalling and pointed at the network, which was
wrong. Probes at the network level see that traffic stops, not why.

The cause became visible when the trace followed the reactor's own
decisions: which jobs the io_wait thread queued for the connection, and
which it did not.

## The script

The script traces one connection. It combines uprobes on four reactor
functions with kernel probes on the connection's socket:

- the uprobes report the jobs queued and run for the connection, waits on
  the worker dispatch socket, and refused writes
- the kernel probes report each read and write by a pool thread, with the
  socket's unread and unsent bytes and its windows, plus a 1 ms sample while
  the socket holds data

It selects the connection by Kamailio's local port and a range of peer
ports, and only from pool threads (thread names `tcpr-pool-N`).

```c
// reactor-conn.bt: trace one mode 2 TCP/TLS connection, reactor and kernel side
// usage: bpftrace reactor-conn.bt <kamailio binary> <local port> <peer port min> <peer port max>
// output, one line per event (timestamps in microseconds):
//   NEW  the traced connection (first socket seen with these ports)
//   EQ   io_wait queued a job for it (op 1 = read, 2 = write)
//   J+   a pool job started on it, J- the job ended (op as above)
//   RD   a pool thread reads the socket: unread bytes, receive window
//   WR   a pool thread wrote to the socket: result, unsent bytes, send window
//   DW   sending a message to the workers waited >= 200 us
//   QF   a write was refused: write queue full
//   ST   every 1 ms while the socket holds data: unread, unsent, windows
// the uprobes compare pointers only and never read kamailio memory

BEGIN { @rsk = (uint64)0; @rconn = (uint64)0; }

uprobe:$1:tcp_reactor_stamp
{
    @cur[tid] = arg0;
    if (arg0 == @rconn) {
        printf("%llu %s J%s op=%d\n", nsecs / 1000, comm, arg2 ? "+" : "-", arg1);
    }
}

uprobe:$1:tcp_reactor_enqueue_job
{
    if (arg0 == @rconn) { printf("%llu %s EQ op=%d\n", nsecs / 1000, comm, arg1); }
}

uprobe:$1:tcp_reactor_dispatch_send { @ds[tid] = (int64)(nsecs / 1000); }
uretprobe:$1:tcp_reactor_dispatch_send
/@ds[tid]/
{
    $d = (int64)(nsecs / 1000) - @ds[tid];
    if ($d >= 200 && @cur[tid] == @rconn) {
        printf("%llu %s DW %lldus ret=%d\n", nsecs / 1000, comm, $d, retval);
    }
    $ok = delete(@ds, tid);
}

uprobe:$1:tcp_reactor_wsq_add { @wq[tid] = arg0; }
uretprobe:$1:tcp_reactor_wsq_add
/@wq[tid]/
{
    if ((int32)retval < 0) {
        printf("%llu %s QF traced=%d\n", nsecs / 1000, comm, @wq[tid] == @rconn);
    }
    $ok = delete(@wq, tid);
}

fentry:tcp_recvmsg
/strncmp(comm, "tcpr-", 5) == 0 && args.sk->__sk_common.skc_num == $2/
{
    $dp = bswap(args.sk->__sk_common.skc_dport);
    if ($dp >= $3 && $dp <= $4) {
        $tp = (struct tcp_sock *)args.sk;
        if ((uint64)args.sk != @rsk) {
            @rsk = (uint64)args.sk;
            printf("%llu NEW peer port=%d\n", nsecs / 1000, $dp);
        }
        @rconn = @cur[tid];
        printf("%llu %s RD unread=%u rcv_wnd=%u\n", nsecs / 1000, comm,
            $tp->rcv_nxt - $tp->copied_seq, $tp->rcv_wnd);
    }
}

fentry:tcp_sendmsg { @snd[tid] = (uint64)args.sk; }
fexit:tcp_sendmsg
/@snd[tid] != 0/
{
    $sk = (struct sock *)@snd[tid];
    $ok = delete(@snd, tid);
    if (strncmp(comm, "tcpr-", 5) == 0 && $sk->__sk_common.skc_num == $2) {
        $dp = bswap($sk->__sk_common.skc_dport);
        if ($dp >= $3 && $dp <= $4) {
            $tp = (struct tcp_sock *)$sk;
            if ((uint64)$sk != @rsk) {
                @rsk = (uint64)$sk;
                printf("%llu NEW peer port=%d\n", nsecs / 1000, $dp);
            }
            @rconn = @cur[tid];
            printf("%llu %s WR ret=%d unsent=%u snd_wnd=%u\n", nsecs / 1000,
                comm, (int32)retval, $tp->write_seq - $tp->snd_nxt,
                $tp->snd_wnd);
        }
    }
}

interval:ms:1
/@rsk != 0/
{
    $tp = (struct tcp_sock *)@rsk;
    $u = $tp->rcv_nxt - $tp->copied_seq;
    $ns = $tp->write_seq - $tp->snd_nxt;
    if ($u > 0 || $ns > 0) {
        printf("%llu ST unread=%u unsent=%u snd_wnd=%u rcv_wnd=%u\n",
            nsecs / 1000, $u, $ns, $tp->snd_wnd, $tp->rcv_wnd);
    }
}

END { clear(@cur); clear(@ds); clear(@wq); clear(@snd); clear(@rsk); clear(@rconn); }
```

Run it as root, with the binary of the running Kamailio and the ports of
the connection to trace, for example a TLS peer on Kamailio's port 5061
with peer ports 20000 to 29999:

```text
bpftrace reactor-conn.bt /usr/local/kamailio/sbin/kamailio 5061 20000 29999
```

## Reading the output

One OPTIONS request over a new TLS connection, with the 200 reply:

```text
213834304189 NEW peer port=59864
213834304202 tcpr-pool-6 RD unread=1562 rcv_wnd=62720
213834304409 tcpr-pool-6 RD unread=1562 rcv_wnd=62720
213834308302 tcpr-pool-6 WR ret=3528 unsent=0 snd_wnd=65536
213834308402 tcpr-pool-6 J- op=1
213834310447 kamailio EQ op=1
213834310480 tcpr-pool-7 J+ op=1
213834310509 tcpr-pool-7 RD unread=110 rcv_wnd=62720
213834311034 tcpr-pool-7 WR ret=574 unsent=0 snd_wnd=71680
213834311051 tcpr-pool-7 J- op=1
213834311087 kamailio EQ op=1
213834311104 tcpr-pool-7 J+ op=1
213834311109 tcpr-pool-7 RD unread=291 rcv_wnd=62336
213834311184 tcpr-pool-7 J- op=1
213834311901 kamailio EQ op=2
213834311951 tcpr-pool-0 J+ op=2
213834312056 tcpr-pool-0 WR ret=372 unsent=0 snd_wnd=71680
213834312062 tcpr-pool-0 J- op=2
```

- The script identifies the connection at its first read (`NEW`), so the
  start of the first job is missing.
- During the TLS handshake the read job also writes (`WR ret=3528`):
  Kamailio runs the server side of the handshake in the read job, which
  sends the server's handshake messages.
- The io_wait thread (`kamailio`) queues each job (`EQ`), and any pool
  thread runs it (`tcpr-pool-7`, then `tcpr-pool-0`).
- The 200 reply comes from a worker and runs as a write job (`EQ op=2`,
  `J+ op=2`, `WR`, `J-`).

In a healthy busy connection, `EQ op=1` and `EQ op=2` lines alternate or
overlap, and `ST unread` stays small.

## The failing run

Starvation shows as missing lines. The script adds no counters; the counts
below come from counting lines in the output of a failing run and of a
passing run.

| | Passing run | Failing run |
| --- | --- | --- |
| read jobs queued during the burst (`EQ op=1`) | 45 | 0 |
| write jobs (`J- op=2`), each followed by the next `EQ op=2` within about 20 us | not counted | 89 |
| unread bytes on Kamailio's socket (`ST unread`) | small | about 217 KB, growing |
| Kamailio's send window (`snd_wnd`) | open | near 0 |
| unsent bytes (`unsent`) | small | about 480 KB |
| refused writes (`QF`) | none | yes, then the connection closed |
| dispatch waits (`DW`) | none | none |

The receiver's 200 OK replies piled up in Kamailio's socket because no read
job ran. The receiver blocked while sending them and stopped reading its own
socket; its window closed, and Kamailio's write jobs hit `EAGAIN`. The
io_wait thread chained a new write job about every 100 us until the write
queue limit refused data (`QF`) and closed the connection. `DW` stayed
empty: the workers played no part.

The cause was in `tcp_reactor_unshield_or_chain()`: it chained a write job
whenever data was staged and did not re-arm POLLIN, so the connection never
returned to the poll set. The fix, `d635ea9a0d`, added read beside write and
polls for POLLOUT instead of chaining writes on a full socket. After it, the
same trace showed 8835 read jobs and 5 writes that hit `EAGAIN`, and the
TLS test with the 256 KiB limit passed 19 of 20 runs instead of 13 of 20.

## Limits

- **Root and recent tools.** The script needs root and a kernel with BTF.
  It was tested with bpftrace 0.26; older versions do not return a value
  from `delete()`, so remove `$ok =` there.
- **Inlined functions.** The four reactor functions are `static`. Another
  compiler, other optimisation flags or LTO may inline them, and a uprobe on
  an inlined function does not attach. Check that the symbols exist first:
  `nm <kamailio binary> | grep tcp_reactor_stamp`.
- **Kernel structures.** The kernel probes read `struct tcp_sock` fields
  (`rcv_nxt`, `copied_seq`, `write_seq`, `snd_nxt`, `snd_wnd`, `rcv_wnd`).
  They are stable, but a kernel change can rename or move them.
- **Safety.** The uprobes store and compare connection pointers and never
  read Kamailio's memory, so a stale pointer cannot crash the trace or
  Kamailio. The kernel probes read typed fields through BTF.
- **One connection.** The script follows the first matching socket. Narrow
  the port range to pick the connection you want.
