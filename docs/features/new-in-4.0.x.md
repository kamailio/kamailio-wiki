# Kamailio SIP Server (SER) - New Features in v4.0.0

**Version 4.0.0 is planned to be released in the first half of March
2013**.

\<fc #0000FF> **Previous major version was 3.3.x (released in June
2012), see what was new in that release at:** \</fc>

-   \<fc
    #0000FF><http://www.kamailio.org/wiki/features/new-in-3.3.x>\</fc>

\<fc #800000>*This is a draft of new features added in v4.0.0, manually
updated, thus not always synchronized with what is new in source code
repository.*\</fc>

## New Modules

### cdp

-   C Diameter Peer - core communication engine
-   <http://kamailio.org/docs/modules/4.0.x/modules/cdp.html>

### cdp_avp

-   C Diameter Peer - application extensions
-   <http://kamailio.org/docs/modules/4.0.x/modules/cdp_avp.html>

### corex

-   new module to export more internal core API to config
-   <http://kamailio.org/docs/modules/4.0.x/modules/corex.html>

### dialog_ng

-   new module providing the NG framework for tracking SIP dialogs
-   <http://kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html>

### ims_auth

-   new module to provide authentication for IMS
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_auth.html>

### ims_icscf

-   new module to provide IMS ICSCF component
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_icscf.html>

### ims_isc

-   new module to provide IMS ICS component
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_isc.html>

### ims_qos

-   new module to provide Diameter Rx IMS interface between PCSCF and
    PCRF functions
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_qos.html>

### ims_registrar_pcscf

-   new module to provide IMS PCSCF registrar component
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_registrar_pcscf.html>

### ims_registrar_scscf

-   new module to provide IMS SCSCF registrar component
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_registrar_scscf.html>

### ims_usrloc_pcscf

-   new module to provide IMS PCSCF user location component
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_usrloc_pcscf.html>

### ims_usrloc_scscf

-   new module to IMS SCSCF user location component
-   <http://kamailio.org/docs/modules/4.0.x/modules/ims_usrloc_scscf.html>

### outbound

-   new module providing SIP Outbound (RFC 5626) Edge Proxy support
-   <http://kamailio.org/docs/modules/4.0.x/modules/outbound.html>

### sca

-   new module providing Broadsoft Shared Call Appearances support
-   <http://kamailio.org/docs/modules/4.0.x/modules/sca.html>

### websocket

-   new module providing a WebSocket (RFC 6455) server for:
    -   SIP over WebSocket (draft-ietf-sipcore-sip-websocket)
    -   MSRP over WebSocket (draft-pd-dispatch-msrp-websocket)
-   <http://kamailio.org/docs/modules/4.0.x/modules/websocket.html>

### xhttp_pi

-   new module - provides a web provisioning interface
-   <http://kamailio.org/docs/modules/4.0.x/modules/xhttp_pi.html>

## SER Modules

This modules are imported from SER flavour, being new from Kamailio
packaging point of view (they were not part of Kamailio distribution in
the past).

### avp

-   avp manipulation tools
-   <http://kamailio.org/docs/modules/4.0.x/modules/avp.html>

### db2_ldap

-   DB API v2 connector for LDAP
-   <http://kamailio.org/docs/modules/4.0.x/modules/db2_ldap.html>

### db2_ops

-   DB API v2 script operations
-   <http://kamailio.org/docs/modules/4.0.x/modules/db2_ops.html>

### malloc_test

-   test drive module for memory managers
-   <http://kamailio.org/docs/modules/4.0.x/modules/malloc_test.html>

### mangler

-   SIP message mangling tools
-   <http://kamailio.org/docs/modules/4.0.x/modules/mangler.html>

### print

-   sample module (for devel)
-   <http://kamailio.org/docs/modules/4.0.x/modules/print.html>

### print_lib

-   sample module depending on internal library (for devel)
-   <http://kamailio.org/docs/modules/4.0.x/modules/print_lib.html>

### timer

-   routing block execution on core timers
-   <http://kamailio.org/docs/modules/4.0.x/modules/timer.html>

### uid_auth_db

-   authentication using db structure based on unique user id
-   <http://kamailio.org/docs/modules/4.0.x/modules/uid_auth_db.html>

### uid_avp_db

-   per user APV loading from db structure based on unique user id
-   <http://kamailio.org/docs/modules/4.0.x/modules/uid_avp_db.html>

### uid_domain

-   multi-domain management using db structure based on unique user id
-   <http://kamailio.org/docs/modules/4.0.x/modules/uid_domain.html>

### uid_gflags

-   global flags and AVPs management using db structure based on unique
    user id
