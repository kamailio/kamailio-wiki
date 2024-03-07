# Kamailio SIP Server - New Features in 5.8.x Version

📘 **Previous version was 5.7.x (released on May 2023), see
what was new in that release at**:

- [New In v5.7.x](new-in-5.7.x.md)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### file_out

Logging from config to a file.

  - https://www.kamailio.org/docs/modules/devel/modules/file_out.html

### gcrypt

Crypto functions for config file.

  - https://www.kamailio.org/docs/modules/devel/modules/gcrypt.html

### influxdbc

Connector to InfluxDB.

  - https://www.kamailio.org/docs/modules/devel/modules/influxdbc.html

### microhttpd

Simple HTTP server implementation.

  - https://www.kamailio.org/docs/modules/devel/modules/microhttpd.html

## Archived Modules

### app_sqlang

  - https://github.com/kamailio/kamailio-archive/tree/main/src/modules/app_sqlang

### auth_identity

  - https://github.com/kamailio/kamailio-archive/tree/main/src/modules/auth_identity

## New in existing Modules

### cdp

  - added support for TLS
  - support for diameter routing agent (DRA) / relay
  - support for re-auth on ro sessions initiated from charging server

### cfgt

  - `skip_unknown` modparam
  - `route_log` modparam

### corex

  - new function via_reply_add_xavp_params()
  - rpc command to print shm status report to file based on filter
  - rpc corex.list_sockets use now lowercase for field names
  - rpc corex.list_aliases use now lowercase for field names

### db_mysql

  - enable TLS when building with `mariadb-connector-c`
  - new module param opt_ssl_ca to configure CA certs

### db_redis

  - added TLS support

### dispatcher

  - option to retain existing latency stats when reloading destinations
  - new function ds_dsg_fetch()
  - new variable $dsg(key) to get attributes of a dispatcher group
  - $dsg(key) - count active/inactive targets in the group

### dmq

  - added function to find dmq node by IP

### dmq_usrloc:

  - copy and send attributes related to contacts

### geoip2

  - added function for distance

### htable

  - rpc command to perform a dmq sync action
  - option to dmq sync a single htable via rpc
  - rpc command to perform a dmq resync action
  - added column packing features

### http_client

  - added parameter timeout_mode (timeout in seconds or milliseconds)

### imc

  - added function to check if a room is active
  - added function to check if a user is member of a chat room

### ims_charging

  - implemented restore of Ro sessions from database
  - enhancements to make module compatible to other charging servers
  - added option to get and use P-Access-Network-Info for terminating scenario

### ims_dialog

  - added support for database backend
  - added function to get dialog by hash entry and id

### ims_ipsec_pcscf

  - add optional AoR argument to ipsec_destroy()
  - new function to destroy IPSec based on Contact and received IP and port
  - add q value to Security-Server header for IPSec
  - options for ipsec_forward() to use Via or try TCP

### ims_qos

  - added suspend_transaction parameter
  - option to use received ip, port and proto from via
  - option to set DLG_MOBILE_ORIGINATING for rx_add_media_component_description_avp()

### ims_registrar_pcscf

  - option to delay record expiration instead of immediate delete

### ipops

  - create container items on demand for `srv` and `naptr` functions

### kex

  - added is_myhost(uri) - check if host part only is local

### ldap

  - option to start even when connecting to server fails

### lost

  - support of shape representations (as in RFC5491) and new 3d parameter

### mqueue

  - support for db_text storage

### msilo

  - new function to allow specifying src/dst addresses
  - modparams for callid and status columns
  - option to store call-id and reuse it on delivery

### nats

  - nats_publish allow reply parameter to be optional

### ndb_redis

  - added TLS support

### p_usrloc

  - added `use_domain_crc32` modparam
  - added `preload` modparam

### pdt

  - added mode parameter to allow ignoring duplicated prefixes

### permissions

  - RPC reload limit controlled via **reload_delta** module parameter

