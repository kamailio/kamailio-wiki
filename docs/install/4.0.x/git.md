# Install And Maintain Kamailio v4.0.x Version From GIT

    Main author:
       Daniel-Constantin Mierla <miconda (at) gmail.com>

This is a step by step tutorial about how to install and maintain
Kamailio SIP Server version 4.0.x using the sources downloaded from GIT
repository - the choice for those willing to write code for Kamailio or
to try the new features to be released in the future with the next major
stable version.

🔥*This document focuses on Kamailio v4.0.x with MySQL
support, using a Debian unstable system.*

The first version in release series 4.0 is 4.0.0, 4.0.x refers to the
most recent version released at some point in time that starts with 4.0.

Note that Kamailio provides APT repositories for several Debian/Ubuntu
releases, you can use them to do the install from .deb packages, see:

- <http://www.kamailio.org/wiki/packages/debs>

### Notes on Kamailio vs SER

Since version 4.0.0, Kamailio and SER integration was fully completed,
there are no more duplicated modules and a single database schema.
Default flavour is **kamailio**, setting this name to the application
and database. SER flavour can be compiled using **make** command line
options (practically, flavour system is now just about naming the
application and related components).

## 1. Prerequisites

To be able to follow the guidelines from this document you need **root**
access.

The following packages are required before proceeding to the next steps.

- <u>git</u> client: apt-get install git-core - it is recommended to
    have a recent version, if your Linux distro has an old version, you
    can download newer one from: <http://git-scm.com/>
- <u>gcc</u> compiler: apt-get install gcc
- <u>flex</u> - apt-get install flex
- <u>bison</u> - apt-get install bison
- <u>libmysqlclient-dev</u> - apt-get install libmysqlclient-dev
- <u>make</u> - apt-get install make
- if you want to enable more modules, some of them require extra
    libraries:
  - <u>libssl</u> - apt-get install libssl-dev
  - <u>libcurl</u> - apt-get install libcurl4-openssl-dev
  - <u>libxml2</u> - apt-get install libxml2-dev
  - <u>libpcre3</u> - apt-get install libpcre3-dev

## 2. Getting sources from GIT

First of all, you have to create a directory on the file system where
the sources will be stored.

      mkdir -p /usr/local/src/kamailio-4.0
      cd /usr/local/src/kamailio-4.0

Download the sources from GIT using the following commands.

      git clone --depth 1 --no-single-branch git://git.sip-router.org/sip-router kamailio
      cd kamailio
      git checkout -b 4.0 origin/4.0

*Note: if your git client version does not support
**--no-single-branch** command line parameter, then just remove it.*

## 3. Tuning Makefiles

The first step is to generate config files for build system.

      make cfg

Next step is to enable the MySQL module. Edit **modules.lst** file:

      nano -w modules.lst

Add **db_mysql** to the variable **include_modules**.

    include_modules= db_mysql

Save the **modules.lst** and exit.

NOTE: this is one mechanism to enable modules which are not compiled by
default, such as lcr, dialplan, presence -- add the modules to
**include_modules** variable inside the **modules.lst** file.

Alternative is to set 'include_modules' variable to specify what extra
modules to be included for compilation when building Makefile cfg:

    make include_modules="db_mysql" cfg

If you want to install everything in one directory (so you can delete
all installed files at once), say /usr/local/kamailio-3.3, then set
PREFIX variable to the install path in 'make cfg ...' command:

    make PREFIX="/usr/local/kamailio-4.0" include_modules="db_mysql" cfg

If you set this PREFIX you have to change most of the paths below from
'/usr/local/...' to '/usr/local/kamailio-4.0/...'.

More hints about Makefile system at:

- <http://sip-router.org/wiki/tutorials/makefile-system>

## 4. Compile Kamailio

Once you added the mysql module to the list of enabled modules, you can
compile Kamailio:

      make all

You can get full compile flags output using:

      make Q=0 all

## 5. Install Kamailio

When the compilation is ready, install Kamailio with the following
command:

      make install

## 6. What and where was installed

The binaries and executable scripts were installed in:

      /usr/local/sbin

These are:

- <u>kamailio</u> - Kamailio SIP server
- <u>kamdbctl</u> - script to create and manage the Databases
- <u>kamctl</u> - script to manage and control Kamailio SIP server
- <u>sercmd</u> - CLI - command line tool to interface with Kamailio
    SIP server

To be able to use the binaries from command line, make sure that
'/usr/local/sbin' is set in PATH environment variable. You can check
that with 'echo $PATH'. If not and you are using 'bash', open
'/root/.bash_profile' and at the end add:

      PATH=$PATH:/usr/local/sbin
      export PATH

Kamailio (OpenSER) modules are installed in:

      /usr/local/lib/kamailio/modules/
      /usr/local/lib/kamailio/modules_k/

Note: On 64 bit systems, /usr/local/lib64 may be used.

