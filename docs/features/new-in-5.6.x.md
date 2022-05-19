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

### debugger

  - added `cfgtrace_format` parameter
    - control what is printed in the cfgtrace log message (e.g., do not print config file path)

### dispatcher

  - options to control better when the dns query should be done
  - added ds_is_active(group [, uri])
    - check if any or a specific uri in a group is active

### ims_ipsec_pcscf

  - more algorithms, SA improvements

### kemix

  - added functions `KSR.kx.ifdef()` and `KSR.kx.ifndef()`

### lcr

  - source port check for `from_any_gw()` and `from_gw()`
  - updated kemi exports with new functions having port parameter

### ldap

  - several functions exported to kemi framework

### mqueue

  - added parameters `mqueue_name` and `mqueue_size` to define queues

### nathelper

  - optional parameter mode for `handle_ruri_alias()`
  - new nat test (`512`) based on target address

### outbound

  - add flow_token_secret param

### pua_json

  - exported `KSR.pua_json.publish()`

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

### tcpops

  - added function `tcp_close_connection([conid])`

### textops

  - added `remove_hf_idx(hname, idx)`

### textopsx

  - added functions and variables to iterate headers list
    - iterate through headers, access values via `$hfitname(iname)` and `$hfitname(ibody)`
  - headers iterator functions exported to kemi
  - added body lines iterator functions
    - iterate through lines of message body, get the value via `$blitval(iname)`
  - body lines iterator functions exported to kemi

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

### Command Line Arguments

  - logging: `JSON` - add `CEE` schema support

### Interpreter

  - accept `IPv4/6` as alternative keywords for `INET/6`

### Parameters

### Functions

### KEMI

  - added `KSR.pv.geti("pv")`
  - added `KSR.is_WSX()` - return true of proto is `WS` or `WSS`
  - added `to_UDP/TCP/TLS/SCTP/WS/WSS/WSX()` - return true if target is over `UDP/TCP/TLS/SCTP/WS/WSS/WSX`
  - added `KSR.to_IPv4()` and `KSR.to_IPv6()`

### Memory Managers

### Architecture

### kamailio.cfg

## Tools

### kamcmd

### kamctl

### kamdbctl

### kamcli
