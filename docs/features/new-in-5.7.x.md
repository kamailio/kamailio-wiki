# Kamailio SIP Server - New Features in 5.7.x Version

📘 **Previous version was 5.6.x (released on May 2022), see
what was new in that release at**:

  -  [New In v5.6.x](new-in-5.6.x.md)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### app_python3s ###

### app_ruby_proc ###

### math ###

### tls_wolfssl ###

## New in existing Modules

### app_jsdt ###

  * updated duktape interpreter

### app_perl ###

  * added modparam to control behaviour on perl_parse() code
  * new parameter to set warn flag for perl parse

### app_sqlang ###

  * updated squirrel interpreter

### async ###

  * catch up on possible skipped slots due to slow tasks

### auth ###

  * added flag for not invalidating nc on auth failure
  * exported proxy_challenge() to kemi
  * exported www_challenge() to kemi
  * exported auth_get_www_authenticate() to kemi

### auth_db ###

  * exported www_authenticate_method() to kemi

### carrierroute ###
  * exported cr_load_next_domain(), cr_route() and cr_nofallback_route() to kemi

### cdp ###

  * added SCTP support

## ctl ###

  * support for rpc commands that have execution limit with delta interval

### dialog ###

  * added dlg_get_var(ci, ft, tt, key, dst_var) function
  * added dlg_set_var(callid, ft, tt, key, value) function
  * added modparam dlg_ctxiuid_mode to control when iuid is set
  * api function to get the status if dlg var is set or not
  * dlg_get_var() support early dialogs

### dmq_usrloc ###

  * added option to replicate socket via its name

### evapi ###

  * wait when idle made a modparam
  * use internal workers to handle client messages
  * support for adaptive wait on idle to spare cpu when not busy
  * wait increase limit made modparam
  * if workers is 0, execute callback by evapi receiver

### geoip2 ###

  * new parameter to register result id to get pv work in kemi

### imc ###

  * added support to modify member role
  * added db_mode support (memory or database records)
  * propagate content-type header

### ims_ipsec_pcscf ###

  * option to use dst address for tunnel search
  * option to search ipsec tunnel by new r-uri
  * option to skip use of alias for pcontact received details
  * option to skip resetting the dst uri in ipsec_forward()
  * ipsec_forward() option to use UE client port for requests over TCP
  * option for ipsec_forward() to set trasport for tcp dst uri

### ims_usrloc_pcscf ###

  * expires_grace parameter
  * implementation of db_mode DB_ONLY

### ipops ###

  * create dns container also for dns_update_pv()

### jansson ###

  * added jansson_pv_get(...)

### jsonrpcs ###

  * support for rpc commands that have execution limit with delta interval
  * protocol extended to allow storing response in a file
  * support for tcp transport
  * added tcp_socket parameter

### jwt ###

  * added function to verify with key value given as parameter

### lost ###

  * URI list support in LoST response (filter for sip/sips scheme)
  * additions to via path element

### lrkproxy ###

  * TURN support, behind_nat support, subset of range ports

### mqtt ###

  * added tls_alpn module option

### nats ###

  * nats:connected event_route triggered on a successful connect
  * added KEMI publish function and event_callback param
  * add a reply param to nats_publish()
  * expose nats_publish_request() to KEMI

### pipelimit ###

  * added rpc command pl.rm_pipe
  * new rpc command pl.reset_pipe - reset associated values

### presence ###

  * added rpc command presence.presentity_show
  * added presence.watcher_list rpc command

### presence_reginfo ###

  * added option for aggregating presentities

### pua_dialoginfo ###

  * added refresh_pubruri_avps_flag parameter
  * added local_identity_dlg_var parameter

### pv ###

  * config function to shift xavps to left with rotation
  * added $shvinc(name) - return incremented value of $shv(inc)
  * kemi function to get $shvinc(name) value
  * added xavp_push_dst(xname) function
  * added monotonic clock to TimeVal pseudovariable

### registrar ###

  * kemi functions to get $ulc(...) attributes
  * added lookup_xavp("ultable", "uri", "rxname", "cxname")
  * added reg_from_user(ultable, uri, mode) function

### rtpengine ###

  * added receive-from option
  * allow to-tag usage for all commands
  * SDES-nonew and SDES-pad flags

### secfilter ###

  * new parameter reload_delta
  * new parameter cleanup_interval

### secsipid ###

  * support for multiple Identity headers

### sipt ###

  * isup generic_number and generic_number_nai decoding