-   <http://kamailio.org/docs/modules/4.0.x/modules/uid_gflags.html>

### uid_uri_db

-   uri management using db structure based on unique user id
-   <http://kamailio.org/docs/modules/4.0.x/modules/uid_uri_db.html>

### xprint

-   log messages from scrip using %xy specifiers (former SER xlog
    module)
-   <http://kamailio.org/docs/modules/4.0.x/modules/xprint.html>

## New in Old Modules

### acc

-   table name for db acc can be dynamic

### app_lua

-   extended the API with registrar:save_uri()
-   support for URI lookup from registrar

### auth

-   added new variant of pv_www_authenticate() which takes method as a
    parameter
-   new function has_credentials(realm) - returns true if an
    authorization header matching the realm is found
-   new function pv_auth_check(...)
    -   equivalent of auth_check(...) from auth_db, but taking the
        password from a PV -- combines pv_proxy_authenticate() and
        pv_www_authenticate()
    -   new module parameter use_domain that controls whether the domain
        part of URIs should be used or not to make the identity checks
        upon authentication with pv_auth_check(...)

### auth_db

-   added new variant of www_authenticate() which takes method as a
    parameter
-   new function is_subscriber(uri, dbtable, flags)
    -   check if URI corresponds to a subscriber record in dbtable and
        load credentials for it

### ctl

-   support of no limitation on number of message chunks

### cpl-c

-   added an optional parameter to cpl_run_script() to provide the URI -
    the parameter will be used instead of taking the URI from headers or
    R-URI

### db_cassandra

-   added raw query support for CQL format

### db_postgres

-   added support for row/table locking

### db_text

-   new rpc command 'db_text.dump' - allows forcing a write back to disk
    for modified tables

### dialog

-   added dlg_set_timeout_by_profile() route script function
    -   this function allows the same dialog timeout to be set across
        all the dialogs in a profile (with or without values).
-   add contact header in REFER for dlg_bridge()
-   bridge contact address can be set via parameter

### htbale

-   added RPC command for listing one item in a hash table
-   added new RPC htable.listTables - this RPC list all defined tables
    and their settings

### ipops

-   added new exported function is_in_subnet()

### lcr

-   added support for websocket transport layer

### maxfwd

-   max_limit module param can be changed at runtime

### mqueue

-   added mq_size() function to get runtime size of mqueue in script
-   added MI command to get current size of mqueue

### msrp

-   added support for websocket transport layer
-   added internal map table to track msrp connections
-   added rpc command to list active connections
-   new parameter use_path_addr - specify host and port for usage in
    Use-Path header

### mtree

-   added RPC command mtree.summary

### nat_traversal

-   added support for websocket transport layer

### nathelper

-   use usrloc record unique id to generate the OPTIONS keepalives,
    allowing to match its reply with location record
-   option to remove UDP contacts that don't respond to OPTIONS
    keepalives
-   added support for websocket transport layer
-   add_contact_alias() can now be given ip addr port, and proto as
    parameters
-   added the select for rewriting the contact
-   new test 128 to check port in contact against source port

### nat_traversal

-   added support for websocket transport layer

### ndb_redis

-   ability to connect to redis server via unix domain socket
-   new cfg function redis_free() to free the redis reply on demand
-   redis_cmd() can take variable number of parameters
-   added redisc_exec_argv() function

### p_usrloc

-   ported gruu and outbound API changes to p_usrloc module

### path

-   added support for websocket transport layer
-   bind to outbound module (if loaded before path) to enable RFC 5626
    Edge Proxy behaviour

### pdt

-   added pdt.list command to dump memory structure via rpc

### permissions

-   added new cfg function allow_address_group(addr, port) - return
    group of matching address and port record in address table
-   added support for websocket transport layer
-   added RPC commands

### pike

-   added pike.top rpc command

### prefix_route

-   option to provide the value to match the prefix as parameter to
    prefix_route()
-   option to disable config file execution exit upon prefix match

### presence

-   added support for websocket transport layer
-   now uses DB row/table locking in DB only mode (where supported by
    the DB module)

### presence_xml

-   module parameter xcapauth_usedel_reason to allow admin to set the
    reason in Subscription-Status header when a user is deleted from
    contact list

### pipelimit

-   added a new set of RPC commands

### pua

-   now uses DB row/table locking in DB only mode (where supported by
    the DB module)

### pv

-   new pv class - $cnt(...) - to count the number of other array
    variables (e.g., $cnt($avp(x)) )
-   added support for websocket transport layer
-   new pv class - $version(key) - return attributes of the software
    version
    -   key can be:
        -   num - return version number
        -   full - return all version string
        -   hash - return git hash code and status
