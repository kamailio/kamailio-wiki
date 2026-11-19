# Kamailio Internals

Developer notes on how parts of Kamailio work inside: the mechanisms, the
rules the code relies on and the mistakes worth not repeating. They are for
people (and tools) changing the C code, not for writing a configuration;
the cookbooks and module documentation cover that.

Each page names the source files it describes and the commit it was last
checked against. The code is the reference: when a page and the code
disagree, the page is out of date and a fix is welcome.

## Topics

| Area | Pages |
| --- | --- |
| TCP/TLS threading (`tcp_main_threads`) | [Reactor overview](reactor/index.md), [Connections: references, changes, close](reactor/connections.md) |
| TLS module (OpenSSL, AWS-LC) | [Overview](tls/index.md), [OpenSSL thread-local state](tls/openssl-thread-locals.md), [SNI profile selection](tls/sni.md) |

## Writing a page

- one mechanism per page; start with what it is for, then how it works
- name functions, files and commits, so a reader can find the code
- state the rules the code depends on, and what breaks when they are broken
- keep history short: what was tried and why it changed, when it explains
  the current shape of the code
- add `Last checked:` with the commit the page was verified against
