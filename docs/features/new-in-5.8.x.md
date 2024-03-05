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

### influxdbc ###

  - https://www.kamailio.org/docs/modules/devel/modules/influxdbc.html

### microhttpd ###

  - https://www.kamailio.org/docs/modules/devel/modules/microhttpd.html

## Archived Modules ##

### app_sqlang

  - https://github.com/kamailio/kamailio-archive/tree/main/src/modules/app_sqlang

### auth_identity ###

  - https://github.com/kamailio/kamailio-archive/tree/main/src/modules/auth_identity

## New in existing Modules

### p_usrloc

- added `use_domain_crc32` modparam

### permissions

- RPC reload limit controlled via **reload_delta** module parameter

### registrar

- added `tcpconn_id` to `xavp_cfg`

### siptrace

- added `sip_trace_msg(dst, corlid, vmsg)`

### tls

- added rpc function to kill session by id

### topos

- handle early-dialog b-side UPDATE requests routing
- added support for Call-ID masking when sending to downstream

## New in Core

### Command line arguments

### Interpreter

### Parameters

### Functions

### Memory Managers

- alignment to 16 bytes for `q_malloc (qm)` and `f_malloc (fm)`

### Architecture

### kamailio.cfg

## Tools

### kamcmd

### kamctl

### kamdbctl

### kamcli

### others

- `route_graph.py` script updated to python version 3.x
