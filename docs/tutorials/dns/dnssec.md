# Kamailio with DNSSEC

The **dnssec** module in Kamailio was added during the development of
v4.1.0 (expected to be released later in 2013). Therefore this tutorial
presents how to add DNSSEC module in the default configuration file of
Kamailio, following GIT installation guidelines.

In short, this tutorial focuses on:

-   install Kamailio development version from GIT repository on Ubuntu
    12.04 32b
-   enable user authentication and persistent location service using
    MySQL server
-   add DNSSEC support to configuration file

**Note:** the DNSSEC module is several days old at the time of writing
initial version of this tutorial. For any assistance, email to
**sr-users (at) lists.kamailio.org** -- it is a public mailing list
that requires subscription, see more details at:

-   [https://lists.kamailio.org/mailman3/postorius/lists/sr-users.lists.kamailio.org/](https://lists.kamailio.org/mailman3/postorius/lists/sr-users.lists.kamailio.org/)

**Note:** Ubuntu 12.04 was chosen because dnssec tools devel library are
provided for this distribution, making the installation of the required
dependencies much easier. There are packages for other Linux
distribution (e.g., Fedora), most of the steps provided in this tutorial
being valid (the rest have to updated for the specifics of the
distribution, e.g., how to install packages, create system users or
init.d scripts).

## About DNSSEC

For reading more about DNSSEC, head to:

-   [https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions](https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions)

Many related resources, including the required libraries for Kamailio's
DNSSEC module, are available at:

-   [http://www.dnssec-tools.org/](http://www.dnssec-tools.org/)

### DNSSEC Tools Installation

The dnssec-tools package should be available on recent Debian/Ubuntu, to
install it us:

```
apt-get install dnssec-tools
```

### DNSSEC Tools Devel Libraries Installation

You need DNSSEC tools devel libraries to compile Kamailio's DNSSEC
module. You can download the libraries from:

-   [https://dnssec-tools.org/download/#gotoBinaries](https://dnssec-tools.org/download/#gotoBinaries)

The files are:

```
    dns-validator_2.0-1_i386.deb
    libval-threads_2.0-1_i386.deb
    libval-threads-dev_2.0-1_i386.deb
    libsres_2.0-1_i386.deb
    libsres-dev_2.0-1_i386.deb
```

Once you download the deb files, install them with **dpkg -i ...**

## Kamailio Installation

Here is a quick guide to install Kamailio development version from GIT
repository. If you look for a more detailed tutorial, check:

-   [Install Kamailio Devel Version From GIT](../../install/devel/git.md)

### Prerequisites

Install the packages needed to build Kamailio:

```
    apt-get install make autoconf gcc flex bison git-core
    apt-get install libmysqlclient-dev libssl-dev
```

### Fetch Sources from GIT Repository

First of all, you have to create a directory on the file system where
the sources will be stored.

```
      mkdir -p /usr/local/src/kamailio-devel
      cd /usr/local/src/kamailio-devel
```

Download the sources from GIT using the following commands.

```
      git clone --depth 1 git://git.sip-router.org/sip-router kamailio
      cd kamailio
```

### Compile and Install

Run next set of commands:

```
      cd /usr/local/src/kamailio-devel/kamailio
      make cfg include_modules="db_mysql dnssec"
      make all
      make install
```

### Installation Details

The binaries and executable scripts were installed in:

```
      /usr/local/sbin
```

These are:

-   *kamailio* - Kamailio SIP server
-   *kamdbctl* - script to create and manage the databases
-   *kamctl* - script to manage and control Kamailio SIP server
-   *kamcmd* - CLI - command line tool to interface with Kamailio
    SIP server

To be able to use the binaries from command line, make sure that
`/usr/local/sbin` is set in PATH environment variable. You can check
that with `echo $PATH`. If not and you are using `bash`, open
`/root/.bash_profile` and at the end add:

```
      PATH=$PATH:/usr/local/sbin
      export PATH
```

Kamailio modules are installed in:

```
      /usr/local/lib/kamailio/modules/
```

Note: On 64 bit systems, /usr/local/lib64 may be used.

The documentation and readme files are installed in:

```
      /usr/local/share/doc/kamailio/
```

The man pages are installed in:

```
      /usr/local/share/man/man5/
      /usr/local/share/man/man8/
```

The configuration file was installed in:

```
      /usr/local/etc/kamailio/kamailio.cfg
```

### Kamctl Setup

kamctl is command line tool useful to control Kamailio. It can add or
remove SIP user profiles.

Edit **/usr/local/etc/kamailio/kamctlrc**, locate `DBENGINE` variable and
set it to `MYSQL`:

```
    DBENGINE=MYSQL
```

Also, you can set **SIP_DOMAIN** to you server hostname or IP address.

You can change other values in **kamctlrc** file, at least it is
recommended to change the default passwords for the users to be created
to connect to database.

### Database Setup

Once you are done updating **kamctlrc** file, run the script to create
the database used by Kamailio:

```
      /usr/local/sbin/kamdbctl create
```

You can call this script without any parameter to get some help for the
usage. You will be asked for the domain name Kamailio is going to serve
(e.g., `mysipserver.com`) and the password of the 'root' MySQL user. The
script will create a database named 'kamailio' containing the tables
required by Kamailio. You can change the default settings in the
kamctlrc file mentioned above.

The script will add two users in MySQL:

- **kamailio** - (with default password `kamailiorw`) - user which has
full access rights to `kamailio` database

- **kamailioro** - (with default password `kamailioro`) - user which
has read-only access rights to `kamailio` database

*Do change the passwords for these two users to something different that the default values that come with sources.*

### Adding SIP Users

Kamctl can be used for adding users, for example adding user **test**
with password **testpasswd**:

```
    kamctl add test testpasswd
```

### Init.d Script

The init.d script can be used to start/stop the Kamailio server in a
nicer way. A sample of init.d script for Kamailio is provided at:

```
      /usr/local/src/kamailio-devel/kamailio/pkg/kamailio/deb/debian/kamailio.init
```

The default file for init.d script is provided at:

```
      /usr/local/src/kamailio-devel/kamailio/pkg/kamailio/debian/kamailio.default
```

Run next command to deploy the init.d scripts:

```
      make install-initd-debian
```

It will create also user and group **kamailio**, plus runtime directory
**/var/run/kamailio**.

Now Kamailio can be started or stopped with:

```
      /etc/init.d/kamailio start
      /etc/init.d/kamailio stop
```

## Update Kamailio Config File

Next step is to enable user authentication, persistent location service
and add dnssec module. You have to edit the configuration file.

```
      /usr/local/etc/kamailio/kamailio.cfg
```

Follow the instruction in the comments to enable usage of MySQL.
Basically you have to add several lines at the top of config file (but
after the first line), like:

```
    #!define WITH_MYSQL
    #!define WITH_AUTH
    #!define WITH_USRLOCDB
```

If you changed the password for the 'kamailio' user of MySQL, you have
to update the value for **DBURL** define.

### Add DNSSEC Module

The README of DNSSEC module is available at:

-   [https://kamailio.org/docs/modules/devel/modules/dnssec.html](https://kamailio.org/docs/modules/devel/modules/dnssec.html)

You have to load dnssec module in kamailio.cfg:

```
    loadmodule "dnssec.so"
```

Add the above line somewhere before the first line starting with **modparam**.

The module does not require any parameter, you are ready to use the
configuration file now.

Start Kamailio with:

```
    /etc/init.d/kamailio start
```

## DNS Server DNSSEC Enabled

This tutorial does not include yet (left for future updates) how to
setup a DNSSEC-enabled DNS server, there are many useful resources on
the web. Among them:

-   <http://www.howtoforge.com/configuring-dnssec-on-bind9-9.7.3-on-debian-squeeze-ubuntu-11.10>
-   <http://wiki.wsartori.com/wiki/The_Perfect_BIND_DNS_Server_DNSSEC_enabled>

## Testing

One way to test is to setup two instances of Kamailio, one serving
`domainA.com` and the second `domainB.com`.

Then alice@domainA.com can call `bob@domainB.com`. Kamailio instance
serving `domainA.com` will do DNS lookup do discover the IP address of
`domainB.com`

One easy way to test is to use an Open DNS resolver that provides
Recursive DNSSEC capabilities. One of those is `8.8.8.8` ( Google Open
DNS). As per the FAQ, DNSSEC support is enabled
(<https://developers.google.com/speed/public-dns/faq#dnssec>)

Edit `/etc/resolv.conf` and modify your `nameserver` definition to have:

```
nameserver 8.8.8.8
```

Launch Kamailio with DNSSEC module enabled and try to send a SIP package
to the domain `www.dnssec-failed.org`. DNS resolving for this domain
should fail, as it is a test domain which provides an incorrect
signature. Kamailio should report: "0(70805) INFO: dnssec
\[dnssec_func.c:145\]: invalid domain www.dnssec-failed.org reason
VAL_UNTRUSTED_ANSWER"

## Remarks

-   setup of a DNS server with DNSSEC support is left for future updates
    of this tutorial
-   the DNSSEC module overwrites the API in the core for doing DNS
    queries, therefore is nothing else required to do apart of loading
    the module
-   Kamailio will do a DNS query each time it has to forward a SIP
    request based on hostname
