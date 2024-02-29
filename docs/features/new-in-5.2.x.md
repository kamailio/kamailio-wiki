# Kamailio SIP Server - New Features in 5.2.0

📘 **Previous stable version was 5.1.x, see what was new in
that release at:**

- <http://www.kamailio.org/wiki/features/new-in-5.1.x>

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### acc_json

Generate accounting records in JSON format.

- [https://www.kamailio.org/docs/modules/devel/modules/acc_json.html](https://www.kamailio.org/docs/modules/devel/modules/acc_json.html)

### app_python3

KEMI interpreter implementation for Python3.

- [https://www.kamailio.org/docs/modules/devel/modules/app_python3.html](https://www.kamailio.org/docs/modules/devel/modules/app_python3.html)

### app_ruby

KEMI interpreter implementation for Ruby.

- [https://www.kamailio.org/docs/modules/devel/modules/app_ruby.html](https://www.kamailio.org/docs/modules/devel/modules/app_ruby.html)

### db_redis

Database APIv1 implementation with a REDIS backend.

- [https://www.kamailio.org/docs/modules/devel/modules/db_redis.html](https://www.kamailio.org/docs/modules/devel/modules/db_redis.html)

### ims_ipsec_pcscf

IMS IPSec implementation for P-CSCF systems.

- [https://kamailio.org/docs/modules/devel/modules/ims_ipsec_pcscf.html](https://kamailio.org/docs/modules/devel/modules/ims_ipsec_pcscf.html)

### pua_json

Presence User Agent implementation with JSON messages.

- [https://www.kamailio.org/docs/modules/devel/modules/pua_json.html](https://www.kamailio.org/docs/modules/devel/modules/pua_json.html)

## New in Old Modules

### acc

- use `acc.time_mode` to save cdrs in gmt time

### app_lua

- LUAJIT variable to build agains LuaJIT compiler
- defaut value for reload parameter set to 1
  - reload feature enabbled by default, set to 0 to disable
- new module parameter - log_mode
  - control what is printed in log messages by module
  - if bit 1 is set, then it prints the KEMI exports

### app_python

- implemented rpc command to list kemi functions
  - kamctl rpc app_python.api_list
- rpc command to reload the routing script

### benchmark

- new RPC commands timer_list and timer_name_list

### cfg_rpc

- rpc command cfg.get can accept only the group name to list all its
    vars

### corex

- functions to manage extended flags
  - setxflag(idx), resetxflag(idx), isxflagset(idx)
  - idx can be between 0 and 63
- added set_send_socket() and set_recv_socket()
  - options to set send and recv sockets with parameters containing
        variables
- added set_source_address() function
- added via_add_srvid() function
- new function via_add_xavp_params(flags)
  - control the flag for adding xavp fields to via params
- added sendx(uri, socket, data)
  - send data to destination uri by using local socket
- send() renamed to send_udp()
  - reflect better that it uses UDP always, similar to send_tcp()
- new function via_use_xavp_fields(mode)
  - set/unset the flag for building local Via using fields from
        via_xavp_fields xavp

### db_mongodb

- create projection field to set the list of returned column

### db_mysql

- added support for unsigned integers in INT and BIGINT DB1 API
- added parameter unsigend_type
  - if set to 1, then the module converts unsigned column value to
        DB1_UINT or DB1_UBIGINT

### db_postgres

- new parameter bytea_output_escape
  - control escaping output for bytea fields - default 1 (do the
        escape)

#### dialog

- added function dlg_db_load_callid(val)
  - load dialog from database based on callid parameter
- added h_id_start and h_id_step parameters
  - allow to control how internal dialog hash id is generated to
        avoid overlapping values across many instances of kamailio
- added dlg_db_load_extra() function
  - load dialogs from database that are not yet in memory of current
        kamailio instance
- handle . for optional body parameter for rpc dlg.bridge_dlg
  - consider as parameter not provided and use the default SDP
        string - "" or "\_" behaves as provided body is empty string and
        the request has no body
- new rpc command dlg.stats_active - return stats about active dialogs
    by scanning internal hash table

### dispatcher

- add methoded to reinit state for all destinations in group
- allow 'all' to update all destinations in group via RPC
- added ds_list_exists() as alias to ds_list_exist()
- congestion detection load balancing
- new param ds_attrs_none
  - if set to 1, "none=yes" is set in the attrs for those records
        that have no attrs value, to ensure that corresponding avps for
        records don't get mixed up
- use xavps instead of avps
  - removed avp names parameters
  - new parameters:
    - xavp_dst - name of the xavp to store destination records
    - xavp_dst_mode - control the fields added to xavp_dst
    - xavp_ctx - name of the xavp to store context attributes
    - xavp_ctx_mode - control the fields added to xavp_ctx
- added ds_set_dst() and dst_set_domain()
  - unlike the ds_next\_...() variants, these functions just push to
        destination the current xavp_dst, without consuming it
- new paraemter ds_db_extra_attrs
  - allow specifying database table columns to be loaded in the
        attrs field
- new function ds_select_routing(rules, mode, \[limit\])
  - select target addresses from a combination of groups and
        algorithms, control where the first destination is pushed and
        optionally set a limit
- added ping_from attribute

### dmq

- improved bus stability and reduce unnecessary state transfer
- added 'pending' state for new, locally added nodes, until confirmed
- continue to probe nodes marked as inactive/disabled
- allow startup even if initial nodelist is empty
- added optional target parameter to dmq_handle_message()

### htable

- added parameter event_callback_mode
  - control when event_route\[htable:init\] is executed: 0 - after
        all modules were initialized; 1 - in first worker process;
        (default 0)
- new functions sht_has_name(...) and sht_has_str_value(...)
  - sht_has_name(htable, op, mval) - return >0 if there is an item
        matching its name with mval based on operator op
  - sht_has_str_valye(htable, op, mval) - return >0 if there is an
        item matching its string value with mval based on operator op
- added sht_rm(htname, iname) - api function to remove an item from
    hash table
- kemi functions to set values in hash table: sht_sets(), sht_seti(),
    sht_setxs(), sht_setxi() and sht_setex()

### ims_diameter_server

- handle binary data in json/Diameter messages

### ims_registrar_pcscf

- update security on sec-agree

### ipops

- support for 192.0.0.0/29 as NATed source

### json

- new transformation to access json fields
- new function json_get_string() to return string value without quotes

### jsonrpcs

- set pretty_format param to 1 by default

### kex

- extend kamailio rcv_replies statistics
  - ability to count reply groups for each SIP method added.
  - statistics for 2xx and 4xx replies on invite added

### mtree

- rpc reload without table name reloads all tables

### nathelper

- allow variable for flags parameter of fix_nated_sdp(),
    add_rcv_param(), nat_uac_test()
- send SIP ping if ping_nated_only=0 and sipping_flag is set

### ndb_redis

- $redisd(...) - pv that exports defined values by redis lib

### nsq

- deprecated json and pua funcs for json api and pua_json modules

### p_usrloc

- new parameter "mdb_availability_control" - overwrites the
    "write_on_db" parameter based on the availability of master
    database.

### permissions

- allow_trusted() now can take optional parameter of value to match

### phonenum

- new function phonenum_match_cn(...)
  - match a phone number within a specific country provided by
        country code two letter
- added ccname attribute - get code for country name

### pipelimit

- added rpc command pl.list
  - get the details of one or all pipes in json format
- allow offloading timer routine from fast timer to secondary wheel
    timer
- allow to disable fetching cpu and network load

### presence

- dmq integration - replication of presentity updates over DMQ
  - adds ruid column for matching across cluster
  - new parameter enable_dmq
- option to limit the number of subscriptions handled in timer_dbonly

### pua_rpc

- added pua.send_publish rpc command
  - send a PUBLISH request without waiting for response

### pv

- new config variable $sas - return source address in socket format
    (proto:address:port)
- added new transformation {uri.tosocket}
  - converts a sip uri to socket address format
  - from `sip:address:port;transport=proto` to `proto:address:port`
- new function - xavp_params_implode(xname, pv)
  - serialize the subbfields of $xavp(xname) in params format
        (name=value;) and set the output to variable pv
- new variable $mbu - the message buffer after applying changes, but
    the original buffer stays unchanged
- new class of variables - $ksr(attr)
  - get attributes of kamailio sip router instance
  - implemented attributes:

<!-- -->

          * ver - return version string
          * verval - return version value
    * using * for header name matches any header for $hdr(name)
      * $hdr(*) is body of first header, $(hdr(*)[-1]) is body of last header
    * $msg(hdrc) returns the number of headers in sip message
    * $msg(fpart) - return first line and the headers
    * $msg(hdrs_len) - return the length of all headers
    * new transformation {s.unquote}
      * return the value without surrounding double/single quotes (" or ')
    * increased transformation buffer slots from 4 to 8
    * added transformation {s.unbracket}
      * return value without surrounding (), [], {} or <>

### rr

- new parameter force_send_socket
  - if set to 1, the socket is also forced for single rr
- ignore_sips - new parameter to control use of sips schema
  - if set to different than 0, then record-route headers will be
        added with sip schema even if r-uri comes with sips. Allow
        interoperability with some UAs messing up routing when sips is
        used
  - default is 0 - use sips schema if in r-uri (existing behaviour)

### rtpengine

- added aggressive_redetection param
- setting tos value for the control commands - new parameter
    "control_cmd_tos"
- added support for DTLS transports - added ability to explicitly
    request DTLS transports:
  - UDP/TLS/RTP/SAVP and UDP/TLS/RTP/SAVPF
- explicitly handle new option flags (transcoding)
- added options block_dtmf and unblock_dtmf
- added block_media and unblock_media function calls

### sanity

- allow variables in params
- new tests for parsing Top Via header
- do not send reply if mandatory headers are missing
- option to skip sending the reply internally
  - new mod param 'noreply' - if set to 1, no reply is sent
        internally; default is 0
- new function - sanity_reply() that can be used in config to send a
    reply with a code and reason set by the module when detecting a
    problem inside sip message

### sdpops

- fetch and manipulate origin line sess-version through
    pseudo-variable

### sipcapture

- added sip_capture_forward(uri)
  - forward the hep packet to another address
  - the address has to be provided as parameter in sip uri format
  - the function should be used inside
        `event_route[sipcapture:request]`

``` c
    event_route[sipcapture:request] {
        if(src_ip==1.2.3.4) {
            sip_capture_forward("sip:2.3.4.5:5090");
            return 0;
        }
    }
```

### sipt

- added functions to work with forwarding info
  - new variables as part of $sipt(...)

### smsops

- added support for concatenated SMS in decode_3gpp_sms()

### stun

- catch udp ping 0000 when trying to parse stun headers

### tcpops

- added function to get connection id based on target host:port
  - tcp_get_connid(hostport, pvname)
  - connection id is set in pvar paraemter

### textops

- new function msg_set_buffer(...) to kemi framework
- is_audio_on_hold() returns hold type
  - 1 - RFC2543 hold type (the connection IP is set to null IP)
  - 2 - RFC3264 hold type (inactive or sendonly attr)
- added function append_body_part_hex(...)
  - add a new part to the body, with its content provided in hexa
        (it is converted to decimal before appending)
- added replace_str(match, repl, mode)
  - replace a string with another in the message buffer after the
        first line. The parameter mode coltrols if first ("f") match or
        all ("a") should be replaced
  - alternative to replace() that avoids regexp overhead when bare
        string can be matched
- new function replace_body_str(mkey, rval, rmode)
  - replace a string inside message body
- new function replace_hdrs_str()
  - replace the matched string in the headers zone
- added replace_hdrs(re, sval)
  - replace matching regexp with sval inside sip headers part

### tls

- added support for OpenSSL engine and private keys in HSM
  - add support for OpenSSL engine and loading private keys from HSM
  - for when kamailio is a TLS edge proxy and needs to use HSM
  - currently we initialize the engine in worker processes as
        PKCS#11 libraries are not guaranteed to be fork() safe
  - new config params
    - engine: name the OpenSSL engine
    - engine_config: an OpenSSL config format file used to
            bootstrap engines
    - engine_algorithms: list of algorithms to delegate to the
            engine
  - tested with Gemalto SafeNet Luna (AWS CloudHSM) with RSA and EC
        private keys TLSv1.2 and PFS cipher suites
- allow defining a tls profile (domain) for any address
  - token 'any' or 'all' can be used instead of the address
        `[server:any]` or `[client:any]`
  - useful when the IP address/port to listen on is not known
        upfront or many addresses are used to listen on
  - such profiles can be defined many times and must have
        server_name attribute (for SNI)
- added server_name_mode attribute for tls domain profiles
  - define how to match server_name (SNI):
    - 0 - match only the domain
    - 1 - match the domain and subdomains
    - 2 - match only the subdomains
- tls.cfg - more examplea for tls domain profiles
- renamed sip-router_cert.sh to tls_cert.sh - it is specific to the
    module, not the flavour of the application

### tm

- make processing of event routes for local requests reentrant
- rpc tm.t_uac_start option to work with From and To headers only
- added t_send_reply(code, reason)
  - create the transaction if it doesn't exist and send a stateful
        reply
- addes relay_100 config parameter to support stateless operations

### tmx

- added t_flush_xflags() function

### topos

- execute `event_route[topos:sending]` with current sip message to be
    sent
  - if drop is used, then the message processing with topos is
        skipped
  - event route is executed after `event_route[topos:outgoing]`
  - new parameter event_mode to control what event_route blocks are
        executed
- added param contact_host - set the address in Contact header
- keep original contact in 3xx responses sent out

### uac

- remote registrations - added uac_reg_enable() and uac_reg_disable()
  - alternatives to the RPC commands to enable/disable remote
        registrations from kamailio.cfg (e.g., when receiving a
        registration from upstream)
- exported cfg function uac_reg_refresh(luuid)
- call event route for uac_req_send() for second response
  - done in case the request is resent after a 401/407
- reg_active - new parameter to control if remote registrations are
    active - default 1 (active)
  - can be changed at runtime via rpc command uac.reg_active 0\|1

### usrloc

- partition column name can be set via modparam
- new parameter rm_expired_delay - set how many seconds to delay the
    removal of an expired record (DB_ONLY mode)
- execute cleanup by server_id
- new parameter version_table
  - set it to 0 to disable checking the version for location table
- call contact expired callback for a domain with db_mode DB_ONLY

## New in Core

- new module exports interface
  - unified from Kamailio and SER module exports interfaces
- locking - added api functions for recursive lock sets
- added xflags field to sip_msg_t - holds extended flags - 64 new
    flags in addition to the old 32 flags
- new internal msg flag to add srvid param to local via
- added internal flag for adding xavp fields to via params
- parser - assign ids for more methods
  - KDMQ and HTTP method types GET, POST, PUT and DELETE
- pv - default number of buffer slots set to 40
- new rpc command - core.ppdefines_full
  - print preprocess defines with their details
- xavp - extended to hold a bare void pointer value
  - useful to link data that doesn't need cloning or freeing
- added config defines for application version
  - three tokens are defined for version X.Y.Z: `KAMAILIO_X`,
        `KAMAILIO_X_Y`, `KAMAILIO_X_Y_Z`
- print log_prefix after loglevel for more intuitive parsing

### Interpreter

- kemi - more core functions exported to kemi framework
- kemi - added KSR.is_method_in("mflags")
  - check if current method matches one listed in the flags
  - flags are: I (INVITE), A (ACK), B (BYE), C (CANCEL), R
        (REGISTER), P (PUBLISH), S (SUBSCRIBE), N (NOTIFY), O (OPTIONS)
  - KSR.is_method_in("IABC")
- kemi - renamed KSR.drop() to KSR.set_drop()

### Parameters

- new parameters to control the size of pv cache
  - pv_cache_limit - the limit how many pv declarations in the cache
        after which an action is taken. Default value is 2048
  - pv_cache_action - specify what action to be done when the size
        of pv cache is exceeded. If 0, print a warning log message when
        the limit is exceeded. If 1, warning log messages is printed and
        the cache systems tries to drop a $sht(...) declaration. Default
        is 0
- aliased global param ip_free_bind to ip_nonlocal_bind - match better
    with linux system control option
- new parameter kemi.onsend_route_callback
  - allow setting the name of the function to be called by kemi
        framework as equivalent of onsend_route {}
  - default value: ksr_onsend_route
  - set to empty string or "none" to skip the execution of this kemi
        callback
- new parameter kemi.reply_route_callback
  - set the name of kemi callback function to be executed on
        receiving a sip reply (equivalent of reply_route)
  - default: ksr_reply_route
  - set to empty or "none" to skip execution of this callback
- new parameter route_locks_size
  - if set, kamailio creates a group of recursive locks used to sync
        on execution of request_route and reply_route based on hashing
        ID of Call-ID header. In other words, if a message has triggered
        the execution of request_route or reply_route, any other message
        with the same Call-ID waits until the other one finishes the
        execution.
- new parameter kemi.event_route_callback
  - set the name of kemi function to be executed for core event
        route equivalent
  - default value is not set (no callback function name). If set to
        "none", it is also not executed.
  - callback function receives a string parameter with the name of
        the event
  - execute kemi event callback for "core:worker-one-init"
- new core parameter xavp_via_params
  - set the name of the xavp whose subfields will be added as via
        params
- new global parameter xavp_via_fields
  - set the name of xavp from where to take Via header field:
        address and port
  - use them to build local Via header

### Functions

- core functions exported to kemi interface

### Memory Managers

- mem - added shm_address_in(p)
  - return 1 if pointer p is inside shared memory zone, 0 otherwise

### kamailio.cfg

- added log_prefix parameter to print call-id, cseq, message type
    during SIP message processing
- do not relay to foreign network if auth is not enabled

## Tools

### kamctl

- default PID_FILE set to /var/run/kamailio/kamailio.pid
- added mtree management command
- more portable jsonrpc filter
- kamdbctl - remove not working db migrate command
- kamdbctl - schema - removed rpid and email_address columns from
    subscriber table

### kamcli

- support to generate tls.cfg from database table
- packaged for debian and ubuntu distributions

## Testing Framework

- new tests: [https://github.com/kamailio/kamailio-tests](https://github.com/kamailio/kamailio-tests)
