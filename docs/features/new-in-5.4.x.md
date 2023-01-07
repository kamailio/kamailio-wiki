# Kamailio SIP Server - New Features in v5.4.x

📘 **Previous version was 5.3.x (released on October, 2019),
see what was new in that release at**:

-   📘 [new-in-5.3.x](new-in-5.3.x.md)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.

## Documentation

Many fixes were done to the modules, missing parameter were added, wrong
parameter or function names fixed and explanation or clarifications
added. Furthermore many debug messages in the core and modules were
extended, to help analyzing problems or bugs. The full details can be
found in the release Changelog or with the "git log" command.

## Bugfixes

Countless bugfixes were implemented for this release in core, tools and
modules. Furthermore the code base was scanned with several static
analyzers, to detect otherwise hard to find bugs. The full details can
be found in the release Changelog or with the "git log" command.

## New Modules

### pv_headers

Flexible headers management $x_hdr exported variables, to offload header
processing and to simplify SIP header modifications

-   [https://www.kamailio.org/docs/modules/5.4.x/modules/pv_headers.html](https://www.kamailio.org/docs/modules/5.4.x/modules/pv_headers.html)

### kafka

New module to produce and send messages to a Kafka server:

-   [https://kamailio.org/docs/modules/devel/modules/kafka.html](https://kamailio.org/docs/modules/devel/modules/kafka.html)

### secsipid

-   [https://kamailio.org/docs/modules/devel/modules/secsipid.html](https://kamailio.org/docs/modules/devel/modules/secsipid.html)
-   new module implementing STIR and SHAKEN IETF extensions, see RFC
    8224 and RFC 8588 for details

### systemdops

New module to facilitate integration with systemd:

-   [https://kamailio.org/docs/modules/devel/modules/systemdops.html](https://kamailio.org/docs/modules/devel/modules/systemdops.html)

### dlgs

New module to enable lightwight, stateless dialog tracking and
statistics

-   [https://kamailio.org/docs/modules/devel/modules/dlgs.html](https://kamailio.org/docs/modules/devel/modules/dlgs.html)

## New in existing Modules

### acc

-   adding CDR engine functionality, to allows the extension of the acc
    module for other formats or backends
-   new skip_cdr modparam to prevent cdr generation for certain calls

### auth_db

-   add force_generate_avps parameter, to fetch DB attributes even when
    authentication failed

### avpops

-   add avp_subst_pv(), same functionality as avp_subst() but second
    parameter will be evaluated before calling subst
-   export avp_check and avp_copy functions to KEMI

### app_python

-   update Python3 detection mechanism

### app_lua

-   add support for ARRAY and DICT types

### app_ruby

-   option to use internal KSR::PV module and skip returning xval str,
    controlled with the xval_mode parameter

### app_jsdt

-   internal duktape interpreter upgraded to v2.5.0

### acc_json

\* adding CDR as JSON functionality

### call_control

-   switch from deprecated /var/run to /run
-   remove redundant str trim implementation and use the one from core

### carrierroute

-   organize and add new RPC commands, cr.add_host, cr.delete_host,
    cr.activate_host, cr.deactivate_host and cr.replace_host
-   remove obselete FIFO commands implementation

### cdt

-   better compatiblity with certain Diameter servers that lacks
    Supported-Vendor-Id in their reply

### cfgt

Added new **cfgt.list** and **cfgt.clean** RPC commands

-   https://www.kamailio.org/docs/modules/5.4.x/modules/cfgt.html#cfgt.r.list
-   https://www.kamailio.org/docs/modules/5.4.x/modules/cfgt.html#cfgt.r.clean
-   switch from deprecated /var/run to /run

### corex

-   add functions to set socket by name
-   new function is_faked_msg()
-   new param dns_cache to add values to the internal dns cache
-   export file read/write functions to kemi

### ctl

-   switch from deprecated /var/run to /run

### crypto

-   add event route to allow encrypting/decrypting net I/O traffic

### drouting

-   update to new keepalive interface, using custom pinging interval per
    destination

### db_cluster

\* support for insert_async DB API

### db_mysql

-   switch from deprecated /var/run to /run
-   new parameter opt_ssl_mode - allow controlling ssl mode, can disable
    or enforce use of SSL

### db_redis

-   several performance improvements and fixes
-   allow deletion of all rows from DB API

### dispatcher

-   switch from deprecated /var/run to /run
-   add state to mode in ds_list_exists, adds Bit 3 to allow the check
    of active/inactive entries in ds_list
-   option to set add socket as string in the dst xavp
-   new variable $dsv(...) to access attributes related to response code
    when executing event routes
-   add new parameter ds_default_sockname, to set the send socket by
    name
-   add new gateway attribute "obproxy"
-   add RPC command dispatcher.hash, compute the hash id of the value
    and do modulo operation if first parameter is not 0
-   new RPC command dispatcher.set_duid_state, to set the state of a
    destination by matching on duid attribute
-   add attrs param to RPC 'add' call

### dialog

-   adding dlg.set_state command, which can be used e.g. to force the
    killing of active dialogs
-   add dlg.briefing RPC command, list fewer details for the dialog
    records in memory
-   customizable list of fields for dlg.briefing rpc command, it can
    take an optional parameter to specify what fields to be add
-   new dlg_reset_property() function is add to disable the previously
    enabled dialog module behaviour, e.g. stop sending keep-alive
    OPTIONS messages
-   export dlg_reset_property() to KEMI
-   add RCP command dlg.dump, an alternative command to output dialogs
    data to file, far much faster than dlg.list

### dmq

-   set 202 response for empty_peer_callback() handling

### dmq_usrloc

-   replicate_socket_info using dmq, useful for anycast scenarios
-   add new parameter \`usrloc_delete\` to disable synchronizing delete
    actions

### htable

-   export sht_is_null() function to KEMI
-   export functions to inc and dec hash table values to KEMI
-   export function to get timestamp to KEMI
-   new RPC command htable.store, to save the content of a hash table to
    DB

### http_client

-   new param netinterface to set curl network interface

### http_async_client

-   remove redundant str trim implementation and use the one from core

### log_custom

-   send processed logs via UDP

### lost

-   add civic address parsing via xpath, with fallback to point or
    circle attributes
-   new module parameters to set HeLD request attributes, parameters are
    exact_type, response_time, and location_type

### mqueue

-   add support for db persistency

### mqtt

-   add TLS support
-   expose received message QOS level over PV

### permissions

-   permissions: support to load address records from a text file

### path

-   new param sockname_mode, socket name is add to Path URI in 'sn'
    param

### presence

-   new parameter pres_subs_mode, allow disabling cloning subscription
    structure for pv use to save run-time memory
-   add `delete_same_subs` module parameter, to enable deleting of
    subscriptions with the same presence uri and callid
-   timer_mode, new module parameter to control what timer process to
    use
-   add support to keep presentity records in memory instead of DB
-   add new parameter publ_cache parameter to define caching mode
-   add RCP command `presence.presentity_list [mode]` to print all
    attributes of the presentity record

### presence_xml

-   adds option to aggregate xml body with priorities

### pua_dialoginfo

-   add missing module parameter include_req_uri

### pv

Add new pseudo-variables:

-   **[$xavi](https://www.kamailio.org/wiki/cookbooks/5.4.x/core#xavi_id_-_xavis)**:
    Similar to XAVPs, but with key names are case insensitive. XAVIs are
    also stored in transaction context and destroyed when the
    transaction is terminated.
-   **[$xavu](https://www.kamailio.org/wiki/cookbooks/5.4.x/core#xavu_id_-_xavus)**:
    Similar to XAVPs, but with single value items, therefore there are
    no indexes in the naming format. XAVUs are also stored in
    transaction context and destroyed when the transaction is
    terminated.
-   add new function xavp_copy
-   new transformations s.encode.base64t and s.decode.base64t, base64
    encode/decode with optional trailing padding
-   new transformation {s.rmsw} - remove whitespaces from value, removes
    all occurences of ' ', '\\t', '\\r', '\\n'
-   KEMI functions for $shv(...) management
-   export xavp copy variants to KEMI
-   export functions for $var(...) management to KEMI
-   add transformations for base64-url encode/decode variants
-   add config and kemi functions to print xavu vars
-   new config variable $fsn - forced send socket name
-   add KEMI functions `pvx.xavp_get_keys()` and `pvx.xavp_getd()`
-   add `$xavi(...)` config variables implementation, same as $xavp but
    case insensitive for keys
-   new var $mts, return msg type as string
-   add vars to get the length for o-uri/r-uri/f-uri/t-uri username,
    $oUl, $rUl, $fUl, $tUl

### p_usrloc

-   add matching_mode modparam, to specify the Contact matching
-   add a new uniq column to support new update modes
-   change `-` for `_` in stats name to be prometheus compliant

### ratelimit

-   increase number of queues and pipes

### registrar

Add **path** value to xavp_rcd location record

-   https://www.kamailio.org/docs/modules/5.4.x/modules/registrar.html#registrar.p.xavp_rcd

Add **xavp_rcd_mask** parameter to control what values to skip

-   https://www.kamailio.org/docs/modules/5.4.x/modules/registrar.html#registrar.p.xavp_rcd_mask
-   control what values to add to xavp_rcd via xavp_rcd_mask parameter
-   option to send 423 when expires less than min_expires with the
    min_expires_mode parameter
-   add use_expired_contacts config param to allow or disallow the usage
    of the expired contacts

### rr

-   export record_route_preset_one() to KEMI
-   new function rr_next_hop_route(), return true if there is a route
    header for next hop address
-   new param sockname_mode, socket name is add to Path URI in 'sn'
    param
-   new convenience function loose_route_preloaded()
-   export record_route_advertised_address() to KEMI

### rtpengine

-   add play_dtmf() command
-   update/fix via-branch=next ID generation, via-branch=next should not
    use a hard-coded branch index of zero, but instead use the actual
    branch index from the tm module
-   adds via-branch=auto-next and via-branch=auto-extra for easier
    processing in scripts
-   add support for new T.38 options
-   enable handling of PRACK requests
-   add kemi support for block/unblock media/dtmf, and play/stop media
    functions

### sdpops

-   export sdp with transport variants to KEMI

### siputils

-   contact encoding functions export to KEMI
-   new function contact_param_rm("param-name"), remove parameter by
    name from Contact header URI
-   new function uri_param_rm(pname), remove parameter from request URI
-   new function uri_param_any(param), check if r-uri has the param,
    with or without value

### sipcapture

-   add new capture_bad_msgs modparam, to enable the parsing and
    capturing of broken SIP messages

### sipdump

-   switch from deprecated /var/run to /run
-   option to run `event_route[sipdump:msg]` on received/send messages
-   KEMI functions to return buf and tag values
-   KEMI exports to get src/dst ip of the message

### siptrace

-   add functionality to duplicate via HEP with any protocol
-   the trace_mode can now be used to automatically store traffic to db
    or mirror via SIP URI
-   add parameter trace_init_mode, to control the tracing initialization
    for the module
-   use the send socket also for duplication via SIP
-   send_sock_name, new parameter to specify send socket by name
-   support for using async-insert to store records to database, new
    parameter trace_db_mode to control the mode

### sqlops

-   export `sql_result_get()` to KEMI
-   add functions to get null result value as empty or zer

### textops

-   addfunctions to remove or test headers with var parameters

### tcpops

-   new variable `$tcp(key)`, return attributes related to tcp connection
-   add function to control use of outbound tcp connection id,
    `tcp_set_otcpid()` and `tcp_set_otcpid_flag()`

### tm

-   add support for dropping messages in local-request event route
-   new weight-based call-termination distribution, extended
    t_load_contacts function. It can be used to define the algorithm to
    use for ordering the contacts
-   add new t_clean() script function, as low-level helper to cleanup
    transactions in certain situations, also export it to KEMI
-   add support for using socket names in UAC
-   new parameter exec_time_check for safety checks on lengthly
    callbacks, try to detect when failure callbacks execution take too
    long and do safety check of the transaction

### tls

-   use internal cryptographic algorithm for pseudo-random number
    generation, prevent crashes on newer libssl versions
-   add fall-back `fastrand` and kamailio mutex protection pseudo-random
    number generation as well
-   use `TLSv1.2` in default configuration
-   set default tls method (version) to 1+
-   add verify_client support parameter
-   add support for urlencoded cert PVs and select,
    1.  new PVs: `$tls_peer_raw_cert`, `$tls_peer_urlencoded_cert`,
        `$tls_my_raw_cert`, `$tls_my_urlencoded_cert`
    2.  new selects: `@tls.peer.raw_cert`, `@tls.peer.urlencoded_cert`,
        `@tls.my.raw_cert`, `@tls.my.urlencoded_cert`
-    add select for tls verified cert chain (requires OpenSSL 1.1+)
-   add support to link against static libraries in Makefile

### ims_charging

-   add support for Application-Provided-Called-Party-Address AVP
-   add support for destination_host parameter, implementation was
    incomplete

### ims_usrloc_pcscf

-   change `-` for `_` in stats name to be prometheus compliant

### ims_ipsec_pcscf

-   new parameter in `ipsec_forward()` to set or not `send force socket`
    for request messages, useful for IPSEC or TCP connections
-   new config param - `ipsec_reuse_server_port`, to specify the re-use of
    the PCSCF server port for UA Re-registration

### ims_diameter_server

-   switch from deprecated /var/run to /run

### ims_ocs

-   switch from deprecated /var/run to /run

### ims_qos

-   Rx AAR for Terminating direction get identity from request message
    if dialog is missing

### janssonrpcc

-   remove redundant str trim implementation and use the one from core
-   replaced str dup wrappers with the functions from core

### jsonrpcc

-   remove redundant str trim implementation and use the one from core

### jsonrpcs

-   KEMI function to get the RPCcommand response, shortcut to skip the
    pv get layer, can be useful for large values

### kazoo

-   add basic kemi support

### keepalive

-   add new function del_destination and add cfg functions
-   add keepalive.add, keepalive.del, keepalive.get and keepalive.flush
    RPC commands
-   add custom pinging interval per destination
-   add early start of OPTIONS checking

### kex

    *new RPC command stats.fetchn, get internal statistics with the values represented as numbers

### kemix

-   export functions to get dst-uri variants to KEMI
-   export function to get next hop URI to KEMI
-   convenience function KS.is_proto() to test many transport protocols
    with KEMI
-   export `get_conid()` function to retrieve tcp connection id to KEMI

### nathelper

-   add new function set_alias_to_avp
-   add new parameter `nat_addr_mode`, to include/exlude reserved
    addresses in `nat_uac_test()`
-   add optional `set_contact_alias(trim])` parameter

### nat_traversal

-   switch from deprecated /var/run to /run
-   remove redundant str trim implementation and use the one from core
-   new parameter contact_match, for light URI comparison

### ndb_redis

-   add sentinel support to reconnection logic

### mediaproxy

-   switch from deprecated /var/run to /run
-   remove redundant str trim implementation and use the one from core

### uac

-   extended use of mode param for uac_reg_request_to(), to control the
    matching and authentication mode
-   optional param for uac_auth() to specify auth mode, to support
    password in HA1 format

### usrloc

-   add the ability to send keep alive requests
-   add options to do keepalive for natted or udp contacts only, similar
    to nathelper module
-   add internal keepalive support for db only mode
-   change `-` for `_` in stats name to be prometheus compliant

### userblacklist

-   add KEMI functions

### xmpp

-   remove redundant str trim implementation and use the one from core

## New in Core

-   detect if IPv6 address is between square brackets in internal DB
    API, to support MySQL cfg group names
-   fixup helpers to get dynamic string parameter in own buffer
-   function to get the size of the value for strings with vars for PVs
-   better evaluation of error return for pv_printf_s()
-   add support for parsing http/2 replies parsing
-   add two new string handling functions to copy chars and str
-   internal flag to mark sip request if there is a route for next hop
-   add support functions to encode/decode base64-url
-   strutils - add urlencode and urldecode functions
-   core parser - new internal flag FL_USE_OTCPID
-   new conditional lump types SUBST_RCV_ALL_EX and SUBST_SND_ALL_EX
-   functions for light comparison of uri values

### Command line arguments

-   add `--loadmodule=name`, enable the option to load a module from
    command line
-   add `--modparam`, to allow setting a module parameter via command line
-   add `--log-engine`, to allow setting the log engine from command line
-   add `--debug=val` command line parameter to control the value for
    debug global parameter as alternative to `-d` switch

### Interpreter

### Parameters

-   new global parameter `uri_host_extra_chars`, to allow specifying
    additional chars to be allowed in host part

### Functions

### Memory Managers

-   qmalloc - print details of prev fragment when its tail is
    overwritten

### Architecture

-   add internal cryptographic algorithm implementation (MD5, SHA, AES,
    Fortuna PRNG)
-   moved lib/srutils functions to core/utils
-   further migration of many modules to use core SHM_MEM_ERROR and
    PKG_MEM_ERROR defines
-   events - support for basic void core callbacks, can be used to allow
    modules execute their code from core for specific needs
-   removal of several old core functions which were deactivated since
    many years
-   simplified core log macros (dprint), remove old and unused code
-   add support for structured logging, to provide JSON logging format
-   add option to print callid as attribute in structure json logging
-   log macro to print message without function name (dprint) with
    LOG_FN(...)
-   duplicated parameter definition cleanups in many modules
-   add description columns and id column to version table
-   better support for compilation on NetBSD
-   add module prefix to internal functions and structures in many
    modules
-   add core support for xavi and xavu PVs
-   add core support to assign names to listen sockets
-   KEMI support for ARRAY and DICT types
-   implementation for executing route blocks on send out events moved
    to onsend.c

### kamailio.cfg

-   switch from deprecated /var/run to /run
-   option to use rtpengine for nat traversal
    1.  define WITH_NAT
    2.  define WITH_RTPENGINE
-   set disable_sctp to yes
-   update IMS kamailio.cfg examples (in other folder)

## Tools

-   pdbt: switch from deprecated /var/run to /run
-   pdbt: add pdb server message check
-   Makefile: add better support for EMACS
-   Makefile: use pgk-config if xml2-config can not be found for certain
    modules
-   kemi: add script to generate mock api for kemi python testing
-   kemi: add support for invoking function pointers in tool

### kamcmd

### kamctl

-   add trap command output to TXT file, to help with debugging over
    e-mail or ticket
-   kamctl: switch from deprecated /var/run to /run
-   adjustment to RPC fifo file to match default naming
-   try to locate RPC fifo file in /var/run/ or /run/ folders, to cope
    better with old or non-linux systems
-   added pstrap command, use ps to get list of PIDs for Kamailio
    instance, instead of RPC core.psx

### kamdbctl

-   add support for DB creation on MySQL 8
-   new option DBINITASK to control the steps for db init
-   removed kamailio-extensions.xml file from DB schema sources

### kamcli
