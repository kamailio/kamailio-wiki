# OpenSSL Thread-Local State in Forked Processes

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/modules/tls/tls_mod.c` (`tls_atfork_prepare()`, `mod_init()`),
`src/core/globals.h` (`KSR_TLS_THREADS_*`).

This page replaces `src/modules/tls/OpenSSL3-README.md`, which describes the
earlier methods. For the wider picture (why OpenSSL and forked processes
clash, and the shims and per-process contexts that came before) see
[OpenSSL in a multi-process server](index.md#openssl-in-a-multi-process-server).

## The problem (mode 0)

OpenSSL keeps per-thread state in thread-locals (`CRYPTO_THREAD_set_local()`,
on Linux `pthread_setspecific()`): in OpenSSL 1.1.1 the public and private
DRBGs and the error queue, in OpenSSL 3 above all the error queue. A
thread-local is NULL in a new thread and allocated on first use.

In mode 0 OpenSSL allocates from shared memory, and every SIP worker is a
`fork()` of the main process. If OpenSSL ran in the main process before the
fork (module init does), each worker inherits the same thread-local pointers
and uses the same shared-memory objects: shared memory corruption. OpenSSL
1.1.1 showed it mainly together with other OpenSSL users (libcurl, database
drivers with TLS); OpenSSL 3 uses thread-locals throughout its error queue
handling and corrupts without them.

Modes 1 and 2 do not have the problem: OpenSSL runs in `PROC_TCP_MAIN` only.

## Current method (since `396989e5f9`, 2026-04, 6.2)

With `tcp_main_threads = 0` and `tls_threads_mode = 2`, `mod_init()` installs
a `pthread_atfork()` prepare handler that calls OpenSSL's own
`OPENSSL_thread_stop()` in the parent just before every `fork()`.
`OPENSSL_thread_stop()` releases the calling thread's OpenSSL state and
resets its thread-locals, so each child starts with none and allocates its
own on first use.

- it uses only the public API: no knowledge of `pthread_key_t` values
- it is not installed in modes 1 and 2
- not built for AWS-LC (`KSR_TLS_LIBSSL_COMPAT`, modes 1 and 2 only)
- `tls_threads_mode = 1` is not valid since 6.0 (reverted in `398e647b06`,
  2024-12) and is changed to 2 with a warning; 2 (`KSR_TLS_THREADS_MFORK`) is the default

## Earlier methods (history)

| Release | Method | Why it was replaced |
| --- | --- | --- |
| 5.3 (2019, `fc542100d8`) | Kamailio's own random generator (`RAND_set_rand_method()`, `tls_rand.c`), so the DRBGs in thread-locals were not used | OpenSSL 3 moved the error queue to thread-locals as well; still used for OpenSSL 1.1.1 with `tls_threads_mode = 0` |
| 5.8.0 (2024-02, `4d6e37fa04`) | `tls_threads_mode = 1`: run every function that may initialise OpenSSL in a temporary thread, so the main thread's thread-locals stay NULL. `tls_threads_mode = 2`: at fork, set `pthread` keys 0 to 15 to NULL | libraries that must initialise in the main thread (libpython) set thread-locals too, and clearing fixed key numbers can hit other libraries' keys |
| 5.8.x (2024-04, `fe6f4fcde2`) | make a few OpenSSL calls so it creates all its thread-locals, record the key count as a high-water mark, at fork clear the keys below the mark | relies on `pthread_key_t` being small consecutive integers (non-portable glibc knowledge) and on OpenSSL's key count |
| current | `OPENSSL_thread_stop()` in an at-fork prepare handler | |

Another method seen elsewhere: ask OpenSSL for its error state and DRBG
pointers and clear the keys holding them (`pthread_getspecific()` over the
first keys). It also depends on key numbering and on OpenSSL internals.

## When to look here again

- a new OpenSSL major version that adds per-thread state outside what
  `OPENSSL_thread_stop()` releases
- shared memory corruption in mode 0 that appears only with TLS and another
  OpenSSL user loaded
- a change to when OpenSSL first runs relative to the fork