-   new pv class - $af(key) - return address family for received message
    -   key can be:
        -   id: return integer representation for IPv4 or IPv6 (value of
            AF_INET and AF_INET6)
        -   name: return "IPv4" or "IPv6"
-   new pv class - $K(key) - return the value for internal constant
    keywords
    -   key can be:
        -   IPv4 - returns AF_INET
        -   IPv6 - returns AF_INET6
        -   UDP - return PROTO_UDP
        -   TCP - return PROTO_TCP
        -   TLS - return PROTO_TLS
        -   SCTP - return PROTO_SCTP
    -   it can be used to compare the values from other pvs, such as
        $af(id), $snd(af), $snd(proto)
-   new transformation {s.stripto,c} - remove the prefix until meeting
    'c'
    -   "abcdef"{s.stripto,d} => "def"
    -   the char can be given in a pv
-   new function: typeof(pvar, vtype) - test the type of the
    pseudo-variable
-   new function: not_empty(pvar) - test if the type is string and the
    value not empty
-   make individual flags accessible via $Mf(idx), $Bf(idx) and $Sf(idx)

### registrar

-   added support for websocket transport layer
-   new modparam to control requiring (and adding) outbound options-tag
-   new modparam to control adding Flow-Timer: header to 200 OK
    responses to REGISTER requests
-   new function lookup_branches(domain) - lookup the contacts for r-uri
    and additional branches - only branches that are clean (i.e., have
    only r-uri set) are used
-   $ulc(...) returns ruid, reg-id and instance
-   execute event route when a contact expires - the name of the routing
    block is event_route\[usrloc:contact-expired\]

### rls

-   now uses DB row/table locking in DB only mode (where supported by
    the DB module)

### rr

-   bind to outbound module (if loaded before rr) to enable RFC 5626
    Edge Proxy behaviour
-   added option to set custom username for Record-Route URI

### rtpproxy

-   allow script variables in set_rtp_proxy_set(...) parameter
-   possibility to add ice relay candidates to sdp streams if new module
    parameter ice_candidate_priority_avp has been defined
-   when adding ICE relay candidates, always include RTCP candidate
-   new flag "x" for automatic bridging between IPv4 and IPv6, based on
    the following assumption: "i" is the IPv4 interface and "e" is the
    IPv6 interface on the RTPProxy
-   new flag 't' to rtpproxy_destroy function that makes it possible do
    delete whole call even when To tag is present in request/reply. In
    force_rtp_proxy the flag is ignored
-   new flag 'b' to add a branch specific string tot the call-id
-   rtpproxy_manage can take the flags parameter as a pseudo-variable

### sanity

-   added support for websocket transport layer

### sdpops

-   new function: sdp_remove_line_by_prefix(string)
    -   removes lines from SDP body that matches given prefix
-   added sdp_content() - return true of there is a sdp part in the body
    of sip message

### seas

-   added support for websocket transport layer

### sipcapture

-   support for storing the information to multiple sql tables
-   HEPv3 support
-   added RPC command to turn on/off or check status

### siptrace

-   added support for websocket transport layer
-   added RPC command for turning on/off tracing

### siputils

-   added function to return RURI parameter value

### sl

-   new function sl_forward_reply(...)
    -   forward the received reply fron configuration, before it would
        be done by the core. It has the option to change the status code
        and reason phrase
    -   the forwarding is statelessy, not affecting the tm states

### snmpstats

-   added support for websocket transport layer

### statistics

-   update_stat(...) can get PV as value parameter

### textops

-   added functions that operate on header value

### tm

-   added t_is_set("target") function - returns true if the attribute
    specified by the target parameter is set for current transaction
    (e.g., failure_route, branch_route, onreply_route)
-   new parameter to control remapping of 503 response to 500
-   added support for websocket transport layer
-   module parameter contacts_avp is now name of an xavp
-   added new module parameter contact_flows_avp that must be defined if
    contacts_avp is defined
-   added support for outbound by new script function
    t_next_contact_flows()
-   enhanced t_replicate() so that if a NULL string is used, it
    replicates to $du
-   added option to check callid when matching transactions
-   remember per-branch onreply_route and onfailure_route settings

### tmx

-   added pv $T_reply_reason - useful especially for internally
    generated (faked) replies to get the reason phrase
-   added t_is_reply_route() - function to determine if the top executed
    route block is a reply
-   added active_transactions statistic
-   added pv $T_reply_last - returning last reply code

### uac

-   uac_replace\_\[from\|to\]() in AUTO mode can use dialog module to
    restore From/To - in this mode the URIs are stored as dialog
    variables