### presence

  - RPC command `publish_cache_sync` to sync from storage

### pv

  - added $viaX(params) to return the parameters part of a Via body
  - via-related variables can return oc parameters
  - added function to serialize xavps with quoted str values
  - PPI and PAI support to $hfl() and $hflc()
  - support for Diversion header in $hfl() and $hflc()

### rabbitmq

  - added amqps support

### registrar

  - added `tcpconn_id` to `xavp_cfg`
  - larger max size for user and domain building AoR

### rtpengine

  - support receiving dtmf events from rtpengine and raise an event
  - added support for codec-accept and codec-consume
  - optional ping parameter for rpc reload command
  - new modparam to disable pinging rtpengines at startup

### sca

  - update rr if necessary for subscriptions

### sdpops

  - added $sdp(c:ip) variable to return connection ip
  - added sdp line interator functions and variables

### secsipid

  - new config function to sign providing private key data

### siptrace

  - added `sip_trace_msg(dst, corlid, vmsg)`

### siputils

  - added tel2sip2() function

### sl

  - added send_reply_error()
  - do not send error reply if message marked with delayed-reply flag

### smsops

  - conversion from UCS-2 to UTF-8 and viceversa

### statsd

  - added support for labels to metrics

### textops

  - new function via_param_rm("name", idx)

### tls

  - support for libssl 3.x
  - added rpc function to kill session by id
  - init in a local thread

### tm

  - new function t_reply_error()

### topoh

  - uses socket IP when no mask_ip is defined

### topos

  - handle early-dialog b-side UPDATE requests routing
  - added support for Call-ID masking when sending to downstream
  - handle NOTIFY during call setup
  - update headers for stateless cancel and non-2xx ack
  - added version_table parameter

### usrloc

  - new parameter to specify reply codes for keepalive handling
  - added keepalive interval to set the step for sending
  - option to randomize when keepalive is sent
  - synchronize attributes from DMQ

### xlog

  - added kemi xlog_facility() function

## New In Core

  - new log macros allowing to use local log levels per module
  - TCP_USER_TIMEOUT option on listening socket
  - macros to specify position params for shm allocation
  - config parser extended with xavp_via_reply_params parameter
  - new internal message flag FL_ADD_XAVP_VIA_REPLY_PARAMS
  - ability to add parameters to top via of generated sip replies
  - add via reply xavp params for generation when using another reply
  - xavp - helper function to set style when serializing
  - internal msg flags switched to 64b
  - parameter for increasing socket send buffer size
  - xavp - option to quote string values when serializing
  - kemi - parameter for request route callback function name
  - added proto field to advertise listen structure
  - tcp - set limit for reading a message
  - tcp - close connection without data traffic at all
  - tcp - exclude crlf ping from data exchange state
  - tcp - limit number of accepted connections per src ip
  - added msg_recv_max_size global parameter
  - added tcp_msg_read_timeout parameter
  - added tcp_check_timer parameter
  - added tcp_msg_data_timeout parameter
  - added tcp_accept_iplimit parameter
  - use advertised proto to build advertised sock string
  - via builder can use proto from xavp fields or advertised address
  - set atexit to default to `no`
  - added core parameter mem_add_size
  - xavp - serialize long long values
  - parser extended to handle diversion with multiple bodies
  - keep listen socket even if advertise address does not resolve
  - added internal API functions to run functions in threads
  - added tls_threads_mode global parameter

### Command Line Arguments

### Memory Managers

  - alignment to 16 bytes for `q_malloc (qm)` and `f_malloc (fm)`
  - internal malloc optimization factor increased to 15
  - archived incomplete memory managers
  - api function to print status with filter

### Architecture

### kamailio.cfg

## Tools

### kamcmd

  - Makefile - CUSTOM_NAME for specifying custom binary name

### kamctl

  - added support for deleting a gateway or full setid in dispatcher

### kamdbctl

### kamcli

### others

- `route_graph.py` script updated to python version 3.x
