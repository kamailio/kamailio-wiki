### Security Vulnerability Policy

References:

- [Asterisk security process](https://wiki.asterisk.org/wiki/display/AST/Asterisk+Security+Vulnerabilities)
- [Wikipedia reference for vulnerabilities](https://en.wikipedia.org/wiki/Vulnerability_(computing))

#### Definition

A security vulnerability is (for example) when a user of Kamailio can
cause Kamailio to crash or lock up by sending messages to the server
process.

#### Reporting a security Vulnerability

If you believe there's a security vulnerability, please don't use the
public forums. Send an e-mail to the security team and the issue will be
handled properly.

1. Send an e-mail to **security at kamailio dot org** and include the
    following information

<!-- -->

       * A summary
       * A detailed explanation of how this issue can be exploited and/or reproduced
    - A member of the Kamailio Security Team will respond
    - The kamailio developer team will work to solve the issue.
    - When there is a patch for the issue, it should NOT be committed directly without clarification with the security team. In many cases this should be coordinated with the release of a security release as well as the publication of a Kamailio project security vulnerability report.

#### Publishing security vulnerabilities

Kamailio will publish security vulnerabilities, including an CVE ID, on
the kamailio-business mailing list, sr-dev, sr-users as well as related
lists. The advisories will also be published on the kamailio.org web
site. This will be done for vulnerabilities that have a higher severity,
that means having a big enough impact as decided from the Kamailio
Security Team.

CVE entries should be created for critical vulnerabilities in the core
and major modules, for rarely used modules this is not necessary. If
there are several security issues together in one release, they should
be announced together.

The Kamailio project release security fixed in the normal time based
maintenance schedule, no immediate security releases are done. If
possible a non-code workaround should be provided for the found security
vulnerability.

#### Timeline of the security process

1. Initial acknowledge time to the reporting party for a report about a
    new security issue for a new report: 3 working days
2. Time for verification and bug fix from Kamailio development: 5
    working days (could be extended e.g. in vacation period)
3. Waiting time for public announcement after the fix is in an official
    release: 2 months
4. Project preparation time for kamailio.org announcement: 3 working
    days

#### Kamailio Security Team

A Kamailio Security team is appointed with core developers of the
project. These individuals will be part of the security process and
review patches and text for the vulnerability report. Persons of this
group take the role of Kamailio Security Officers. One of these should
manage each security incident - which does not mean solving the code
issue, but managing the process from report to publication and patch
release.

#### PGP encryption

The address used for reporting security reports to the Kamailio project
should have a PGP key associated, used by the security officers.
