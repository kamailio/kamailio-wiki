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

### app_sqlang ###

  * updated squirrel interpreter

### auth ###

  * added flag for not invalidating nc on auth failure

### dialog ###

  * added dlg_get_var(ci, ft, tt, key, dst_var) function
  * added dlg_set_var(callid, ft, tt, key, value) function

### ims_ipsec_pcscf ###

  * option to use dst address for tunnel search
  * option to search ipsec tunnel by new r-uri
  * option to skip use of alias for pcontact received details
  * option to skip resetting the dst uri in ipsec_forward()
  * ipsec_forward() option to use UE client port for requests over TCP
  * option for ipsec_forward() to set trasport for tcp dst uri

### ipops ###

  * create dns container also for dns_update_pv()

### lost ###

  * URI list support in LoST response (filter for sip/sips scheme)

### nats ###

  * nats:connected event_route triggered on a successful connect
  * added KEMI publish function and event_callback param

### pua_dialoginfo ###

  * added refresh_pubruri_avps_flag parameter
  * added local_identity_dlg_var parameter

### pv ###

  * config function to shift xavps to left with rotation
  * added $shvinc(name) - return incremented value of $shv(inc)
  * kemi function to get $shvinc(name) value
  * added xavp_push_dst(xname) function

### registrar ###

  * kemi functions to get $ulc(...) attributes
  * added lookup_xavp("ultable", "uri", "rxname", "cxname")
  * added reg_from_user(ultable, uri, mode) function

### siputils ###

  * added e164_max_len modparam

### tls ###

  * support serial numbers that exceed uint64

### topos ###

  * skip adding contact header for BYE, CANCEL, PRACK
  *  added methods_nocontact parameter
  * skip inserting contact header for 4xx replies
  * new parameter to allow specifying initial request methods to skip topos

### topos_redis ###

  * use tag based on direction for early dialog transaction record loading
  * new param to control the verbosity of some log messages

### tm ###

  * new param to specify reply codes for dns srv failover

### uac ###

  * check new callid value for setting $uac_req() field

### userblocklist ###

  * added RPC commands

## New in Core

  * xavp - helper function to shift xavps to left with rotation
  * add an option to trigger also an RST on tcp connection close
  * function to get socket info by listen or advertise
  * new socket global parameter to set listen attributes with a structure style
  * stop at the first config error on startup
  * added domain and auto_domains as variants for alias and auto_aliases
  * pv buffers made available for cli params

### Command line arguments

### Interpreter

### Parameters

### Functions

### Memory Managers

### Architecture

### kamailio.cfg

  * use of htable guarded by own ifdef

## Tools

### kamcmd

### kamctl

### kamdbctl

### kamcli
