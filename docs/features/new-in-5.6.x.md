# Kamailio SIP Server - New Features in v5.6.x (pre)

📘 **Previous version was 5.5.x (released on May 2021), see
what was new in that release at**:

- [New In v5.5.x](new-in-5.5.x.md)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### misctest

- C code testing framework for fuzzing and memory operations
- incorporates former `malloc_test` module
- [https://www.kamailio.org/docs/modules/5.6.x/modules/misctest.html](https://www.kamailio.org/docs/modules/5.6.x/modules/misctest.html)

### nats

- NATS connector - PubSub messaging system
- [https://www.kamailio.org/docs/modules/5.6.x/modules/nats.html](https://www.kamailio.org/docs/modules/5.6.x/modules/nats.html)

### pospos

- operations with position in the message buffer
- [https://www.kamailio.org/docs/modules/5.6.x/modules/pospos.html](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html)

### ruxc

- utility functions based on libruxc
  - alternative HTTP client function using RUST libraries
- [https://www.kamailio.org/docs/modules/5.6.x/modules/ruxc.html](https://www.kamailio.org/docs/modules/5.6.x/modules/ruxc.html)

### siprepo

- SIP message repository
- [https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html](https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html)

### slack

- new module to send messages to slack channels
- [https://www.kamailio.org/docs/modules/5.6.x/modules/slack.html](https://www.kamailio.org/docs/modules/5.6.x/modules/slack.html)

### tlsa

- (pseudo) module to compile tls module linked statically with libssl
- [https://www.kamailio.org/docs/modules/5.6.x/modules/tlsa.html](https://www.kamailio.org/docs/modules/5.6.x/modules/tlsa.html)

## New In Existing Modules

### app_jsdt

- added `duk_module_node` for JS module resolution
- added parameter mode to control initialization of js module api
- `duktape` interpreter upgraded to v2.7.0

### app_lua

- support for lua `5.4.x`

### app_lua_sr

- support for lua `5.4.x`

### app_squirrel

- updated `squirrel` interpreter to latest git version (3.2+)

### async

- added `async_task_group_route(routename, groupname)` function
- added functions to execute async tasks only with custom data
  - variants which do not suspend transaction
- added variable `$async(key)` - get async task group name and async task data
- exported functions to kemi to get async group name and data
- module parameter to set return code on success

### corex

- added `virtual` flag to output of rpc `corex.list_sockets`
- rpc shm stats values printed as `unsigned long`
- support adding dns srv records via dns_cache param
- added `shm.report` rpc command
- added variable `$lsock(expr)` - get listen socket attributes
  - `n/s1/listen` - match the socket with the name `s1` and return the listen address
- added transformation `{sock.attr}` - get attributes of a socket address `proto:host:port`
- added `forward_reply()` function

### cplc

- manage case where TZ environment variable is not set

### ctl

- implement `long` and `long long` types of values
- `float/double` values are stored over a `long long int` instead of `int`
  - cope with larger values than `MAX_INT/1000`, supporting now up to `MAX_LLONG/1000`

### db_cluster

- RPC commands to control database connections
  - commands to list, enable or disable database connections of a cluster

### db_postgres

- added support for async queries

### db_redis

- support to use Redis cluster api

### debugger

- added `cfgtrace_format` parameter
  - control what is printed in the cfgtrace log message (e.g., do not print config file path)

### dialog

- added `local_only` parameter to RPC `dlg.stats_active`
- added `duration` field in dialog rpc output
- added filter based on start timestamp to rpc `dlg.list_match`
- added `dlg_filter_mode` parameter
  - do nothing on timeout if dialog is not local
  - do not send ka if dialog is not local

### dispatcher

- options to control better when the dns query should be done
- added `ds_dns_mode` parameter
- option to do srv dns query for target addresses
- added `ds_is_active(group [, uri])`
  - check if any or a specific uri in a group is active
- option to get shorter result for rpc list command
- option for rpc list command to print more attributes
- support for dns resolving of destination addresses done on timer
- added `ds_dns_mode` and `ds_dns_interval` parameters
- rpc command to add a record updated to set priority
- track time of last dns timer update
- added `ds_dns_ttl` parameter - option to set ttl for dns queries done by dispatcher

### evrexec

- execute event route on data received on a custom udp socket
- new `sockaddr` attribute
- exposed src ip and port via variable

### geoip2

- added reload RCP command functionality

### htable

- added iterator function `sht_iterator_rm(iname)` to remove current item
- added iterator functions `sht_iterator_sets()` and `sht_iterator_seti()` to set the value of current item
- added iterator function `sht_iterator_setex()` to set expire of current item
- added rpc command `htable.setex` to set expire for an item
- added config functions to set item value and expire at once
- added rpc commands to set value and expire at the same time

### ims_ipsec_pcscf

- more algorithms, SA improvements
- added virtual flag to output of rpc sockets list

### ims_qos

- added new parameters for AAR, AVP517
  - `af_signaling_ip6`, `component_media_type`, `flow_protocol`, `omit_flow_ports`,
    `rs_default_bandwidth`, `rr_default_bandwidth`

### ims_registrar_scscf

- extended `save()` with optional flag `DO_NOT_USE_REALM_FOR_PRIVATE_IDENTITY`
- added a new contact state for notifications

### ims_usrloc_scscf

- added capability to skip a specific realm

### ipops

- added function `dns_set_local_ttl()` to set local ttl for dns queries

### jsonrpcs

- support for `long/long` values in rpc messages
  - `l` and `j` for `long` and `unsigned long`
  - `L` and `J` for `long long` and `unsigned long long`

### jwt

- possibility to add headers when generating jwt
- exported jwt_generate_hdrs() function to kemi

### kazoo

- allow optional AMQP-headers in `kazoo_query()` and `kazoo_publish()`

### kemix

- added functions `KSR.kx.ifdef()` and `KSR.kx.ifndef()`
- added function `kx.get_srcaddr_sock()` - return source address in socket format
    similar to `$sas`
- added function `KSR.kx.get_rcvaddr_sock()` - return local received address in socket

### kex

- use `unsigned long` for rpc `stats.fetchn` values

### lcr

- source port check for `from_any_gw()` and `from_gw()`
- updated kemi exports with new functions having port parameter
- improve binary search to support a match including src port

### ldap

- several functions exported to kemi framework

### lrkproxy

- added `gt` option for optimization port resource allocation
- added `custom_sdp_ip_avp` option for handling NAT client

### mqueue

- added parameters `mqueue_name` and `mqueue_size` to define queues
- added  `mqueue_mode` parameter

### nathelper

- optional parameter mode for `handle_ruri_alias()`
- new nat test (`512`) based on target address
- added `alias_name` parameter
  - allows to set the name of the parameter used for `alias`

### outbound

- added `flow_token_secret` parameter

### permissions

- added parameter `trusted_cleanup_interval`
  - cleanup old data of trusted `hash_table` by timer function

### presence

- added option to return 200 instead of 202 on subscriptions

### presence_conference

- added parameter `default_expires` (`3600s`)

### presence_dialoginfo

- added parameter `default_expires` (`3600s`)

### presence_mwi

- added parameter `default_expires` (`3600s`)

### presence_profile

- added parameter `default_expires` (`3600s`)

### presence_reginfo

- added parameter `default_expires` (`3600s`)

### presence_xml

- added parameter `default_expires` (`3600s`)

### pua_json

- exported `KSR.pua_json.publish()`

### pua_dialoginfo

- generate uuid instead of using call-id value to support parallel forking

### pv

- added `$rpl(key)` variable - manage reply
- added `$ccp(gname.vname)` variable - access core custom parameters
- added `$hfl(name)` variable - header field list
- added `{param.in,name[,sep]}` transformation
- added `$hflc(hname)` variable - header field list couting
- extended `$nh(k)` to work for replies using 2nd via
- added `WS` and `WSS` to `$K(key)` variable
- support `INET/6` as alternative `IPv4/6` for `$K(key)`
- `$nh(i)` returns ip address family version
- added `{s.rafter,x}` and `{s.rbefore,x}` transformations - get content of a
  string after or before a character with reverse searching
- added `{s.fmtlines,n,m}` and `{s.fmtlinet,n,m}` - format string in multi-lines
  with indentation
- added `$via0(attr)` variable - get the attributes of first via header
- added `$via1(attr)` variable - get the attributes of 2nd via
- added `$viaZ(attr)` variable - get the attributes of last via header
- added `$msgbuf(index)` variable - get content of SIP message buffer by index
- added functions for `$xavu(...)` params explode/implode
- added `$rsi` variable - return status code for replies and `0` for requests
- added transformation class `{val}`
  - `{val.n0}` - return int `0` instead of `$null` value, or existing value
  - `{val.json}` - if value is `$null`, return empty string; if value is
      string, then it is escaped for use as json value (without surrounding
      quotes)
  - `{val.ne}` - return empty string if the variable value is `$null`
  - `{val.jsonqe}` - quoted json value
- extended `$cnt(...)` to work with `$xavp(...)`
- added `$msg(lpart)` variable - return last part of the message - headers and body (skips first line)
- added `$Ras` - return local received address in socket format
- added set function for variable `$rcv(buf)`

### pv_headers

- added support to remove a specific value from a header
  - `pvh_remove_header_param()` remove the value from the given header or the entire header if no other value is present
- `pvh_header_param_exists()` check if the value is present to a given header

### p_usrloc

- added `UTC_timestamps` parameter

### registrar

- implemented lookup filter mode 2
  - use only contacts that have associated TCP/TLS/WSS connection active
- `save()` new flag to prepare the headers for reply

### rr

- all `record_route_...()` functions consider custom user AVP

### rtimer

- added `default_interval` parameter to set the fire interval

### rtpengine

- added mode 2 for rtpengine_allow_op to return only manually disabled nodes
- added `un/silence_media()` methods
- ignore mos 0 when selecting min-mos
- aliased `$rtpestat` to `$rtpstat`
- added `rtpengine_query_v()` function
  - do a query cmd and store the response in a variable as a json
- rpc reload is limited to 10secs frequency

### rtpproxy

- aliased `$rtppstat` to `$rtpstat`

### secsipid

- added function `secsipid_build_identity(...)` to build identity value and store in pv
- added function `secsipid_check(sidentity, keypath)`
- added function `secsipid_sign(headers, payload, keypath)`
- added kemi function to get `$secsipid(val)`
- added function `secsipid_build_identity_prvkey()` to build `Identity` by providing private key data

### sipdump

- new parameter `fage` to set sip traffic dump file age after which is deleted

### sipt

- added function `sipt_has_isup_body`
- added variables:
  - `$sipt(redirection_information.reason)`
  - `$sipt(redirection_information.original_reason)`
  - `$sipt(redirecting_number.nai)`
  - `$sipt(redirecting_number)`
  - `$sipt(original_called_number.nai)`
  - `$sipt(original_called_number)`
  - `$sipt(generic_number.nai)`
  - `$sipt(generic_number)`

### siptrace

- added `$siptrace(...)` variable
- added `direction `attribute to module variable

### siputils

- added optional mode parameter to `is_first_hop()` to control the matching
- added `hdr_date_check(tdiff)` function
- added `cmp_hdr_name(hname1, hname2)` function
- functions to compare `uri` and `aor` exported to kemi

### smsops

- support for 7bit special chars
- extended rpdata params manipulation
  - capability to set RPData originator and destination addresses flags

### snmpstats

- added parameter `snmpVersion` to specify SNMP version

### stastd

- support for histogram

### stirshaken

- added PVs to allow access to x509 subject and ppt grants

### sworker

- function `KSR.sworker.active()` exported to kemi
- added parameter `xdata` to be able to pass extra data to worker

### tcpops

- added function `tcp_close_connection([conid])`

### textops

- added function `remove_hf_idx(hname, idx)`
- added function `remove_hf_match(hname, op, expr)`

### textopsx

- added functions and variables to iterate headers list
  - iterate through headers, access values via `$hfitname(iname)` and `$hfitname(ibody)`
- headers iterator functions exported to kemi
- added body lines iterator functions
  - iterate through lines of message body, get the value via `$blitval(iname)`
- body lines iterator functions exported to kemi
- exported `msg_set_buffer(data)` function

### tls

- new config variable `$tls(key)` - key:
  - `m_subject_line` - return local (my) certificate subject line
  - `p_subject_line` - return remote (peer) certificate subject line
  - `m_issuer_line`
  - `p_issuer_line`

### tm

- added `callid_cseq_matching` parameter
  - transaction matching using callid and cseq values
- added `enable_uac_fr` parameter

### tsilo

- added support for lookup and branch creating by contact
- added function `ts_append_by_contact(table, ruri [, contact])`

### uac

- new parameter `reg_hash_size` to control better scalability
- new parameter `reg_use_domain`
- added `uac_reg_lookup_uri()` - do lookup for user in the uri
- exposed internal flags for `$uac_req(key)` variable
  - if set to `1`, the password is considered to be `HA1` value
- trigger event route for failure and timeout when `$uac_req(evroute) = 2`

### userblocklist

- added RPC commands that used to be MI commands

### usrloc

- added `db_clean_tcp` parameter
  - if set, tcp contacts are deleted before loading location table at start time

### uuid

- set sruid hooks for uuid generation on mod register

### xlog

- added `prefix_mode` parameter
  - allows pv-format specifier in `prefix` parameter

### xmlrpc

- implemented specifiers for `long` and `long long` types of values

## New in Core

- support for `time64` `libcs` - using the `lld` format for `time_t`
- added `#!defenvs` preprocessor directive
  - similar to `#!defenv`, but the value is enclosed in double quotes to
    make it covenient to be used as a string token
- added `#!trydefenv` - The same as `#!defenv`, except if the variable is
  undefined, the def value will be undefined as well
- added `#!trydefenvs` - The same as `#!defenvs`, except if the variable is
  undefined, the def value will be undefined as well
- tcp - added core parameter `tcp_wait_data`
  - specify how long to wait (in milliseconds) to wait for data on tcp
    connections in certain cases - default is `5000ms` (`5secs`)
- added `virtual` flag to output of rpc `core.sockets_list`
- sruid - functions to get sruid with suffix from hasing a string
- sruid - api hooks for setting uuid generation callbacks
- added support of ICE media options to SDP parser
- enable updating received data via `$rcv(buf)` on `event_route[core:msg-received]`
- dns cache - option to set local ttl to overwrite the global value

### Command Line Arguments

- logging: `JSON` - add `CEE` schema support
- new option `j` for json logging to print message in json format
  - if the log message starts with `{` and ends with `}`,
    then it is expected to be a json document, printed as it is in the
    message value, otherwise it is printed as field `text`
- new option `p` for json logging
  - prefix is printed as it is in the root json, expected to be a list of
    json field starting with comma
- added rpc command `core.runinfo`
  - return runtime info: running version, uptime, ...

### Interpreter

- accept `IPv4/6` as alternative keywords for `INET/6`

### Parameters

- added `sip_parser_log_oneline` - log SIP headers with `.` instead of `\r\n`
- `listen` can have a `virtual` flag to check for nonlocal floating IPs
- `mem_summary` set to `12` by default
- added `tcp_script_mode` global parameter
  - control if the tcp connection should be closed if received message
    processing resulted in error return code

### Functions

### KEMI

- added `KSR.pv.geti("pv")`
- added `KSR.is_WSX()` - return true of proto is `WS` or `WSS`
- added `to_UDP/TCP/TLS/SCTP/WS/WSS/WSX()` - return true if target is over `UDP/TCP/TLS/SCTP/WS/WSS/WSX`
- added `KSR.to_IPv4()` and `KSR.to_IPv6()`

### Memory Managers

- added api function for getting usage report for qm manager
- store file, line, module and functions in memory reports

### Architecture

- mechanism to execute `child_init()` for special ranks on demand
- new special rank `PROC_POSTCHILDINIT`, to execute `child_init()` for main
  process only when `ksr_module_set_flag(KSRMOD_FLAG_POSTCHILDINIT)` is
  executed in `mod_init()`

### kamailio.cfg

- added return to root blocks - make it more explicit for returned code

## Tools

### kamctl

- subcommand `tls gen-certs`
  - generate self signed certificate in current directory
- subcommand `srv modules`
  - list the loaded modules

### kamcmd

- `double/float` values printed without decimals when they are `0`
  - cope better with `long (long)` values stored in double fields


### kamdbctl

- database schema updates

### kamcli

- added subcommand `tls` to generate self-signed certificates
- added subcommand `apiban` for APIBan records management
- auto-complete options for subcommand `srv rpchelp`
- embedded shell
  - connect on starting to running Kamailio and display its version
  - display sip server uptime on start
  - config section for shell command
