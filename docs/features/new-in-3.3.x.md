# Kamailio SIP Server and SER - New Features in v3.3.x

**First release, v3.3.0, was out on June 18, 2012**.

*This is a draft of new features added in version 3.3.x, manually
updated, thus not always synchronized with what is new in source code
repository.*

## New Modules

### app_mono

- new module for embedded execution of managed code, like C#
- <http://kamailio.org/docs/modules/devel/modules/app_mono.html>

### db_cassandra

- new module offering a connector to Cassandra DB server
- <http://kamailio.org/docs/modules/devel/modules/db_cassandra.html>

### db_cluster

- new module offering a generic database clustering
- <http://kamailio.org/docs/modules/devel/modules_k/db_cluster.html>

### msrp

- new module offering an embedded MSRP relay (RFC4975 and RFC4976)
- <http://kamailio.org/docs/modules/devel/modules/msrp.html>

### presence_profile

- new module for managing UA configuration via SIMPLE extensions
- <http://kamailio.org/docs/modules/devel/modules_k/presence_profile.html>

### tmrec

- new module for matching time recurrences in config file. Definitions
    of recurrences are based on Internet Calendaring and Scheduling Core
    Object Specification (Calendar COS - RFC 2445).
- <http://kamailio.org/docs/modules/devel/modules/tmrec.html>

### xhttp_rpc

- new module to execute RPC commands via embedded HTPP server
- <http://kamailio.org/docs/modules/devel/modules/xhttp_rpc.html>

## New in Old Modules

### acc

- new parameters cdr_start_id, cdr_end_id and cdr_duration_id to set
    the names of DLG variables for start time, end time and duration for
    calls

### app_lua

- more SIP server internal functions exported as native Lua functions,
    among them, functions from modules such as:
    - cfgutils (lock, unlock)
    - sqlops (sql_xquery)
    - msilo
    - siputils
    - textops
    - pua_usrloc
    - rls
    - alias_db
    - uac
    - mqueue
    - tmx
- speed up by using a cache to lookup PVs

### auth

- new function auth_challenge()
    - combines www_challenge() and proxy_challenge() by calling the
        first for REGISTER and the second for the rest of request types
- new function to return WWW-Authenticate hdr in a PV

### auth_db

- new function auth_check()
    - offers www/proxy_authenticate() behavior by using first for
        REGISTER and the second for the other requests
    - it can do extra security checks based on parameters (e.g., check
        auth user against from/to user)

### ctl

- compile time option to use system memory allocator
    - flag in module Makefile: -DCTL_SYSTEM_MALLOC

### db_postgres

- affected_rows() DB API now supported

### dialog

- new event routes
    - event_route\[dialog:start\] - executed when dialog starts (200
        ok for initial INVITE)
    - event_route\[dialog:end\] - executed when dialog is ended (BYE
        or dialog timeout)
    - event_route\[dialog:failed\] - executed when initial INVITE
        fails (>300 reply)
- new parameters
    - send_bye - set sending BYE flag for all dialogs automatically
    - wait_ack - wait for ACK to be sent after a negative reply for
        initial INVITE
- dialog profiles and internal flags are stored to db and loaded upon
    restart
