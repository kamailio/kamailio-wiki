# Kamailio Internals

These pages describe how parts of Kamailio's C code work: the mechanisms,
the rules the code depends on, and past mistakes. They are for developers
and tools that change the code. For configuration, see the cookbooks and
the module documentation.

Each page lists the source files it describes and the commit it was last
checked against. The code is authoritative: if a page and the code
disagree, the page is out of date; corrections are welcome.

## Topics

| Area | Pages |
| --- | --- |
| TCP/TLS threading (`tcp_main_threads`) | [Reactor overview](reactor/index.md), [Connections: references, changes, close](reactor/connections.md) |
| TLS module (OpenSSL, AWS-LC) | [Overview](tls/index.md), [OpenSSL thread-local state](tls/openssl-thread-locals.md), [SNI profile selection](tls/sni.md) |

## Writing a page

- Cover one mechanism per page. State its purpose first, then how it works.
- Name functions, files and commits, so readers can find the code.
- State the rules the code depends on, and what breaks when code violates
  them.
- Keep history short: include a past design only when it explains the
  current code.
- Add a `Last checked:` line with the commit the page was verified against.
