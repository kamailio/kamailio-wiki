# Kamailio SIP Server (SER) - New Features in 5.1.0

📘 **Previous stable version was 5.0.x (released on February
27, 2017), see what was new in that release at:**

- [http://www.kamailio.org/wiki/features/new-in-5.0.x](http://www.kamailio.org/wiki/features/new-in-5.0.x)

📘 *This is a draft of new features added in devel version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### acc_diameter

- accounting with a diameter server (split from acc module)
- [https://kamailio.org/docs/modules/devel/modules/acc_diameter.html](https://kamailio.org/docs/modules/devel/modules/acc_diameter.html)

### app_sqlang

- kemi interpreter for Squirrel scripting language
- [https://kamailio.org/docs/modules/devel/modules/app_sqlang.html](https://kamailio.org/docs/modules/devel/modules/app_sqlang.html)

### call_obj

- track active calls with integer ids
- [https://kamailio.org/docs/modules/devel/modules/call_obj.html](https://kamailio.org/docs/modules/devel/modules/call_obj.html)

### evrexec

- execute event routes at startup
- [https://kamailio.org/docs/modules/devel/modules/evrexec.html](https://kamailio.org/docs/modules/devel/modules/evrexec.html)

### ims_diameter_server

- diameter server implementation
- [https://kamailio.org/docs/modules/devel/modules/ims_diameter_server.html](https://kamailio.org/docs/modules/devel/modules/ims_diameter_server.html)

### keepalive

- perform keepalive checking against a set of sip addresses
- [https://kamailio.org/docs/modules/devel/modules/keepalive.html](https://kamailio.org/docs/modules/devel/modules/keepalive.html)

### phonenum

- phone number lookup module
- [https://kamailio.org/docs/modules/devel/modules/phonenum.html](https://kamailio.org/docs/modules/devel/modules/phonenum.html)

### sipdump

- write sip traffic and runtime metadata to files
- [https://kamailio.org/docs/modules/devel/modules/sipdump.html](https://kamailio.org/docs/modules/devel/modules/sipdump.html)

### topos_redis

- redis backend for topos module
- [https://kamailio.org/docs/modules/devel/modules/topos_redis.html](https://kamailio.org/docs/modules/devel/modules/topos_redis.html)

## KEMI Framework

Most of the modules have the functions exported to KEMI framework. A
tutorial is available at:

- [https://kamailio.org/docs/tutorials/devel/kamailio-kemi-framework/](https://kamailio.org/docs/tutorials/devel/kamailio-kemi-framework/)

This allows writing SIP routing logic in Lua, JavaScript, Python or
Squirrel scripting.

## New in Old Modules

### acc

- added acc_request(reason, table) - writing acc record to log and db
    backend (if db_url is set)

### app_lua

- rpc app_lua.api_list command

### app_python

- support for variables in parameters of cfg functions
- implemented rpc command to list kemi functions - app_python.api_list

### auth_ephemeral

- added SHA384 as hashing option

### benchmark

- new parameter 'register' - register a timer id at startup

### cfg_rpc

- cfg.reset rpc command to reset all the variables of a certain group

### corex

- added $cfg(route) - return name of routing block for crt action
- corex.debug - rpc command to control debug level

### cplc

- use route names to set proxy_route modparam

### db_flatstore

- added encode delimiter parameter

### db_text

- added rpc command db_text.query to do db query
- added db_delim parameter - specify field delimiter

### db_postgres

- implemented insert_update() API function

### db_sqlite

- new parameter to open some database in read-only
- new parameter to set database journal mode

### db_unixodbc

- added support for async queries

### dialplan

- added dp_match() and dp_replace() functions
- added append_branch parameter

### dialog

- $dlg_ctx(timeout_route) returns route block name
- new parameters - early_timeout and noack_timeout
  - early_timeout - set the interval in seconds after which the
        dialogs in early state (not answered yet) are destroyed. Default
        value is 300.
  - noack_timeout - set the interval in seconds after which the
        dialogs that were answered with 200ok but didn't receive the ACK
        are marked for termination (lifetime set to 10 more seconds).
        Default value 60.
- added dlg_set_ruri()
  - sets the r-uri of requests within dialog with the corresponding
        contact address stored in dialog structure

### dispatcher

- add sip protocol scheme to dst uri if missing
- new algorithm - parallel dispatching (12)
- new feature to track keepalive latency statistics

### dmq

- added option to use non-locking workers

### dmq_usrloc

- support to sync with multi contacts per message
- new parameter batch_max_msg_size
- tcp keepalive on client connections
- include server_id in replicated contacts

### evapi

- added support for dispatcher worker to send cfg event data directly
    to connected clients
- allow setting max number of clients via parameter max_clients

### drouting

- use keepalive module to monitor GW/destinations and disable the
    inactive ones

### htable

- added functions to remove items using variables
- implemented starts-with matching for remove functions

### ims_charging

- added a custom_user_avp parameter, to allow a custom From user via
    avp

### ims_isc

- allow regex in RURI field

### ims_registrar_pcscf

- support for sec-agree parameters

### ipops

- new naptr_query() cfg function

### kazoo

- added $kzRK to accdess routing key of the payload
- added json.count transformation

### kex

- new rpc command - stats.fetch - get statistics in a json document
- setdsturi() supports vars params

### lcr

- added lcr.load_gws rpc function
- added possibility to match caller URI userpart to a mtree tvalue

### nat_traversal

- handle local generated transactions

### nathelper

- allow variables for parameters of nat_uac_test(), fix_nated_sdp()
    and add_rcv_param()

### ndb_redis

- added REDIS-Cluster support
- added pipeline support for REDIS commands
- new feature to disable server on failure
- added flush_on_reconnect parameter
- enhanceed access to REDIS replies - support to access array within
    arrays
- detect argument specifiers for redis_cmd() with three params

### p_usrloc

- added config reload framework support for several parameters (they
    can be changed at runtime via rpc, without restarting)

### path

- option to add two path headers and use alias like received value
  - enable_r2 - add two path headers, one for incoming socket and
        one for outgoing socket
  - received_format - parameter to control if received value should
        be in sip uri (as so far) or in contact-alias param format

### permissions

- new parameter load_backends
  - control what backends should be loaded (1 - address table; 2 -
        trusted table; 4 - allow file; 8 - deny file)

### pipelimit

- match algorithm name case insensitive

### presence

- added pres_has_subscribers() function
- added cseq_offset parameter

### pv

- $env(...) - new class of cfg variable to get values for environment
    variables
- print cfg line for string transformation errors
- new variable - $hdrc(HName) - return the number of headers matching
    the name with HName
- added received ip/port pvars for advertised ip/port - $RAi, $RAp
- $siz - return source ip, with enclosing square brackets for ipv6
- $Ru - URI format for local socket where the SIP message was
    received, without trasport parameter for UDP
- $Rut - URI format for local socket where the SIP message was
    received, always with transport parameter
- $RAu - URI format for local socket where the SIP message was
    received, without trasport parameter for UDP, using the advertised
    address if availabe
- $RAut - URI format for local socket where the SIP message was
    received, always with transport parameter, using the advertised
    address if available
- added transformations for base58 - {s.encode.base58},
    {s.decode.base58}
- implemented {uri.scheme} transformation
- add string {s.corehash} transformation - $(var(myvar){s.corehash})
    returns the hash; $(var(myvar){s.corehash,32}) returns the slot
- $prid - get protocol id (int value)
- $csb - shortcut to get the CSeq header body

### pua_dialoginfo

- added flags to disable caller and/or callee PUBLISH

### pua_reginfo

- added support to use outbound proxy for PUBLISH requests

### rabbitmq

- added direct_reply_to module parameter
- added url module parameter

### registrar

- apply method_filtering only on initial requests without to-tag
- added server_id to pv attributes

### rtpengine

- added stop_recording function

### sipcapture

- added $hep(dst_ip) variable to get hep's message destination IP

### sipt

- the digit terminator is made optional on set_destination

### siptrace

- add support for HEPv3
- add hlog() to send logs to homer

### siputils

- added is_alphanum(v) function
  - check if a string value contains only digits or alphabetic
        characters
- added is_alphanumex(tval, eset) function
  - check if tval contains only alphanumeric characters or those
        from the eset parameter

### textops

- new function remove_hf_exp(match, skip)
  - remove header fields that do not match regex 'skip', but match
        regex 'match'

### tls

- basic level of libressl compatibility (for openssl v1.0.x)
- `event_route[tls:connection-out]` - executed after the connect to
    destination is done
  - using drop() in the event route marks connection for no-send
        data, so nothing is sent over it, being also closed

### topoh

- execute `event_route[topoh:msg-outgoing]` - executed when a message
    is going to be sent out
  - if drop is used, then the message is no longer processed with
        topoh
- option to disable uri prefix checks (uri_prefix_checks parameter)

### topos

- execute `event_route[topos:msg-outgoing]` - executed when a message
    is going to be sent out
  - if drop is used, then the message is no longer processed with
        topos

### tm

- use a stack of structures for faked_env()
- new rpc command tm.list - list details of active transactions
- rpc command tm.clean to clean long time expired transactions (for
    troubleshooting purposes)
- allow execution of t_continue with callback name

### tmx

- new vars - $T(id_index_n) and $T(id_label_n)
  - similar to $T(id_index) and $T(id_label), but if transaction
        doesn't exist yet, it is created

### topos

- new parameter storage - specify the storage type to be used (default
    is database)

### uri_db

- new variant with subscriber and realm params for check_uri()

### usrloc

- new parameter db_load: enable/disable loading from the database on
    mod_init
- new parameter db_insert_update: insert into table, update on
    duplicate key
- added more attributes to the result of ul.dump
- rpc ul.add can set also received and socket fields
- copy server_id when updating contact in memory

## New in Core

### Interpreter

- hundreds of functions exported to kemi framework and are available
    to be executed from scripts running in embedded interpreters (Lua,
    Python, JavaScript and Squirrel)

### Parameters

- ip_free_bind - control if Kamailio should attempt to bind to non
    local ip
- tcp_reuse_port - reuse tcp sockets
- mem_safety - now enabled by default
- verbose_startup - control if printing routing tree and udp probing
    buffer debug messages should be printed at startup
- pv_cache_limit - the limit how many pv declarations in the cache
- pv_cache_action - specify what action to be done when the size of pv
    cache is exceeded

### Functions

### Misc

- support for parsing the Call-Info header
- do not terminate on harmless SIGCHLD (e.g., when kemi python scripts
    create and terminate new processes)
- added function to return route block name from crt action
- compile with system malloc for pkg if MEMPKG=sys
- if MEMDBGSYS=1, the use a debug variant for system malloc
- support for base58 encoding and decoding
- mem - new functions for pkg/shm - mallocxz() and reallocxf()
  - pkg_mallocxz(size) / shm_mallocxz(size) - same as the
        corresponding malloc function, but the allocated buffer is
        filled with 0. It is equivalent of { p=malloc(size); if(p)
        memset(p, 0, size); }
  - pkg_reallocxf(p, size)/shm_reallocxf(p, size) - same as the
        corresponding realloc functions, but the old pointer is always
        freed, even if the realloc operation fails. The BSDs have
        reallocf()
- added rpc command core.ppdefines - list preprocessor defines enabled
    in config
- tcp - new flag F_CONN_NOSEND (mark connection for no-send data)
  - if flag set, the data is not sent over the connection
  - can be set by drop() inside `event_route[tls:connection-out]`
- added rpc command core.modules - list the names of loaded modules
- handle hep3 over tcp/tls and print first characters if matching hep3
    header fails
- udp - print up to first 100 chars from received packet in debug mode
- pv - new parameters to control the size of pv cache

### kamailio.cfg

- filter out sip scanner even when anti-flood is not enabled
- handle retransmissions also for requests within dialogs
- added log_prefix
- etc - basic and advanced configs relocated to misc/examples/pkg

## Tools

### kamcmd

- larger buffer for receiving the binrcp responses

### kamctl

- added srv command
  - shortcuts to RPC commands to print sockets, aliases and
        available RPC commands
- added db subcommand to mange records in version table

### kamcli
