#### Security Vulnerability Policy (PROPOSAL)

References: \*
<https://wiki.asterisk.org/wiki/display/AST/Asterisk+Security+Vulnerabilities>

##### Definition

???

A security vulnerability is when a user of Kamailio can cause Kamailio
to crash or lock up by sending messages to the server process.

##### Reporting a security Vulnerability

If you believe there's a security vulnerability, please don't use the
public forums. Send e-mail to <security@kamailio.org> and the issue will
be handled properly.

1. Send an e-mail to <security@kamailio.org> and include the following
    information

<!-- -->

       * A summary
       * A detailed explanation of how this issue can be exploited and/or reproduced
    - A member of the Kamailio Security Team will respond
    - The kamailio developer team will work to solve the issue. When there is a patch for the issue, it should NOT be committed directly. It should be coordinated with the release of a security release as well as the publication of a Kamailio project security vulnerability report.

##### Publishing security vulnerabilities

Kamailio will publish security vulnerabilities, including an CVE ID, on
the kamailio-announce mailing list, sr-users as well as related lists.

##### Kamailio Security Team

A Kamailio Security team should be appointed with core developers of the
project. These individuals will be part of the security process and
review patches and text for the vulnerability report. Two persons should
take the role of Kamailio Security Officers. One of these should manage
each security incident - which does not mean solving the code issue, but
managing the process from report to publication and patch release.

##### <security@kamailio.org>

This address should have a PGP key associated, used by the security
officers.
