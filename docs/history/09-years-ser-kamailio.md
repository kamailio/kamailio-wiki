# History: 9 Years SER-Kamailio

    Date: Sep 3, 2010
    Data compiled by: Daniel-Constantin Mierla

## Overview

**SIP Express Router** (aka **SER**) is a high-performance,
configurable, free Session Initiation Protocol (SIP) server licensed
under the open-source GNU license, offering a large set of features.
Started before the publishing of RFC3261 (SIP v2.0), SER pioneered the
development of many SIP extensions and pushed further the real-time
communications over IP.

Initial project web site was:

-   <http://iptel.org/ser>

Now the web sites are:

-   <http://sip-router.org> (historical)
-   <http://www.kamailio.org>

It is the oldest and most robust open source SIP server, routing
**billions of VoIP minutes every month world wide**, being used from
Telcos and Carriers to ITSP and SOHO environments. If you haven't heard
of it so far, it is very likely because your VoIP provider routes the
calls fast and reliable with SER-based SIP servers, so you don't need to
build your own system.

First source code commit of SER was done **9 years ago**: **Sep 3,
2001**. According to GIT log, first three commits were:

    git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --reverse | head -3

    512dcd9 Andrei Pelinescu-Onciul Mon Sep 3 21:27:11 2001 +0000   Initial revision
    888ca09 Andrei Pelinescu-Onciul Tue Sep 4 01:41:39 2001 +0000   parser seems to work
    e60a972 Andrei Pelinescu-Onciul Tue Sep 4 20:55:41 2001 +0000   First working release

That is **3286 days** of continuous development, with over **70**
registered developers and hundreds of contributors, estimated cost of
development: **over 8 000 000 USD**.

## Summary of Evolution

-   **September 2001** - initial commit, SER was then developed for
    about one year internally at FhG FOKUS Institute, Berlin, Germany
-   **Autumn 2002** - SER was released as GPL, code published on
    BerliOS: <http://developer.berlios.de/projects/ser/>
