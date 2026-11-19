# TLS Server Profile Selection by SNI

Last checked: `60d373b604` (6.2.0-dev)

Source: `src/modules/tls/tls_domain.c` (`tls_client_hello_cb()`,
`tls_server_name_cb()`, `tls_switch_server_ctx()`, `tls_lookup_cfg()`),
`src/modules/tls_wolfssl/tls_domain.c`.

## What `SSL_set_SSL_CTX()` does not do

A connection is created (`SSL_new()`) from the `SSL_CTX` of the profile
matched by socket. When the client's server_name selects another profile,
the connection switches with `SSL_set_SSL_CTX()`. That call swaps the
certificate and key; settings that `SSL_new()` copied into the connection
stay those of the first profile until they are applied again:

| Setting | Follows the new `SSL_CTX` by itself | Applied by the module |
| --- | --- | --- |
| certificate, key | yes | |
| CA list and CRL for client certificates | yes (read from the context at verify time) | |
| cipher list | OpenSSL: yes; AWS-LC: from 5.14 | |
| verify mode, callback, depth | no | yes |
| options | no | clear and set |
| protocol version range (`tls_method`) | no | yes, in the ClientHello callback |

## Two callbacks

The protocol version is negotiated before the server_name callback runs, so
a profile selected there cannot apply its `tls_method`. The module selects
the profile earlier, from the ClientHello, as nginx and HAProxy do:

- **`tls_client_hello_cb()`** (`SSL_CTX_set_client_hello_cb`, OpenSSL 1.1.1+
  and AWS-LC): reads the server_name extension with
  `SSL_client_hello_get0_ext()` (malformed ones are left for libssl to
  reject), looks the profile up with `tls_lookup_cfg()` and switches with
  `tls_switch_server_ctx(..., versions = 1)`
- **`tls_server_name_cb()`**: with the ClientHello callback it only accepts
  the name. It stays registered because OpenSSL acknowledges the name to the
  client (the `server_name` extension in the TLS 1.2 ServerHello) and keeps
  it in the session only when a server_name callback returns OK. With a
  library without the ClientHello callback it selects the profile, after
  the version negotiation.

`tls_switch_server_ctx()` is the one place for the switch: when per-profile
settings are added (curves, client CA list, ALPN), apply them there.

No server_name, or a name no profile matches: the default server profile
for the socket stays.

## tls_wolfssl

wolfSSL has no callback before the version negotiation (no ClientHello
callback; its message callback does not see the incoming ClientHello; the
certificate callback runs after the version is chosen). `tls_wolfssl`
switches in the server_name callback and applies verify settings, so a
profile selected by server_name uses the `tls_method` of the default profile
for the socket. The remaining way would be reading the ClientHello from the
socket before the handshake (`wolfSSL_SNI_GetFromBuffer()`).
