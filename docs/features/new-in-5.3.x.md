# Kamailio SIP Server - New Features in 5.3.0

📘 **Previous devel, current stable, version was 5.2.x
(released on November, 2018), see what was new in that release at:**

- [New In 5.2.x](new-in-5.2.x.md)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### app_lua_sr

Old **sr** module exported to Lua scripting.

- [https://www.kamailio.org/docs/modules/devel/modules/app_lua_sr.html](https://www.kamailio.org/docs/modules/devel/modules/app_lua_sr.html)

### lost

HELD (RFC6155) and LOST (RFC5222) location-based routing.

- [https://www.kamailio.org/docs/modules/devel/modules/lost.html](https://www.kamailio.org/docs/modules/devel/modules/lost.html)

### kemix

KEMI specific extensions.

- [https://www.kamailio.org/docs/modules/devel/modules/kemix.html](https://www.kamailio.org/docs/modules/devel/modules/kemix.html)

### rtp_media_server

Embedded RTP and media processing functionalities for Kamailio, like
playing media or bridging in a B2BUA manner. Includes support for
different codecs (including Opus).

- [https://www.kamailio.org/docs/modules/devel/modules/rtp_media_server.html](https://www.kamailio.org/docs/modules/devel/modules/rtp_media_server.html)

### secfilter

Filters to allow/block using whitelists/blacklist based on user agents,
IP addresses, countries, domains and users. SQL injection attacks
prevention. Blacklist of destinations where the called number is not
allowed.

- [https://www.kamailio.org/docs/modules/devel/modules/secfilter.html](https://www.kamailio.org/docs/modules/devel/modules/secfilter.html)

### xhttp_prom

Generates suitable metrics for a Prometheus monitoring platform,
answering to Prometheus pull requests (HTTP requests to /metrics URL).

- [https://www.kamailio.org/docs/modules/devel/modules/xhttp_prom.html](https://www.kamailio.org/docs/modules/devel/modules/xhttp_prom.html)

## New in existing Modules

### acc

Removal of obselete diameter related documentation

- [https://kamailio.org/docs/modules/devel/modules/acc.html](https://kamailio.org/docs/modules/devel/modules/acc.html)

### acc_json

Add support for leg_info fields to the acc_json module

- [https://www.kamailio.org/docs/modules/devel/modules/acc_json.html](https://www.kamailio.org/docs/modules/devel/modules/acc_json.html)

### async

New functionality to sleep for milli-seconds and also schedule a
asynchronous route execution with milli-seconds delay

- [https://kamailio.org/docs/modules/devel/modules/async.html#async.f.async_ms_sleep](https://kamailio.org/docs/modules/devel/modules/async.html#async.f.async_ms_sleep)
- [https://kamailio.org/docs/modules/devel/modules/async.html#async.f.async_ms_route](https://kamailio.org/docs/modules/devel/modules/async.html#async.f.async_ms_route)

### cnxcc

Added a new param in the cnxcc_set_max_credit() function to set the
connect cost of a call.

- [https://www.kamailio.org/docs/modules/devel/modules/cnxcc.html#cnxcc.f.set_max_credit](https://www.kamailio.org/docs/modules/devel/modules/cnxcc.html#cnxcc.f.set_max_credit)

### dialog

Add new rpc commands dlg.list_match and dlg.list_match_ctx to the dialog
module. They will list dialogs matching the expression given via
parameters

- [https://www.kamailio.org/docs/modules/devel/modules/dialog.html#dlg.r.list_match](https://www.kamailio.org/docs/modules/devel/modules/dialog.html#dlg.r.list_match)
- [https://www.kamailio.org/docs/modules/devel/modules/dialog.html#dlg.r.list_match_ctx](https://www.kamailio.org/docs/modules/devel/modules/dialog.html#dlg.r.list_match_ctx)

Add new parameter keep_proxy_rr to loop BYE through proxy. When in use,
sending locally generated in-dialog requests will loop back to the proxy
with a proper Record-Route header, including any parameters.

- [https://kamailio.org/docs/modules/devel/modules/dialog.html#dialog.p.keep_proxy_rr](https://kamailio.org/docs/modules/devel/modules/dialog.html#dialog.p.keep_proxy_rr)

### dispatcher

- Add new rpc functions, to add and remove destinations to the
    in-memory dispatcher list.
  - [https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#dispatcher.r.add](https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#dispatcher.r.add)
  - [https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#dispatcher.r.remove](https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#dispatcher.r.remove)
- Add a new flag 16 (1\<\<4) to the cfg syntax for destinations with
    host not having A/AAAA record.
  - [https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#idm1021190300](https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#idm1021190300)
- Add a new parameter reload_delta to limit the frequency of rpc
    reload commands to try to avoid races of parallel reload operations.
  - [https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#dispatcher.p.reload_delta](https://www.kamailio.org/docs/modules/devel/modules/dispatcher.html#dispatcher.p.reload_delta)

### dialplan

Add reload_delta parameter to make the rate limit of maximum allowed
dialplan reload configurable.

- [https://www.kamailio.org/docs/modules/devel/modules/dialplan.html#dialplan.p.reload_delta](https://www.kamailio.org/docs/modules/devel/modules/dialplan.html#dialplan.p.reload_delta)

### evrexec

Added rpc command evrexec.run to run an event_route: kamctl rpc
evrexec.run evname \[evdata\]. First parameter is the event route name
(or KEMI function), second parameter (optional, string) is an arbitrary
data that becomes available inside the event route via $evr(data).

- [https://www.kamailio.org/docs/modules/devel/modules/evrexec.html#evrexec.r.run](https://www.kamailio.org/docs/modules/devel/modules/evrexec.html#evrexec.r.run)

### http_client

- New param query_result, control if the http_client_query() returns
    only the first line or the entire result.
  - [https://kamailio.org/docs/modules/devel/modules/http_client.html#http_client.p.query_result](https://kamailio.org/docs/modules/devel/modules/http_client.html#http_client.p.query_result)
- New param query_maxdatasize, set the maximum size to be downloaded
    for http_client_query() result
  - [https://kamailio.org/docs/modules/devel/modules/http_client.html#http_client.p.query_maxdatasize](https://kamailio.org/docs/modules/devel/modules/http_client.html#http_client.p.query_maxdatasize)

### imc

Extend module functionality significantly, several new commands (e.g.
#rooms, #add) were added. Internal refactoring and protocol extensions
were done as well. For details have a look to the commit messages for
this module.

### ims_ipsec_pcscf

- Add IPv6 support to the ims_ipsec_pcscf module. Set authentication
    algorithm for SA depending of parsed security-client info from
    REGISTER request message. For now, the supported algorithms are md5
    and sha1, the default algorithm is sha1.
- Additional initial TCP support and support for multiple TCP
    connections were added.
  - [https://www.kamailio.org/docs/modules/devel/modules/ims_ipsec_pcscf.html](https://www.kamailio.org/docs/modules/devel/modules/ims_ipsec_pcscf.html)

### ims_registrar_pcscf

Add support for multiple TCP connections to the ims_registrar_pcscf
module.

- [https://www.kamailio.org/docs/modules/devel/modules/ims_registrar_pcscf.html](https://www.kamailio.org/docs/modules/devel/modules/ims_registrar_pcscf.html)

### ims_usrloc_pcscf

Add support for multiple TCP connections to the ims_usrloc_pcscf module.

- [https://www.kamailio.org/docs/modules/devel/modules/ims_usrloc_pcscf.html](https://www.kamailio.org/docs/modules/devel/modules/ims_usrloc_pcscf.html)

### ims_isc

Add functionality to an add-on to third party registration in S-CSCF. The
feature assumes two new flags in HSS database, where additional to the
"Service Info XML" an "insertRegisterRequest" flag or an
"insertRegisterResponse" flag can be set. These flags are sent with the
SAR/SAA exchange to the S-CSCF. More information can be found in the
commit message (99b2cfaf4151968a62) and the module documentation.

- [https://www.kamailio.org/docs/modules/devel/modules/ims_isc.html](https://www.kamailio.org/docs/modules/devel/modules/ims_isc.html)

### ims_usrloc_scscf

Add-on to third party registration in S-CSCF to the ims_usrloc_scscf
module.

- [https://www.kamailio.org/docs/modules/devel/modules/ims_usrloc_scscf.html](https://www.kamailio.org/docs/modules/devel/modules/ims_usrloc_scscf.html)

### ims_registrar_scscf

Add-on to third party registration in S-CSCF to the ims_registrar_scscf
module.

- [https://www.kamailio.org/docs/modules/devel/modules/ims_registrar_scscf.html](https://www.kamailio.org/docs/modules/devel/modules/ims_registrar_scscf.html)

### mohqueue

Updated to version 1.6

- [https://kamailio.org/docs/modules/devel/modules/mohqueue.html](https://kamailio.org/docs/modules/devel/modules/mohqueue.html)

### mqueue

Add a new rpc command mqueue.fetch

- [https://www.kamailio.org/docs/modules/devel/modules/mqueue.html#mqueue.f.mq_fetch](https://www.kamailio.org/docs/modules/devel/modules/mqueue.html#mqueue.f.mq_fetch)

### nathelper

Extend nat_uac_test() to test for mismatch between connection and source
IP.

- [https://kamailio.org/docs/modules/devel/modules/nathelper.html#nathelper.f.nat_uac_test](https://kamailio.org/docs/modules/devel/modules/nathelper.html#nathelper.f.nat_uac_test)

### pv

- New pseudo-variable $rcv(key), available inside
    `event_route[core:msg-received]` to get details of the received
    message.
  - [https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#received_data_attributes](https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#received_data_attributes)
- New pseudo-variable $TV(Fn) - formatted time with microseconds
    YYYY-MM-DD HH:MM:SS.UUUUUU. Current time in human readable format
    with microseconds precission.
  - [https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#tv_name](https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#tv_name)
- added {s.count,c} transformation
  - [https://www.kamailio.org/wiki/cookbooks/devel/transformations#scount_c](https://www.kamailio.org/wiki/cookbooks/devel/transformations#scount_c)
- Increase the internal buffer size for variables and transformations

### janssonrpcc

Add new parameter "keep_alive", send periodic tcp keepalive packets to
server in order to prevent connection from closing.

- [https://www.kamailio.org/docs/modules/devel/modules/janssonrpcc.html#idm1023243564](https://www.kamailio.org/docs/modules/devel/modules/janssonrpcc.html#idm1023243564)

### kex

New rpc command mod.mem_statsx, to print also the count of allocated
chunks in summary.

- [https://www.kamailio.org/docs/modules/devel/modules/kex.html#kex.r.mod.mem_statsx](https://www.kamailio.org/docs/modules/devel/modules/kex.html#kex.r.mod.mem_statsx)

### phonenum

New param resid to register result container ids.

- [https://kamailio.org/docs/modules/devel/modules/phonenum.html#phonenum.p.resid](https://kamailio.org/docs/modules/devel/modules/phonenum.html#phonenum.p.resid)

### presence

A new rpc command presence.updateWatchers

- [https://www.kamailio.org/docs/modules/devel/modules/presence.html#presence.rpc.updateWatchers](https://www.kamailio.org/docs/modules/devel/modules/presence.html#presence.rpc.updateWatchers)

### registrar

New parameter lookup_filter_mode to control what filters should be
applied for lookup(...) operations. Filter values are specified via
filed of xavp_cfg.

- [https://www.kamailio.org/docs/modules/devel/modules/registrar.html#registrar.p.lookup_filter_mode](https://www.kamailio.org/docs/modules/devel/modules/registrar.html#registrar.p.lookup_filter_mode)

### rr

Add new return value for preloaded route set to loose_route(). Now it is
possible to detect from the script if a preloaded Route header was
removed that pointed at the local proxy.

- [https://www.kamailio.org/docs/modules/devel/modules/rr.html#rr.f.loose_route](https://www.kamailio.org/docs/modules/devel/modules/rr.html#rr.f.loose_route)

### rls

Add a new rpc command rls.update_subs.

- [https://www.kamailio.org/docs/modules/devel/modules/rls.html#rls.rpc.update_subs](https://www.kamailio.org/docs/modules/devel/modules/rls.html#rls.rpc.update_subs)

### rtpengine

- Introduce additional hashing algorithm SHA1 over callid for better
    distribution among nodes.
  - [https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.p.hash_algo](https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.p.hash_algo)
- Add play_media() and stop_media() functions, also includes addition
    of the $media_duration pseudo-variable, as well as several code
    cleanups and simplifications.
  - [https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.play_media](https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.play_media)
  - [https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.stop_media](https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.stop_media)
  - [https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.p.media_duration](https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.p.media_duration)
- Add start_forwarding() and stop_forwarding() functions.
  - [https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.start_forwarding](https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.start_forwarding)
  - [https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.stop_forwarding](https://www.kamailio.org/docs/modules/devel/modules/rtpengine.html#rtpengine.f.stop_forwarding)
- Add support for trickle ICE SDP fragments, add support for explicit
    load balancing options and add support for via-branch=extra option.

### sdpops

Added new sdp_get_ddress_family() function to extract the IP address
family from the SDP body

- [https://www.kamailio.org/docs/modules/devel/modules/sdpops.html#sdpops.f.sdp_get_address_family](https://www.kamailio.org/docs/modules/devel/modules/sdpops.html#sdpops.f.sdp_get_address_family)

### siptrace

Add transaction and dialog level tracing to the module function
sip_trace

- [https://www.kamailio.org/docs/modules/devel/modules/siptrace.html#siptrace.f.sip_trace](https://www.kamailio.org/docs/modules/devel/modules/siptrace.html#siptrace.f.sip_trace)

### sl

- Add new pseudo-variables: `$ltt(key)` - return local generated to tag
    when Kamailio sends a reply.
  - [https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#ltt_key_-_local_to-tag](https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#ltt_key_-_local_to-tag)
- Add configuration parameter to add path and flags to redirected
    contacts.
  - [https://www.kamailio.org/docs/modules/devel/modules/sl.html#rich_redirect](https://www.kamailio.org/docs/modules/devel/modules/sl.html#rich_redirect)

### sqlops

- Add a new parameter connect_mode, option to start even when
    connecting to db fails.
  - [https://www.kamailio.org/docs/modules/devel/modules/sqlops.html#sqlops.p.connect_mode](https://www.kamailio.org/docs/modules/devel/modules/sqlops.html#sqlops.p.connect_mode)
- Add a limit of maximum 32 result containers to prevent using too
    much memory

### textops

Add a new function regex_substring(itext, regex, index, mcount, dpv).
Return a substring extracted by matching with a regular expression and
the index of matched token.

- [https://www.kamailio.org/docs/modules/devel/modules/textops.html#textops.f.regex_substring](https://www.kamailio.org/docs/modules/devel/modules/textops.html#textops.f.regex_substring)

### tls

- Add support for unique identifier PVs and select:
    $tls_peer_subject_uid and $tls_my_subject_uid, new selects: uid,
    uniqueIdentifier and unique_identifier.
  - [https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#tls_peer_subject_uid](https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#tls_peer_subject_uid)
  - [https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#tls_my_subject_uid](https://www.kamailio.org/wiki/cookbooks/devel/pseudovariables#tls_my_subject_uid)
- Add workaround for new OpenSSL 1.1, preloaded library. This is a
    workaround for OpenSSL >= 1.1 which uses internal locking and
    doesn't support locks in memory shared across multiple processes.

### tm

- Added t_get_status_code() function to return the status code of the
    transaction - the sip response code.
  - [https://www.kamailio.org/docs/modules/devel/modules/tm.html#tm.f.t_get_status_code](https://www.kamailio.org/docs/modules/devel/modules/tm.html#tm.f.t_get_status_code)
- Add configuration parameter to add path and flags to redirected
    contacts.
  - [https://www.kamailio.org/docs/modules/devel/modules/tm.html#tm.p.rich_redirect](https://www.kamailio.org/docs/modules/devel/modules/tm.html#tm.p.rich_redirect)
- Removal of obselete delete_timer parameter - it was not used since a
    long time
- Improve from-tags to include more randomness and use the recommended
    size from RFC 3261
- Other cleanups related to unused functionality

### tmx

Add a new function t_drop(\[rcode\])

- [https://www.kamailio.org/docs/modules/devel/modules/tmx.html#tmx.f.t_drop](https://www.kamailio.org/docs/modules/devel/modules/tmx.html#tmx.f.t_drop)

### uac

- New modparam reg_gc_interval, to define a value for garbage
    collection interval
  - [https://www.kamailio.org/docs/modules/devel/modules/uac.html#uac.p.reg_gc_interval](https://www.kamailio.org/docs/modules/devel/modules/uac.html#uac.p.reg_gc_interval)
- New modparam default_socket, to define a default socket for sending
    registrations and requests out
  - [https://www.kamailio.org/docs/modules/devel/modules/uac.html#uac.p.default_socket](https://www.kamailio.org/docs/modules/devel/modules/uac.html#uac.p.default_socket)
- Extension in uacreg table, to specify a socket per table entry
  - [https://www.kamailio.org/docs/modules/devel/modules/uac.html#idm574](https://www.kamailio.org/docs/modules/devel/modules/uac.html#idm574)
- The uac_replace_from/uac_replace_to function (with dialog storage
    option) will now also work properly after a restart from Kamailio,
    if dialog data is stored in a database.
- The uac_replace_from/uac_replace_to function will now also properly
    store and restore the Display Name with the dialog storage option.
- New functionality to force a default socket for register and request
    sending
  - [https://kamailio.org/docs/modules/devel/modules/uac.html#uac.p.default_socket](https://kamailio.org/docs/modules/devel/modules/uac.html#uac.p.default_socket)
- New functionality to force a custom socket for register requests
  - [https://kamailio.org/docs/modules/devel/modules/uac.html#idm612](https://kamailio.org/docs/modules/devel/modules/uac.html#idm612)
- Use auth_ha1 field if set for remote registrations, to allow
    registration without plain-text password in database

### websocket

Added check mechanism based on tcp connection - type 3
(KEEPALIVE_MECHANISM_CONCHECK)

- [https://www.kamailio.org/docs/modules/devel/modules/websocket.html](https://www.kamailio.org/docs/modules/devel/modules/websocket.html)

## New in Core

### Command line arguments

Adding support for long option names, to kamailio. This makes it easier
to deploy Kamailio in dynamic environments like containers. Examples:

- add domain aliases with --alias
- set advertised address to listen sockets speficied with -l
    socket/advertise
- set server id with --server-id
- set a subst, substdef or substdefs preprocessor expression with
    --subst, --substdef or --substdefs
- Print the architecture for that Kamailio was compiled for with
    existing parameter -I

More information:
[https://www.kamailio.org/w/2019/05/kamailio-command-line-arguments/](https://www.kamailio.org/w/2019/05/kamailio-command-line-arguments/)

### Interpreter

Many extensions to the KEMI scripting language support in core and
modules were added.

### Parameters

- New global parameter bind_ipv6_link_local. If set to 1, try to bind
    also IPv6 link local addresses by discovering the scope of the
    interface. This apply for UDP socket for now, to be added for the
    other protocols.
  - [https://www.kamailio.org/wiki/cookbooks/devel/core#bind_ipv6_link_local](https://www.kamailio.org/wiki/cookbooks/devel/core#bind_ipv6_link_local)
- Introduce new configuration parameter tcp_accept_haproxy parameter.
    When active, inbound TCP connections are expected to behave
    according to the HAProxy protocol. Both the v1 (human-readable) and
    v2 (binary) versions of the protocol are supported.
  - [https://www.kamailio.org/wiki/cookbooks/devel/core#tcp_accept_haproxy](https://www.kamailio.org/wiki/cookbooks/devel/core#tcp_accept_haproxy)
- Added latency_limit_cfg global parameter to print execution time for
    configuration script only if it exceeds this value. It is printed to
    latency_cfg_log level, another added parameter.
  - [https://www.kamailio.org/wiki/cookbooks/devel/core#latency_limit_action](https://www.kamailio.org/wiki/cookbooks/devel/core#latency_limit_action)
  - [https://www.kamailio.org/wiki/cookbooks/devel/core#latency_cfg_log](https://www.kamailio.org/wiki/cookbooks/devel/core#latency_cfg_log)
- New core parameter tcp_accept_unique
  - [https://www.kamailio.org/wiki/cookbooks/devel/core#tcp_accept_unique](https://www.kamailio.org/wiki/cookbooks/devel/core#tcp_accept_unique)
- New core parameter tcp_connection_match
  - [https://www.kamailio.org/wiki/cookbooks/devel/core#tcp_connection_match](https://www.kamailio.org/wiki/cookbooks/devel/core#tcp_connection_match)

### Functions

- New rpc command core.psa - to print attributes stored in process
    table, similar to core.psx, but also prints the rank and status
    fields

### Memory Managers

Refactoring and unification of memory allocation error logging
infrastructure. Completed in the core, major modules were migrated as
well. The #define are called PKG_MEM_ERROR, PKG_MEM_CRITICAL,
SHM_MEM_ERROR, SHM_MEM_CRITICAL, SYS_MEM_ERROR and SYS_MEM_CRITICAL
error. Additional #define for variable log messages for special cases
were added as well.

Enable memory mem_join functionality in the memory manager as default.
This this should help with server stability in low memory situations.
Some downstream projects (e.g. Kazoo) enables this already since years.

### Architecture

- Extend internal IPv4 and IPv6 parsing functions in the core.
- Create Contacts header with path vector as Route header. When
    Kamailio is functioning as a registrar sends a 302 redirect, the
    registered contacts are sent inside the Contact header. If a contact
    as a path vector, that path should become a Route header in the
    INVITE (rfc 3327). This patch adds the path vector as a Route header
    parameter to the Contacts in the redirect so the receiving entity of
    the 302 can add the proper Route headers. This is a standard way to
    specify headers to be added to a request, see rfc3261 section
    19.1.1.
- Add DB_TABLE_VERSION_ERROR(table) error helper #define to DB1 API
    and migrate (almost) all modules that use version tables to it. This
    unify the logging and error behavior of the relevant modules that
    uses a database.
- Improve to-tags to include more randomness and use the recommended
    size from RFC 3261.
- Improve core support for ARM v6 and ARM v7 platform
- Different cleanups related to obsolete code.

### kamailio.cfg

Changes to the default kamailio.cfg

- detect sipvicious as scanner
- do sanity check for sip responses
- no connect for forwarding requests withing dialog
- set no connect flags for replies and natted messages
- explicitely set the tcp/tls connections upper limits

## Tools

Added tool to generate code for KEMI modules to
`misc/tools/kemi/kemi-code-gen.py` - can generate typedefs for functions
and the large if-else blocks for variants of parameters.

### kamcmd

### kamctl

- Added subcommand to print the server version using rpc command:
    kamctl srv version
- Added subcommand to delete older expired records from database
    table: `kamctl ul dbclean [<secs>]`
- Added acc initdb command to add additional columns needed with
    default kamailio.cfg and defined WITH_ACCDB for acc and missed_calls
    table.

### kamdbctl

- Added verification before database reinit
- Warn that drop command will indeed drop the database.
- Increased the size of several database fields to properly store IPv6
    data

### kamcli
