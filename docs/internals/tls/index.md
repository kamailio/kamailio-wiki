# TLS Module Internals

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/modules/tls/` (`tls_mod.c`, `tls_init.c`, `tls_domain.c`,
`tls_server.c`, `tls_rand.c`, `tls_openssl.h`), `src/main.c`,
`src/core/tcp_mtops.c`, `src/core/tcp_reactor.c`.

## Libraries

`tls_openssl.h` decides what the module builds against:

| Library | Build | Modes |
| --- | --- | --- |
| OpenSSL 1.1.1 or newer | default | 0, 1, 2 |
| AWS-LC | `-DTLS_BUILD_WITH=AWSLC` (`pkg-config aws-lc`) | 1, 2 |
| LibreSSL | refused (`#error`) | |

AWS-LC builds define `KSR_TLS_LIBSSL_COMPAT`: the OpenSSL 1.1.1 API without
the custom RAND method, the allocator hooks and the per-thread state
handling, which only mode 0 needs. A binary built against OpenSSL 3.0 or 3.1
refuses to run with OpenSSL 3.2 or newer.

### tls_wolfssl

`tls_wolfssl` (5.7, `7c1326aa14`, 2022) began as a stopgap while the
OpenSSL 3 integration was unresolved, written against wolfSSL's
OpenSSL-compatibility API. It has since grown into a parallel module that
aims to match `tls` function for function, built on wolfSSL's native API; a
few compatibility calls remain, for X.509 name fields in `tls_select.c`.

Since 6.2 it requires `tcp_main_threads` 1 or 2 (`208dbdbc34`). Its main
value is a second implementation of single-process TLS: running the same
tests against two libraries separates what comes from Kamailio's design from
what comes from the library, and brings out edge cases. Where wolfSSL
behaves differently, the pages say so (for example [SNI profile
selection](sni.md#tls_wolfssl)).

## OpenSSL in a multi-process server

Kamailio's SIP workers are processes forked from one main process and
sharing memory. OpenSSL since 1.1.0 is written for threads in one process:
it keeps hidden per-thread state, creates locks that work between threads
only, and compares thread ids. Most of the hard-won knowledge about OpenSSL
in Kamailio comes from that mismatch. There have been two answers to it.

### Sharing OpenSSL between processes (mode 0)

In mode 0 (`tcp_main_threads = 0`) every worker calls OpenSSL, and the `SSL`
object of a connection lives in shared memory (OpenSSL allocates from `shm`:
`CRYPTO_set_mem_functions()` in `tls_pre_init()`), so whichever worker reads
the connection uses it. The first working integration with OpenSSL 1.1.x
(5.3, 2019) rested on three parts:

| | What | Why | Today |
| --- | --- | --- | --- |
| A | pthread shims (5.3, 2019: first a preloaded library in the tls module, `efdc141ecb`, then built into the core, `a8c811e69e`): the core replaces `pthread_mutex_init()` and `pthread_rwlock_init()` to make every lock `PTHREAD_PROCESS_SHARED` (`main.c`, build option `LIBSSL_SET_MUTEX_SHARED`, default on) | an `SSL` object used by several processes needs locks that work between processes; mandatory | active in mode 0 only. It is a workaround for libssl, not a service for modules: a module lock in shared memory must use `gen_lock_t` (or set the attribute itself) in every mode |
| B | a copy of each `SSL_CTX` per process (`d->ctx[process_no]`, the module's design since 2006) | kept everything working; why it mattered turned out to be thread identity: forked processes inherit the main thread's `pthread_self()`, so OpenSSL 1.1.1+ RSA blinding (`BN_BLINDING_is_current_thread()`) takes every worker for the same thread, skips its lock, and two workers using one key race | the root cause is fixed since `566e7d4737` + `a697e97ef1`: callers inside libcrypto's code segment get `pthread_self()` with `process_no + 1` in the top 16 bits (`ksr_pthread_self_ns_enable()`). With that, `use_shared_context` gives one `SSL_CTX` per domain for all processes |
| C | Kamailio's own random generator (5.3, 2019, `fc542100d8`: `RAND_set_rand_method()`, `tls_rand.c`) | also thread-locals: the OpenSSL 1.1.1 DRBGs live in per-thread state that every forked worker inherited | OpenSSL 1.1.1 with `tls_threads_mode = 0` only |

This integration broke down with OpenSSL 3.0, which uses thread-locals
throughout its error queue handling: worker after worker inherited the same
shared-memory error state. The fix clears OpenSSL's thread-locals at fork:
see [OpenSSL thread-local state](openssl-thread-locals.md).

### Confining OpenSSL to one process (modes 1 and 2)

A second line of development, `mtops`, started in 6.1 (`tcp_mtops.c`, 2025):
mode 1 confines every OpenSSL operation to `PROC_TCP_MAIN` with an RPC-like
mechanism. Instead of calling `SSL_read()`, `SSL_write()` and the like
itself, a worker asks `PROC_TCP_MAIN` to run them. Mode 2 (6.2) goes further:
`PROC_TCP_MAIN` reads and writes all TCP and TLS connections on its own
thread pool, so workers never touch TLS at all.

With OpenSSL in one process, A, B and C are not needed: the pthread shims
are off, there is one `SSL_CTX` per domain, and there are no inherited
thread-locals to clear. It also makes engine and provider (HSM) keys
possible: PKCS#11 modules are not fork-safe, and in mode 0 an `SSL` object
could carry one worker's key object into another worker. The price is that
TLS state the workers need crosses the process boundary as copies (below).

## Where OpenSSL runs, per mode

| | Mode 0 | Modes 1 / 2 |
| --- | --- | --- |
| Processes calling OpenSSL | every SIP worker | `PROC_TCP_MAIN` only (mode 1 relays workers' calls to it, mode 2 runs TLS on its pool threads) |
| OpenSSL allocator | `shm` | the library's own, in one process |
| `SSL_CTX` | one per domain per process, or one shared with `use_shared_context` | one per domain |
| pthread shims (A) | on | off |
| Thread-local state | cleared at fork ([details](openssl-thread-locals.md)); `tls_threads_mode` must be 2 | nothing to do |
| Engine / provider (HSM) keys | refused | loaded once in `PROC_TCP_MAIN` at child init and on `tls.reload` |
| Libraries | OpenSSL | OpenSSL, AWS-LC |

## Modes 1 / 2: TLS state crosses the process boundary as copies

- the final free of a TLS connection happens in `PROC_TCP_MAIN`
  (`tcpconn_free_in_main`)
- TLS state crosses the process boundary only as shared-memory copies taken
  at a defined moment, never as pointers into the other side's private
  state:

| | SSL metadata cache | outbound `$xavp(tls=>...)` copy |
| --- | --- | --- |
| Direction | `PROC_TCP_MAIN` to worker | worker to `PROC_TCP_MAIN` |
| Copied | server name, cipher, version, certificates, verify result | `server_name`, `server_id` |
| When | after the handshake (`tls_build_ssl_cache()`) | before the connect: mode 1 in `tls_tcpconn_init()`, mode 2 in `tcp_reactor_connect_put()` |
| Stored in | `c->extra_data` (`struct tls_extra_data`) | `c->cinfo` |
| Read by | `$tls_*` variables, `tls:connection-out` | `tls_complete_init()`: client profile, SNI, `verify_server_name` |

Both copies are frozen: a later request reusing the connection with another
`$xavp(tls=>server_name)` keeps the profile and SNI of the first, as in
mode 0.

## Server profile selection (SNI)

See [SNI profile selection](sni.md).
