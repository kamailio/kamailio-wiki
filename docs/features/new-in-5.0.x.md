# Kamailio SIP Server (SER) - New Features in v5.0.x

📘 **Previous stable version was 4.4.x (released on March,
2016), see what was new in that release at:**

-   📘 [New In 4.4.x](new-in-4.4.x.md)

📘 *This is a draft of new features added in v5.0.x, manually
updated, thus not always synchronized with what is new in source code
repository.*

## New Modules

### app_jsdt

-   execute embedded JavaScript code inside kamailio.cfg
-   relies on Duktape JS engine
-   [https://kamailio.org/docs/modules/devel/modules/app_jsdt.html](https://kamailio.org/docs/modules/devel/modules/app_jsdt.html)

### ims_ocs

-   IMS online charging module
-   [https://kamailio.org/docs/modules/devel/modules/ims_ocs.html](https://kamailio.org/docs/modules/devel/modules/ims_ocs.html)

### nsq

-   nsq.io connector for kamailio.cfg
-   [https://kamailio.org/docs/modules/devel/modules/nsq.html](https://kamailio.org/docs/modules/devel/modules/nsq.html)

### pua_rpc

-   RPC commands related to presence user agent functionality
-   [https://kamailio.org/docs/modules/devel/modules/pua_rpc.html](https://kamailio.org/docs/modules/devel/modules/pua_rpc.html)

### rabbitmq

-   rabbitmq client for configuration script
-   [https://kamailio.org/docs/modules/devel/modules/rabbitmq.html](https://kamailio.org/docs/modules/devel/modules/rabbitmq.html)

### ss7ops

-   JSON-based access to SS7 packets received over HEP
-   [https://kamailio.org/docs/modules/devel/modules/ss7ops.html](https://kamailio.org/docs/modules/devel/modules/ss7ops.html)

## New in Old Modules

### alias_db

-   added flags to control alias db lookup and reverse lookup

### app_lua

-   ability to execute routing blocks written directly in Lua (KEMI
    framework)

### app_python

-   ability to execute routing blocks written directly in Python (KEMI
    framework)

### auth

-   added option to use SHA-256 encryption algorithm for digest
    authentication
-   add an option to include an Authentication-Info header in the
    response to a successful authentication

### auth_ephemeral

-   added rpc commands

### benchmark

-   implemented rpc commands

### carrierroute

-   implemented cr.dump command

### cdp

-   added ability to receive TIMEOUT event while in IDLE state to
    authstatemachine to avoid stale sessions

### cfgutils

-   added `trylock()` function
-   implemented rpc commands

### cplc

-   implemented rpc commands

### db_berkeley

-   added rpc command db_berkeley.reload

### db_unixodbc

-   new config variable replace_query
    -   Tells if the ODBC replace query is supported by the DB odbc
        driver
    -   Just like insert, but update the row if it exists otherwise
        insert
-   added new parameter - quote_char
    -   specify the character to be used for quoting column and table
        names in database query

### dialog

-   new rpc function: dlg.terminate_dlg
    -   terminates a single dialog, identified by a Call-ID.
    -   terminates an ongoing dialog by sending BYE in both directions
-   option to set the limit for failed keepalive to end the dialog
    -   new parameter ka_failed_limit, default value is 1
-   support for dialog replication via DMQ
-   from-tag optional on `dlg.dlg_list/_ctx` RPC commands

### dispatcher

-   new function `ds_select(setid, alg, [limit])`
    -   puts the addresses from destination set in the internal avps
        lists, without updating dst-uri or r-uri
-   added new function ds_reload()
-   use avl indexing

### dmq_usrloc

-   added modparam to specify the usrloc domain to synchronize

### enum

-   single digit is now valid in function enum_query
    -   is_e164() returns true for a single digit (previously two
        digits)

### evapi

-   support for tagging connections and select for sending based on tag
    -   evapi_set_tag(tname)
    -   evapi_multicast(data, tag)
    -   evapi_async_multicast(data, tag)
    -   evapi_unicast(data, tag)
    -   evapi_async_unicast(data, tag)

### htable

-   implementation of kemi callback for event routes

### http_async_client

-   added pseudo variable http_req_id
-   set request's body through $http_req pseudo-variable
-   added support for authentication

### http_client

-   support for HTTP proxy on a connection
-   added configurable authentication methods
-   enable keep_connection option
-   implemented failover between connections

### imc

-   implemented rpc commands `imc.list_rooms`, `imc.list_members`

### ims_charging

-   add support for final_unit_indication and redirect in CCA

### ims_dialog

-   added command to end all active calls

#### ims_icscf

-   if a route block is defined for `lir_user_unknown`, run it instead of
    default

### ims_registrar_scscf

-   new RPC command `regscscf.dereg_impu` to initiate network de-register
-   add param max_notification list size and stat of current size

### ims_usrloc_scscf

-   max_subscribes parameter - this limits the number of subscriptions
    per IMPU, watcher URI and event combination
-   add param max_notification list size and stat of current size

### ims_qos

-   new param `regex_sdp_ip_prefix_to_maintain_in_fd`
-   added support for IPv6 IPCAN Session on Rx interface towards PCRF
-   store `vendor_id` on auth session
-   new param `delete_contact_on_rx_failure`
-   added additional stat for total number of rx media sessions
-   new mod_param to add RTCP flow description for media flow

### ipops

-   `is_in_subnet()`: add support for networks list
-   added `detailed_ip_type()` functions

### kex

-   new core stats
    -   RPC request: stats.get_statistics all
    -   requests by method
        -   core:rcv_requests_invite
        -   core:rcv_requests_cancel
        -   core:rcv_requests_ack
        -   core:rcv_requests_bye
        -   core:rcv_requests_info
        -   core:rcv_requests_register
        -   core:rcv_requests_subscribe
        -   core:rcv_requests_notify
        -   core:rcv_requests_message
        -   core:rcv_requests_options
        -   core:rcv_requests_prack
        -   core:rcv_requests_update
        -   core:rcv_requests_refer
        -   core:rcv_requests_publish
    -   replies by status code
        -   core:rcv_replies_1xx
        -   core:rcv_replies_18x
        -   core:rcv_replies_2xx
        -   core:rcv_replies_3xx
        -   core:rcv_replies_4xx
        -   core:rcv_replies_401
        -   core:rcv_replies_404
        -   core:rcv_replies_407
        -   core:rcv_replies_480
        -   core:rcv_replies_486
        -   core:rcv_replies_5xx
        -   core:rcv_replies_6xx

### log_systemd

-   new function `sd_journal_send_xavp()` - creates a structured log event
    in journald

### matrix

-   added matrix.reload rpc command

### mqueue

-   added mqueue.get_size rpc command

### nathelper

-   implemented rpc command `nathelper.enable_ping`

### ndb_redis

-   added parameters to control connect and command timeouts
    -   connect_timeout (int)
    -   cmd_timeout (int)

### presence

-   new module parameter `force_delete`
    -   disabled by default
    -   enabling this parameter will delete expired presentity records
        without updating watchers (no NOTIFY)

<!-- -->

-   new module parameter `retrieve_order_by`
    -   default value is "priority"
    -   Used to set the order-by of the db query for fetching the
        presence records
-   added local_log_facility configuration parameter
-   added parameter startup_mode
-   added rpc command presence.refreshWatchers

### pua

-   added pua.cleanup rpc command

### pv

-   new function `pv_evalx(dst, fmt)`
    -   The fmt string is evaluated twice for exiting variables, the
        result is stored in dst variable.
-   new class of pseudo-variable - $msg(attr) - return attributes of sip
    message
    -   $msg(len) - sip message length
    -   $msg(buf) - sip message buffer
    -   $msg(body) - sip message body
    -   $msg(body_len) - sip message body length
    -   $msg(hdrs) - sip message headers
    -   $msg(fline) - sip message first line
-   add s.escape.csv transformation
    -   escapes a string to use as a CSV field, as specified in RFC4180

### regex

-   added rpc commands

### registrar

-   added expiry value to the xavp.
    -   handy if Kamailio for some reason changes the expiry value (min,
        max or variations caused by `expiry_range`)
-   added parameter `contact_max_size` to make max contact size
    configurable

### rls

-   added rpc command rls.cleanup

### rtimer

-   allow multiple timer processes per timer

### rtpengine

-   new 'unidirectional' flag in Sipwise rtpengine
    -   allows kernelization of one-way streams
-   parameters configurable via cfg framework
    -   rtpengine_disable_tout, `rtpengine_tout_ms`, queried_nodes_limit,
        `rtpengine_retr` are now configurable via kamcmd commands
-   implemented rpc command rtpengine.reload

### rtpproxy

-   implemented rpc commands `rtpproxy.enable` and `rtpproxy.list`

### sca

-   new module parameters:
    -   **onhold_bflag**, if bflag is set skips parsing SDP and sets
        onhold
    -   **server_address**, force Contact header address in replies

-   `sca_call_info_update()`: new `To/From` URI parameters
    -   skips parsing message for `To/From` header values and uses URI
        values from parameters

### sdpops

     * new config variable `$sdp(body)`
       * returns the sdp body as raw string                  
     * new optional parameter to sdp_remove_line_by_prefix script function
       * `sdp_remove_line_by_prefix(string, mtype)`
       * mtype can be provided to apply the operations only to the streams matching m=mtype
       * allows setting a mediatype (e.g. video or audio), when removing a codec from the SDP

### sipcapture

-   added nonsip_hook support. Now $hep variable available
-   added `X-RTP-Stat-T38` and `X-RTP-Stat-Add`
-   added support for custom fields

### siptrace

-   added support for HEPv3

### siputils

     * new pseudo variables
       * $pcv(orig) - returns orig-ioi from P-Charging-Vector header
       * $pcv(term) - returns term-ioi from P-Charging-Vector header

### sqlops

-   allow to set the size of sql escape buffer for transformations

### tcpops

-   use dedicated routes for tcp close events
    -   tcp:closed for "normal" close by the other side
    -   tcp:timeout for timeouts
    -   tcp:reset for connections closed with RST

### tm

-   uac: added failover support for local requests
-   uac: added support for onsend route on local requests
-   tm: implemented rpc command tm.reply_callid
-   added t_uac_send(method, ruri, nexthop, socket, headers, body)
    -   can be used in config to send new requests (initial or within
        dialog)

### uac

-   uac_reg: add uac_reg_status() function
    -   new function to obtain registration status from within
        configuration script
-   uac_reg: added function to remove registration
-   uac_reg: added RPC function to remove a registration
-   uac_reg: added RPC function to add a new registration
-   uac_reg: return HTTP-like fault codes for RPC
-   uac_reg: handle 423 response to outbound register
-   uac_reg: keep Call-ID in registration sequence
-   uac_reg: add setting for using a random reg_delay

### userblacklist

-   implemented rpc command `userblacklist.reload_blacklist`

### uri_db

-   added function to check any sip uri

### utils

-   remove `http_query()` function (use instead the `http_client` module)

### xcap_clinet

-   implemented rpc commands

### websocket

-   added `$ws_conid` pseudo variable
    -   gives id of closed connection in websocket:closed event route
-   implemented ws.ping and ws.pong rpc commands
-   implemented ws.dump rpc command
-   implemented ws.enable and ws.disable rpc commands

## New in Core

-   print tos value if socket option for it cannot be set
-   skip unusable network interfaces
    -   no IP addr associated
    -   address family AF_PACKET
-   skip address family AF_PACKET on -l iface_name
-   mem_status_all - allow selecting of dumping memory status also for
    used fragments
-   mem_status_mode parameter - if set to 1, qm allocator dumps used
    fragments in memory status
-   new command line option '-Y dir'
    -   set the runtime directory (used to create fifo, ctl socket,
        etc...)

### Interpreter

A new framework (named kemi - kamailio embedded interface) was added,
allowing to writing routing blocks in embedded languages such as Lua,
JavaScript or Python:

-   [https://www.kamailio.org/wiki/devel/config-engines](https://www.kamailio.org/wiki/devel/config-engines)

New global parameter to specify the config engine:

-   cfgengine="name"

### Parameters

-   log_prefix_mode
    -   If set to 1, then the log prefix is evaluated before/after each
        config action
    -   needs to be set when the log_prefix has variables that are
        different based on the context of config execution
        -   e.g., $cfg(line))

<!-- -->

-   latency_cfg_log
    -   Log message with the duration of executing request route or
        reply route is printed to syslog

<!-- -->

-   mcast
    -   Specify interface to join multicast group for multicast listen
        address

### Functions

### Memory Managers

### Internal Libraries

-   srdb1: support for db result with allocated column names
-   kcore: library has been removed
-   kmi: library has been removed

### Architecture

-   locking - added recursive lock apis
-   dedicated struct for TCP closed events
-   restructured source code tree

### kamailio.cfg

-   rr module parameter enable_full_lr now defaults to 0
-   no more lr=on in Record-Route

<!-- -->

-   use t_precheck_trans() to catch retransmissions faster

<!-- -->

-   drop silently traffic from scanners

<!-- -->

-   added option to block 401/407 from downstream

## Tools

### kamcmd

### kamctl

-   now interacts with Kamailio via a fifo file using jsonrpcs module
    -   CTLENGINE is RPCFIFO by default
    -   RPCFIFOPATH has to be set to the fifo file created by jsonrpcs
        module

<!-- -->

-   kamctl rpc command is available for sending raw jsonrpc commands
    -   see
        [documentation](https://www.kamailio.org/docs/docbooks/5.0.x/rpc_list/rpc_list.html)
        for all RPC methods
    -   the prefix s: or i: can be used to enforce type string or int
        for parameters
        -   by default forwards number cli parameters as number type in
            jsonrpc commands

<!-- -->

        kamctl rpc jsonrpc.echo abc 123
        kamctl rpc jsonrpc.echo s:abc i:123
        kamctl rpc jsonrpc.echo s:888 i:123
        kamctl rpc core.version

-   added DBPORT option - allows to specify database engine (mysql/psql)
    port

### kamcli

-   new command line tool
-   kamcli is aiming at being a modern and extensible alternative to the
    shell script kamctl
-   communicates to Kamailio via jsonrpcs module
-   [https://github.com/kamailio/kamcli](https://github.com/kamailio/kamcli)

### misc

-   protoshoot: option to disable sctp with SCTP=0 in make command

## Unit Tests

-   reworked the unit tests to be in sync with latest version
-   added new unit tests
