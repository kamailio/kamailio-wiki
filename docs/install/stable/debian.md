# Install Kamailio On Debian

Kamailio packages are included in the official Debian Stable repository.
At the time of writing the initial version of this tutorial, Debian
Stable codename is Jessie, version 8.x.

The focus of this tutorial is to install Kamailio with MySQL backend.

## APT Install Commands

```
    apt-get update
    apt-get install mysql-server
    apt-get install kamailio kamailio-mysql-modules
```

## Config Files

Configuration files are located in **/etc/kamailio/** folder.

### Kamctlrc

The **/etc/kamailio/kamctlrc** is the configuration file for **kamctl**
and **kamdbctl**. You need to edit it and set the **SIP_DOMAIN** to your
SIP service domain (or IP address if you don't have a DNS hostname
associated with your SIP service).

Set also the **DBENGINE** to be MYSQL and adjust other setting as you
want.

### Kamailio.cfg

The **/etc/kamailio/kamailio.cfg** is the configuration file for
**kamailio**. Edit it to enable some of the features shipped with it.

To enable use of MySQL backed, user authentication and persistent user
location, add after the first line:

```
    #!define WITH_MYSQL
    #!define WITH_AUTH
    #!define WITH_USRLOCDB
```

## Create Database

To create the database structure needed by Kamailio, run:

```
    kamdbctl create
```

## Startup Scripts

### Init.d Scripts

Depending on startup system, you may have an **/etc/init.d/kamailio**
script that you can use to start/stop kamailio.

First you should edit **/etc/default/kamailio** and adjust the setting
for kamailio startup script, in particular the one that enables kamailio
to start.

```
    /etc/init.d/kamailio start
    /etc/init.d/kamailio stop
```

### Systemd Scripts

If the default startup system is systemd, then kamailio can be managed
via systemctl:

```
    systemctl start kamailio
    systemctl stop kamailio
```

First you may also need to edit **/etc/default/kamailio** and adjust the
setting for kamailio startup script, in particular the one that enables
kamailio to start.

If you edit the systemd unit file in order to add your own functions,
you need to make sure that you make a copy of the unit file in
**/etc/systemd/system** in order to avoid any updates in packages to
overwrite your modified file with the standard one.

## Adding Subscribers

To add subscribers (users), you can use the **kamctl** command:

```
    kamctl add userid password
```

Like:

```
    kamctl add alice secret
```

## Alternative APT Repositories

You can check the list of APT repositories offered by Kamailio project
for various Debian or Ubuntu versions:

- [DEBS: Debian - Ubuntu](../../packages/debs.md)
