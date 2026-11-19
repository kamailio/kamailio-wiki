# OpenSSL Thread-Local State in Forked Processes

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/modules/tls/tls_mod.c` (`tls_atfork_prepare()`, `mod_init()`),
`src/core/globals.h` (`KSR_TLS_THREADS_*`).

This page replaces `src/modules/tls/OpenSSL3-README.md`, which describes
earlier methods. The background (why OpenSSL and forked processes conflict,
and the earlier shims and per-process contexts) is in
[OpenSSL in a multi-process server](index.md#openssl-in-a-multi-process-server).

## The problem (mode 0)

OpenSSL stores per-thread state in thread-local variables
(`CRYPTO_THREAD_set_local()`, implemented with `pthread_setspecific()` on
Linux). OpenSSL 1.1.1 stores its public and private DRBGs and the error
queue there; OpenSSL 3 mainly the error queue. In a new thread a
thread-local variable is NULL, and OpenSSL allocates the state on first
use.

In mode 0 OpenSSL allocates from shared memory, and every SIP worker is
forked from the main process. Module initialisation calls OpenSSL in the
main process before the fork, so every worker inherits the same
thread-local pointers and uses the same objects in shared memory, which
corrupts it. With OpenSSL 1.1.1 the corruption appeared mainly when another
OpenSSL user was loaded (libcurl, database drivers with TLS). OpenSSL 3 uses
thread-local state for every error, and the corruption appears without
other users.

Modes 1 and 2 do not have this problem, because OpenSSL runs only in
`PROC_TCP_MAIN`.

## Current method (since `396989e5f9`, 2026-04, 6.2)

With `tcp_main_threads = 0` and `tls_threads_mode = 2`, `mod_init()`
installs a `pthread_atfork()` prepare handler. Before every `fork()`, the
handler calls `OPENSSL_thread_stop()` in the parent. This OpenSSL function
frees the calling thread's OpenSSL state and resets its thread-local
variables, so each child starts with none and allocates its own on first
use.

- The method uses only OpenSSL's public API and does not depend on
  `pthread_key_t` values.
- The handler is not installed in modes 1 and 2.
- AWS-LC builds (`KSR_TLS_LIBSSL_COMPAT`, modes 1 and 2 only) do not
  include it.
- `tls_threads_mode = 1` is invalid since 6.0 (removed in `398e647b06`,
  2024-12); Kamailio changes it to 2 and logs a warning. The default is 2
  (`KSR_TLS_THREADS_MFORK`).

## Earlier methods

| Release | Method | Problem |
| --- | --- | --- |
| 5.3 (2019, `fc542100d8`) | Kamailio's own random number generator (`RAND_set_rand_method()`, `tls_rand.c`), so OpenSSL's per-thread DRBGs are not used | OpenSSL 3 also keeps the error queue in per-thread state. The method remains for OpenSSL 1.1.1 with `tls_threads_mode = 0`. |
| 5.8.0 (2024-02, `4d6e37fa04`) | `tls_threads_mode = 1`: run every function that may initialise OpenSSL in a temporary thread, so the main thread's thread-local variables stay NULL. `tls_threads_mode = 2`: at fork, set `pthread` keys 0 to 15 to NULL. | Some libraries (libpython) must initialise in the main thread and set thread-local variables there. Clearing fixed key numbers can clear other libraries' keys. |
| 5.8.x (2024-04, `fe6f4fcde2`) | make OpenSSL create all its thread-local variables, record the highest key number, and at fork clear all keys up to it | depends on `pthread_key_t` values being small consecutive integers, which is glibc behaviour, and on the number of keys OpenSSL creates |
| 6.2 (2026-04) | `OPENSSL_thread_stop()` in an at-fork prepare handler | |

Another known method looks up the addresses of OpenSSL's error state and
DRBGs and clears the keys that hold them (`pthread_getspecific()` over the
first keys). It also depends on key numbering and on OpenSSL internals.

## When to revisit this page

- A new OpenSSL major version keeps per-thread state that
  `OPENSSL_thread_stop()` does not free.
- Shared memory corruption appears in mode 0 only when TLS and another
  OpenSSL user are loaded.
- OpenSSL is first called at a different point relative to the fork.
