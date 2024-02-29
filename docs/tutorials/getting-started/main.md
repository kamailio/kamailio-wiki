# Kamailio - Getting Started Guide

A collection of guidelines and useful links to smoothen the
understanding and deploying of Kamailio for newbies.

Feel free to add new content here.

The first version of the tutorial was written for Kamailio v4.3.x.

It is recommended that you read first all the content of this tutorial
and then start installing Kamailio, because some more relevant
information might be found later for specific use cases.

## Prerequisites

### SIP

The initial name of the project was SIP Express Router (aka SER) and
that says it all: Kamailio is a SIP router at the core. It means that it
works at the lower layer of SIP packets, routing each and every SIP
message that it receives based on the policies specified in the
configuration file.

It is important to understand that it is not a telephony engine at its
core, a VoIP call is seen as a sequence of SIP messages sharing the same
attributes for caller, callee and signaling tokens such as Call-ID, From
tag and To tag.

Given the above, a good understanding of SIP is critical to get faster
familiar with Kamailio, especially with its configuration file routing
rules.

Session Initiation Protocol (SIP) is specified by IETF (www.ietf.org),
with the core specification in the RFC 3261:

- [https://tools.ietf.org/html/rfc3261](https://tools.ietf.org/html/rfc3261)

Many other RFCs add to the core specifications, look at what is
published by the IETF Working Groups for SIP and SIMPLE.

IETF RFC documents are a bit dry to read, with particular language
suitable for technical specifications, therefore trying to learn SIP
directly from RFCs could be not that easy. Fortunately there are plenty
of free online resources, tutorials or blogs, as well as books, that can
help understanding SIP faster.

A SIP Introduction tutorial was written by SER/Kamailio developers quite
some time ago. It is available inside source tree of Kamailio, in the
folder doc/sip/. It is docbook xml format, the html version can be read
online at:

- [https://www.kamailio.org/docs/tutorials/sip-introduction/](https://www.kamailio.org/docs/tutorials/sip-introduction/)

Other online SIP learning resources:

- [siptutorial.net](http://www.siptutorial.net)
- [tutorialspoint.com](http://www.tutorialspoint.com/session_initiation_protocol/index.htm)
- [voip-info.org](http://www.voip-info.org/wiki/view/sip)

SIP Books:

- [SIP Beyond VoIP](http://www.amazon.com/SIP-Beyond-VoIP-Communications-Revolution/dp/0974813001)
- [Understanding the Session Initiation Protocol](http://www.amazon.com/Understanding-Session-Initiation-Protocol-Telecommunications-ebook/dp/B003E2UQ8M/)
- [SIP Demystified](http://www.amazon.com/SIP-Demystified-Gonzalo-Camarillo-ebook/dp/B000T8OAHC/)
- [Internet Communications Using SIP](http://www.amazon.com/Internet-Communications-Using-SIP-Delivering-ebook/dp/B008O5JR20/)

### Logical Programming

Kamailio configuration file is not just a set of 'parameter=value' line.
It has active components for runtime, named routing blocks. A routing
block is a group of actions that specify what should be done for each
SIP message.

The actions are exported by Kamailio core or modules and are like
functions exported by a library. Those actions can be combined in
conditional statements like IF and SWITCH or in loops like WHILE.
Modularity is provided by the ability to execute a routing block from
another routing block.

Therefore, understanding logical programming is important as well. Be
sure you are familiar with concepts such as functions, variables,
conditions or loops.

IF, SWITCH and WHILE are pretty similar to other imperative languages
such as C, Perl, Python or Java. Even Shell/Bash programming is useful
to get into Kamailio configuration structure.

### Linux/Unix

Being developed for Unix/Linux, managing a Kamailio instance, from
installation to runtime and maintenance involves operations specific for
Linux administration, like running command line applications from
terminal, configure network and firewall to allow sending/receiving SIP
and RTP packets, a.s.o.

Troubleshooting Kamailio and SIP requires knowledge of various tools for
reading and searching log files (e.g., grep, awk), sniffing the network
(e.g., sngrep, ngrep, tcpdump, wireshark). Of course, knowing to work
with text editor, especially the ones for terminal if the server is
remote, is quite obvious (e.g., vim, joe, nano, pico, emacs, etc.).

## Initial Installation

### From Sources

Install current stable version:

- [Install Kamailio v4.3.x From GIT](../../install/4.3.x/git.md)

Install development version (master branch):

- [Install Kamailio Devel Version From GIT](../../install/devel/git.md)

When installing from sources:

- configuration files are deployed in: `/usr/local/etc/kamailio`
- binary files are deployed in: `/usr/local/sbin/`
### Debian

Kamailio is part of latest official stable Debian distributions (and its
Ubuntu cousin), but might be an older version.

To use most recent Kamailio release, you can use the APT repositories
hosted by Kamailio project, see details at:

- [KAMAILIO DEBS Repositories](../../packages/debs.md)

Then, the typical way of installing packages can be used:

    apt-get update
    apt-get install kamailio

Various modules are packaged separately, you can search the repository
to see what is available:

    apt-cache search kamailio

Install the other packages of the modules you may need, like mysql or
tls modules -- they can be installed with:

    apt-get install kamailio-mysql-modules kamailio-tls-modules

When installing from deb packages:

- configuration files are deployed in: /etc/kamailio/
- binary files are deployed in: /usr/sbin/

### CentoOS

Kamailio RPMs are available for several distributions, such as RedHat
Enterprise, CentOS, OpenSuse and Fedora. For more details, see:

- [KAMAILIO RPMS Repositories](../../packages/rpms.md)

You can add them to YUM configuration and then install Kamailio with
usual yum commands:

    yum install kamailio
    ...
    yum install kamailio-mysql-modules kamailio-tls-modules

When installing from rpm packages:

- configuration files are deployed in: /etc/kamailio/
- binary files are deployed in: /usr/sbin/

## Configuration File

### Overview

If you installed from sources, then the configuration file is located
at:

- /usr/local/etc/kamailio/kamailio.cfg

If you installed from packages, then the configuration file is located
at:

- /etc/kamailio/kamailio.cfg

### Configuration Scripting Language

Kamailio uses its own configuration file language. Its structure is
described in the Core Cookbook:

- [Devel Core Cookbook](../../cookbooks/devel/core.md)

### Default Configuration File

The default configuration file is trying to provide the features for a
simple VoIP (telephony) provider.

- user authentication
- IP authorization
- accounting
- registrar and location services
- attacks detection and blocking (anti-flood protection)
- NAT traversal
- short dialing on server
- multiple identities (aliases) for subscribers
- multi-domain support
- routing to a PSTN gateway
- routing to a voicemail server
- TLS encryption
- instant messaging (pager mode with MESSAGE requests)
- presence services

Not all the above features are enabled by default -- read the comments
at the top of **kamailio.cfg** in order to find what tokens must be
defined.

#### Enabling User Authentication

Initial installation doesn't ask users for authentication. Enabling that
means defining WITH_MYSQL and WITH_AUTH -- that means adding the next
two lines after the first line (after the one with #!KAMAILIO).

``` c
#!define WITH_MYSQL
#!define WITH_AUTH
```

Obviously, for the above to really work, you need to install MySQL
server and create the database required by Kamailio (see **kamdbctl**
tool). You need also to add subscribers (username/password to subscriber
database table). You can use **kamctl** tool for managing subscriber
records.

#### Enabling Persistent Location

Initial installation doesn't have persistent location enabled, meaning
that if you restart Kamailio, the registration records are lost. If you
enable it, registration records are saved to database and reload at
restart.

To enable persistent location records, you have to define WITH_USRLOCDB
-- add the next line in **kamailio.org** after those line you added in
the previous section:

``` c
#!define WITH_USRLOCDB
```

#### Enabling NAT Traversal

The default **kamailio.cfg** comes with NAT traversal support, relying
on RTPProxy for RTP relaying. The NAT traversal support has to be
enabled by defining WITH_NAT:

``` c
#!define WITH_NAT
```

You have to install RTPProxy application and configure it to use the same
control socket as in **kamailio.cfg** parameter for **rtpproxy** module.

## Tools

### kamctl

Kamctl is part of Kamailio project (in the same source tree) and
installed by default.

It has a configuration file named **kamctlrc**, located in the same
folder with **kamailio.cfg**. You have to edit it to set your SIP
domain, the database engine, username/password/... to connect to
database, etc.

This is the tool to manage kamailio from command line, providing lots of
operations, such as adding/removing/updating SIP users, controlling the
ACL for users, managing the records for LCR or load balancing, viewing
registered users and internal statistics, etc.

When needed to interact with Kamailio, it does it via FIFO file created
by **mi_fifo** module. Operations to the database are done by connecting
directly to the database server.

### kamdbctl

Kamdbctl is part of Kamailio project (in the same source tree) and
installed by default.

It uses the same configuration file like **kamctl**, respectively the
**kamctlrc**.

The tool can be used to create and manage the database structure needed
by Kamailio, therefore it should be run immediately after Kamailio
installation if you plan to run Kamailio with a database backend.

It is not used for managing the records inside the database tables, just
for database structure and access to the database (e.g.,
granting/revoking access to database server). For managing the records
inside database table, **kamctl** is the tool that has to be used.

### kamcmd

Kamcmd is part of Kamailio project (in the same source tree) and
installed by default.

This is an application that can send RPC commands to Kamailio from
command line. It requires that the **ctl** module is loaded by Kamailio.

### siremis

It is a web management interface for Kamailio, written in PHP -- more
at:

- [http://www.siremis.org](http://www.siremis.org)

### kamcli

It is a command line application write in Python, more or less an
alternative to **kamctl**. It has a modular architecture, allowing to
extend it by writing new plugins.

See more at:

- [https://github.com/kamailio/kamcli](https://github.com/kamailio/kamcli)

## Typical Use Cases

### VoIP Provider

The default **kamailio.cfg** is practically an implementation of simple
SIP operator services. See the section above dedicated to default
configuration file for more details.

### Load Balancing

See dispatcher module:

- [https://kamailio.org/docs/modules/stable/modules/dispatcher.html](https://kamailio.org/docs/modules/stable/modules/dispatcher.html)

### Least Cost Routing

See the modules:

- [https://kamailio.org/docs/modules/stable/modules/lcr.html](https://kamailio.org/docs/modules/stable/modules/lcr.html)
- [https://kamailio.org/docs/modules/stable/modules/carrierroute.html](https://kamailio.org/docs/modules/stable/modules/carrierroute.html)
- [https://kamailio.org/docs/modules/stable/modules/drouting.html](https://kamailio.org/docs/modules/stable/modules/drouting.html)

### IMS/VoLTE

Look at the modules that have the name prefixed with **ims\_** or
starting with **cdp** (the later are for Diameter):

- [https://kamailio.org/docs/modules/stable/](http://kamailio.org/docs/modules/stable/)

Example of configuration files for different IMS roles (eg., ICSCF,
PCSCF, SCSCF) are available in the source tree, look inside the
sub-directory **examples/**.

### Instant Messaging and Presence

Look at the modules that have the name prefixed with **presence**
(presence server) or **pua** (presence user agent):

- [http://kamailio.org/docs/modules/stable/](http://kamailio.org/docs/modules/stable/)

### WebRTC

See the module:

- [http://kamailio.org/docs/modules/stable/modules/websocket.html](http://kamailio.org/docs/modules/stable/modules/websocket.html)

## Useful Resources

### Kamailio Books

- [SIP Routing with Kamailio](http://www.asipto.com/sw/kamailio-admin-book/)

### Kamailio Online Tutorials

- [Kamailio Devel Tutorial](http://www.asipto.com/pub/kamailio-devel-guide/)
- [SER Getting Started](http://kamailio.org/docs/ser-getting-started/SER-GettingStarted.pdf)

### Related Open Source Projects

Open source projects embedding Kamailio that can help rolling out
specific use cases.

- [sip:provider CE](https://www.sipwise.org/products/spce/) -
    telephony operator platform
- [kazoo](https://github.com/2600hz/kazoo) - cloud PBX platform
- [Elastix MT](http://www.elastix.org/) - multi-tenant PBX system
