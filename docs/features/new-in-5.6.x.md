# Kamailio SIP Server - New Features in v5.6.x (pre)

📘 **Previous version was 5.5.x (released on May 2021), see
what was new in that release at**:

  -  [New In v5.5.x](http://www.kamailio.org/wiki/features/new-in-5.5.x)

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
  - [https://www.kamailio.org/docs/modules/5.6.x/modules/tsla.html](https://www.kamailio.org/docs/modules/5.6.x/modules/tsla.html)

## New In Existing Modules

### db_cluster

  - RPC commands to control database connections
    - commands to list, enable or disable database connections of a cluster

### debugger

  - added `cfgtrace_format` parameter
    - control what is printed in the cfgtrace log message (e.g., do not print config file path)

### dispatcher

  - options to control better when the dns query should be done
  - added `ds_is_active(group [, uri])`
    - check if any or a specific uri in a group is active

### htable

  - added iterator function `sht_iterator_rm(iname)` to remove current item
  - added iterator functions `sht_iterator_sets()` and `sht_iterator_seti()` to set the value of current item
  - added iterator function `sht_iterator_setex()` to set expire of current item

### ims_ipsec_pcscf

  - more algorithms, SA improvements

### ims_registrar_scscf

  - extended `save()` with optional flag `DO_NOT_USE_REALM_FOR_PRIVATE_IDENTITY`

### kazoo

  - allow optional AMQP-headers in `kazoo_query()` and `kazoo_publish()`

### kemix

  - added functions `KSR.kx.ifdef()` and `KSR.kx.ifndef()`

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

### nathelper

  - optional parameter mode for `handle_ruri_alias()`
  - new nat test (`512`) based on target address

### outbound

  - added `flow_token_secret` parameter

### permissions

  - added parameter `trusted_cleanup_interval`
    - cleanup old data of trusted `hash_table` by timer function

### presence

  - added option to return 200 instead of 202 on subscriptions

### pua_json

  - exported `KSR.pua_json.publish()`

### pua_dialoginfo

  - generate uuid instead of using call-id value to support parallel forking

### pv

  - added `$rpl(key)` variable - manage reply
  - added `$ccp(gname.vname)` variable - access core custom parameters
  - added `$hfl(name)` variable
  - added `{param.in,name[,sep]}` transformation
  - added `$hflc(hname)` variable
  - extended `$nh(k)` to work for replies using 2nd via
  - added `WS` and `WSS` to `$K(key)` variable
  - support `INET/6` as alternative `IPv4/6` for `$K(key)`
  - `$nh(i)` returns ip address family version
  - added `{s.rafter,x}` and `{s.rbefore,x}` transformations
  - added `{s.fmtlines,n,m}` and `{s.fmtlinet,n,m}`
  - added `$via0(attr)` variable - get the attributes of first via header
  - added `$via1(attr)` variable - get the attributes of 2nd via
  - added `$viaZ(attr)` variable - get the attributes of last via header
  - added `$msgbuf(index)` variable
  - added functions for `$xavu(...)` params explode/implode
  - added `$rsi` variable - return status code for replies and `0` for requests
  - added transformation class `{val}`
    - `{val.n0}` - return int `0` instead of `$null` value, or existing value
    - `{val.json}` - if value is $null, return empty string; if value is
      string, then it is escaped for use as json value (without surrounding
      quotes)
    - `{val.ne}` - return empty string if the variable value is `$null`
  - extended `$cnt(...)` to work with `$xavp(...)`

### registrar

  - implemented lookup filter mode 2
    -  use only contacts that have associated TCP/TLS/WSS connection active
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

### siputils

  - added optional mode parameter to `is_first_hop()` to control the matching
  - added `hdr_date_check(tdiff)` function
  - added `cmp_hdr_name(hname1, hname2)` function
  - functions to compare `uri` and `aor` exported to kemi

### smsops

  - support for 7bit special chars

### snmpstats

  - added parameter `snmpVersion` to specify SNMP version

### stastd

  - support for histogram

### sworker

  - function `KSR.sworker.active()` exported to kemi
  - added parameter `xdata` to be able to pass extra data to worker

### tcpops

  - added function `tcp_close_connection([conid])`

### textops

  - added function `remove_hf_idx(hname, idx)`

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

### tsilo

  - added support for lookup and branch creating by contact
  - added function `ts_append_by_contact(table, ruri [, contact])`

### uac

  - new parameter `reg_hash_size` to control better scalability
  - new parameter `reg_use_domain`
  - added `uac_reg_lookup_uri()` - do lookup for user in the uri

### usrloc

  - added `db_clean_tcp` parameter
    - if set, tcp contacts are deleted before loading location table at start time

### xlog

  - added `prefix_mode` parameter
    - allows pv-format specifier in `prefix` parameter

## New in Core

  - support for `time64` `libcs` - using the `lld` format for `time_t`
  - added `#!defenvs` preprocessor directive
    - similar to `#!defenv`, but the value is enclosed in double quotes to
    make it covenient to be used as a string token

### Command Line Arguments

  - logging: `JSON` - add `CEE` schema support
  - new option `j` for json logging to print message in json format
    - if the log message starts with `{` and ends with `}`,
    then it is expected to be a json document, printed as it is in the
    message value, otherwise it is printed as field `text`
  - new option `p` for json logging
    - prefix is printed as it is in the root json, expected to be a list of
    json field starting with comma

### Interpreter

  - accept `IPv4/6` as alternative keywords for `INET/6`

### Parameters

  - added `sip_parser_log_oneline` - log SIP headers with `.` instead of `\r\n`

### Functions

### KEMI

  - added `KSR.pv.geti("pv")`
  - added `KSR.is_WSX()` - return true of proto is `WS` or `WSS`
  - added `to_UDP/TCP/TLS/SCTP/WS/WSS/WSX()` - return true if target is over `UDP/TCP/TLS/SCTP/WS/WSS/WSX`
  - added `KSR.to_IPv4()` and `KSR.to_IPv6()`

### Memory Managers

### Architecture

  - mechanism to execute `child_init()` for special ranks on demand
  - new special rank `PROC_POSTCHILDINIT`, to execute `child_init()` for main
  process only when `ksr_module_set_flag(KSRMOD_FLAG_POSTCHILDINIT)` is
  executed in `mod_init()`

### kamailio.cfg

## Tools

### kamcmd

### kamctl

  - subcommand `tls gen-certs`
    - generate self signed certificate in current directory
  - subcommand `srv modules`
    - list the loaded modules

### kamdbctl

### kamcli
