# Kamailio SIP Server (SER) - New Features in v4.4.x

**Current stable version is numbered 4.4.x and it was released in March
30, 2016**.

\<fc #0000FF> **Previous version was 4.3.x (released on June 10, 2015),
see what was new in that release at:** \</fc>

-   \<fc
    #0000FF><http://www.kamailio.org/wiki/features/new-in-4.3.x>\</fc>

## New Modules

### cfgt

-   reports config execution for unit test evaluation
-   <http://kamailio.org/docs/modules/devel/modules/cfgt.html>

### crypto

-   cryptographic functions for use in config file
-   <http://kamailio.org/docs/modules/devel/modules/crypto.html>

### http_async_client

-   async http queries using curl library
-   <http://kamailio.org/docs/modules/devel/modules/http_async_client.html>

### http_client

-   http queries using curl library
-   <http://kamailio.org/docs/modules/devel/modules/http_client.html>

### ims_dialog

-   rename of dialog_ng
-   <http://kamailio.org/docs/modules/devel/modules/ims_dialog.html>

### log_custom

-   send log messages to custom backend
-   <http://kamailio.org/docs/modules/devel/modules/log_custom.html>

### log_systemd

-   send log messages to systemd journal
-   <http://kamailio.org/docs/modules/devel/modules/log_systemd.html>

### smsops

-   sms operations for sip messages
-   <http://kamailio.org/docs/modules/devel/modules/smsops.html>

### statsc

-   statistics collector providing reports
-   <http://kamailio.org/docs/modules/devel/modules/statsc.html>

## New in Old Modules

### acc

