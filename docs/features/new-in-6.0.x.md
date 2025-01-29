# Kamailio SIP Server - New Features in Devel Version

**Current devel version will be numbered 6.0.0 and it is planned to be
released in late 2024 or early 2025**.

**Previous devel, current stable, version was 5.8.x (released during the spring of 2024), see what was new in that release at:**

- <https://www.kamailio.org/wikidocs/features/new-in-5.8.x/>

*This is a draft of new features added in devel version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## Overview

The increment of the first version number reflects several important updates,
among them: multi-threaded option for UDP receiving, option for specifying a range
of ports to listen to, support for expressions with variables for most of the module
functions parameters, support to use `cmake` to compile and install Kamailio.

## New Modules

### ims_qos_npn

* enhanced version of IMS QoS implementatio
* [https://www.kamailio.org/docs/modules/devel/modules/ims_qos_npn.html](https://www.kamailio.org/docs/modules/devel/modules/ims_qos_npn.html)

### nghttp2

* HTTP2 server module implementation
* [https://www.kamailio.org/docs/modules/devel/modules/nghttp2.html](https://www.kamailio.org/docs/modules/devel/modules/nghttp2.html)

### presence_dfks

* presence support for Device FeatureKey Synchronization
* [https://www.kamailio.org/docs/modules/devel/modules/presence_dfks.html](https://www.kamailio.org/docs/modules/devel/modules/presence_dfks.html)

### pvtpl

* evaluation of template files with config variables
* [https://www.kamailio.org/docs/modules/devel/modules/pvtpl.html](https://www.kamailio.org/docs/modules/devel/modules/pvtpl.html)

### topos_htable

* htable storage for topology stripping (topos) module
* [https://www.kamailio.org/docs/modules/devel/modules/topos_htable.html](https://www.kamailio.org/docs/modules/devel/modules/topos_htable.html)ß

## New In Existing Modules

### app_python3

- initial support for free-threading Python
- removed of legacy modules

### app_python3s

- initial support for free-threading Python

### async

- exported async_tkv_emit() function
- added parameter mode

### auth

- new function auth_algorithm(...) to dynamically override algorithm

### cfgutils

- **lock** family functions got another optional key parameter to
  generate the hash id. See [#3808](https://github.com/kamailio/kamailio/pull/3808)
  or [cfgutils docs](https://www.kamailio.org/docs/modules/devel/modules/cfgutils.html)
  for details

### corex

- added dns_file modparam
- functions to manage iflags can get 0..63 parameter value
- new function forward_uac()
- added forward_uac_uri(vuri) function
- added $atkv(name) variable

### db_sqlite

- added busy timeout param to improve concurrency

### dialog

- dropped support for dlg_flag parameter
- added dlg_mode parameter
- new function dlg_set_state(newstate) - set the state for a dialog
- added dlg_update_state() function

### dispatcher

- algorithm DS_ALG_OVERLOAD set to 64 to be able to used as a flag
- new set of attributes for overload control (oc)-based routing (RFC7339)
- new flag 32 to not send ping to destination
- new rpc command dispatcher.oclist
- more fields to $dsg(...) related to overload control
- function to fetch by group id and uri

### gcrypt

- exported api for aes128 functions

### htable

- added `ew` (end-with) operator for delete items functions
- added `in` operator for rm functions

### http_client

- function to do http request with method parameter
- new function http_client_request_v2pk(...)
- option to store http response headers
- added variable $httprhdr(name) - get response header value
- added http_client_response_headers_set(mode)
- added http_client_response_headers_clear()

### ims_auth

- added Milenage, AES-128 (Rijndael) and auth_vector local generation
- new av_mode parameter
- function to set ims auth data

### ims_qos

- added trust_bottom_via parameter

### ims_ipsec_pcscf

- improved TLS support in ipsec_forward()
- use the function with ports range for listen sockets

### ims_registrar_pcscf

- added trust_bottom_via parameter
- added ignore_contact_rxproto_check

### ims_usrloc_pcscf

- made matching of username in contact conditional

### ipops

- added PTR query support

### kafka

- added modparam init_without_kafka
- added modparam log_without_overflow
- added modparam metadata_timeout
- exported statistics for total/err messages
- added interceptor for broker state

### kex

- expose access to pkg stats

### msrp

- added forward support with path replacement

### p_usrloc

- added update/delete based on uniq

### pdb

- made 'timeout' runtime configurable

### permissions

- **allow_register_include_port()**, the permissions module got a new function, which extends
  a functionality for checking contacts (locations) allowed to be registered.
  With a newer function one has a possibility to include Contact URI port into this check.
  See [#3846](https://github.com/kamailio/kamailio/pull/3846)
  or [permissions docs](https://www.kamailio.org/docs/modules/devel/modules/permissions.html)
  for details.

### phonenum

- added `natnum` property, containing the nationally formatted number, to pv

### presence:

- continue on one notify sending failure

### pua

- support as-feature-event

### pua_dialoginfo

- **use_uuid** optional parameter to generate pres_id using libuuid via uuid module

### pv

- `$K(IP4)` and `$K(IP6)` - support SDP style for address family
- transformation to escape/unescape `cr` `lf`
- added `$sdp(m0:raw)` - get all lines of the first m= stream
- aliased `$sdp(raw)` to `$sdp(body)`
- added `$sdp(m0:b:AS)`, `$sdp(m0:b:RR)` and `$sdp(m0:b:RS)`
- added `$ctu` - return contact header uri
- added `$cts` - contact header star status
- new transformation `{s.rmhdws}`
- new transformation `{s.rmhlws}`
- support all spaces separator for `{s.select}`
- added `xavp_xparams_explode(params, sep, xname)`
- new variables for common escaped characters
- several new `$E...` variables for punctuation signs

### rabbitmq

- kamailio init will not fail if rabbitmq connection doesn't work. The module will try to reconnect
  when **rabbitmq_publish()** or **rabbitmq_publish_consume()** are called in the config.

### rtpengine

- added flags processing on the daemon side
- added param write_sdp_pv_mode
- add "active" field to rtpengine.show as alternate of "disabled"
- disable aggressive redetection by default
- added timer to ping rtpengine instances
- export subscribe operation functions

### sca

- **from_uri_avp** **to_uri_avp** module parameters adding the possibility of define what is the URI value
  for To and/or From instead of the values coming from the SIP message.
- added contact_fallback parameter

### sdpops

- added $sdp(m0:rtp:port) - port of first media stream
- added $sdp(o:ip) - origin ip
- added $sdp(m0:rtcp:port) - rtcp port of first media stream
- added $sdp(c:af) - address family of first media connection
- function to parse path for sdp content

### secsipid

- new function to verify identity value with options

### siptrace

- use advertise address if set for trace mode 1 callbacks
- added parameter data_mode

### siputils

- **sip_p_charging_vector()** Once a new PCV has been generated by 'g' or 'f' the PCV cannot be changed
  again.
  The icid-generated-at parameter of a generated PCV will now be set to the sending interface IP address
  The function now returns a status value about what was done.

- **$pcv(status)** New pseudo-variable parameter. Returns whether the PCV header was successfully parsed,
  deleted, newly generated or other.
  See [#3929](https://github.com/kamailio/kamailio/pull/3846)
  or [siputils](https://www.kamailio.org/docs/modules/devel/modules/siputils.html)
  for details.

- added function is_sip()
- added is_http() function
- added function to trigger parsing all SIP headers

### sqlops

- added log_buf_size param for logging raw queries
- new connect mode to limit the amount of connections

### tcpops

- new variables to get active connection attributes
  - $tcp(aconid), $tcp(ac_si), $tcp(ac_sp)

### textops

- new function subst_v(...)

### textopsx

- added msg_changed_route(rname)

### tls

- OpenSSL 3 support of provider keys (replaces ENGINE)
- new option to set the password for private key
- added key_password_mode modparam

### tm

- added cseq number field to uac_req structure
- compile define E2E_CANCEL_HOP_BY_HOP turned into modparam e2e_cancel_hop_by_hop
- new parameter headers_mode
- emit event route on cancel
- new function t_cell_append_branches(tindex, tlabel)
- made configurable the code and reason for generating timeout response
  * reply_408_code and reply_408_reason params

### tsilo

- added ts_append_branches(uri)

### uac

- added reload_delta parameter
- added field for cseq number for $uac_req(...)
- exported two new functions for remote UAC registering/unregistering and rpc for registering

### xhttp_prom

- export pkg stats
- new uptime statistics
- new xhttp_prom_tags parameter

### xlog

- evaluate prefix for kemi functions

## Archived Modules

Modules considered obsolete and not maintained have been moved to:

- [https://github.com/kamailio/kamailio-archive/](https://github.com/kamailio/kamailio-archive/)

The list of archived modules:

- auth_identity
- app_lua_sr
- app_sqlang
- app_mono
- db_cassandra
- osp
- print
- print_lib

Should one still be needed, it can be copied in `src/modules/` folder and then
compiled and installed as usual, provided it was still compiling it the previous
series 5.8.x.

## New in Core

- select - support for ws and wss inside select_ip_port()
- fixup helpers for functions with strings and output variable params
- dprint - include time in stderr json log
- new udp receiver mode - one multi-threaded  process
- cfg socket struct - option to bind to a range of sockets
- fixup - many new helper functions
- improved URN parsing according to RFC8141
- new internal flags to skip adding received/rport in incoming via
- added support for socket names as command line parameter
- added possibility to set the structured log function
- option to skip auto-bind on ipv6 local link
- socket - added agname field to bind structure
- added agname to sockets list rpc command output
- udp - option to group multithreaded receivers by group
- allow '/' in database URL passwords
- added other 4xx reply error count stats
- replaced INT_PARAM => PARAM_INT
- added fixup-free functions to many exported functions by modules
- this enable using variables for their parameters
- added event_route[core:modinit-before]
- main - async framework to execute type-key-value events
- tcp - emit async type-key-value event for read error
- added SPDX identifiers to code files
- parameter to set async_tkv_evcb

### Command line arguments

### Interpreter

### Parameters

* new core parameter `udp_receiver_mode` - turn UDP receiving to multi-threading
for all listen sockets
* added `agname` field to bind structure - per socket option to do UDP multi-threading
receiving
* new core parameter `async_tkv_gname` - specify the async group to process
`type-key-value` events
* new core parameter `async_tkv_evcb` - name of event route or kemi callback for
`type-key-valye` processing

### Functions

### Memory Managers

### Architecture

- CMake compilation and installation support
- multi-threaded UDP receiving mode
- several shared memory structures no longer destroyed individually at shut down

### kamailio.cfg

- load `dlgs` module to get dialog stats via rpc
- example for `udp_reciever_mode` parameter
- do record route for `REFER`
- added `tcp_accept_iplimit` config example
- set `tls_threads_mode` to 2

## Tools

### kamcmd

* support to compile and install with cmake

### kamctl

|* host/port configurable for root user connections

### kamdbctl

### kamcli

* support for tcp transport for jsonrpc
* cmd_pipelimit: command to reset the pipe
* cmd_acc: provide rate_group parameter for rates generate command
* cmd_acc: added command to list missed calls records
* cmd_acc: added command to print acc reports
* cmd_acc: added report for top destinations and original destinations
* cmd_acc: new command method-stats to print sip methods statistics