-   new paramter restore_dlg
    -   if set to 1, then the module uses dialog variables to store the
        initial and new values for From/To headers
    -   default set to 0 - otherwise all calls that have changes to
        From/To headers must be tracked by dialog
-   added reg_db_table parameter to specify table name for registrations
-   skip realm matching when realm pv for uac_auth() is empty or null
-   uac_reg - skip realm checking if realm attribute is empty
-   uac_reg - add reg_retry_interval parameter. The new parameter allows
    to retry failed registration attempts. Instead of unconditionally
    marking the entry as disabled, the registration will be retried
    after the set interval. Setting it to 0 (default) retains the old
    behaviour.

### usrloc

-   for DB_ONLY module, run timer only when timer_interval > 0, to allow
    database to be cleaned up by external processes
-   keep time of the last keepalive for natted UDP contacts
-   added +sip.instance and reg-id to mi_usrloc_show_contact
-   option to store xavp per contact
    -   the xavp can contain a list of xavps
    -   new config parameter to specify the name of xavp
-   store per-contact attributes in database
    -   attributes table is the name of table used for save/lookup plus
        suffix '\_attrs' (e.g., location_attrs)
-   added RPC command for AOR lookup

### xcap_server

-   support for org.openmobilealliance.xcap-directory auid
-   use a static table to keep the list of supported auids - adding new
    auid requires an entry in this table and define of the internal type

### xlog

-   log_colors - new parameter to update the color scheme for core log
    levels

## New in Core

### Components

#### command line parameters

-   -e - print colorful messages based on log level
-   command line option -v replaced with -K - -v was exposing to misuse
    instead of -V (version), now is aliased to it

#### core parameters

-   log_color - print colorful messages based on log level

#### core code

-   support for receiving/sending WebSocket frames over TCP/TLS
-   support for building Via: and Record-Route: (including double-RR)
    headers for WebSockets
-   added Colin Plumb's MD5 implementation to be fully GPL compliant
-   update printing of socket lists to show the advertised address if
    set for the socket
-   added DNSSEC support for DNS queries
    -   this is available by setting the USE_DNSSEC compile flag. It
        requires libval-threads and libres (part of dnssec-tools
        dnssec-tools.org)
    -   the custom resolvers were replaced by val_gethostbyname,
        val_gethostbyname and val_res_query (for SRV)
-   added instance and reg_id fields to sip_msg_t - also added
    set_instance and reset_instance functions
-   extended xavp api - functions to add an avp last in a list or
    inserted at a specific position, to extract an avp from top of the
    list
-   print advertise-port on the list of sockets at startup
-   default compatibility set to SR_COMPAT_MAX - $xy is tried first as
    pv and if not, then is considered avp

#### parser/uri

-   support for WS and WSS transports in Via: lines
-   support for ";transport=ws" in URIs

#### lib/srdb1

-   added support for row/table locking (requires corresponding support
    in database modules)

## Tools

-   sercmd is installed as kamcmd
-   kamctl
    -   stats command can print a single group of statistics - groupid
        can be given as command parameter
    -   new command 'db showg' - uses \\G at end of sql query, resulting
        in line-formatted output (at least for mysql)
    -   added definition of tables for uid modules
    -   added option to grant sql access from a remote host - set
        DBACCESSHOST in kamctlrc
-   kamdbctl
    -   new command - kamdbctl pframework create - creates a
        provisioning framework for the installed db tables
-   Makefile
    -   added new target 'printvar' - prints the value of a Makefile
        variable whose name is provided in variable 'v', e.g.,: make
        printvar v=exclude_modules
    -   added uninstall target - it prints hints and commands to perform
        uninstall when installation is done from sources
    -   split module groups definitions in Makefile.groups
-   Makefile.defs
    -   added MEMMNG to allow selection of memory manager
        -   MEMMNG=0 => fast malloc is used (f_malloc)
        -   MEMMNG=1 => quick malloc is used (q_malloc)
        -   MEMDBG is used now to set the debug mode for each of the
            managers
            -   0 - no debug info
            -   1 - debug info enabled
    -   default memory manager set to q_malloc
        -   debug option is left unset (no DBG_QM_MALLOC)
        -   lower memory chunk overhead with faster join

## kamailio.cfg

-   use add_contact_alias()/handle_uri_alias() for NATed calls
-   test if DBURL is already defined before defining it - allow to set
    it via command line with -A DBURL='...'
-   kamailio-local.cfg is attempted to be loaded if it exists in the same
    folder, allowing to set defines/parameters inside it without changing
    main kamailio.cfg
-   add option to set pstn gw port