The documentation and readme files are installed in:

      /usr/local/share/doc/kamailio/

The man pages are installed in:

      /usr/local/share/man/man5/
      /usr/local/share/man/man8/

The configuration file was installed in:

      /usr/local/etc/kamailio/kamailio.cfg

In case you set the PREFIX variable in 'make cfg ...' command, then
replace **/usr/local** in all paths above with the value of PREFIX in
order to locate the files installed.

## 7. Create MySQL database

To create the MySQL database, you have to use the database setup script.
First edit **kamctlrc** file to set the database server type:

      nano -w /usr/local/etc/kamailio/kamctlrc

Locate DBENGINE variable and set it to MYSQL:

    DBENGINE=MYSQL

You can change other values in **kamctlrc** file, at least it is
recommended to change the default passwords for the users to be created
to connect to database.

Once you are done updating **kamctlrc** file, run the script to create
the database used by Kamailio:

      /usr/local/sbin/kamdbctl create

You can call this script without any parameter to get some help for the
usage. You will be asked for the domain name Kamailio is going to serve
(e.g., mysipserver.com) and the password of the 'root' MySQL user. The
script will create a database named 'kamailio' containing the tables
required by Kamailio. You can change the default settings in the
kamctlrc file mentioned above.

The script will add two users in MySQL:

\- **kamailio** - (with default password 'kamailiorw') - user which has
full access rights to 'kamailio' database

\- **kamailioro** - (with default password 'kamailioro') - user which
has read-only access rights to 'kamailio' database

**<u>Do change the passwords for these two users to something different
that the default values that come with sources.</u>**

## 8. Edit configuration file

To fit your requirements for the VoIP platform, you have to edit the
configuration file.

      /usr/local/etc/kamailio/kamailio.cfg

Follow the instruction in the comments to enable usage of MySQL.
Basically you have to add several lines at the top of config file, like:

    #!define WITH_MYSQL
    #!define WITH_AUTH
    #!define WITH_USRLOCDB

If you changed the password for the 'kamailio' user of MySQL, you have
to update the value for 'db_url' parameters.

You can browse
[kamailio.cfg](http://git.sip-router.org/cgi-bin/gitweb.cgi?p=sip-router;a=blob;f=etc/kamailio.cfg)
online on GIT repository.

## 9. The init.d script

The init.d script can be used to start/stop the Kamailio server in a
nicer way. A sample of init.d script for Kamailio is provided at:

    /usr/local/src/kamailio-4.0/kamailio/pkg/kamailio/deb/debian/kamailio.init

Just copy the init file into the /etc/init.d/kamailio. Then change the
permissions:

      chmod 755 /etc/init.d/kamailio

then edit the file updating the $DAEMON and $CFGFILE values:

      DAEMON=/usr/local/sbin/kamailio
      CFGFILE=/usr/local/etc/kamailio/kamailio.cfg

You need also setup a configuration file in the /etc/default/ directory.
This file can be found at:

      /usr/local/src/kamailio-4.0/kamailio/pkg/kamailio/debian/kamailio.default

You need to rename the file to 'kamailio' after you've copied it. Then
edit this file and set RUN_KAMAILIO=yes. Edit the other options at your
convenience.

Create the directory for pid file:

    mkdir -p /var/run/kamailio

Default setting is to run Kamailio as user "kamailio" and group
"kamailio". For that you need to create the user:

    adduser --quiet --system --group --disabled-password \
            --shell /bin/false --gecos "Kamailio" \
            --home /var/run/kamailio kamailio

    # set ownership to /var/run/kamailio
    chown kamailio:kamailio /var/run/kamailio

Then you can start/stop Kamailio using the following commands:

      /etc/init.d/kamailio start
      /etc/init.d/kamailio stop

## 10. Ready to rock

Now everything is in place. You can start the VoIP service, creating new
accounts and setting the phones.

A new account can be added using 'kamctl' tool via 'kamctl add
\<username> \<password> \<email>'. (or try without the email)

    kamctl add test testpasswd test@mysipserver.com

If you are asked for SIP_DOMAIN environment variable do one of the
following option.

      1.
      export SIP_DOMAIN=mysipserver.com

      2.
      edit '/root/.kamctlrc' and add:
      SIP_DOMAIN=mysipserver.com

## 11. Maintenance

The maintenance process is very simple right now. You have to be user
'root' and execute following commands:

      cd /usr/local/src/kamailio-4.0/kamailio
      git pull origin
      make all
      make install
      /etc/init.d/kamailio restart

Now you have the latest Kamailio devel running on your system.

## 12. Time for maintenance service

Notification about GIT commits are sent to the mailing list:
**<sr-dev@lists.sip-router.org>**. Each commit notification contains the
reference to the branch where the commit has been done. If the commit
message contains the lines:

    Module: sip-router
    Branch: 4.0

then an update has been made to Kamailio devel version and it will be
available to the public GIT in no time.