-   new **acc_prepare_always** parameter to allow preparation of the
    request no matter if the acc_prepare_flag is set at the moment of
    the transaction creation. See [sr-user discussion](http://lists.sip-router.org/pipermail/sr-users/2015-July/089191.html)

### acc_radius

-   added radius time mode parameter: rad_time_mode - format can be set
    to seconds.microseconds
-   support radcli library

### app_lua

-   export registrar.lookup_to_dset to app_lua interface
-   export many sdpops functions to LUA

### async

-   module timer processes based on workers parameter

#### auth_radius

-   append_realm_to_username parameter - allows the unmolested digest
    username to be passed to RADIUS in the User-Name attribute

### carrierroute

-   addind db_load_description parameter
    -   toggle on/off loading in memory the description column in the
        carrierroute/carrierfailureroute database tables. This reduces
        the shared memory used by the module

### cdp

-   added class of auth session to know more info about auth session -
    for example: ims_qos can now report Rx session for Reg or for media
-   CER/CEA retry if send/receive FD disappeared
-   evaluate the supported_vendor_id-AVP during CER/CEA
-   load balancing timer has millisecond resolution

### cfgutils

-   sleep() and usleep() accept vars as parameter

### cnxcc

-   locks re-entrant for simplifying the upper layer APIs

### corex

-   added file_read() and file_write() functions
    -   file_read(fpath, var) - read content of a text file into a
        variable
    -   file_write(fpat, content) - write content of parameter to a text
        file
-   added corex.pkg_summary command
    -   dump pkg usage summary to syslog for a specific pid or process
        index

<!-- -->

        kamcmd corex.pkg_summary pid 12345
        kamcmd corex.pkg_summary idx 1

### ctl

-   increased default buffers size for rpc responses
    -   binrpc_max_body_size = 32
    -   binrpc_struct_max_body_size = 8
-   support for u specifier (unsigned int)

### db_text

-   support 'order by' in raw query
-   flexibility for column type comparison - compare DB1_STR,
    DB1_STRING, DB1_BLOB as equal
-   add support for replace - implements replace with update/insert
-   implemented raw query for UPDATE/DELETE/REPLACE

### debugger

-   add support for static and dynamic, module specific, logging
    facility
-   new dbg_sip_msg() config function, which prints how the sip message
    would look like if it were to be sent out at that point in config
-   added mi commands for module level/facility setters
-   added rpc commands for module level/facility setters

### dialog

-   re-entrant mutex for dialogs hash table slots
-   run event_route\[dialog:end\] in case of dialog termination by
    interface commands
-   make dialog context available in event route tm:local-request
-   new parameter db_skip_load to skip loading dialogs on startup
-   safety bump of cseq for bye if prack was involved in call setup

### dialog_ng

-   renamed to ims_dialog

### dispatcher

-   relative weight distribution added - it is possible to assign
    "rweight" (relative weight) param to each host in destination group.
    rweight is in the integer range from 1 to 100
-   added new probing_mode=3 to always probe flagged gateways
-   ds_timer_mode - new param to specify the timer proc
    -   if set to 0 (default), main timer is used
    -   if set to 1, secondary timer is used
-   rpc command dispatcher.ping_active
    -   manage global pinging state (send or not the keepalive to
        destinations)
    -   kamcmd dispatcher.ping_active 0 - don't send keepalive requests
    -   kamcmd dispatcher.ping_active 1 - send keepalive requests
    -   default value is 1

### dmq_usrloc

-   implement deleted contact replication
-   new param sync - control sync'ing all contacts at startup
    -   default 1 - require sync'ing of all contacts at startup, set to
        0 to disable
-   support for throttling sync of all usrloc records
    -   batch_size and batch_usleep parameters can control how many
        records can be sent out at once, after that sleep for
        batch_usleep microseconds before sending the next batch

### domain

-   allow 'type' field in domain_attrs to be a DB1_BIGINT, makes it work
    with MySQL views on 64bit systems

### drouting

-   support for symbols "#\*+" in drouting trees

### enum

-   single digit is now valid in function enum_query
    -   is_e164() returns true for a single digit (previously two
        digits)

### evapi

-   implemented receive buffering per connected client

### htable

-   improved error message when loading from database
-   htable.dump - added the type of the value to the result
-   allow specifying column names per hash table
    -   at least two columns must be specified, first is the one
        corresponding to key_name
    -   the values of following columns are concatenated with a comma
        delimiter
    -   columns can be specified with cols attribute in htable
        definition and they must be enclosed in quotes in order to be a
        valid sip parameter value and be separated by comma
    -   don't sync back to db when cols per htable is set

<!-- -->

        modparam("htable", "htable",
            "a=>size=4;dbtable=a;cols='key_name,val1,val2,val3'")

### ims_auth

-   added option to set destination host for MAR requests
-   allow different qop setting for INVITE

### ims_charging

-   added Multiple-Services Indicator
-   allow ro session id to be used from cfg file as avp
-   added the possibility to omit the rating-group
-   added ability to send vendor-specific charge information
-   added ability to retrieve the Diameter-Status-Code for the
    Charging-Session

### ims_qos

-   make Release-Reason from QoS configurable
-   option to add Extra-Header, in case QoS fails during a session
-   added Rx-Specific-Action AVPs to work with some PCRFs
-   new mod param terminate_dialog_on_rx_failure -
    terminate_dialog_on_rx_failure this parameter determines if a dialog
    is torn down if a media Rx session is terminated

### ims_registrar_pcscf

-   added functionality to unREGISTER a contact, eg. based on a failed
    network ping
-   set received host, proto and port when searching for pcontact

### ims_registrar_scscf

-   new function to pass extra argument to lookup (ue_type) - useful if
    looking for a specific type of UE ie VoLTE vs SIP for example

### ims_usrloc_scscf

-   added counters for reporting hashtable usage - collision slot count
    for contacts and subscriptions
-   implemented overwrite oldest contact behaviour
-   added support for UE types required by registrar

### janssonrpc-c

-   allow null json error property in rpc response

### jsonrpc-c

-   add max_conn_attempt parameter to control max number of
    reconnections

### kazoo

-   support alternative federated exchanges
-   allow multiple simultaneous servers
-   add async query feature - suspend the transaction on send and
    continue on return or timeout

### kex

-   support VERSION_NODATE and VERSION_DATE for reproducible builds
-   per module memory statistics when in debugging mode
    -   return details about memory used by each module via rpc commands

### lcr

-   added priority_ordering module parameter - allows ordering of
    matched gateways only by priority and weight

### misc_radius

-   support radcli library

### mtree

-   allow for larger (max 64) prefix values to be used (e.g., case of
    uuid, ipv6)
-   allow specifying column names per tree
    -   at least two columns must be specified, first is the one
        corresponding to tprefix
    -   if more than two, then the values of those columns are
        concatenated with a comma delimiter
    -   columns can be specified with cols attribute in mtree definition
        and they must be enclosed in quotes in order to be a valid sip
        parameter value and be separated by comma

<!-- -->

        modparam("mtree", "mtree",
          "name=mt;dbtable=mtree;cols='tprefix,tvalue1,tvalue2'")

### nathelper

-   support filter contacts by server_id

### p_usrloc

-   added path and +instance support

### pdb

-   new protocol between pdb_server and kama pdb module

### permissions

-   match trusted rules considering priority and regexp over r-uri
    -   two new columns to set priority of the rule as well as regular
        expression matching over r-uri
-   max_subnets - new parameter
    -   specify the max size for address subnets array, default value:
        512
    -   if there are more subnet records in address tables than the
        value of max_subnets, increase it

### presence

-   added presence:notify-reply event
-   implemented $notify_reply for handling in presence:notify-reply
    event
-   added flags, user_agent columns to active_watchers
-   extended $subs to other subscription properties

### presence_xml

-   added optional param force_dummy_presence
    -   module parameter to send empty presence notify body when there
        isn't any record in presentity

### pua_dialoginfo

-   support for sending "Trying" state for callee
    -   implemented callee_trying parameter in pua_dialoginfo which
        causes a "Trying" state to be sent for both the caller and
        callee when a new dialog is created

### pua_reginfo

-   added support for custom params as contact parameters (e.g.
    \<unknown-param name="+g.oma.sip-im">\</unknown-param>)

### pv

-   **pv_var_to_xavp** script function to copy $var values to $xavp
-   transformation to remove all non-numeric parts of a string
-   add auth digest pseudo variables
    -   $adn - auth nonce
    -   $adc - auth cnonce
    -   $adr - auth response
    -   $ado - auth opaque
-   pv_var_to_xavp() - copy script variables values to xavps
-   added $utime and $utimef pv's to retrieve time in UTC
    -   $utime is the UTC equivalent to $time for localtime
    -   $utimef is the UTC equivalent to $timef for localtime
-   $snd(sproto) returns sending protocol as string

### registrar

-   add **contact** and **received** values to xavp_rcd
-   set xavp_rcd on registered()
-   export lookup_to_dset with uri to config
-   allow registered() in any route
-   send 400 response if the reg-id value is invalid

### rr

-   add enable_double_rr_always option

### rtpengine

-   new fifo command, namely nh_ping_rtpp, which pings the given proxy
    or all proxies, and if a proxy does not respond, disable it
    temporarily
-   try the next media relay available if the limit reached reply is
    received
-   unset "don't fragment" ip header flag
-   new read_sdp_pv parameter - this parameter allows to specify a
    script var or AVP for rtpengine to get the SDP from, instead of the
    SIP message body
-   hash table to keep the selected nodes
-   added rtpengine_allow_op modparam - when the param is enabled, allow
    current sessions to finish and deny new sessions for manually
    deactivated rtpengine nodes via kamctl i.e. "disabled(permanent)"
    nodes
-   added setid_default modparam - option to change the default set id.
    -   if setid_avp is configured, the active set used is the avp
        value.
    -   if setid_avp is not configured, the active set used is
        setid_default value
-   added kamctl nh_reload_rtpp - mi command to allow reload from
    database node table

### sipcapture

-   insert From URI domain, To URI domain and request URI domain to
    database
-   added homer5 functionality to sipcapture module
-   accept a list of headers for callid_aleg_header
-   added async support for storing in asynchronous mode if supported by
    database backend
-   new parameter topoh_unmask - if set to 1, call-id will be unmasked
    using topoh module api

### siptrace

-   new parameter trace_mode
    -   if set to 1, is using the SREV_NET_DATA_SEND event for sending
        HEP packets to sipcapture server for packets sent to the network

### sipt

-   added ability to check charging indicator

### siputils

-   exported $pcv(name) variable for P-Charging-Vector header and
    sip_p\_charging_vector() function
    -   $pcv(all) = whole field
    -   $pcv(value) = icid-value field (see RFC3455 section 5.6)
    -   $pcv(genaddr) = icid-generated-at field (see RFC3455 section
        5.6)

### sst

-   add **refresher** parameter in order to follow RFC 4028

### statsd

-   can use IPv6 as server address

### tcpops

-   keepalive functions enabled on BSD
-   add tcp_conid_state function to check connection state
-   framework to execute event_route\[tcp:closed\]
-   per-connection control over execution of event route tcp:closed
-   added "disabled mode" to closed_event param - this mode will bypass
    the event callback registration to improve performances when the
    "tcp:closed" route feature is not needed

### textops

-   new functions to get part of a multipart body
    -   get_body_part() - return only the body part content
    -   get_body_part_raw() - get body part with headers and boundary

### textopsx

-   if no param is given to keep_hf(re), then keep only mandatory
    headers

### tls

-   option to match TLS client config profile based on server_id
    -   server_id can be any string that uniquely identifies a client
        config profile, overriding the attempt to match on ip:port
        (+sni). This makes it easier to select the desired config
        profile, because the port is hard to guess for stream
        connections
    -   prameter xavp_cfg has to be enabled and inner xavp 'server_id'
        has to be set before relaying the sip message (before opening
        the client connection)

### tm

-   use xavps for t_load_contacts/t_next_contacts/t_next_contact_flow
-   execute the onsend_route for responses forwarded by tm module - not
    executed for local generated sip responses
-   enable drop in onsend_route for tm replies
-   support to add text in Reason header for local generated CANCEL
-   use core sip routing api callid generator if available
-   added t_is_request_route() config function

### tmx

-   added $T(ruid) - return current branch ruid attribute
-   new counter/statistics
-   consistent naming of counters - simplify the names of the tmx
    counters to "rpl\_\*"

### tsilo

-   added module specific satistics
-   t_store(...) accepts uri as parameter
-   ts_append_to() can take uri as parameter
-   removed usrloc dependency
-   added use_domain parameter

### uac

-   uac.reg_dump returns an array rpc result
-   uacreg table has two new columns - flags, reg_delay
    -   store the flags for runtime behavior
    -   delay intial registration (allow to spread registrations over an
        interval of time, not to flood the registrar at the same time)

### usrloc

-   support filter by server_id at get_all_ucontacts
-   new module option to support preload using server_id as filter
-   new matching mode: CALLID_ONLY
-   new param to skip non-local location record - yf set, kamailio will
    skip record if socket value doesn't in listening socket list when
    loading record from database
-   option to clean up database on write back/through modes
    -   enabled by db_timer_clean parameter

### utils

-   added optional parameter for setting additional http headers
-   option to trim leading and trailing white spaces in http response -
    new parameter http_response_trim to control it; default is 0 - don't
    trim (backward compatible); set to 1 for enabling trimming
-   new parameter http_response_mode to control what response part is
    returned
    -   if http_response_mode=0, only the first line is returned
    -   if http_response_mode=1, all the response is returned

### websocket

-   added support for SIP message fragmentation
    -   websocket connections are created with a BUF_SIZE (64K) buffer
        used for concatenating frames
    -   continuation frames (fragments) are supported for the SIP
        sub-protocol

### xlog

-   convenience functions for various log levels
    -   xinfo(), xnotice(), xwarn(), xerr(), xbug(), xcrit(), xalert()

## New in Core

-   print tos value if socket option for it cannot be set

### Interpreter

-   new feature to execute event_route\[core:worker-one-init\] - the
    event_route\[core:worker-one-init\] is executed if defined in
    kamailio.cfg after the first udp sip worker process executed the
    child_init() for all modules, before starting to process sip traffic
-   cast operator (int) converts hex strings as well - in addition to
    dec string
-   name of the structure exported by a module can be prefixed with
    module name
-   added framework to allow replacing logging to syslog
    -   this enables a module to replace all logging to syslog with
        another logging mechanism
    -   it is not enabled when log_stderror=yes or the system is
        detected as \_\_SUNPRO_C
-   trigger event_route execution for unexpectedly-closed and
    client-closed tcp connections

### Parameters

-   new parameter async_usleep - add option to do usleep() before
    processing async tasks
    -   could help saving cpu usage on vms with immediate interruptions
        triggered to recvfrom()
-   added parameters log_engine_type and log_engine_data
    -   can be used to specify what logging engine to be used and its
        initialization data
    -   see readme of log_custom module for a same of usage

### Functions

### Memory Managers

-   display the 2 levels matrix in TLSF status
-   shared (shm) memory manager can be selected with -x command line
    parameter at startup
-   private (pkg) memory manager can be selected with -X command line
    parameter at startup. If this parameter is omitted, the value of -x
    is used

### Architecture

-   wheel timer implementation
    -   shared by modules needing to execute timer tasks, don't want to
        interfere with main core timers, but don't do lots of operations
        to create own timer
    -   wheel timer is advertised as secondary timer

### kamailio.cfg

-   use flag 'r' for rtpproxy if ip in sdp is not private
    -   skip learning mode, advertised media ip is routable

## Tools

### kamcmd

-   support VERSION_NODATE and VERSION_DATE for reproducible builds

### kamctl

-   added mongodb schema files
    -   custom json format specifying structure of collections/tables
    -   version-create.mongo - a script with mongo commands to fill the
        version collection/table
