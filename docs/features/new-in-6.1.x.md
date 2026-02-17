# Kamailio SIP Server - New Features in 6.1.x Version

**Previous version was 6.0.x (released on Jan 2025), see
what was new in that release at**:

- <https://www.kamailio.org/wikidocs/features/new-in-6.0.x/>

*This is a draft of new features added in devel version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### auth_arnacon

- https://www.kamailio.org/docs/modules/devel/modules/auth_arnacon.html

### auth_web3

- https://www.kamailio.org/docs/modules/devel/modules/auth_web3.html

### peerstate

- https://www.kamailio.org/docs/modules/devel/modules/peerstate.html

### ptimer

- https://www.kamailio.org/docs/modules/devel/modules/ptimer.html

## New in existing Modules

### acc

- microsecond precision for cdr

### acc_json

- added `cdr_skip` parameter

### app_jsdt

- added dynamic buffer sizing to load bigger .js files

### app_python3s

- added `threads_mode` parameter

### auth

- added support for password hashing with `SHA512`
- added support for `sha-512-256` hashing

### cdp

- **vrf** optional attribute on Acceptor and Peer definitions allowing [Virtual Routing and Forwarding](https://docs.kernel.org/networking/vrf.html) to be used in that socket.
- added support for `Min-Requested-Bandwidth-[DU]L` AVPs

### cfgutils

- **lock** family functions got another optional key parameter to
  generate the hash id. See [#3808](https://github.com/kamailio/kamailio/pull/3808)
  or [cfgutils docs](https://www.kamailio.org/docs/modules/devel/modules/cfgutils.html)
  for details

### corex

- functions for managing via-body flags
- added function `msg_vbflag_parse()`
- extended list for iflag functions for msg apply changes
- new function `add_tcp_alias()` as alternative for `force_tcp_alias()`

### db_redis

- added auto expiry support with hashes
- added sentinel support
- added support of `max_key_length`

### dialog

- added `dlg_refer_cid(...)` - send refer within a dialog matched by call-id

### dispatcher

- added ping socket configuration
- new modparam `ds_ping_fr_timeout`
- added `ds_mark_addr(state, group, uri)`
- `$dsv(name)` extended to return setid and uri
- new dispatching algorithm `14` (round-robin or serial)
- added parameter `event_callback_mode`
- added internal uid filed for destination structure and print it over rpc
- option to manage destination states via internal uid
- support for hexadecimal flags format in the list file
- support for fields in ds_db_extra_attrs

### dmq

- added `remove_inactive` parameter

### dmq_usrloc

- new modparam to sync `UL_CONTACT_EXPIRE` actions
- new modparam for `cflags` replication

### file_out

- added `require_rotation` option
- added rotation on timer

### htable

- support for 32bit and 64bit integer keys
- exported config functions for inc, dec and is_null
- more KEMI specific functions

### json

- new transformation `{json.parsex,path}`

### kex

- added `KDMQ` to request statistic
- added stats for `OPTIONS` replies

### mtree

- added `item` parameter (add items to tree via modparam)
- added `mode` attribute for mtree definition

### nathelper

- modparam to not send ping to Path

### outbound

- encode bind address into flow token as destination
- added `check_flow_token()` function

### pdb

- add new RPC command to view/change PDB query timeout

### permissions

- **allow_register_include_port()**, the permissions module got a new function, which extends
  a functionality for checking contacts (locations) allowed to be registered.
  With a newer function one has a possibility to include Contact URI port into this check.
  See [#3846](https://github.com/kamailio/kamailio/pull/3846)
  or [permissions docs](https://www.kamailio.org/docs/modules/devel/modules/permissions.html)
  for details.
- option to find the longest matching subnet - `subnet_match_mode` param
- support for integer peer_tag

### pua_dialoginfo

- **use_uuid** optional parameter to generate pres_id using libuuid via uuid module

### pua_json

- add support for `as-feature-event`

### pv

- new transformation `{uri.rmparam,name}`
- added functions to remove all root xavp/xavi items
- added `$tts` variable
- new transformation `{num.name}`
- new transformation `{s.selectws,idx}` - select with whitespaces delimiter
- new transformation `{s.sha1}`
- new transformation `{s.intv}`
- added `{s.crc32}` transformation
- added `sha3/keccak` transformations

### pv_headers

- added remove all headers function

### rabbitmq

- kamailio init will not fail if rabbitmq connection doesn't work. The module will try to reconnect
  when **rabbitmq_publish()** or **rabbitmq_publish_consume()** are called in the config.

### rr

- `loose_route_mode()` - added vmode bit 2 to skip outbound
- added `loose_route_mode` modparam

### rtpengine

- added internal hash table dmq replication
- added support for commands needed for `siprec`
- added `rtpengine_connect(...)` function

### sca

- **from_uri_avp** **to_uri_avp** module parameters adding the possibility of define what is the URI value
  for To and/or From instead of the values coming from the SIP message.

### secfilter

- added RPC `secfilter.del_wl` command

### sipdump

- added mod param `wait_mode`
- new parameter `fagex` to provide file age with time expression

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

- `contact_param_encode_alias()` - function to encode contact with alias

### sl

- stats for 1xx replies

### tcpops

- `tcp_con_alive()`- function to check if a connection is alive by remote `addr:port`
- `tcp_con_alive()` - support also for SIP URI parameter

### textops

- added `str_all_in()` function
- added `set_body_hex(hbody, ctype)`
- added `set_rpl_body_hex(...)`

### tls

- added `provider_quirks` parameter
- added support for tls keys log - `keylog_mode` and `keylog_file` parameters
- support to send keys log to a udp peer
- added option to filter key logging - `keylog_mode` modparam

### tm

- new modparam `delayed_reply`
- rpc commands for sending requests without automatic ACK
- `tm.retransmit_reply` rpc command
- rpc command `tm.retransmit_reply_callid`
- invoke event route `tm:local-request` on generated ACK messages
- run event `tm:local_request` for CANCEL if locally initiated
- added module parameter `evlreq_mode`
- rpc commands with hexa-encoded body
- added rpc command `tm.t_uac_attrs`
- added `t_relay_to_proxy("proto:addr:port")`
- trigger `tm:local-request` event for ACK on negative replies
- new parameter `local_ack_branch_mode` to control via branch value for local ACK
- added `event_route[tm:local-ack-sent]`
- added `evcb_local_ack_sent` parameter
- option to create a completely new branch for local 200ok-ack
- per uac/branch via-body flags field
- added `t_msg_apply_changes()` function
- setting for disabling auto ack generation

### tmx

- functions for management of t-uac via-body flags
- added function to generate ack locally in config

### topoh

- added `$th(ecallid)` - return encoded call id

### topos

- added `contact_mode=3` and 2 new modparam for contact host domains
- added new modparam for updating record time on re-INVITE

### uac

- added `fr_timeout` and `fr_inv_timeout` for locally generated requests
- added `ftag` and `ttag` fields for `$uac_req(...)`

## Archived Modules

modules considered obsolete and not maintained have been moved to
<https://github.com/kamailio/kamailio-archive/>

- app_java
- db_berkeley
- db_perlvdb

## New in Core

- VRF [Virtual Routing and Forwarding](https://docs.kernel.org/networking/vrf.html) support in socket definition
- `ksrxrand` - framework to set custom rand/srand functions
- `coreparam[name]` - generic core parameter definition
- new `coreparam[random_engine]` to control rand api
- added option `o` for `loadmodule`
- allow `route(...)` usage inside `onsend_route` block
- support tls connection domain matching
- added `$defv(name)` variable
- added `$defs(name)` return defined value as string between double quotes
- added multiarch support for rpm generation
- option for tls multi-threading processing
- dns cache - added rm delay of entries with high refcnt
- support for modparam int stored in shared memory
- rpc command `modparam.getn` to get the value of an integer modparam
- rpc command `modparam.setn` to set integer modparam stored in shared memory
- rpc command `modparam.list` to list all modules parameters
- rpc command `modparam.gets` to get the string value of a module parameter
- added `coreparam[timer_sanity_check]`
- fixup helpers for numbers support hexadecimal format
- added `coreparam[iuid]` to set a string instance unique id
- added `$iuid` variable - return the instance unique id value
- `log_prefix_mode` value `2` to use faked request for non-sip logging
- parameter to add extra value to via branch
- use process shared pthread mutexes for arm64
- use stdatomic for arm64
- added sha3 implementation
- msg parser - field for via-body flags
- srjson - array pretty-printing similar to structure alignment

### Command line arguments

- `--domain=val` - match the config parameter as alternative to alias
- `--iuid=val` - set instance unique id via cli parameter

### Interpreter

### Parameters

- `msg_apply_changes_mode` - control if message changes are applied before transaction is created
- `msg_clone_extra_size` - specify extra size in bytes to be allocated for message buffer when cloning it
- `tcp_listen_backlog` - allows to set the value for tcp listen backlog
- `tcp_main_threads` - control the tcp main process working threads
- `tls_connection_match_domain` - tls connection domain matching
- `coreparam[name]=value` - generic core parameter definition

### Packaging

- added alma-10 and rocky-10 packaging
- added arm64 packaging for Debian/Ubuntu

### kamailio.cfg

- define option to relay RTP always

## Tools

### kamcmd

- basic support for JSONRPC
- buffer size for JSONRPC response made cli option

### kamctl

- added options to kamctlrc to set db cli and params

### kamdbctl

### kamcli