- support for handling early dialogs (for not ACK'ed dialogs)
- timeout route executed only for confirmed dialogs
- lookup dialog by (entry, label) if available for $dlg(...) - useful
    for timeout route where there is no SIP message passing through for
    the dialog
- new function to set dialog timeout by internal id -
    dlg_set_timeout(timeout , h_entry, h_id)
- possibility to send keep alives for dialogs
    - keepalives are OPTIONS requests
    - if keepalive request get 408 ot 481, dialog is timed out after
        10 secs

### dialplan

- new matching operator - fnmatch (match_op=2)
    - match using shell-like patterns

### dispatcher

- refactored dispatcher destination states
    - states: active, trying, inactive, disabled
    - probing is a mode that can be set for active and inactive states
- added outbound_proxy modparam for use with dispatcher pings
- MI/RPC ds_reload command can be executed even when using call load
    distribution

### diversion

- added optional uri parameter to add_diversion()

### dmq

- added config function send_dmq message which exposes the same
    functionality as the API function

### domain

- added new function 'lookup_domain()' that in addition to checking if
    domain is local, adds attributes of local domain into AVPs
- domain attributes are stored in new table 'domain_attrs'
- removed support for db only mode and, as consequence, removed
    'db_mode' module variable

### htable

- added 'updateexpire' parameter to the definition of an htable
    - it permits one to change whether updating a value stored in the
        htable resets its time until expiration
    - its default value is 1, to preserve existing behaviour
    - however, if set to 0, updating a value will have no effect on
        how soon it will expire
- implemented "delete" mi/rpc function - delete specific keys from an
    htable via the MI or RPC interface

### lcr

- gateways with special LCR instance id 0 belong to all normal LCR
    instances
- added 'lcr.defunct_gw' rpc command
- IPv6 addresses are supported
- support for R-URI matching
    - an additional request_uri column has been introduced
    - if other than NULL, it also needs to match beside prefix and
        from_uri in order for the rule to be selected

### kex

- new pv $sruid to return unique strings based on sruid internal
    library

### mediaproxy

- handle DLGCB_CONFIRMED event to catch ACKs with SDP

### mi_rpc

- added MI command to run RPC commands
    - all RPC commands can be executed via MI

### mqueue

- queue names can now be in pseudo variables
    - mq_add()/mq_fetch() can use pseudo variables (as well as
        strings) for queue names.
    - $mqk()/$mqv() can use pseudo variables (as well as strings) for
        queue names

### msilo

- extra headers in MESSAGE requests now stored in the silo
- added storage of extra SIP headers from AVP when m_store() is called

### mtree

- added 'mt_allow_duplicates' module variable

### ndb_redis

- reconnect if query to redis server fails
- support for redis array reply

### pdt

- new functions:
    - pd_translate(sdomain, rmode)
- new rpc commands:
    - pdt.reload - reload database records in cache

### permissions

- transport protocol argument of allow_trusted() function call can now
    have value "any" meaning that any transport protocol is acceptable
- IPv6 addresses are supported
- allow_trusted() can deal with HTTP requests

### presence

- support for polite-block in pres_auth_status() exported function
- added db only mode support for presentity table
- option to load database records in chunks
- RFC 4827 (presence hard-state) support
- handle_subscribe() has a new optional parameter that can be used to
    specify watcher URI
- dedicated notifier processes
    - new "notifier_processes" modparam - if set to 0, dedicated
        processes feature is disabled

### pua

- added DB only mode to PUA. Useful for scaling presence/RLS across
    multiple servers
- database records are loaded in chunks to cope better with large
    number of records
- added MI command to "clean" the pua table

### pua_usrloc

- added branch_flag parameter
    - mark the contact for sending PUBLISH via setbflag(branch_flag)

### pv

- new transformation class **line**
    - {line.count}
    - {line.at,pos}
    - {line.sw,match}
- new string tranformations
    - {s.trim}
    - {s.ltrim}
    - {s.rtrim}
    - {s.rm,match}
- support of URN parsing (e.g.: <urn:service:sos.fire>)
    - $ru= "<urn:service:sos.fire>"
    - $rz= "urn" (scheme)
    - $rU= "service"
    - $rd= "sos.fire"
- new pseudo variables
    - $dic = Diversion header "counter" parameter value
    - $sid = server_id value - server_id can be set via global
        parameter with same name

### registrar

- new parameter xavp_cfg - defines the name of an XAVP container to
    hold per-REGISTER parameters
- new parameter xavp_rcd - store details of UL record
    - if set, the internal ruid field will be returned as inner xavp
        to it
- option to set max contact per REGISTER (via xavp)
- handle GRUU extension (RFC5627)
- added new parameter gruu_enabled - makes possible to turn off GRUU
    handling for REGISTER
- optional uri parameter
    - removed aor_avp as it conflicted with unregister uri param
    - save(), lookup() and register() can take an extra optional
        parameter to specify the URI for which to do the operation. It
        provides the same functionality as it was with aor_avp

### rls

- added DB only mode to RLS. Useful for scaling RLS across multiple
    servers
- new modparam to not perform back-end subscriptions to non-local
    presentities
- rls_presentity table can be stored in a different DB to other RLS
    tables
- new modparam to limit the number of back-end subscribes for each RLS
    subscribe dialog
- option to load database records in chunks
- new modparam to disable remote (to a domain that is not local)
    back-end SUBSCRIBEs
- table rls_presentity can be in a different DB than rls_watchers
- support for dedicated notifier processes
- made the number of notifier processes in RLS configurable
- rls_handle_subscribe() has a new optional parameter that can be used
    to specify watcher URI
- added MI command to "clean" the rlsubs and rlpres entries

### rr

- added new record_route_advertised_address() exported function
- detect GRUU addresses and don't match 'myself' for them

### rtimer

- execute route blocks on micro-second timer base

### rtpproxy

- send Via branch to rtpproxy
    - introduce force/unforce options "1" and "2" to optionally send
        first or second Via branch to rtpproxy.
    - this can be used to stop only a specific branch in the rtp
        proxy, which is needed for complex serial looping scenarios
        where in a race condition a new branch is processed before a
        previous branch is cancelled, where the cancel would whipe the
        whole call from the rtp proxy instead of just the old branch,
        causing the subsequent rtp proxy lookup to fail.
    - handle UPDATE requests in rtpproxy_manage()

### sanity

- SIP grammar checks can be done for SIP replies
- new checks for duplicates of tag params in To/From

### sipcapture

- added HEPv2 support

### siptrace

- store method for SIP replies, using CSeq header
- added HEPv2 support
- new parameter to allow the option of doing delayed insert to db
    (trace_delayed)

### siputils

- allow use of is_uri_user_e164() from any route
- new function is_gruu(uri) - wrapper function to test quickly if a
    SIP URI indicates a GRUU

<!-- -->

        address or not

### sdpops

- new functions
    - sdp_with_codecs_by_id("codecs")
    - sdp_with_codecs_by_name("codecs")
    - sdp_remove_media("type")
- old functions
    - functions for keeping only a set of codecs can take a second
        parameter to filter the matching on certain media type
- support for codecs with same name and many different ids
- added new exported function get_sdp(...) to return the raw SDP to an
    AVP

### sl

- new event_route\[sl:local-response\] that allows inspection of
    locally generated (configuration file or code) stateless responses.
    This includes HTTP responses (enable new core option http_reply_hack
    if you are using this event_route and HTTP)

### statistics

- update_stat() can now be called from ANY_ROUTE

### textops

- new function: in_list(subject, list, separator)
- two functions to search and subst inside header fields
    - search_hf(hf, re, flags) - search inside header field body
    - subst_hf(hf, subst, flags) - perl-like substitution inside
        header field body

### textopsx

- new function: keep_hf(expr)
    - remove all the non-mandatory headers that don't match **expr**
- new function: fnmatch(value, match, flags)
    - match using shell-like patters based on C fnmatch(...)

### tls

- new parameters:
    - renegotiation - enable/disable TLS cipher renegotiation
- TLS pre-init operations done at the time of loading module to allow
    other modules using SSL lib in parallel
- rpc tls.info prints the limit and opened tls connections

### tm

- $snd() structure filled in for event_route\[tm:local-request\]
- new event_route\[tm:local-response\] that allows inspection of
    locally generated (configuration file or code) transaction stateful
    responses

### uac

- added reg_timer_interval modparam to set the frequency with which
    registrations are renewed and otherwise managed
- support for 407 challenge to registrations
- function to replace To header

### usrloc

- save unique string ID for each contact (ruid column)
- handle +sip.instance parameter from GRUU extension (rfc 5627)
- handle reg-id Contact parameter defined by RFC5626
- option to start own timer processes
    - new parameter timer_procs
    - default is 0, meaning the core timer process is used (like so
        far)
    - if >0, a number of basic sync timers are started
    - each own timer will take care of synchronizing the usrloc
        records, selecting specific slots in the internal hash table
        (load balancing mechanism) - this mode is useful for handling
        lot of usrloc records
- option to check if contact DB UPDATE was successful
    - use DB API affected_rows() when available to detect if the DB
        UPDATE operation for a contact was successful, if not, do an
        INSERT instead
    - behaviour controlled by parameter db_check_update, default is 0
        (no check for affected rows and no insert -- backward
        compatible)

### xcap_server

- added $xcapuri(u=>uri_adoc) pvar
    - this gives access to the adoc field in the internal xuri
        data-structure (the xuri without xpath)

### xlog

- xlog(facility,log-level,message) allows to log messages with
    dedicated syslog facility

### xmlrpc

- added support for nested structs in RPC reply via XMLRPC

### xmpp

- new parameter gwmap for sip-xmpp domain translation
    - gwmap can get a valus as a list of
        'sipdomain1=xmppdomain1;...;sipdomainN=xmppdomainN'
    - whenever a sip-to-xmpp message is sent, any matching sipdomain
        in src or dst address is translated to appropiate xmppdomain
    - the other way around, when a xmpp-to-sip message is sent, then
        any matching xmpp domain in src or dst address is translated to
        appropriate sip domain
    - this allow getting rid of the URI encoding with delimiter
    - if a domain is not found, the src/dst domains are preserved as
        they are in SIP to XMPP and vice verse
    - if the xmppdomain is not provided explicitly, sipdomain is
        considered to be also the xmpp domain

## New in Core

### Components

#### core code

- added support for basic mili-second timers
- support for receiving MSRP messages over TCP/TLS
- setting max_while_loops to zero now allows infinite loops
- option to use name IDs for TOS setting
- option to set advertised address and port per socket
    - listen parameter can be like: 'listen=proto:ip:port advertise
        ip1:port1'
    - ip1 and port1 will be used to build Via and Route headers for
        messages using the socket
- allow send() without parameters - will use r-uri/dst-uri to send the
    msg buffer
- added timeval field inside sip message structure
- added pid field inside sip message structure
- added support for basic timer + interval sync
    - new functions to start basic timers that will sync the interval
        after executing the task. Useful if the task is taking long, the
        process will skip the delay in the sleep value

#### lib/srutils

- new internal library to collect useful code to be shared by modules
- includes:
    - JSON parser
    - UUID generator
    - time recurrence matching functions

#### parser/uri

- support for URN
    - uri parser has support for URNs (e.g. <urn:service:sos.fire>)
    - t_relay() does not break on RURI with URNs
    - PVs are set as follows:
        - $ru= "<urn:service:sos.fire>"
        - $rz= "urn"
        - $rU= "service"
        - $rd= "sos.fire"
    - refer to
        <http://tools.ietf.org/html/draft-ietf-ecrit-framework-13#page-29>
        for SIP signaling requirements for SIP proxy servers
    - support for GRUU specified by RFC5627

### Database Enhancements

- bitwise AND operation added to DB queries
- ability to specify DB connections as non-pooled in DB URLs
- updated DB API prototype for replace
    - replace method takes two more parameters to allow implementation
        of replace functionality inside the db connector module, via
        update, affected rows and insert
- DB transaction support - added db_begin()/db_commit()/db_rollback()
    wrapper functions

### Global Parameters

#### fork_delay

- number of usecs to wait before forking a process

#### http_reply_hack

- does what the old HTTP_REPLY_HACK compile-time option did
- defaults to no (disabled)
- enable this if you use the new event_route\[sl:local-response\] and
    the embedded HTTP server module

#### latency_limit_action

- time in micro seconds - if the execution of a config action takes
    longer than it, a log message is printed

#### latency_limit_db

- time in micro seconds - if the execution of a database query takes
    longer than it, a log message is printed

#### latency_log

- log level to print latency log messages

#### max_while_loops

- setting to 0 means infinite loops are allowed in configuration file
    (you still get a warning on start-up)

#### mem_join

- if set to 1, q_malloc and f_malloc do join of free memory fragments.
    Default is 0. In use if MEM_JOIN_FREE is defined

#### mem_safety

- if set to 1, memory free operation does not call abort() for double
    freeing a pointer or freeing an invalid address
- default is 0, can be set via config framework

#### msg_time

- set the sip message timeval filed value at receive time (1 (on) by
    default, set to 0 to disable)
- the value is set automatically at received time based if msg_time=1
    or first time when it is accessed

#### socket workers

- set the number of worker processes to handle traffic on specific
    listen sockets

#### tcp_clone_rcvbuf

- enable or disable cloning of received data on TCP connections to
    allow safe updates directly inside the incoming buffer

#### tls_max_connections

- limit the number of active tls connections

## New RPC Commands

### core.tcp_list

- list active TCP connections

### core.aliases_list

- list local name aliases (matching **myself**)

### core.sockets_list

- list local listen sockets

## Command Line Parameters

- -I - print details about default internal attributes

## Makefile System

- printmiface - new target to print module interface define
- option to print C compile flags

## Tools

### protoshoot

- tool for sending file content over network
- useful to re/send SIP messages stored in files
