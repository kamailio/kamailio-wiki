# Kamailio SIP Server - New Features in v5.5.x

📘 **Previous version was 5.4.x (released on July, 2020), see
what was new in that release at**:

-   [New In 5.4.x](new-in-5.4.x.md)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## Documentation

Many fixes were done to the modules, missing parameter were added, wrong
parameter or function names fixed and explanation or clarifications
added. Furthermore many debug messages in the core and modules were
extended, to help analyzing problems or bugs. The full details can be
found in the release Changelog or with the "git log" command.

A few parameters and also modules were renamed in this release. For
details please refer to the module documentation .

## Bugfixes

Countless bugfixes were implemented for this release in core, tools and
modules. Furthermore the code base was scanned with several static
analyzers, to detect otherwise hard to find bugs. The full details can
be found in the release Changelog or with the "git log" command.

## New Modules

### sworker

New module to delegate sip message processing to a group of workers

-   [https://www.kamailio.org/docs/modules/5.5.x/modules/sworker.html](https://www.kamailio.org/docs/modules/5.5.x/modules/sworker.html)

### lrkproxy

New rtp relay module, use kernel based forwarding controlled via an
external application

-   [https://www.kamailio.org/docs/modules/5.5.x/modules/lrkproxy.html](https://www.kamailio.org/docs/modules/5.5.x/modules/lrkproxy.html)

### jwt

New module providing json web token generation and validation functions

-   [https://www.kamailio.org/docs/modules/5.5.x/modules/jwt.html](https://www.kamailio.org/docs/modules/5.5.x/modules/jwt.html)

### stirshaken

New module adding support to implement STIR-Shaken authentication and
verification functions

-   [https://www.kamailio.org/docs/modules/5.5.x/modules/stirshaken.html](https://www.kamailio.org/docs/modules/5.5.x/modules/stirshaken.html)

### lwsc

New module adding websocket client connector for interaction with
external system, not for usual SIP forwarding

-   [https://www.kamailio.org/docs/modules/5.5.x/modules/lwsc.html](https://www.kamailio.org/docs/modules/5.5.x/modules/lwsc.html)

### secsipid_proc

Pseudo-module providing per-proces STIR/SHAKEN API from libsecsipid.

-   [https://www.kamailio.org/docs/modules/5.5.x/modules/secsipid_proc.html](https://www.kamailio.org/docs/modules/5.5.x/modules/secsipid_proc.html)

## New in existing Modules

### acc

-   add to-tag for locally generated replies
-   use sent reason phrase for locally generated replies
-   new parameter acc_extra_nullable to set NULL for variables that are
    $null
-   adapt database scheme to support for acc_extra_nullable and
    cdr_extra_nullable

### acc_json

-   add parameter to accept pre-encoded json values

### app_lua

-   improve support for functions with many parameter

### app_python3

-   improve thread handling related to deprecated APIs

### app_jsdt

-   duktape interpreter upgraded to v2.6.0

### auth_radius

-   add VENDOR() definition if the freeradius-client library does not
    contain one already

### async

-   fix async_ms_route and export it to kemi

### carrierroute

-   replace existing warning mechanism related to carrier/domain
    probabilities

### cfgutils

-   export route check functions to kemi

### cfgt

-   logging improvements

### crypto

-   add crypto_hmac_sha256() function
-   add two new parameters to provide interoperability with existing
    crypto libraries

### corex

-   add rpc command shm.info and shm.stats
-   add is_socket_name(sockname) config function

### ctl

-   skip handling rpc commands if kamailio is in shutdown phase

### cplc

-   permanent contacts are not skipped by lookup anymore
-   add new redirect and add ignore3xx parameter
-   rpc command and documentation improvements

### db_postgres

-   added parameter to control postgresql database connection parameters

### dmq

-   new parameter notification_channel to set the channel id for peer
    notifications
-   use more standard terms in documentation
-   add support for additional transport protocols for DMQ, like TCP or
    TLS
-   add support to specify a notification address multiple times, to be
    able to specify multiple servers in the configuration
-   new function dmq_process_message(), similar to dmq_handle_message(),
    but processes the dmq message immediately
-   add dmq.remove rpc command

### dmq_usrloc

-   do not replicate socket if the field is not set

### dialog

-   logging improvements
-   internal locking improvements
-   skip CSEQ updates for certain messages

### dispatcher

-   update state if sending keepalive OPTIONS fails
-   sync on updating last used fields
-   internal refactoring
-   add an attribute to preset the latency estimator
-   congestion control logic refactoring, to handle misconfiguration
    gracefully
-   add test no-dns flag to skip ip matching for hostnames
-   dispatcher add new algorithm 13, latency optimized round-robin with
    failover

### drouting

-   enable SRV DNS queries

### evapi

-   export async_unicast() and async_multicast() to kemi

### htable

-   improve DMQ synchronisation for hash table operations

### http_client

-   add http_client_get() function to do explicit GET request with
    headers (and body)
-   improve http_client_request to include default clientcert, clientkey
    etc..
-   http_client_request (api) content-type header support, including a
    content-type argument implemented as new function

### http_async_client

-   set curl memory callbacks in module initialization
-   add http_time pseudovariable
-   disable HTTP/2 multiplexing
-   fix build with older versionss of libcurl
-   add curl_follow_redirect parameter

### imc

-   jump over printing error log messages when list commands are ok

### ims_charging

-   use correct default User-Equipment-Info-Type AVP format
-   export functions to kemi

### ims_usrloc_scscf

-   add a new contact state, udomain/impu and cleanup timer improvements
-   add a new parameter for reverse search in get_pcontact

### ims_registrar_scscf

-   added a new registrar event, notification improvements
-   update_contacts, if the reply doesn't include contact alias, get
    received info from the request
-   fix extraction of received host in save()

### ims_ipsec_pcscf

-   add a new function parameter to delete unused tunnels before
    creation of new ipsec connection
-   add new global parameters for ipsec listen addresses.
-   extension related to reverse search functionality

### ims_qos

-   extension related to reverse search functionality

### jansson

-   Add en-/decode to/from xavp function
-   internal refactoring

### janssonrpcc

-   internal refactoring

### jsonrpcs

-   export dispatch() function to kemi

### kemix

-   export function get_rcvadvip() and get_rcvadvport()
-   export functions to get socket string and name
-   add functions to get contact header uri
-   export functions to get define values
-   export get_srcuri() to kemi

### kex

-   use mutex to sync the mod mem stats rpc commands
-   add pkg.info rpc command, to get details about pkg manager
-   internal refactoring and optimization

### keepalive

-   logging improvements
-   improvements in internal data structure passing to other modules
-   prevent race condition when deleting a destination
-   improve module initialization logic

### log_custom

-   print to stderror if sending log message fails

### lost

-   add Geolocation header value list support
-   new features and attributes for LoST redirect, dynamic HELD url
    resolving and LoST NAPTR

### nathelper

-   fix_nated_sdp added support for a=rtcp param RFC3605
-   improve logging

### ndb_redis

-   fix cluster support
-   logging improvements
-   add result check when reconnecting

### mohqueue

-   add support for ptime matching

### misc_radius

-   add VENDOR() definition if the freeradius-client library does not
    contain one already

### msrp

-   proper parsing ipv6 host part in uri

### mqueue

-   use HTTP status codes for rpc
-   add rpc mqueue.sizes to return queue sizes
-   add more rpc features

### path

-   add option to set received parameter name

### permissions

-   export allow_trusted() to kemi
-   enforce limit in reload interval time, add reload_delta parameter to
    configure rate limit

### pike

-   add rpc function pike.top, support for case insensitive match of
    parameter
-   add pike_check_ip(ipaddr), check the parameter ipaddr in the pike
    tree

### pipelimit

-   added pl_active() - return true if pipe is active

### pua

-   update_version_puadb() use pres_id to select record
-   fix send_publish() behavior on PUA_DB_ONLY

### pua_dialoginfo

-   add publish_dialog_req_within parameter
-   add callee_entity_when_publish_disabled parameter
-   new parameter attribute_display to configure display name setting
-   skip requests that do not control call state

### pv

-   new transformation {uri.suri} to get the simple routing uri, keeping
    only transport parameter, if it exists
-   new transformation {uri.duri} to get the uri needed for destination
    address (e.g., <sip:host:port;transport=tcp>)
-   new transformation {uri.saor} to get the sip aor
    (<sip:%5Buser@%5Ddomain>)
-   add xavp_slist_explode(), breaks a string in tokens by separators,
    storing them in xavp
-   new variable $Rn - return receiving socket name
-   new variable $defn(name), return the value of a define converted to
    number
-   add $fsp, return send socket port, or 0 if $fs not set
-   new transformations {s.after,char} and {s.before,char}
-   new transformation class urialias, encode/decode uri alias values
    (addr\~port\~proto)

### p_usrloc

-   reworking of mdb_availability_control functionality

### registrar

-   documentation improvements
-   add functionality to store advertised address instead of bind
    address in socket field, default is existing behavior
-   allow taking expires value from xavp_cfg expires field

### rtpengine

-   support new codec flags, adds explicit support for codec-set and
    codec-except.
-   add CRC32 hash algorithm for message hashing
-   query round-trip-time per call leg
-   improve IPv6 handling for database mode and in other situations
-   improve node fallback if node ran out of ports
-   improve node connection for any skipped nodes due to dns or
    connection issues on kamailio startup

### rr

-   new function loose_route_mode(vmode), to specify certain loose
    routing behavior
-   use safer msg_ctx_id_t checks for asserting validity of cached param
    value

### rtp_media_server

-   update to mediastreamer 4.4.0
-   state transition improvement, fix disconnection while in bridge,

### sanity

-   extended check 4 (required headers) for uniqueness, Call-ID, CSeq,
    From and To have to present only once

### secsipid

-   add parameter to set url file cache options
-   add secsipid_check_identity_pubkey(pubkeyVal) function to check the
    identity header validity with a public key
-   new function secsipid_get_url(url, ovar), convenience function to
    get the content of an URL and store the result
-   improve build process by using pkg-config
-   redesign to use per-process API functions
-   make it possible to verify certificates

### sl

-   add new function send_reply_mode() to control the execution mode

### smsops

-   use proper length for concatenated SMS according to TS 23.040,
    section 9.2.3.16
-   fix parsing of validity period
-   improvements in decode_3gpp_sms() and pv_sms_body()

### sipdump

-   if drop executed in event route, skip writing to file
-   refactoring to support more storage engines, like writing UDP pcap
    files or adding P-KSR-SIPDump header

### siptrace

-   exec event_route\[siptrace:msg\] on message replication with core
    events
-   fallback to udp if send sock is not set

### sqlops

-   new modparam results_maxsize, allow setting the maximum size of the
    result containers list

### textops

-   correct behaviour for append_hf, adds header after last header
    occurrence
-   added functions to manipulate the message body in the exported api
-   add ends_with() function
-   add search_str(), similar to search(), but performs the regex match
    over the parameter
-   added str_find and str_ifind() functions to find a string inside
    another one

### topoh

-   remove the Via cookie when skipping topoh via event route
-   event route is now executed with parsed sip message to be sent out
-   execute msg-outgoing and msg-sending event routes, similar to topos
    module

### topos

-   update to-tag and record-route on reply even to-tag is already set
-   store branch record before dialog record
-   added rr_update modparam, to control if record-route should be
    updated for requests within dialog
-   handle 100 response completely, as they might be needed from other
    modules
-   add functionality to set a variable host part for the Contact header
-   use a common xavu variable instead of different AVPs to control
    Contact header creation
-   uniform processing for requests during early dialog, requests that
    are handled during 1xx state, like PRACK, UPDATE, BYE

### topos_redis

-   do record-route update for requests within dialog based of flags
-   support SUBSCRIBE dialogs

### tls

-   support compilation without deprecated OpenSSL APIs
-   export function KSR.tls.cget(aname) to kemi
-   add ca_path config option to configure tls certificate paths
-   add tls_set_connect_server_id(srvid) function, set the server id of
    the tls profile to be used by next client connect
-   don't use OpenSSL \< 1.0.2 fallback on version 1.1+

### tm

-   logging improvements
-   do not add duplicate headers in local requests
-   Instead of passing the to be evaluated reply as the "best" reply,
    pass the actual "best" reply
-   fix ordering of contact loading after proportional loading
    extensions
-   export t_relay_to_xxx protocol functions to kemi
-   export t_relay_to\_\<proto>(host, port) functions to kemi
-   correct 200 OK processing by proxy after a final non-2xx reply
-   implemented t_uac_wait_block rpc command
-   new parameter reply_relay_mode, default is 1, new behavior

### tmx

-   safety check of expected route blocks for using $T\_\*() variables
-   Allow $T_branch(flags) in onreply_route

### textops

-    added change_reply_status_code() function to change only the status
    code for non-2xx replies

### topos

-   add two new modes for topology hiding to preserve Contact user
    necessary for certain interconnection providers

### uac

-   added uac_event_callback for kemi
-   restore first display name then uri with dialog callback
-   support to set contact address in uacreg database record, enable per
    registration contact address
-   allow empty contact addr in rpc add command for uacreg, it has to be
    set to .
-   logging and documentation improvements
-   new rpc command uac.reg_unregister to unregister records

### uac_redirect

-   make default q-value configurable, default value is the existing one

### userblacklist

-   renamed to userblocklist module

### usrloc

-   export ka_logmsg parameter to kemi
-   print Route header name in keepalive when Path is present
-   export modparam to set keepalive timeout
-   use unsigned int for rpc output for the fields having this type
-   do keepalive-based contact expire on internal callback
-   set last keepalive value to current time on new records
-   also send keepalive over ws and wss connections
-   new parameter load_rank, allow to set the rank of the child to load
    the location records, default is current behavior

### xhttp

-   add kemi function to return $hu, http uri

### xhttp_server

-   internal improvements for xpath search function

### xhttp_prom

-   add support for histogram metrics

### xmlrpc

-   use \<nil/> for null string values

## New in Core

-   add websocket event support
-   several build infrastructure improvements for MacOS with clang
    compiler
-   support for gcc 10.x compiler in build infrastructure
-   build improvements for FreeBSD
-   remove internal abort() calls in certain lump handling related
    functions
-   improve http/2 support, support also requests, internal refactoring
-   logging improvements for core utility functions, DB1 API and other

### SIP parser

-   simplify implementation, use static map for header name and type for
    parsing
-   logging improvements

### Command line arguments

-   new command line parameter --cfg-print to output the config file by
    evaluating includes ifdefs, subst and define pre-processor directive
-   add --atexit=val cli parameter, to skip atexit callbacks execution
    from external libraries, default is existing behavior

### Config interpreter

-   export core route function to kemi
-   new preprocessor directive #!defenv ID=ENVVAR, define an ID to the
    value of an environment variable with the name ENVVAR, also possible
    to use #!defenv ENVVAR
-   new event_route\[core:pre-routing\], executed before running config
    script for SIP messages, if received from the network
-   add $envn(name) - return environment variable as int number
-   add selval(evalexpr, valexp1, valexpr2) to return second or third
    parameter depending on first parameter evaluation
-   new core directive modparamx() alternative, where all its parameters
    are evaluated for config script variables

### Config parameters

-   add sip_parser_log core parameter to log parser error with a certain
    log level
-   add hdr_name_extra_chars parameter to allow specific characters in
    header names
-   new parameter ipv6_hex_style, default is the now lowercase and
    compact, to follow recommendations of RFC5952, section 4.2.1 and 4.3
-   new parameter sip_parser_mode, allow to control how sip parser
    behaves and how strict it is, default is existing mode
-   add local_rport parameter, similar to add_local_rport() but set
    globally
-   new parameter async_workers_group to define groups of async worker
    processes
-   new parameters to enable waiting for child one worker initialization

### Internal functions

-   add utility helper functions to search variants of str in another
    str
-   add parser wrapper function to parse str header name
-   add kemi function hdr.match_content(hname, op, mval, hidx)
-   add helper function to parse all contact headers
-   add functionality to delegate sip processing to a group of workers
-   add tcp helper function to send data over ws/wss connection
-   add utility helper function to search a token before an end pointer
-   add xavu_serialize_fields function
-   add functions to shm-duplicate str in a block
-   add module version control function

### Memory Managers

-   define mem_counter struct in meminfo for all memory managers
-   synchronize tlsf malloc with upstream version 3.1
-   debugging output improvements

### Architecture

-   further migration of many modules to use core SHM_MEM_ERROR and
    PKG_MEM_ERROR defines
-   add CAP_CHOWN capability to Kamailio systemd service files to allow
    chown needed for some modules
-   add a global flag in shared memory to detect server shutdown
-   relocation and refactoring on core ip addr handling code
-   Zero terminate str copies made with pkg_str_dup() and shm_str_dup()
-   Refactor tcp flags to enum, add more typedefs
-   Improvements in DNS support for NAPTR records
-   improve signal handling from system
-   increase network interface handling buffer from 8kb to 32kb, improve
    logging
-   improve automatic binding for IPv6 addresses
-   new option BUILD_NEW_LOCAL_VIA to recreate the local via
-   improve to tag suffix generation to use more input values for
    randomness

### kamailio.cfg

-   set load_backends to 1 for permissions module, the config uses only
    address table
-   improve checks related to SIP scanning tools

## Tools

-   pdbt: use more relaxed permission when creating files
-   misc/tools/kemi: lua tools useful for using Kamailio with KEMI Lua
    scripts
-   support for fuzzing integration based on oss-fuzz
-   use github worker for continuous integration instead of travis-ci

### kamcmd

### kamctl

-   option for rpc command to replace tokens in parameters
-   use tm.t_uac_wait_block rpc for ping command
-   added srv debug subcommand to control server debug level

### kamdbctl

-   proper id format for dbtext records
-   increased contact_addr_len entity to 255, e.g. for IMS use-cases
-   db scheme updates to usrbloclist and topos modules

### kamcli

-   major enhancements and many new features
-   embedded interactive shell
-   tab completions and history suggestions in embedded shell
-   command line syntax highlighting in embedded shell
-   command aliases and remapping
-   new subcommands: pstrap, pkg, shm, pipelimit, sipreq
-   supported backend databases: mysql, mariadb, postgres, sqlite