### siptrace ###

  * trace in-dialog ACK and dialog spirals
  * option to use socket name for hep mirroring

### siputils ###

  * added e164_max_len modparam

### stats ###

  * use unsigned long long (J) for printing timestamp to rpc result

### stirshaken ###

  * handle intermediary/chain certificates when caching certificates

### textops ###

  * new function to check if a character in a list is found in string

### tls ###

  * support serial numbers that exceed uint64
  * add timestamp and sni info for a session
  * support for configuration option TLSv1.3 and TLSv1.3+
  * option to wrap memory management operations within pthread lock
  * new init_mode parameter
  * option to use openssl api for fork prepare

### topoh ###

  * modparam to control header masking
  * added inter-module api function for masking call-id
  * added mod param use_mode

### topos ###

  * skip adding contact header for BYE, CANCEL, PRACK
  *  added methods_nocontact parameter
  * skip inserting contact header for 4xx replies
  * new parameter to allow specifying initial request methods to skip topos
  * option to disable multiple comma separated values in One Single Via, Record-Route or Route header
  * detect known headers provided with variable for $hfl(...) and $hflc(...)
  * handle initial dialog UPDATE requests from downstream

### topos_redis ###

  * use tag based on direction for early dialog transaction record loading
  * new param to control the verbosity of some log messages

### tm ###

  * new param to specify reply codes for dns srv failover
  * new function t_exists()

### uac ###

  * check new callid value for setting $uac_req() field

### userblocklist ###

  * added RPC commands

### xmlrpc ###

  * support for rpc commands that have execution limit with delta interval

## New in Core

  * xavp - helper function to shift xavps to left with rotation
  * add an option to trigger also an RST on tcp connection close
  * function to get socket info by listen or advertise
  * new socket global parameter to set listen attributes with a structure style
  * stop at the first config error on startup
  * added domain and auto_domains as variants for alias and auto_aliases
  * pv buffers made available for cli params
  * support SHA-512/256 for RFCs 8760/7616
  * set pmtu_discovery core parameter for IPv6
  * add pmtu_discovery=2 for IPv4 and IPv6 - set IP_PMTUDISC_WANT/IPV6_PMTUDISC_WANT
  * aliased dns_use_cache to use_dns_cache
  * aliased dns_use_failover to use_dns_failover
  * aliased dns_rev_via to rev_dns
  * added parser mode check
  * support for loadmodule("path") and loadmodules("path")
  * support to specify options for load module
  * define KAMAILIO_VERSION with VERSION number value
  * define OS_NAME at startup
  * added simple expression evaluations with strings and numbers
  * added preprocessor directive #!ifexp stm
  * print address family for rpc core.sockets_list
  * added #!defexp ID STM preprocessor directive
  * added #!defexps preprocessor directive
  * pv - field for int value switched to long
  * new global parameter return_mode
  * kemi - function to get/set pv with long value
  * kemi - added generic function to execute a kemi export with any kind of parameters
  * added CodeQL workflow for GitHub code scanning
  * rpc - support for executing commands with a delta interval limit
  * new parameter rpc_exec_delta to set rpc command delta interval execution
  * new rpc command core.echo_delta

### kamailio.cfg

  * use of htable guarded by own ifdef

## Tools

### kamctl

  * allow the definition of a specific startup file
  * option to set store path for rpc commands

### kamcli

  * support for tcp transport for RPC commands
  * cmd_pipelimit: command to reset the pipe
  * cmd_pstrap: option to print ps line for each pid
  * cmd_trap: option to print system ps for each pid from rpc ps result
  * cmd_trap: option to skip rpc command to get the list of processes
  * cmd_jsonrpc: use shorter alias command in help message
  * cli option to set store path for rpc commands
  * cmd_srv: reimplemented cmd runinfo to execute rpc core.runinfo
  * cmd_htable: added commands for rpc setxs and setxi
  * aliased acl to command group
  * cmd_speedial: added cli options to set fname and lname
  * kamcli.ini: added mt command alias to mtree
  * cmd_acc: no limit condition for cdrs list
  * cmd_acc: list prints all acc records if --limit=0
  * cmd_acc: added rates-generate command
  * cmd_acc: added rates-proc-create command
  * cmd_acc: added rates-rm command
  * cmd_acc: added rates-add command
  * cmd_acc: added cdrs-list command
  * cmd_acc: added cdrs-generate command
  * cmd_db: added create-table-like command
  * cmd_db: updates to grant and revoke commands