-   **June 2005** - [OpenSER](http://www.openser-project.org) forked
    from SER, code hosted by Source Forge:
    <http://sourceforge.net/projects/openser/>
-   **July 2008** - OpenSER was renamed to
    [Kamailio](http://www.kamailio.org)
-   **November 2008** - SER and Kamailio teams decide to join
    development efforts and merge the source code trees of the two
    applications
    -   development portal for both changed to: <http://sip-router.org>
-   **January 2010** - version 3.0.0 is released, from a source code
    tree containing both SER and Kamailio
-   **September 2010** - expect next major release, version 3.1.0

<img src="http://sip-router.org/pub/img/sip-router-evolution.png" class="align-center" alt="http://sip-router.org/pub/img/sip-router-evolution.png" />

SER code and architecture was and still is the foundation for other
projects that forked over years from it or from its forks, which still
keep majority of inherited code untouched.

As you can notice, **SER** and **Kamailio** are now same application
(completely the same source code). The difference is made by what
modules are you using for same purpose (e.g., user authentication,
location, accounting) because the variants have a different database
structure (you can notice later the existence of modules with same name,
but located in different folders).

<img src="http://www.kamailio.org/wp-images/kamailio-rock-logo.jpg" class="align-center" alt="http://www.kamailio.org/wp-images/kamailio-rock-logo.jpg" />

Of course you can combine to some extent, for example use
Kamailio-specific accounting module with SER-specific database user
authentication module. The limitation comes to modules that have
dependencies, for example registrar module depends on usrloc module --
you have to use both from one side.

### Public Releases

There were 11 distinct numbering versions used over the years (0.9.x was
overlapping, counted once), internal VCS branching representations were:

#### SER Only Versions

-   ﻿﻿2002-09-25: SER 0.8.x
-   2005-07-04: SER 0.9.x
-   2008-08-06: SER 2.0.x
-   2009-02-28: SER 2.1.x

#### Kamailio (OpenSER) Only Versions

-   2005-06-14: Kamailio (OpenSER) 0.9.x - release built mainly out of
    SER 0.9.x
-   2005-10-25: Kamailio (OpenSER) 1.0.x
-   2006-07-10: Kamailio (OpenSER) 1.1.x
-   2007-03-12: Kamailio (OpenSER) 1.2.x
-   2007-12-13: Kamailio (OpenSER) 1.3.x - [See what was added in 1.3.x](http://www.kamailio.org/dokuwiki/doku.php/features:new-in-1.3.x)
-   2008-08-07: Kamailio (OpenSER) 1.4.x - [See what was added in 1.4.x](http://www.kamailio.org/dokuwiki/doku.php/features:new-in-1.4.x)
-   2009-03-02: Kamailio (OpenSER) 1.5.x - [See what was added in 1.5.x](http://www.kamailio.org/dokuwiki/doku.php/features:new-in-1.5.x)

#### Combined Versions

-   2010-01-11: SER and Kamailio (OpenSER) 3.0.x
    -   [See what was added in 3.0.x](http://www.kamailio.org/dokuwiki/doku.php/features:new-in-3.0.x)

#### Next Combined Version

-   3.1.x-devel - scheduled for September 2010
    -   see what is coming with it at:
        <http://sip-router.org/wiki/features/new-in-devel>

### SER Arguments

The command line arguments of SER changed over the years, but you can
notice that it has **IPv6** support since 2002 (well, we still wait for
ISPs...).

Output of **ser -h** and **ser -V** at very young age (recompiled
today):

    # ser -h
    version: ser 0.8.7-99 (i386/linux)
    Usage: ser -l address [-p port] [-l address [-p port]...] [options]
    Options:
        -f file      Configuration file (default /usr/local/etc/ser/ser.cfg)
        -p port      Listen on the specified port (default: 5060)
                     applies to the last address in -l and to all 
                     following that do not have a corespponding -p
        -l address   Listen on the specified address (multiple -l mean
                     listening on more addresses). The default behaviour
                     is to listen on the addresses returned by uname(2)

        -n processes Number of child processes to fork per interface
                     (default: 8)

        -r           Use dns to check if is necessary to add a "received="
                     field to a via
        -R           Same as `-r` but use reverse dns;
                     (to use both use `-rR`)

        -v           Turn on "via:" host checking when forwarding replies
        -d           Debugging mode (multiple -d increase the level)
        -D           Do not fork into daemon mode
        -E           Log to stderr
        -V           Version number
        -h           This help message
        -b nr        Maximum receive buffer size which will not be exceeded by
                     auto-probing procedure even if  OS allows
        -m nr        Size of shared memory allocated in Megabytes
        -w  dir      change the working directory to "dir" (default "/")
        -t  dir      chroot to "dir"
        -u uid       change uid 
        -g gid       change gid 
        -P file      create a pid file
        -i fifo_path create a fifo (useful for monitoring ser) 


    # ser -V
    version: ser 0.8.7-99 (i386/linux)
    flags: STATS:Off, USE_IPV6, DNS_IP_HACK, SHM_MEM, SHM_MMAP, PKG_MALLOC, F_MALLOC, FAST_LOCK-ADAPTIVE_WAIT
    ADAPTIVE_WAIT_LOOPS=1024, MAX_RECV_BUFFER_SIZE 262144, MAX_LISTEN 16, MAX_URI_SIZE 1024, BUF_SIZE 3040
    @(#) $Id: main.c,v 1.119 2002-09-25 19:20:26 andrei Rel $
    main.c compiled on 17:11:29Sep  3 2010 with gcc 4.4

Output of **ser -h** and **ser -V** nowadays:

    # ser -h
    version: ser 3.0.99-dev1 (i386/linux) b72876
    Usage: ser [options]
    Options:
        -f file      Configuration file (default: /usr/local/etc/ser/ser.cfg)
        -L path      Modules search path (default: /usr/local/lib/ser/modules:/usr/local/lib/ser/modules_s:/usr/local/lib/ser/modules_k)
        -c           Check configuration file for errors
        -l address   Listen on the specified address/interface (multiple -l
                      mean listening on more addresses).  The address format is
                      [proto:]addr_lst[:port], where proto=udp|tcp|tls|sctp, 
                      addr_lst= addr|(addr, addr_lst) and 
                      addr= host|ip_address|interface_name. 
                      E.g: -l locahost, -l udp:127.0.0.1:5080, -l eth0:5062,
                      -l "sctp:(eth0)", -l "(eth0, eth1, 127.0.0.1):5065".
                      The default behaviour is to listen on all the interfaces.
        -n processes Number of child processes to fork per interface
                      (default: 8)
        -r           Use dns to check if is necessary to add a "received="
                      field to a via
        -R           Same as `-r` but use reverse dns;
                      (to use both use `-rR`)
        -v           Turn on "via:" host checking when forwarding replies
        -d           Debugging mode (multiple -d increase the level)
        -D no        1..do not fork (almost) anyway, 2..do not daemonize creator
                      3..daemonize (default)
        -E           Log to stderr
        -T           Disable tcp
        -N           Number of tcp child processes (default: equal to `-n')
        -W type      poll method (depending on support in OS, it can be: poll,
                      epoll_lt, epoll_et, sigio_rt, select, kqueue, /dev/poll)
        -V           Version number
        -h           This help message
        -b nr        Maximum receive buffer size which will not be exceeded by
                      auto-probing procedure even if  OS allows
        -m nr        Size of shared memory allocated in Megabytes
        -w dir       Change the working directory to "dir" (default: "/")
        -t dir       Chroot to "dir"
        -u uid       Change uid 
        -g gid       Change gid 
        -P file      Create a pid file
        -G file      Create a pgid file
        -O nr        Script optimization level (debugging option)
        -a mode      Auto aliases mode: enable with yes or on,
                      disable with no or off
        -A define    Add config pre-processor define (e.g., -A WITH_AUTH)

    # ser -V
    version: ser 3.0.99-dev1 (i386/linux) b72876
    flags: STATS: Off, USE_IPV6, USE_TCP, USE_TLS, TLS_HOOKS, USE_RAW_SOCKS,
    DISABLE_NAGLE, USE_MCAST, DNS_IP_HACK, SHM_MEM, SHM_MMAP, PKG_MALLOC, DBG_QM_MALLOC,
    USE_FUTEX, FAST_LOCK-ADAPTIVE_WAIT, USE_DNS_CACHE, USE_DNS_FAILOVER, USE_NAPTR, USE_DST_BLACKLIST, HAVE_RESOLV_RES
    ADAPTIVE_WAIT_LOOPS=1024, MAX_RECV_BUFFER_SIZE 262144, MAX_LISTEN 16, MAX_URI_SIZE 1024, BUF_SIZE 65535, PKG_SIZE 4MB
    poll method support: poll, epoll_lt, epoll_et, sigio_rt, select.
    id: b72876 
    compiled on 17:16:21 Sep  3 2010 with gcc 4.4.3

## Source Code Repository Statistics

### Commits

Nine years later since first one, the number of new development commits
is **14200**:

    git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --reverse | wc -l

    14200

This number represents **only the commits done in development branch**
(GIT master branch). Over all, the number of commits is far more, since
every release had its own branch. However, the number includes the
commits done during 2005-2008 within Kamailio (OpenSER) project in SVN
development branch (SVN trunk).

### Lines in repository

The total number of files and lines used in repository (code, comments,
...):

    Total files: 4701
    Total lines: 941217

Current lines of code statistics:

    ansic:       392801 (73.38%)
    xml:         124390 (23.24%)
    sh:            8965 (1.67%)
    yacc:          3393 (0.63%)
    perl:          3314 (0.62%)
    python:        1372 (0.26%)
    php:           1047 (0.20%)
    awk:             43 (0.01%)

### Modules

Current development branch counts over 170 modules (extensions)

    ls modules | wc -w
    41

    app_lua        cfg_rpc       debugger     matrix      pipelimit  tm
    app_python     counters      dialplan     mediaproxy  privacy    topoh
    auth           ctl           enum         mi_rpc      sanity     utils
    auth_identity  db_berkeley   geoip        mqueue      sl         xhttp
    avpops         db_flatstore  iptrtpproxy  mtree       sms        xmlops
    carrierroute   db_mysql      lcr          pdb         textopsx   xmlrpc
    cfg_db         db_postgres   malloc_test  peering     tls


    ls modules_k | wc -w
    82

    acc            domainpolicy  nathelper            pua_usrloc  sqlops
    acc_radius     drouting      nat_traversal        pua_xmpp    sst
    alias_db       exec          osp                  purple      statistics
    auth_db        group         path                 pv          textops
    auth_diameter  h350          pdt                  qos         tmx
    auth_radius    htable        perl                 ratelimit   uac
    benchmark      imc           perlvdb              regex       uac_redirect
    call_control   jabber        permissions          registrar   uri_db
    cfgutils       kex           pike                 rls         userblacklist
    cpl-c          ldap          presence             rr          usrloc
    db_oracle      maxfwd        presence_dialoginfo  rtimer      xcap_client
    db_text        memcached     presence_mwi         rtpproxy    xcap_server
    db_unixodbc    mi_datagram   presence_xml         seas        xlog
    dialog         mi_fifo       pua                  siptrace    xmpp
    dispatcher     misc_radius   pua_bla              siputils
    diversion      mi_xmlrpc     pua_dialoginfo       snmpstats
    domain         msilo         pua_mi               speeddial

    ls modules_s | wc -w
    51

    acc_db       bdb         domain   maxfwd       pike          speeddial   usrloc
    acc_radius   blst        eval     msilo        prefix_route  textops     xcap
    acc_syslog   cpl-c       exec     nathelper    presence_b2b  timer       xlog
    auth_db      db_ops      fifo     options      print         uac
    auth_radius  dbtext      gflags   oracle       print_lib     unixsock
    avp          dialog      jabber   osp          ratelimit     uri
    avp_db       dispatcher  ldap     pdt          registrar     uri_db
    avp_radius   diversion   mangler  permissions  rr            uri_radius

Version 0.8.8 had 22, some of them no longer available:

    acc   cpl    ext  jabber  msilo   pike   radius_acc   registrar    sl    textops  usrloc
    auth  cpl-c  exec im      maxfwd  mysql  print        radius_auth  rr    sms      tm

### Commit Statistics

Next table presents the most productive time frames in number of commits
and percentage.

| Description | Value       | Commits | Percent |
|-------------|-------------|---------|---------|
| Top Hour    | 17:00-18:00 | 1259    | 8.87    |
| Top Day     | Thursday    | 2775    | 19.54   |
| Top Month   | March       | 1727    | 12.16   |
| Top Year    | 2009        | 2267    | 15.96   |

**Here are the screenshots with detailed representation over the time of
commits:**

<img src="http://sip-router.org/pub/img/9-years/ser-commits-hour-of-day.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-commits-hour-of-day.png" />

<img src="http://sip-router.org/pub/img/9-years/ser-commits-hour-of-day-graph.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-commits-hour-of-day-graph.png" />

<img src="http://sip-router.org/pub/img/9-years/ser-commits-hour-of-week.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-commits-hour-of-week.png" />

<img src="http://sip-router.org/pub/img/9-years/ser-commits-day-of-week.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-commits-day-of-week.png" />

<img src="http://sip-router.org/pub/img/9-years/ser-commits-month-of-year.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-commits-month-of-year.png" />

<img src="http://sip-router.org/pub/img/9-years/ser-commits-by-year.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-commits-by-year.png" />

<img src="http://sip-router.org/pub/img/9-years/ser-commits-by-year-table.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-commits-by-year-table.png" />

### Ohloh Statistics

Many other statistics can be found at:

-   <http://www.ohloh.net/p/sip-router>

For example, estimated cost to develop the project from scratch is over
**8 millions USD**:

<img src="http://sip-router.org/pub/img/9-years/ser-ohloh-project-cost.png" class="align-center" alt="http://sip-router.org/pub/img/9-years/ser-ohloh-project-cost.png" />

## Config Files

One of most interesting evolutions inside the projects was the default
configuration file. Started with a completely different format, based on
regular expression matching, changed quickly in a programmable language,
format that continues today.

### First Ever Config

If you ever wondered how was the first config file published, then here
it is:

``` c
# $Id: sip_router.cfg,v 1.1.1.1 2001/09/03 21:27:11 andrei Exp $

# format:
#  method_re   sip_uri_re      dest_host
# (warning: re cannot contain space)

^R.*        ^sip:.*@dorian.*   ekina.fokus.gmd.de        
^INVITE     .*                 ape             # my laptop
.           .                  192.168.46.55
.*          .*andrei           helios.fokus.gmd.de


# end
```

-   reference:
    <http://cvs.berlios.de/viewvc/ser/sip_router/sip_router.cfg?revision=1.1&pathrev=start>

Probably didn't make it in any production system with this format. The
config language was completely different than what is today.

### First Release Config

One of first public official releases was 0.8.8 (burned on CD). The
config language structure was pretty much the same like today.

Here is the config:

``` c
#
# $Id: ser.cfg,v 1.10 2002/09/26 10:54:48 janakj Rel $
#
# simple quick-start config script
#

# ----------- global configuration parameters ------------------------

debug=3          # debug level (cmd line: -dddddddddd)
fork=yes
log_stderror=no # (cmd line: -E)
check_via=no    # (cmd. line: -v)
dns=no           # (cmd. line: -r)
rev_dns=no      # (cmd. line: -R)
port=5060
children=4
fifo="/tmp/ser_fifo"

# ------------------ module loading ----------------------------------

# Uncomment this if you want to use SQL database
#loadmodule "/usr/lib/ser/modules/mysql.so"

loadmodule "/usr/lib/ser/modules/sl.so"
loadmodule "/usr/lib/ser/modules/print.so"
loadmodule "/usr/lib/ser/modules/tm.so"
loadmodule "/usr/lib/ser/modules/rr.so"
loadmodule "/usr/lib/ser/modules/maxfwd.so"
loadmodule "/usr/lib/ser/modules/usrloc.so"
loadmodule "/usr/lib/ser/modules/registrar.so"

# Uncomment this if you want digest authentication
# mysql.so must be loaded !
#loadmodule "/usr/lib/ser/modules/auth.so"

# ----------------- setting module-specific parameters ---------------

# -- usrloc params --

modparam("usrloc", "db_mode",   0)

# Uncomment this if you want to use SQL database 
# for persistent storage and comment the previous line
#modparam("usrloc", "db_mode", 2)

# -- auth params --
# Uncomment if you are using auth module
#
#modparam("auth", "secret", "alsdkhglaksdhfkloiwr")
#modparam("auth", "calculate_ha1", yes)
#
# If you set "calculate_ha1" parameter to yes (which true in this config), 
# uncomment also the following parameter)
#
#modparam("auth", "password_column", "password")

# -------------------------  request routing logic -------------------

# main routing logic

route{

    # initial sanity checks -- discard local ACKs, messages with
    # max_forwars==0, or excessively long requests
    sl_filter_ACK();
    if (!mf_process_maxfwd_header("10")) {
        sl_send_reply("483","Too Many Hops");
        break;
    };
    if (len_gt( max_len )) {
        sl_send_reply("513", "Message too big");
        break;
    };

    # Do strict routing if pre-loaded route headers present
    rewriteFromRoute();

    # if the request is for other domain use UsrLoc
    # (in case, it does not work, use the following command
    # with proper names and addresses in it)
    if (uri==myself) {

        if (method=="REGISTER") {

# Uncomment this if you want to use digest authentication
#           if (!www_authorize("iptel.org", "subscriber")) {
#               www_challenge("iptel.org", "0");
#               break;
#           };

            save("location");
            break;
        };

        # native SIP destinations are handled using our USRLOC DB
        if (!lookup("location")) {
            sl_send_reply("404", "Not Found");
            break;
        };
    };
    # forward to current uri now
    if (!t_relay()) {
        sl_reply_error();
    };

}

```

### Default Configs Over Years

Nowadays we build two applications from same source code: **Kamailio**
and **SER**.

Next sections show the latest versions of default config files. If you
want to see the evolution for each major version, then follow the links:

-   [Default config for SER 0.8.x](http://sip-router.org/pub/configs/ser-0.8.x.cfg)
-   [Default config for SER 0.9.x](http://sip-router.org/pub/configs/ser-0.9.x.cfg)
-   [Default config for SER 2.0.x](http://sip-router.org/pub/configs/ser-2.0.x.cfg)
-   [Default config for SER 2.1.x](http://sip-router.org/pub/configs/ser-2.1.x.cfg)
-   [Default config for SER 3.0.x](http://sip-router.org/pub/configs/ser-3.0.x.cfg)
-   [Default config for SER 3.1.x-devel](http://sip-router.org/pub/configs/ser-3.1.x.cfg)
-   [Default config for Kamailio (OpenSER) 0.9.x](http://sip-router.org/pub/configs/kamailio-0.9.x.cfg)
-   [Default config for Kamailio (OpenSER) 1.0.x](http://sip-router.org/pub/configs/kamailio-1.0.x.cfg)
-   [Default config for Kamailio (OpenSER) 1.1.x](http://sip-router.org/pub/configs/kamailio-1.1.x.cfg)
-   [Default config for Kamailio (OpenSER) 1.2.x](http://sip-router.org/pub/configs/kamailio-1.2.x.cfg)
-   [Default config for Kamailio (OpenSER) 1.3.x](http://sip-router.org/pub/configs/kamailio-1.3.x.cfg)
-   [Default config for Kamailio (OpenSER) 1.4.x](http://sip-router.org/pub/configs/kamailio-1.4.x.cfg)
-   [Default config for Kamailio (OpenSER) 1.5.x](http://sip-router.org/pub/configs/kamailio-1.5.x.cfg)
-   [Default config for Kamailio (OpenSER) 3.0.x](http://sip-router.org/pub/configs/kamailio-3.0.x.cfg)
-   [Default config for Kamailio (OpenSER) 3.1.x-devel](http://sip-router.org/pub/configs/kamailio-3.1.x.cfg)

### The Configs Today

#### SER Default Config

You can notice in this config the modularity with sub-routes and the
usage of string names for routes (e.g., route\[REGISTRAR\]), first ever
introduced by SER in 2007.

``` c
#
# $Id$
#

# First start SER sample config script with:
#   database, accounting, authentication, multi-domain support
#   PSTN GW section, named flags, named routes, global-,
#   domain- and user-preferences with AVPs
# Several of these features are only here for demonstration purpose
# what can be achieved with the SER config script language.
#
# If you look for a simpler version with a lot less dependencies
# please refer to the ser-basic.cfg file in your SER distribution.

# To get this config running you need to execute the following commands
# with the new serctl (the capital word are just place holders)
# - ser_ctl domain add DOMAINNAME
# - ser_ctl user add USERNAME@DOMAINNAME -p PASSWORD
# If you want to have PID header for your user
# - ser_attr add uid=UID asserted_id="PID"
# If you want to have gateway support
# - ser_db add attr_types name=gw_ip rich_type=string raw_type=2 description="The gateway IP for the default ser.cfg" default_flags=33
# - ser_attr add global gw_ip=GATEWAY-IP

# ----------- global configuration parameters ------------------------

debug=2         # debug level (cmd line: -dddddddddd)
#memdbg=10 # memory debug log level
#memlog=10 # memory statistics log level
#log_facility=LOG_LOCAL0 # sets the facility used for logging (see syslog(3))

/* Uncomment these lines to enter debugging mode 
fork=no
log_stderror=yes
*/

check_via=no    # (cmd. line: -v)
dns=no          # (cmd. line: -r)
rev_dns=no      # (cmd. line: -R)
#port=5060
#children=4
#user=ser
#group=ser
#disable_core=yes #disables core dumping
#open_fd_limit=1024 # sets the open file descriptors limit
#mhomed=yes  # useful for multihomed hosts, small performance penalty
#disable_tcp=yes 
#tcp_accept_aliases=yes # accepts the tcp alias via option (see NEWS)
enable_tls=yes

#

# ------------------ module loading ----------------------------------

#loadpath "modules:modules_s"
loadpath "/usr/lib/ser/modules:/usr/lib/ser/modules_s"

# load a SQL database for authentication, domains, user AVPs etc.
loadmodule "db_mysql"

loadmodule "sl"
loadmodule "tm"
loadmodule "rr"
loadmodule "maxfwd"
loadmodule "usrloc"
loadmodule "registrar"
loadmodule "xlog"
loadmodule "textops"
loadmodule "ctl"
loadmodule "cfg_rpc"
loadmodule "auth"
loadmodule "auth_db"
loadmodule "gflags"
loadmodule "domain"
loadmodule "uri_db"
loadmodule "avp"
loadmodule "avp_db"
loadmodule "acc_db"
loadmodule "xmlrpc"
#loadmodule "tls"

# ----------------- setting script FLAGS -----------------------------
flags
  FLAG_ACC          : 1,  # include message in accounting
  FLAG_FAILUREROUTE : 2;  # we are operating from a failure route

avpflags
  dialog_cookie;        # handled by rr module

# ----------------- setting module-specific parameters ---------------

# specify the path to you database here
modparam("acc_db|auth_db|avp_db|domain|gflags|usrloc|uri_db", "db_url", "mysql://ser:heslo@127.0.0.1/ser")

# -- usrloc params --

# as we use the database anyway we will use it for usrloc as well
modparam("usrloc", "db_mode", 1)

# -- auth params --
modparam("auth_db", "calculate_ha1", yes)
modparam("auth_db", "plain_password_column", "password")

# -- rr params --
# add value to ;lr param to make some broken UAs happy
modparam("rr", "enable_full_lr", 1)
#
# limit the length of the AVP cookie to only necessary ones
modparam("rr", "cookie_filter", "(account)")
#
# you probably do not want that someone can simply read and change
# the AVP cookie in your Routes, thus should really change this
# secret value below
modparam("rr", "cookie_secret", "MyRRAVPcookiesecret")

# -- gflags params --
# load the global AVPs
modparam("gflags", "load_global_attrs", 1)

# -- domain params --
# load the domain AVPs
modparam("domain", "load_domain_attrs", 1)

# -- ctl params --
# by default ctl listens on unixs:/tmp/ser_ctl if no other address is
# specified in modparams; this is also the default for sercmd
modparam("ctl", "binrpc", "unixs:/tmp/ser_ctl")
# listen on the "standard" fifo for backward compatibility
modparam("ctl", "fifo", "fifo:/tmp/ser_fifo")
# listen on tcp, localhost
#modparam("ctl", "binrpc", "tcp:localhost:2046")

# -- acc_db params --
# failed transactions (=negative responses) should be logged to
modparam("acc_db", "failed_transactions", 1)

# comment the next line if you dont want to have accounting to DB
modparam("acc_db", "log_flag", "FLAG_ACC")

# -- tm params --
# uncomment the following line if you want to avoid that each new reply
# restarts the resend timer (see INBOUND route below)
#modparam("tm", "restart_fr_on_each_reply", "0")

# -- xmlrpc params --
# using a sub-route from the module is a lot safer than relying on the
# request method to distinguish HTTP from SIP
modparam("xmlrpc", "route", "RPC");

# -------------------------  request routing logic -------------------

# main routing logic

route{
    # if you have a PSTN gateway just un-comment the follwoing line and 
    # specify the IP address of it to route calls to it
    #$gw_ip = "1.2.3.4"

    # first do some initial sanity checks
    route(INIT);

    # bypass the rest of the script for CANCELs if possible
    route(CATCH_CANCEL);

    # check if the request is routed via Route header or
    # needs a Record-Route header
    route(RR);

    # check if the request belongs to our proxy
    route(DOMAIN);

    # handle REGISTER requests
    route(REGISTRAR);

    # from here on we want to know you is calling
    route(AUTHENTICATION);

    # check if we should be outbound proxy for a local user
    route(OUTBOUND);

    # check if the request is for a local user
    route(INBOUND);

    # here you could for example try to do an ENUM lookup before
    # the call gets routed to the PSTN
    #route(ENUM);

    # lets see if someone wants to call a PSTN number
    route(PSTN);

    # nothing matched, reject it finally
    sl_reply("404", "No route matched");
}

route[FORWARD]
{
    # here you could decide wether this call needs a RTP relay or not

    # if this is called from the failure route we need to open a new branch
    if (isflagset(FLAG_FAILUREROUTE)) {
        append_branch();
    }

    # if this is an initial INVITE (without a To-tag) we might try another
    # (forwarding or voicemail) target after receiving an error
    if (method=="INVITE" && strempty(@to.tag)) {
        t_on_failure("FAILURE_ROUTE");
    }

    # send it out now; use stateful forwarding as it works reliably
    # even for UDP2TCP
    if (!t_relay()) {
        sl_reply_error();
    }
    drop;
}

route[INIT]
{
    # initial sanity checks -- messages with
    # max_forwards==0, or excessively long requests
    if (!mf_process_maxfwd_header("10")) {
        sl_reply("483","Too Many Hops");
        drop;
    }

    if (msg:len >=  4096 ) {
        sl_reply("513", "Message too big");
        drop;
    }

    # you could add some NAT detection here for example

    # or you cuold call here some of the check from the sanity module

    # lets account all initial INVITEs
    # further in-dialog requests are accounted by a RR cookie (see below)
    if (method=="INVITE" && strempty(@to.tag)) {
        setflag(FLAG_ACC);
    }
}

route[RPC]
{
    # allow XMLRPC from localhost
    if ((method=="POST" || method=="GET") &&
        src_ip==127.0.0.1) {

        if (msg:len >= 8192) {
            sl_reply("513", "Request to big");
            drop;
        }

        # lets see if a module wants to answer this
        dispatch_rpc();
        drop;
    }
}

route[RR]
{
    # subsequent messages withing a dialog should take the
    # path determined by record-routing
    if (loose_route()) {
        # mark routing logic in request
        append_hf("P-hint: rr-enforced\r\n"); 

        # if the Route contained the accounting AVP cookie we
        # set the accounting flag for the acc_db module.
        # this is more for demonstration purpose as this could
        # also be solved without RR cookies.
        # Note: this means all in-dialog request will show up in the
        # accounting tables, so prepare your accounting software for this ;-)
        if ($account == "yes") {
            setflag(FLAG_ACC);
        }

        # for broken devices which overwrite their Route's with each
        # (not present) RR from within dialog requests it is better
        # to repeat the RRing
        # and if we call rr after loose_route the AVP cookies are restored
        # automatically :)
        record_route();

        route(FORWARD);
    } else if (!method=="REGISTER") {
        # we record-route all messages -- to make sure that
        # subsequent messages will go through our proxy; that's
        # particularly good if upstream and downstream entities
        # use different transport protocol

        # if the inital INVITE got the ACC flag store this in
        # an RR AVP cookie. this is more for demonstration purpose
        if (isflagset(FLAG_ACC)) {
            $account = "yes";
            setavpflag($account, "dialog_cookie");
        }

        record_route();
    }
}

route[DOMAIN]
{
    # check if the caller is from a local domain
    lookup_domain("$fd", "@from.uri.host");

    # check if the callee is at a local domain
    lookup_domain("$td", "@ruri.host");

    # we dont know the domain of the caller and also not
    # the domain of the callee -> somone uses our proxy as
    # a relay
    if (strempty($t.did) && strempty($f.did)) {
        sl_reply("403", "Relaying Forbidden");
        drop;
    }
}

route[REGISTRAR]
{
    # if the request is a REGISTER lets take care of it
    if (method=="REGISTER") {
        # check if the REGISTER if for one of our local domains
        if (strempty($t.did)) {
            sl_reply("403", "Register forwarding forbidden");
            drop;
        }

        # we want only authenticated users to be registered
        if (!www_authenticate("$fd.digest_realm", "credentials")) {
            if ($? == -2) {
                sl_reply("500", "Internal Server Error");
            } else if ($? == -3) {
                sl_reply("400", "Bad Request");
            } else {
                if ($digest_challenge != "") {
                    append_to_reply("%$digest_challenge");
                }
                sl_reply("401", "Unauthorized");
            }
            drop;
        }

        # check if the authenticated user is the same as the target user
        if (!lookup_user("$tu.uid", "@to.uri")) {
            sl_reply("404", "Unknown user in To");
            drop;
        }

        if ($f.uid != $t.uid) {
            sl_reply("403", "Authentication and To-Header mismatch");
            drop;
        }

        # check if the authenticated user is the same as the request originator
        # you may uncomment it if you care, what uri is in From header
        #if (!lookup_user("$fu.uid", "@from.uri")) {
        #   sl_reply("404", "Unknown user in From");
        #   drop;
        #}
        #if ($fu.uid != $tu.uid) {
        #   sl_reply("403", "Authentication and From-Header mismatch");
        #   drop;
        #}

        # everything is fine so lets store the binding
        if (!save_contacts("location")) {
            sl_reply("400", "Invalid REGISTER Request");
            drop;
        }
        drop;
    }
}

route[AUTHENTICATION]
{
    if (method=="CANCEL" || method=="ACK") {
        # you are not allowed to challenge these methods
        break;
    }

    # requests from non-local to local domains should be permitted
    # remove this if you want a walled garden
    if (strempty($f.did)) {
        break;
    }

    # as gateways are usually not able to authenticate for their
    # requests you will have trust them base on some other information
    # like the source IP address. WARNING: if at all this is only safe
    # in a local network!!!
    #if (src_ip==a.b.c.d) {
    #   break;
    #}

    if (!proxy_authenticate("$fd.digest_realm", "credentials")) {
        if ($? == -2) {
            sl_reply("500", "Internal Server Error");
        } else if ($? == -3) {
            sl_reply("400", "Bad Request");
        } else {
            if ($digest_challenge != "") {
                append_to_reply("%$digest_challenge");
            }
            sl_reply("407", "Proxy Authentication Required");
        }
        drop;
    }

    # check if the UID from the authentication meets the From header
    $authuid = $uid;
    if (!lookup_user("$fu.uid", "@from.uri")) {
        del_attr("$uid");
    }
    if ($fu.uid != $fr.authuid) {
        sl_reply("403", "Fake Identity");
        drop;
    }
    # load the user AVPs (preferences) of the caller, e.g. for RPID header
    load_attrs("$fu", "$f.uid");
}

route[OUTBOUND]
{
    # if a local user calls to a foreign domain we play outbound proxy for him
    # comment this out if you want a walled garden
    if ($f.did != ""  && $t.did == "") {
        append_hf("P-hint: outbound\r\n");
        route(FORWARD);
    }
}

route[INBOUND]
{
    # lets see if know the callee
    if (lookup_user("$tu.uid", "@ruri")) {

        # load the preferences of the callee to have his timeout values loaded
        load_attrs("$tu", "$t.uid");

        # if you want to know if the callee username was an alias
        # check it like this
        #if (strempty($tu.uri_canonical)) {
            # if the alias URI has different AVPs/preferences
            # you can load them into the URI track like this
            #load_attrs("$tr", "@ruri");
        #}

        # check for call forwarding of the callee
        # Note: the forwarding target has to be full routable URI
        #       in this example
        if ($tu.fwd_always_target != "") {
            attr2uri("$tu.fwd_always_target");
            route(FORWARD);
        }

        # native SIP destinations are handled using our USRLOC DB
        if (lookup_contacts("location")) {
            append_hf("P-hint: usrloc applied\r\n");

            # we set the TM module timers according to the prefences
            # of the callee (avoid too long ringing of his phones)
            # Note1: timer values have to be in ms now!
            # Note2: this makes even more sense if you switch to a voicemail
            #        from the FAILURE_ROUTE below
            if ($t.fr_inv_timer != 0) {
                if ($t.fr_timer != 0) {
                    t_set_fr("$t.fr_inv_timer", "$t.fr_timer");
                } else {
                    t_set_fr("$t.fr_inv_timer");
                }
            }

            route(FORWARD);
        } else {
            sl_reply("480", "User temporarily not available");
            drop;
        }
    }
}

route[PSTN]
{
    # Only if the AVP 'gw_ip' is set and the request URI contains
    # only a number we consider sending this to the PSTN GW.
    # Only users from a local domain are permitted to make calls.
    # Additionally you might want to check the acl AVP to verify
    # that the user is allowed to make such expensives calls.
    if ($f.did != "" && $gw_ip != "" &&
        uri=~"sips?:\+?[0-9]{3,18}@.*") {
        # probably you need to convert the number in the request
        # URI according to the requirements of your gateway here

        # if an AVP 'asserted_id' is set we insert an RPID header
        if ($asserted_id != "") {
            xlset_attr("$rpidheader", "<sip:%$asserted_id@%@ruri.host>;screen=yes");
            replace_attr_hf("Remote-Party-ID", "$rpidheader");
        }

        # just replace the domain part of the RURI with the
        # value from the AVP and send it out
        attr2uri("$gw_ip", "domain");
        route(FORWARD);
    }
}

route[CATCH_CANCEL] {
    # check whether there is a corresponding INVITE to the CANCEL,
    # and bypass the rest of the script if possible

    if (method == CANCEL) {
        if (!t_relay_cancel()) { # implicit drop if the INVITE was found

            # INVITE was found but some error occurred
            sl_reply("500", "Internal Server Error");
            drop;
        }
        # bad luck, no corresponding INVITE was found,
        # we have to continue with the script
    }
}

failure_route[FAILURE_ROUTE]
{
    # mark for the other routes that we are operating from here on from a
    # failure route
    setflag(FLAG_FAILUREROUTE);

    if (t_check_status("486|600")) {
        # if we received a busy and a busy target is set, forward it there
        # Note: again the forwarding target has to be a routeable URI
        if ($tu.fwd_busy_target != "") {
            attr2uri("$tu.fwd_busy_target");
            route(FORWARD);
        }
        # alternatively you could forward the request to SEMS/voicemail here
    }
    else if (t_check_status("408|480")) {
        # if we received no answer and the noanswer target is set,
        # forward it there
        # Note: again the target has to be a routeable URI
        if ($tu.fwd_noanswer_target != "") {
            attr2uri("$tu.fwd_noanswer_target");
            route(FORWARD);
        }
        # alternatively you could forward the request to SEMS/voicemail here
    }
}
```

#### Kamailio Default Config

You can notice here the usage of **config defines** (#!define XYZ,
#!ifdef XYZ, ...) which makes very easy to enable/disable features as
well as defining values for tokens that are replaced later in config
(e.g., DBURL). The config provides advanced features such as NAT
traversal with RTPProxy or presence server.

``` c
#!KAMAILIO
#
# Kamailio (OpenSER) SIP Server v3.1 - default configuration script
#     - web: http://www.kamailio.org
#     - git: http://sip-router.org
#
# Direct your questions about this file to: <sr-users@lists.sip-router.org>
#
# Refer to the Core CookBook at http://www.kamailio.org/dokuwiki/doku.php
# for an explanation of possible statements, functions and parameters.
#
# Several features can be enabled using '#!define WITH_FEATURE' directives:
#
# *** To run in debug mode: 
#     - define WITH_DEBUG
#
# *** To enable mysql: 
#     - define WITH_MYSQL
#
# *** To enable authentication execute:
#     - enable mysql
#     - define WITH_AUTH
#     - add users using 'kamctl'
#
# *** To enable IP authentication execute:
#     - enable mysql
#     - enable authentication
#     - define WITH_IPAUTH
#     - add IP addresses with group id '1' to 'address' table
#
# *** To enable persistent user location execute:
#     - enable mysql
#     - define WITH_USRLOCDB
#
# *** To enable presence server execute:
#     - enable mysql
#     - define WITH_PRESENCE
#
# *** To enable nat traversal execute:
#     - define WITH_NAT
#     - install RTPProxy: http://www.rtpproxy.org
#     - start RTPProxy:
#        rtpproxy -l _your_public_ip_ -s udp:localhost:7722
#
# *** To enable PSTN gateway routing execute:
#     - define WITH_PSTN
#     - set the value of pstn.gw_ip
#     - check route[PSTN] for regexp routing condition
#
# *** To enhance accounting execute:
#     - enable mysql
#     - define WITH_ACCDB
#     - add following columns to database
#!ifdef ACCDB_COMMENT
  ALTER TABLE acc ADD COLUMN src_user VARCHAR(64) NOT NULL DEFAULT '';
  ALTER TABLE acc ADD COLUMN src_domain VARCHAR(128) NOT NULL DEFAULT '';
  ALTER TABLE acc ADD COLUMN dst_ouser VARCHAR(64) NOT NULL DEFAULT '';
  ALTER TABLE acc ADD COLUMN dst_user VARCHAR(64) NOT NULL DEFAULT '';
  ALTER TABLE acc ADD COLUMN dst_domain VARCHAR(128) NOT NULL DEFAULT '';
  ALTER TABLE missed_calls ADD COLUMN src_user VARCHAR(64) NOT NULL DEFAULT '';
  ALTER TABLE missed_calls ADD COLUMN src_domain VARCHAR(128) NOT NULL DEFAULT '';
  ALTER TABLE missed_calls ADD COLUMN dst_ouser VARCHAR(64) NOT NULL DEFAULT '';
  ALTER TABLE missed_calls ADD COLUMN dst_user VARCHAR(64) NOT NULL DEFAULT '';
  ALTER TABLE missed_calls ADD COLUMN dst_domain VARCHAR(128) NOT NULL DEFAULT '';
#!endif

# *** Value defines - IDs used later in config
#!ifdef WITH_MYSQL
# - database URL - used to connect to database server by modules such
#       as: auth_db, acc, usrloc, a.s.o.
#!define DBURL "mysql://openser:openserrw@localhost/openser"
#!endif

####### Global Parameters #########

#!ifdef WITH_DEBUG
debug=4
log_stderror=yes
#!else
debug=2
log_stderror=no
#!endif

memdbg=5
memlog=5

log_facility=LOG_LOCAL0

fork=yes
children=4

/* uncomment the next line to disable TCP (default on) */
#disable_tcp=yes

/* uncomment the next line to disable the auto discovery of local aliases
   based on reverse DNS on IPs (default on) */
#auto_aliases=no

/* add local domain aliases */
#alias="sip.mydomain.com"

port=5060

/* uncomment and configure the following line if you want Kamailio to 
   bind on a specific interface/port/proto (default bind on all available) */
#listen=udp:10.0.0.10:5060


####### Custom Parameters #########

# These parameters can be modified runtime via RPC interface
# - see the documentation of 'cfg_rpc' module.
#
# Format: group.id = value 'desc' description
# Access: $sel(cfg_get.group.id) or @cfg_get.group.id
#

#!ifdef WITH_PSTN
# PSTN GW Routing
#
# - pstn.gw_ip: valid IP or hostname as string value, example:
# pstn.gw_ip = "10.0.0.101" desc "My PSTN GW Address"
#
# - by default is empty to avoid misrouting
pstn.gw_ip = "" desc "PSTN GW Address"
#!endif


####### Modules Section ########

#set module path
mpath="/usr/local/lib/kamailio/modules_k/:/usr/local/lib/kamailio/modules/"

/* uncomment next line for MySQL DB support */
#!ifdef WITH_MYSQL
loadmodule "db_mysql.so"
#!endif
loadmodule "mi_fifo.so"
loadmodule "kex.so"
loadmodule "tm.so"
loadmodule "tmx.so"
loadmodule "sl.so"
loadmodule "rr.so"
loadmodule "pv.so"
loadmodule "maxfwd.so"
loadmodule "usrloc.so"
loadmodule "registrar.so"
loadmodule "textops.so"
loadmodule "uri_db.so"
loadmodule "siputils.so"
loadmodule "xlog.so"
loadmodule "sanity.so"
loadmodule "ctl.so"
loadmodule "mi_rpc.so"
loadmodule "acc.so"
#!ifdef WITH_AUTH
loadmodule "auth.so"
loadmodule "auth_db.so"
#!ifdef WITH_IPAUTH
loadmodule "permissions.so"
#!endif
#!endif
/* uncomment next line for aliases support
   NOTE: a DB (like db_mysql) module must be also loaded */
#loadmodule "alias_db.so"
/* uncomment next line for multi-domain support
   NOTE: a DB (like db_mysql) module must be also loaded
   NOTE: be sure and enable multi-domain support in all used modules
         (see "multi-module params" section ) */
#loadmodule "domain.so"
#!ifdef WITH_PRESENCE
loadmodule "presence.so"
loadmodule "presence_xml.so"
#!endif

#!ifdef WITH_NAT
loadmodule "nathelper.so"
loadmodule "rtpproxy.so"
#!endif

# ----------------- setting module-specific parameters ---------------


# ----- mi_fifo params -----
modparam("mi_fifo", "fifo_name", "/tmp/kamailio_fifo")


# ----- tm params -----
# auto-discard branches from previous serial forking leg
modparam("tm", "failure_reply_mode", 3)
# default retransmission timeout: 30sec
modparam("tm", "fr_timer", 30000)
# default invite retransmission timeout after 1xx: 120sec
modparam("tm", "fr_inv_timer", 120000)

# ----- rr params -----
# add value to ;lr param to cope with most of the UAs
modparam("rr", "enable_full_lr", 1)
# do not append from tag to the RR (no need for this script)
modparam("rr", "append_fromtag", 0)


# ----- rr params -----
modparam("registrar", "method_filtering", 1)
/* uncomment the next line to disable parallel forking via location */
# modparam("registrar", "append_branches", 0)
/* uncomment the next line not to allow more than 10 contacts per AOR */
#modparam("registrar", "max_contacts", 10)


# ----- uri_db params -----
/* by default we disable the DB support in the module as we do not need it
   in this configuration */
modparam("uri_db", "use_uri_table", 0)
modparam("uri_db", "db_url", "")


# ----- acc params -----
/* what sepcial events should be accounted ? */
modparam("acc", "early_media", 1)
modparam("acc", "report_ack", 1)
modparam("acc", "report_cancels", 1)
/* by default ww do not adjust the direct of the sequential requests.
   if you enable this parameter, be sure the enable "append_fromtag"
   in "rr" module */
modparam("acc", "detect_direction", 0)
/* account triggers (flags) */
modparam("acc", "failed_transaction_flag", 3)
modparam("acc", "log_flag", 1)
modparam("acc", "log_missed_flag", 2)
modparam("acc", "log_extra", 
    "src_user=$fU;src_domain=$fd;dst_ouser=$tU;dst_user=$rU;dst_domain=$rd")
/* enhanced DB accounting */
#!ifdef WITH_ACCDB
modparam("acc", "db_flag", 1)
modparam("acc", "db_missed_flag", 2)
modparam("acc", "db_url", DBURL)
modparam("acc", "db_extra",
    "src_user=$fU;src_domain=$fd;dst_ouser=$tU;dst_user=$rU;dst_domain=$rd")
#!endif

# ----- usrloc params -----
/* enable DB persistency for location entries */
#!ifdef WITH_USRLOCDB
modparam("usrloc", "db_mode", 2)
modparam("usrloc", "db_url", DBURL)
#!endif

# ----- auth_db params -----
/* enable the DB based authentication */
#!ifdef WITH_AUTH
modparam("auth_db", "calculate_ha1", yes)
modparam("auth_db", "password_column", "password")
modparam("auth_db", "db_url", DBURL)
modparam("auth_db", "load_credentials", "")

#!ifdef WITH_IPAUTH
modparam("permissions", "db_url", DBURL)
modparam("permissions", "db_mode", 1)
#!endif

#!endif

# ----- alias_db params -----
/* uncomment the following lines if you want to enable the DB based
   aliases */
#modparam("alias_db", "db_url", DBURL)


# ----- domain params -----
/* uncomment the following lines to enable multi-domain detection
   support */
#modparam("domain", "db_url", DBURL)
#modparam("domain", "db_mode", 1)   # Use caching


# ----- multi-module params -----
/* uncomment the following line if you want to enable multi-domain support
   in the modules (dafault off) */
#modparam("alias_db|auth_db|usrloc|uri_db", "use_domain", 1)


# ----- presence params -----
/* enable presence server support */
#!ifdef WITH_PRESENCE
modparam("presence|presence_xml", "db_url", DBURL)
modparam("presence_xml", "force_active", 1)
modparam("presence", "server_address", "sip:10.0.0.10:5060")
#!endif

#!ifdef WITH_NAT
# ----- rtpproxy -----
modparam("rtpproxy", "rtpproxy_sock", "udp:127.0.0.1:7722")
# ----- nathelper -----
modparam("nathelper", "natping_interval", 30)
modparam("nathelper", "ping_nated_only", 1)
modparam("nathelper", "sipping_bflag", 7)
modparam("nathelper", "sipping_from", "sip:pinger@kamailio.org")
modparam("registrar|nathelper", "received_avp", "$avp(i:80)")
modparam("usrloc", "nat_bflag", 6)
#!endif

####### Routing Logic ########


# main request routing logic

route {

    # per request initial checks
    route(REQINIT);

    # NAT detection
    route(NAT);

    # handle requests within SIP dialogs
    route(WITHINDLG);

    ### only initial requests (no To tag)

    # CANCEL processing
    if (is_method("CANCEL"))
    {
        if (t_check_trans())
            t_relay();
        exit;
    }

    t_check_trans();

    # authentication
    route(AUTH);

    # record routing for dialog forming requests (in case they are routed)
    # - remove preloaded route headers
    remove_hf("Route");
    if (is_method("INVITE|SUBSCRIBE"))
        record_route();

    # account only INVITEs
    if (is_method("INVITE"))
    {
        setflag(1); # do accounting
    }

    # dispatch requests to foreign domains
    route(SIPOUT);

    ### requests for my local domains

    # handle presence related requests
    route(PRESENCE);

    # handle registrations
    route(REGISTRAR);

    if ($rU==$null)
    {
        # request with no Username in RURI
        sl_send_reply("484","Address Incomplete");
        exit;
    }

    # dispatch destinations to PSTN
    route(PSTN);

    # user location service
    route(LOCATION);

    route(RELAY);
}


route[RELAY] {
#!ifdef WITH_NAT
    if (check_route_param("nat=yes")) {
        setbflag("6");
    }
    if (isflagset(5) || isbflagset("6")) {
        route(RTPPROXY);
    }
#!endif

    /* example how to enable some additional event routes */
    if (is_method("INVITE")) {
        #t_on_branch("BRANCH_ONE");
        t_on_reply("REPLY_ONE");
        t_on_failure("FAIL_ONE");
    }

    if (!t_relay()) {
        sl_reply_error();
    }
    exit;
}

# Per SIP request initial checks
route[REQINIT] {
    if (!mf_process_maxfwd_header("10")) {
        sl_send_reply("483","Too Many Hops");
        exit;
    }

    if(!sanity_check("1511", "7"))
    {
        xlog("Malformed SIP message from $si:$sp\n");
        exit;
    }
}

# Handle requests within SIP dialogs
route[WITHINDLG] {
    if (has_totag()) {
        # sequential request withing a dialog should
        # take the path determined by record-routing
        if (loose_route()) {
            if (is_method("BYE")) {
                setflag(1); # do accounting ...
                setflag(3); # ... even if the transaction fails
            }
            route(RELAY);
        } else {
            if (is_method("SUBSCRIBE") && uri == myself) {
                # in-dialog subscribe requests
                route(PRESENCE);
                exit;
            }
            if ( is_method("ACK") ) {
                if ( t_check_trans() ) {
                    # non loose-route, but stateful ACK; must be an ACK after a 487 or e.g. 404 from upstream server
                    t_relay();
                    exit;
                } else {
                    # ACK without matching transaction ... ignore and discard.\n");
                    exit;
                }
            }
            sl_send_reply("404","Not here");
        }
        exit;
    }
}

# Handle SIP registrations
route[REGISTRAR] {
    if (is_method("REGISTER"))
    {
        if(isflagset(5))
        {
            setbflag("6");
            # uncomment next line to do SIP NAT pinging 
            ## setbflag("7");
        }
        if (!save("location"))
            sl_reply_error();

        exit;
    }
}

# USER location service
route[LOCATION] {
    # apply DB based aliases (uncomment to enable)
    ##alias_db_lookup("dbaliases");

    if (!lookup("location")) {
        switch ($rc) {
            case -1:
            case -3:
                t_newtran();
                t_reply("404", "Not Found");
                exit;
            case -2:
                sl_send_reply("405", "Method Not Allowed");
                exit;
        }
    }

    # when routing via usrloc, log the missed calls also
    if (is_method("INVITE"))
    {
        setflag(2);
    }
}

# Presence server route
route[PRESENCE] {
    if(!is_method("PUBLISH|SUBSCRIBE"))
        return;

#!ifdef WITH_PRESENCE
    if (!t_newtran())
    {
        sl_reply_error();
        exit;
    };

    if(is_method("PUBLISH"))
    {
        handle_publish();
        t_release();
    }
    else
    if( is_method("SUBSCRIBE"))
    {
        handle_subscribe();
        t_release();
    }
    exit;
#!endif
    
    # if presence enabled, this part will not be executed
    if (is_method("PUBLISH") || $rU==$null)
    {
        sl_send_reply("404", "Not here");
        exit;
    }
    return;
}

# Authentication route
route[AUTH] {
#!ifdef WITH_AUTH
    if (is_method("REGISTER"))
    {
        # authenticate the REGISTER requests (uncomment to enable auth)
        if (!www_authorize("$td", "subscriber"))
        {
            www_challenge("$td", "0");
            exit;
        }

        if ($au!=$tU)
        {
            sl_send_reply("403","Forbidden auth ID");
            exit;
        }
    } else {

#!ifdef WITH_IPAUTH
        if(allow_source_address())
        {
            # source IP allowed
            return;
        }
#!endif

        # authenticate if from local subscriber
        if (from_uri==myself)
        {
            if (!proxy_authorize("$fd", "subscriber")) {
                proxy_challenge("$fd", "0");
                exit;
            }
            if (is_method("PUBLISH"))
            {
                if ($au!=$tU) {
                    sl_send_reply("403","Forbidden auth ID");
                    exit;
                }
            } else {
                if ($au!=$fU) {
                    sl_send_reply("403","Forbidden auth ID");
                    exit;
                }
            }

            consume_credentials();
            # caller authenticated
        } else {
            # caller is not local subscriber, then check if it calls
            # a local destination, otherwise deny, not an open relay here
            if (!uri==myself)
            {
                sl_send_reply("403","Not relaying");
                exit;
            }
        }
    }
#!endif
    return;
}

# Caller NAT detection route
route[NAT] {
#!ifdef WITH_NAT
    force_rport();
    if (nat_uac_test("19")) {
        if (method=="REGISTER") {
            fix_nated_register();
        } else {
            fix_nated_contact();
        }
        setflag(5);
    }
#!endif
    return;
}

# RTPProxy control
route[RTPPROXY] {
#!ifdef WITH_NAT
    if (is_method("BYE")) {
        unforce_rtp_proxy();
    } else if (is_method("INVITE")){
        force_rtp_proxy();
    }
    if (!has_totag()) add_rr_param(";nat=yes");
#!endif
    return;
}

# Routing to foreign domains
route[SIPOUT] {
    if (!uri==myself)
    /* replace with following line if multi-domain support is used */
    ##if (!is_uri_host_local())
    {
        append_hf("P-hint: outbound\r\n");
        route(RELAY);
    }
}

# PSTN GW routing
route[PSTN] {
#!ifdef WITH_PSTN
    # check if PSTN GW IP is defined
    if (strempty($sel(cfg_get.pstn.gw_ip))) {
        xlog("SCRIPT: PSTN rotuing enabled but pstn.gw_ip not defined\n");
        return;
    }

    # route to PSTN dialed numbers starting with '+' or '00'
    #     (international format)
    # - update the condition to match your dialing rules for PSTN routing
    if(!($rU=~"^(\+|00)[1-9][0-9]{3,20}$"))
        return;

    # only local users allowed to call
    if(from_uri!=myself) {
        sl_send_reply("403", "Not Allowed");
        exit;
    }

    $ru = "sip:" + $rU + "@" + $sel(cfg_get.pstn.gw_ip);

    route(RELAY);
    exit;
#!endif

    return;
}

# Sample branch router
branch_route[BRANCH_ONE] {
    xdbg("new branch at $ru\n");
}

# Sample onreply route
onreply_route[REPLY_ONE] {
    xdbg("incoming reply\n");
#!ifdef WITH_NAT
    if ((isflagset(5) || isbflagset("6")) && status=~"(183)|(2[0-9][0-9])") {
        force_rtp_proxy();
    }
    if (isbflagset("6")) {
        fix_nated_contact();
    }
#!endif
}

# Sample failure route
failure_route[FAIL_ONE] {
#!ifdef WITH_NAT
    if (is_method("INVITE")
            && (isbflagset("6") || isflagset(5))) {
        unforce_rtp_proxy();
    }
#!endif

    if (t_is_canceled()) {
        exit;
    }

    # uncomment the following lines if you want to block client 
    # redirect based on 3xx replies.
    ##if (t_check_status("3[0-9][0-9]")) {
    ##t_reply("404","Not found");
    ##  exit;
    ##}

    # uncomment the following lines if you want to redirect the failed 
    # calls to a different new destination
    ##if (t_check_status("486|408")) {
    ##  sethostport("192.168.2.100:5060");
    ##  append_branch();
    ##  # do not set the missed call flag again
    ##  t_relay();
    ##}
}

```
