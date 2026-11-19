# TLS Module Internals

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/modules/tls/` (`tls_mod.c`, `tls_init.c`, `tls_domain.c`,
`tls_server.c`, `tls_rand.c`, `tls_openssl.h`), `src/main.c`,
`src/core/tcp_mtops.c`, `src/core/tcp_reactor.c`.

## Libraries

`tls_openssl.h` selects the library the module builds against:

| Library | Build | Modes |
| --- | --- | --- |
| OpenSSL 1.1.1 or newer | default | 0, 1, 2 |
| AWS-LC | `-DTLS_BUILD_WITH=AWSLC` (`pkg-config aws-lc`) | 1, 2 |
| LibreSSL | rejected (`#error`) | |

An AWS-LC build defines `KSR_TLS_LIBSSL_COMPAT`: it uses the OpenSSL 1.1.1
API without the custom RAND method, the allocator hooks and the per-thread
state handling, all of which only mode 0 needs. A binary built against
OpenSSL 3.0 or 3.1 refuses to run with OpenSSL 3.2 or newer.

### tls_wolfssl

`tls_wolfssl` (5.7, `7c1326aa14`, 2022) started as a stopgap while the
OpenSSL 3 integration was unsolved, and used wolfSSL's OpenSSL compatibility
API. It is now a parallel module that aims to provide the same functions as
`tls`, written against wolfSSL's native API. A few compatibility calls
remain, for X.509 name fields in `tls_select.c`.

Since 6.2 it requires `tcp_main_threads` 1 or 2 (`208dbdbc34`). It serves as
a second implementation of single-process TLS: when the same tests run
against both libraries, a difference points to the library, a common failure
to Kamailio. The pages note where wolfSSL behaves differently, for example in
[SNI profile selection](sni.md#tls_wolfssl).

## OpenSSL in a multi-process server

Kamailio's SIP workers are processes forked from one main process, and they
share memory. OpenSSL since 1.1.0 assumes threads in one process: it keeps
per-thread state, creates locks that work only between threads, and
identifies callers by thread id. Most problems with OpenSSL in Kamailio come
from this difference. Kamailio has used two approaches.

### Sharing OpenSSL between processes (mode 0)

In mode 0 (`tcp_main_threads = 0`) every worker calls OpenSSL. A
connection's `SSL` object is in shared memory (`tls_pre_init()` sets OpenSSL
to allocate from shm with `CRYPTO_set_mem_functions()`), and the worker that
reads the connection uses it. The first working integration with
OpenSSL 1.1.x (5.3, 2019) had three parts:

| | What | Why | Status |
| --- | --- | --- | --- |
| A | pthread shims: the core replaces `pthread_mutex_init()` and `pthread_rwlock_init()` and makes every lock `PTHREAD_PROCESS_SHARED` (`main.c`, build option `LIBSSL_SET_MUTEX_SHARED`, on by default). Added in 5.3 (2019), first as a preloaded library in the tls module (`efdc141ecb`), then in the core (`a8c811e69e`). | several processes use one `SSL` object, so its locks must work between processes; required | active in mode 0 only. The shims exist for libssl. A module lock in shared memory must use `gen_lock_t`, or set the attribute itself, in every mode. |
| B | one copy of each `SSL_CTX` per process (`d->ctx[process_no]`), the module's design since 2006 | it kept the 1.1.x integration working. The reason was found later: forked processes inherit the main thread's `pthread_self()` value, so OpenSSL 1.1.1+ RSA blinding (`BN_BLINDING_is_current_thread()`) treats all workers as one thread, skips its lock, and two workers that use the same key race | `566e7d4737` and `a697e97ef1` fix the cause: code in libcrypto's code segment gets `pthread_self()` with `process_no + 1` in the top 16 bits (`ksr_pthread_self_ns_enable()`). With this fix, `use_shared_context` allows one `SSL_CTX` per domain for all processes. |
| C | Kamailio's own random number generator (`RAND_set_rand_method()`, `tls_rand.c`; 5.3, 2019, `fc542100d8`) | OpenSSL 1.1.1 keeps its DRBGs in per-thread state, which every forked worker inherited | used only with OpenSSL 1.1.1 and `tls_threads_mode = 0` |

This integration failed with OpenSSL 3.0, which keeps its error queue in
per-thread state: every worker inherited the same error state in shared
memory. The current fix clears OpenSSL's per-thread state at fork; see
[OpenSSL thread-local state](openssl-thread-locals.md).

### Confining OpenSSL to one process (modes 1 and 2)

6.1 introduced `mtops` (`tcp_mtops.c`, 2025), which is mode 1: every OpenSSL
operation runs in `PROC_TCP_MAIN`. A worker does not call `SSL_read()`,
`SSL_write()` and similar functions itself; it sends a request to
`PROC_TCP_MAIN`, which runs the call. Mode 2 (6.2) goes further:
`PROC_TCP_MAIN` reads and writes all TCP and TLS connections on its thread
pool, and workers do not use TLS at all.

With OpenSSL in one process, A, B and C are unnecessary: the pthread shims
are off, each domain has one `SSL_CTX`, and no process inherits per-thread
state. Engine and provider (HSM) keys also become possible. PKCS#11 modules
are not fork-safe, and in mode 0 an `SSL` object could carry one worker's
key object into another worker. The cost is that workers see TLS state only
through copies (below).

## Where OpenSSL runs, per mode

| | Mode 0 | Modes 1 / 2 |
| --- | --- | --- |
| Processes calling OpenSSL | every SIP worker | `PROC_TCP_MAIN` only (mode 1 runs the workers' calls there, mode 2 runs TLS on its pool threads) |
| OpenSSL allocator | shm | the library's own, in one process |
| `SSL_CTX` | one per domain per process, or one per domain with `use_shared_context` | one per domain |
| pthread shims (A) | on | off |
| Per-thread state | cleared at fork ([details](openssl-thread-locals.md)); `tls_threads_mode` must be 2 | no action needed |
| Engine and provider (HSM) keys | rejected | loaded once in `PROC_TCP_MAIN` at child init and on `tls.reload` |
| Libraries | OpenSSL | OpenSSL, AWS-LC |

## Modes 1 / 2: TLS state reaches workers as copies

The final free of a TLS connection runs in `PROC_TCP_MAIN`
(`tcpconn_free_in_main`). TLS state crosses between processes only as
copies in shared memory, made at a fixed point; a process never follows a
pointer into another process's private state.

| | SSL metadata cache | outbound `$xavp(tls=>...)` copy |
| --- | --- | --- |
| Direction | `PROC_TCP_MAIN` to worker | worker to `PROC_TCP_MAIN` |
| Content | server name, cipher, version, certificates, verify result | `server_name`, `server_id` |
| Made | after the handshake (`tls_build_ssl_cache()`) | before the connect: mode 1 in `tls_tcpconn_init()`, mode 2 in `tcp_reactor_connect_put()` |
| Stored in | `c->extra_data` (`struct tls_extra_data`) | `c->cinfo` |
| Read by | `$tls_*` variables, `tls:connection-out` | `tls_complete_init()`: client profile, SNI, `verify_server_name` |

Neither copy changes after it is made. A later request that reuses the
connection with a different `$xavp(tls=>server_name)` keeps the profile and
SNI of the first request, as in mode 0.

## Server profile selection (SNI)

See [SNI profile selection](sni.md).
