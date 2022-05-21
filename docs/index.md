# Kamailio SIP Server Documentation Wiki

📘 **Contributions are very much appreciated! Use pull requests to add or update content of this repository.**

  - **[https://github.com/kamailio/kamailio-wiki](https://github.com/kamailio/kamailio-wiki)**

The wiki content is also available in HTML format:

  - **[Browse Wiki HTML Pages On Kamailio.Org](https://www.kamailio.org/wikidocs/)**

Few guidelines to edit the wiki:

-   everyone is welcome to add useful content to the wiki
-   use subfolders per category when adding new pages
-   if there is subfolder that matches the new page topic, add it
    inside it, eventually create a new sub-folder if you want to narrow down to a sub-category
-   if you add many pages for the same subject, group them under same
    sub-folder
-   if you are not sure that the content is entirely correct, send an
    email to mailing list **sr-users (at) lists.sip-router.org**
    asking for review

🔥 **IMPORTANT:** *For a cleaner presentation, the front page in
this wiki site is linking the documents for latest stable versions, 4.3
or newer, respectively the installation and upgrade tutorials, new
features, a.s.o... For older releases, 3.2.x to 4.2.x, go to **Older
Releases Index**:*

  * [Link To Content For Older Releases](content/old-releases.md)

🔥 **IMPORTANT:** *Content for older releases than 3.2.0 is
available at the **Old Wiki Site**:*

  * [Link To Old Wiki Site](https://www.kamailio.org/dokuwiki/)

## Installation

### Installation from GIT Sources

-   [Install Kamailio Devel Version From GIT (html)](https://kamailio.org/docs/tutorials/devel/kamailio-install-guide-git/)
-   [Install Kamailio Devel Version From GIT (wiki)](install/devel/git.md)
-   [Install Kamailio v5.6.x From GIT (html)](https://kamailio.org/docs/tutorials/5.6.x/kamailio-install-guide-git/)
-   [Install Kamailio v5.5.x From GIT (html)](https://kamailio.org/docs/tutorials/5.5.x/kamailio-install-guide-git/)
-   [Install Kamailio v5.4.x From GIT (html)](https://kamailio.org/docs/tutorials/5.4.x/kamailio-install-guide-git/)
-   [Install Kamailio v5.3.x From GIT (html)](https://kamailio.org/docs/tutorials/5.3.x/kamailio-install-guide-git/)
-   [Install Kamailio v5.2.x From GIT (html)](https://kamailio.org/docs/tutorials/5.2.x/kamailio-install-guide-git/)
-   [Install Kamailio v5.1.x From GIT (html)](https://kamailio.org/docs/tutorials/5.1.x/kamailio-install-guide-git/)
-   [Install Kamailio v5.0.x From GIT (html)](https://kamailio.org/docs/tutorials/5.0.x/kamailio-install-guide-git/)
-   [Install Kamailio v4.4.x From GIT](install/4.4.x/git.md)
-   [Install Kamailio v4.3.x From GIT](install/4.3.x/git.md)

### Installation By Building Packages

-   [Install Kamailio v4.0.x By Building Debian Packages](install/4.0.x/debian.md)
-   [Install Kamailio v3.2.x By Building Debian Packages](install/3.2.x/debian.md)

### Installation From Packages

-   [Install Kamailio On Debian Or Ubuntu (html)](https://kamailio.org/docs/tutorials/devel/kamailio-install-guide-deb/)
-   [Install Kamailio On Debian](install/stable/debian.md)

### Installation On Containers

-   [Install Kamailio On Docker](install/container/docker.md)
-   [Install Kamailio using Ansible and Docker](https://github.com/ghrst/Kamailio-HA)

### Upgrade

-   [Upgrade Kamailio stable to devel](install/upgrade/stable-to-devel.md)
-   [Upgrade Kamailio v5.5.x to v5.6.0](install/upgrade/5.5.x-to-5.6.0.md)
-   [Upgrade Kamailio v5.4.x to v5.5.0](install/upgrade/5.4.x-to-5.5.0.md)
-   [Upgrade Kamailio v5.3.x to v5.4.0](install/upgrade/5.3.x-to-5.4.0.md)
-   [Upgrade Kamailio v5.2.x to v5.3.0](install/upgrade/5.2.x-to-5.3.0.md)
-   [Upgrade Kamailio v5.1.x to v5.2.0](install/upgrade/5.1.x-to-5.2.0.md)
-   [Upgrade Kamailio v5.0.x to v5.1.0](install/upgrade/5.0.x-to-5.1.0.md)
-   [Upgrade Kamailio v4.4.x to v5.0.0](install/upgrade/4.4.x-to-5.0.0.md)
-   [Upgrade Kamailio v4.3.x to v4.4.0](install/upgrade/4.3.x-to-4.4.0.md)

## Download

-   [Main Download Page](https://www.kamailio.org/w/download/)
-   [Download Tarball with Sources of Latest Stable Release](https://www.kamailio.org/pub/kamailio/latest/src/)
-   [Download Sources of v5.6.x from GIT Repository](download/v5.6.x-from-git.md)
-   [Download Sources of v5.5.x from GIT Repository](download/v5.5.x-from-git.md)
-   [Download Sources of v5.4.x from GIT Repository](download/v5.4.x-from-git.md)
-   [Download Sources of v5.3.x from GIT Repository](download/v5.3.x-from-git.md)
-   [Download Sources of v5.2.x from GIT Repository](download/v5.2.x-from-git.md)
-   [Download Sources of v5.1.x from GIT Repository](download/v5.1.x-from-git.md)
-   [Download Sources of v5.0.x from GIT Repository](download/v5.0.x-from-git.md)
-   [Download Sources of v4.4.x from GIT Repository](download/v4.4.x-from-git.md)
-   [Download Sources of v4.3.x from GIT Repository](download/v4.3.x-from-git.md)

### Linux - Unix Distributions

-   [DEBS: Debian - Ubuntu](packages/debs.md)
-   [RPMS: CentOS - RedHat - Fedora - OpenSUSE](packages/rpms.md)
-   [AlpineLinux](packages/alpinelinux.md)

## Cookbooks

  

|         |                               |                                          |                                          |                                  |                                                  |
|---------|-------------------------------|------------------------------------------|------------------------------------------|----------------------------------|--------------------------------------------------|
| Version | Core Cookbook                 | Pseudo Variables                         | Transformations                          | Selects                          | Modules                                          |
| devel   | [link](cookbooks/devel/core.md) | [link](cookbooks/devel/pseudovariables.md) | [link](cookbooks/devel/transformations.md) | [link](cookbooks/devel/selects.md) | [link](https://kamailio.org/docs/modules/devel/) |
| 5.6.x   | [link](cookbooks/5.6.x/core.md) | [link](cookbooks/5.6.x/pseudovariables.md) | [link](cookbooks/5.6.x/transformations.md) | [link](cookbooks/5.6.x/selects.md) | [link](https://kamailio.org/docs/modules/5.6.x/) |
| 5.5.x   | [link](cookbooks/5.5.x/core.md) | [link](cookbooks/5.5.x/pseudovariables.md) | [link](cookbooks/5.5.x/transformations.md) | [link](cookbooks/5.5.x/selects.md) | [link](https://kamailio.org/docs/modules/5.5.x/) |
| 5.4.x   | [link](cookbooks/5.4.x/core.md) | [link](cookbooks/5.4.x/pseudovariables.md) | [link](cookbooks/5.4.x/transformations.md) | [link](cookbooks/5.4.x/selects.md) | [link](https://kamailio.org/docs/modules/5.4.x/) |
| 5.3.x   | [link](cookbooks/5.3.x/core.md) | [link](cookbooks/5.3.x/pseudovariables.md) | [link](cookbooks/5.3.x/transformations.md) | [link](cookbooks/5.3.x/selects.md) | [link](https://kamailio.org/docs/modules/5.3.x/) |
| 5.2.x   | [link](cookbooks/5.2.x/core.md) | [link](cookbooks/5.2.x/pseudovariables.md) | [link](cookbooks/5.2.x/transformations.md) | [link](cookbooks/5.2.x/selects.md) | [link](https://kamailio.org/docs/modules/5.2.x/) |
| 5.1.x   | [link](cookbooks/5.1.x/core.md) | [link](cookbooks/5.1.x/pseudovariables.md) | [link](cookbooks/5.1.x/transformations.md) | [link](cookbooks/5.1.x/selects.md) | [link](https://kamailio.org/docs/modules/5.1.x/) |
| 5.0.x   | [link](cookbooks/5.0.x/core.md) | [link](cookbooks/5.0.x/pseudovariables.md) | [link](cookbooks/5.0.x/transformations.md) | [link](cookbooks/5.0.x/selects.md) | [link](https://kamailio.org/docs/modules/5.0.x/) |
| 4.4.x   | [link](cookbooks/4.4.x/core.md) | [link](cookbooks/4.4.x/pseudovariables.md) | [link](cookbooks/4.4.x/transformations.md) | [link](cookbooks/4.4.x/selects.md) | [link](https://kamailio.org/docs/modules/4.4.x/) |
| 4.3.x   | [link](cookbooks/4.3.x/core.md) | [link](cookbooks/4.3.x/pseudovariables.md) | [link](cookbooks/4.3.x/transformations.md) | [link](cookbooks/4.3.x/selects.md) | [link](https://kamailio.org/docs/modules/4.3.x/) |

  

## Alphabetic Indexes

Alphabetic indexes generated from documentation (modules' readme docs).

  

|         |                                           |                                          |                                         |                                           |
|---------|-------------------------------------------|------------------------------------------|-----------------------------------------|-------------------------------------------|
| Version | Modules Parameters                        | Modules Functions                        | RPC Commands                            | Statistics                                |
| devel   | [link](alphaindexes/devel/modparameters.md) | [link](alphaindexes/devel/modfunctions.md) | [link](alphaindexes/devel/rpccommands.md) | [link](alphaindexes/devel/modstatistics.md) |
| 5.6.x   | [link](alphaindexes/5.6.x/modparameters.md) | [link](alphaindexes/5.6.x/modfunctions.md) | [link](alphaindexes/5.6.x/rpccommands.md) | [link](alphaindexes/5.6.x/modstatistics.md) |
| 5.5.x   | [link](alphaindexes/5.5.x/modparameters.md) | [link](alphaindexes/5.5.x/modfunctions.md) | [link](alphaindexes/5.5.x/rpccommands.md) | [link](alphaindexes/5.5.x/modstatistics.md) |
| 5.4.x   | [link](alphaindexes/5.4.x/modparameters.md) | [link](alphaindexes/5.4.x/modfunctions.md) | [link](alphaindexes/5.4.x/rpccommands.md) | [link](alphaindexes/5.4.x/modstatistics.md) |
| 5.3.x   | [link](alphaindexes/5.3.x/modparameters.md) | [link](alphaindexes/5.3.x/modfunctions.md) | [link](alphaindexes/5.3.x/rpccommands.md) | [link](alphaindexes/5.3.x/modstatistics.md) |
| 5.2.x   | [link](alphaindexes/5.2.x/modparameters.md) | [link](alphaindexes/5.2.x/modfunctions.md) | [link](alphaindexes/5.2.x/rpccommands.md) | [link](alphaindexes/5.2.x/modstatistics.md) |
| 5.1.x   | [link](alphaindexes/5.1.x/modparameters.md) | [link](alphaindexes/5.1.x/modfunctions.md) | [link](alphaindexes/5.1.x/rpccommands.md) | [link](alphaindexes/5.1.x/modstatistics.md) |
| 5.0.x   | [link](alphaindexes/5.0.x/modparameters.md) | [link](alphaindexes/5.0.x/modfunctions.md) | [link](alphaindexes/5.0.x/rpccommands.md) | [link](alphaindexes/5.0.x/modstatistics.md) |

  

|         |                                           |                                          |                                        |                                           |                                                                             |
|---------|-------------------------------------------|------------------------------------------|----------------------------------------|-------------------------------------------|-----------------------------------------------------------------------------|
| Version | Modules Parameters                        | Modules Functions                        | MI Commands                            | Statistics                                | RPC Commands (List)                                                         |
| 4.4.x   | [link](alphaindexes/4.4.x/modparameters.md) | [link](alphaindexes/4.4.x/modfunctions.md) | [link](alphaindexes/4.4.x/micommands.md) | [link](alphaindexes/4.4.x/modstatistics.md) | [link](https://www.kamailio.org/docs/docbooks/4.4.x/rpc_list/rpc_list.html) |
| 4.3.x   | [link](alphaindexes/4.3.x/modparameters.md) | [link](alphaindexes/4.3.x/modfunctions.md) | [link](alphaindexes/4.3.x/micommands.md) | [link](alphaindexes/4.3.x/modstatistics.md) | [link](https://www.kamailio.org/docs/docbooks/4.3.x/rpc_list/rpc_list.html) |

  

## C Code Export Lists

Lists of exported symbols generated from C code.

  

|         |                                                                             |                                                                                     |                                                                                   |                                                                                     |
|---------|-----------------------------------------------------------------------------|-------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| Version | RPC Commands List                                                           | Cfg Vars List                                                                       | Selects List                                                                      | Counters List                                                                       |
| devel   | [link](https://www.kamailio.org/docs/docbooks/devel/rpc_list/rpc_list.html) | [link](https://www.kamailio.org/docs/docbooks/devel/cfg_var_list/cfg_var_list.html) | [link](https://www.kamailio.org/docs/docbooks/devel/select_list/select_list.html) | [link](https://www.kamailio.org/docs/docbooks/devel/counter_list/counter_list.html) |
| 5.0.x   | [link](https://www.kamailio.org/docs/docbooks/5.0.x/rpc_list/rpc_list.html) | ---                                                                                 | ---                                                                               | ---                                                                                 |

## KEMI Framework

Documentation and functions exported to KEMI framework, that can be used
in embedded Lua/Python/JavaScript/Ruby/... SIP routing scripts:

-   Development:
    <https://kamailio.org/docs/tutorials/devel/kamailio-kemi-framework/>
-   Version 5.4.x:
    <https://kamailio.org/docs/tutorials/5.4.x/kamailio-kemi-framework/>

## Features

-   [New Features in Devel Version](features/new-in-devel.md)
-   [New Features in Release 5.6.x](features/new-in-5.6.x.md)
-   [New Features in Release 5.5.x](features/new-in-5.5.x.md)
-   [New Features in Release 5.4.x](features/new-in-5.4.x.md)
-   [New Features in Release 5.3.x](features/new-in-5.3.x.md)
-   [New Features in Release 5.2.x](features/new-in-5.2.x.md)
-   [New Features in Release 5.1.x](features/new-in-5.1.x.md)
-   [New Features in Release 5.0.x](features/new-in-5.0.x.md)
-   [New Features in Release 4.4.x](features/new-in-4.4.x.md)
-   [New Features in Release 4.3.x](features/new-in-4.3.x.md)

## Tutorials

-   [Kamailio and Syslog with Log Rotate](tutorials/3.2.x/syslog.md)
-   [Testing and Debugging TLS Connections](tutorials/tls/testing-and-debugging.md)
-   [Frequently Asked Questions](tutorials/faq/main.md)
-   [Kamailio with DNSSEC](tutorials/dns/dnssec.md)
-   [Mini HowTo Tutorials](tutorials/mini-howto-admin/main.md)
-   [Howto install and configure IMS with Kamailio](tutorials/ims/installation-howto.md)
-   [Howto setup auth_db and usrloc](tutorials/auth/auth_db.md)
-   [Howto switch to OpenSSL 1.0 for TLS Connections](tutorials/tls/howto-openssl-1-0.md)
-   [Troubleshooting - Memory](tutorials/troubleshooting/memory.md)
-   [Troubleshooting - Core Dump File](tutorials/troubleshooting/coredumpfile.md)
-   [Getting Started](tutorials/getting-started/main.md)
-   [Kamailio and MongoDB](tutorials/kamailio-and-mongodb.md)
-   [Kamailio Startup Scripts](tutorials/kamailio-startup-scripts.md)
-   [Kamailio Flag Operations](tutorials/kamailio-flag-operations.md)

### Security related tutorials

-   [Overview of Security issues for SIP routers](tutorials/security/security-threats.md)
-   [Overview of Security related config snippets](tutorials/security/kamailio-security.md)

### External Tutorials

-   [Kamailio and Asterisk Integration](http://kb.asipto.com/asterisk:index)
-   [Kamailio and FreeSwitch Integration](http://kb.asipto.com/freeswitch:index)
-   [Various Kamailio Use Case Tutorials](http://kb.asipto.com/kamailio:index)

### Database Structure

-   [Devel Version](https://www.kamailio.org/docs/db-tables/kamailio-db-devel.html)
-   [5.2.x Version](https://www.kamailio.org/docs/db-tables/kamailio-db-5.2.x.html)
-   [5.1.x Version](https://www.kamailio.org/docs/db-tables/kamailio-db-5.1.x.html)
-   [5.0.x Version](https://www.kamailio.org/docs/db-tables/kamailio-db-5.0.x.html)
-   [4.4.x Version](https://www.kamailio.org/docs/db-tables/kamailio-db-4.4.x.html)
-   [4.3.x Version](https://www.kamailio.org/docs/db-tables/kamailio-db-4.3.x.html)

## Development

### Development APIs

-   [RPC Control Interface - API](https://www.kamailio.org/docs/docbooks/3.2.x/rpc_api/rpc_api.html)
-   [Kamailio Development Guide](https://www.asipto.com/pub/kamailio-devel-guide/)

### Embedded APIs

See the section about KEMI exports.

Old Exports APIs:

  

|         |                                 |                                |                                 |                                 |                                   |
|---------|---------------------------------|--------------------------------|---------------------------------|---------------------------------|-----------------------------------|
| Version | \- Java -                       | \- Lua -                       | \- Mono -                       | \- Perl -                       | \- Python -                       |
| devel   | [link](embeddedapi/devel/java.md) | [link](embeddedapi/devel/lua.md) | [link](embeddedapi/devel/mono.md) | [link](embeddedapi/devel/perl.md) | [link](embeddedapi/devel/python.md) |
| 4.3.x   | [link](embeddedapi/4.3.x/java.md) | [link](embeddedapi/4.3.x/lua.md) | [link](embeddedapi/4.3.x/mono.md) | [link](embeddedapi/4.3.x/perl.md) | [link](embeddedapi/4.3.x/python.md) |

  

### Guidelines

-   [Kamailio SIP Server v3.2.x Devel Guide](https://asipto.com/u/kdg)
-   [Backporting Patches from Devel Branch to 3.2.x](devel/backporting-to-3.2.x.md)
-   [GIT Commit Guidelines](devel/git-commit-guidelines.md)
-   [Contributions via Github](devel/github-contributions.md)
-   [Update Database Schema](devel/update-database-schema.md)
-   [Mini How-To Guides for Development](devel/how-to/main.md)
-   [Writing Docbook Files for Module Readme](devel/module-docbook-readme.md)
-   [Developer Git Access](devel/git-access.md)
-   [Process for handling Security Vulnerabilities](security/policy.md)
-   [Configuration File Engines](devel/config-engines.md)
-   [Troubleshooting - GDB Scripts](devel/troubleshooting-gdb-scripts.md)

### Misc

-   [New Features Requests](devel/new-features-requests.md)
-   [Contributors - List of Active Developers](devel/active-contributors.md)
-   [Online IRC Development Meetings](devel/irc-meetings.md)
-   [Makefile System](devel/makefile-system.md)
-   [Kamailio Chinese Community-中国社区](https://www.kamailio.org.cn)
-   [Various Scripts](scripts/toc.md)
-   [Kamailio v5.0 Design](devel/kamailio-5.0-design.md)
-   [Kamailio KEMI Framework Tutorial](https://kamailio.org/docs/tutorials/devel/kamailio-kemi-framework/)
-   [KEMI Configuration File Engines](devel/config-engines.md)
-   [History - 9 Years of SER-Kamailio](history/09-years-ser-kamailio.md)
-   [History - 15 Years of SER-Kamailio](history/15-years-ser-kamailio.md)
-   [Kamailio related event presentation archive](https://www.kamailio.org/events/)
-   [KEMI Performances](kemi/performances.md)

## Disclaimer

📓 The initial content was migrated to github from an open wiki portal, where people could contribute
without any restrictions. Should anyone notice any *illegal* content please email to
*sr-dev@lists.kamailio.org* or open an issue. **kamailio.org** organization is not responsible
for the content contributed by external people and commits to react in a reasonable time when
such content is reported.
