# TLS Server Profile Selection by SNI

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/modules/tls/tls_domain.c` (`tls_client_hello_cb()`,
`tls_server_name_cb()`, `tls_switch_server_ctx()`, `tls_lookup_cfg()`),
`src/modules/tls_wolfssl/tls_domain.c`.

## What `SSL_set_SSL_CTX()` changes

`SSL_new()` creates a connection from the `SSL_CTX` of the profile that
matches the socket. When the client's server_name selects a different
profile, the module switches the connection with `SSL_set_SSL_CTX()`. This
call replaces the certificate and key. Settings that `SSL_new()` copied into
the connection keep the first profile's values until the module sets them
again:

| Setting | Taken from the new `SSL_CTX` by the library | Set by the module |
| --- | --- | --- |
| certificate, key | yes | |
| CA list and CRL for client certificates | yes, read from the context during verification | |
| cipher list | OpenSSL: yes; AWS-LC: from 5.14 | |
| verify mode, callback, depth | no | yes |
| options | no | yes: clears the old options, sets the new |
| protocol version range (`tls_method`) | no | yes, in the ClientHello callback |

## Two callbacks

OpenSSL negotiates the protocol version before it calls the server_name
callback, so a profile selected in that callback cannot apply its
`tls_method`. The module therefore selects the profile from the ClientHello,
as nginx and HAProxy do:

- **`tls_client_hello_cb()`** (`SSL_CTX_set_client_hello_cb()`, OpenSSL
  1.1.1+ and AWS-LC) reads the server_name extension with
  `SSL_client_hello_get0_ext()`, looks up the profile with
  `tls_lookup_cfg()`, and switches with
  `tls_switch_server_ctx(..., versions = 1)`. A malformed extension is left
  for libssl to reject.
- **`tls_server_name_cb()`** only accepts the name when the ClientHello
  callback exists. It must stay registered: OpenSSL confirms the name to the
  client (the `server_name` extension in the TLS 1.2 ServerHello) and stores
  it in the session only if a server_name callback returns OK. With a
  library that lacks the ClientHello callback, this callback selects the
  profile, after the version negotiation.

All switching goes through `tls_switch_server_ctx()`. A new per-profile
setting (curves, client CA list, ALPN) must be applied there.

If the client sends no server_name, or no profile matches it, the
connection keeps the default server profile for the socket.

## tls_wolfssl

wolfSSL has no callback that runs before version negotiation. It has no
ClientHello callback, its message callback does not receive the incoming
ClientHello, and its certificate callback runs after the version is chosen.
`tls_wolfssl` switches in the server_name callback and applies the verify
settings, so a profile selected by server_name uses the `tls_method` of the
socket's default profile. The only alternative is to read the ClientHello
from the socket before the handshake (`wolfSSL_SNI_GetFromBuffer()`).
