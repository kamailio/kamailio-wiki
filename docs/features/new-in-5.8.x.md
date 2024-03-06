# Kamailio SIP Server - New Features in 5.8.x Version

📘 **Previous version was 5.7.x (released on May 2023), see
what was new in that release at**:

- [New In v5.7.x](new-in-5.7.x.md)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### file_out

  - https://www.kamailio.org/docs/modules/devel/modules/file_out.html

### influxdbc

  - https://www.kamailio.org/docs/modules/devel/modules/influxdbc.html

### microhttpd

  - https://www.kamailio.org/docs/modules/devel/modules/microhttpd.html

## Archived Modules

### app_sqlang

  - https://github.com/kamailio/kamailio-archive/tree/main/src/modules/app_sqlang

### auth_identity

  - https://github.com/kamailio/kamailio-archive/tree/main/src/modules/auth_identity

## New in existing Modules

### cfgt

  - `skip_unknown` modparam
  - `route_log` modparam

### corex

  - new function via_reply_add_xavp_params()

### db_redis

  - added TLS support

### dispatcher

  - option to retain existing latency stats when reloading destinations
  - new function ds_dsg_fetch()
  - new variable $dsg(key) to get attributes of a dispatcher group
  - $dsg(key) - count active/inactive targets in the group

### geoip2

  - added function for distance

### htable

  - rpc command to perform a dmq sync action
  - option to dmq sync a single htable via rpc
  - rpc command to perform a dmq resync action

### imc

  - added function to check if a room is active
  - added function to check if a user is member of a chat room

### ipops

  - create container items on demand for `srv` and `naptr` functions

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

### permissions

  - RPC reload limit controlled via **reload_delta** module parameter

### presence

  - RPC command `publish_cache_sync` to sync from storage

### pv

  - added $viaX(params) to return the parameters part of a Via body
  - via-related variables can retun oc parameters

### rabbitmq

  - added amqps support

### registrar

  - added `tcpconn_id` to `xavp_cfg`
  - larger max size for user and domain building AoR

### rtpengine

  - support receiving dtmf events from rtpengine and raise an event

### siptrace

- added `sip_trace_msg(dst, corlid, vmsg)`

### smsops

  - conversion from UCS-2 to UTF-8 and viceversa

### tls

  - support for libssl 3.x
  - added rpc function to kill session by id

### topos

- handle early-dialog b-side UPDATE requests routing
- added support for Call-ID masking when sending to downstream

## New In Core

  - new log macros allowing to use local log levels per module
  - TCP_USER_TIMEOUT option on listening socket
  - macros to specify position params for shm allocation
  - config parser extended with xavp_via_reply_params parameter
  - new internal message flag FL_ADD_XAVP_VIA_REPLY_PARAMS
  - ability to add parameters to top via of generated sip replies
  - add via reply xavp params for generation when using another reply
  - xavp - helper function to set style when serializing

### Command Line Arguments

### Interpreter

### Parameters

### Functions

### Memory Managers

  - alignment to 16 bytes for `q_malloc (qm)` and `f_malloc (fm)`
  - archived incomplete memory managers

### Architecture

### kamailio.cfg

## Tools

### kamcmd

### kamctl

  - added support for deleting a gateway or full setid in dispatcher

### kamdbctl

### kamcli

### others

- `route_graph.py` script updated to python version 3.x
