# Kamailio SIP Server (SER) - New Features in v4.3.x

**First release in this series is numbered 4.3.x and it was released in
June 10, 2015**.

\<fc #0000FF> **Previous stable version was 4.2.x (released on October
16, 2014), see what was new in that release at:** \</fc>

- \<fc
    #0000FF><http://www.kamailio.org/wiki/features/new-in-4.2.x>\</fc>

\<fc #800000>*This is a draft of new features added in 4.3 version,
manually updated, thus not always synchronized with what is new in
source code repository.*\</fc>

## New Modules

### auth_xkeys

- API-like shared key peer-to-peer authentication using SHA hashing
- <http://kamailio.org/docs/modules/4.3.x/modules/auth_xkeys.html>

### dmq_usrloc

- distribute user location (usrloc) records between Kamailio servers
    using distributed message queue (dmq)
- <http://kamailio.org/docs/modules/4.3.x/modules/dmq_usrloc.html>

### erlang

- connector to Erlang node
- <http://kamailio.org/docs/modules/4.3.x/modules/erlang.html>

### geoip2

- GeoIP API for configuration file using the new library with support
    for IPv6
- <http://kamailio.org/docs/modules/4.3.x/modules/geoip2.html>

### jansson

- JSON document management using Jansson library
- it has support for JSON-PATH
- <http://kamailio.org/docs/modules/4.3.x/modules/jansson.html>

### janssonrpc-c

- JSON-RPC over netstrings client using Jansson library
- <http://kamailio.org/docs/modules/4.3.x/modules/janssonrpc-c.html>

### statsd

- enables sending data to the statsd framework directly from
    kamailio.cfg
- <http://kamailio.org/docs/modules/4.3.x/modules/statsd.html>

### rtjson

- SIP routing based on JSON API
- <http://kamailio.org/docs/modules/4.3.x/modules/rtjson.html>

### tcpops

- enables control of the TCP options (such as the keepalive
    mechanism), on demand, and on a per-socket basis
- <http://kamailio.org/docs/modules/4.3.x/modules/tcpops.html>

## New in Old Modules

### acc

     * new parameter cdr_on_failed to control writing cds for failed dialogs

### app_lua

- exported additional tm functions
    - sr.tm.t_load_contacts
    - sr.tm.t_next_contacts
    - sr.tm.t_on_branch_failure
- exported the APIs from uac and ndb_mongodb modules

### auth_radius

- added modparam radius_avps_mode parameter (int, true if not null)
- reading all RADIUS AV-pairs to kamailio avp (not only SIP-AVP, if
    radius_avps_mode set to true)

### cdp

- added support for incoming and outgoing trunk-group AVPs
- new module parameter: workerq_length_threshold_percentage
- added custom AVP to transport Call-ID in diameter request
- added new counter(stat) for worker queue lenght - this will give an
    indication that workers are not keeping up with load if it gets too
    big
- added stickiness to loadbalancing of diameter peers

### cdpavp

- added support for incoming and outgoing trunk-group AVPs

### cfgutils

- rpc commands for gflags management

### cnxcc

- added Redis support for distributed cnxcc nodes

### ctl

- default path for ctl socket file is: /var/run/kamailio/kamailio_ctl

### db_mysql

- added parameter to change affected rows value for UPDATE queries
    - when enabled will return the number of matched/foudn rows as
        opposed to the number of updated rows
- set back tick as quoting char for table and column names

### db_postgres

- new module parameters "timeout" and "tcp_keepalive"

### db_text

- added affected rows capability
- support for OP_NEQ
- simple raw query support for select operation

### dialog

- option to add custom headers for local requests to callee
- don't send keepalive if dialog not in confirmed state

### dialog_ng

- added support for active and early dialog stats

### dialplan

- new RPC command: dialplan.dump
    - list all entries in the dialplan

<!-- -->

- support $(avp("key")\[+\]) notation on dynamic match/subst rules:
    - ^(00\|\\+)?$(avp(s:pbx_cli)\[+\])(\[0-9\]{3})$ will check every
        value of $(avp(s:pbx_cli) in the match one by one.
    - See <https://github.com/kamailio/kamailio/issues/5> for more
        details
- option to allow variables in match and substitution expressions -
    new parameter: match_dynamic to enable this feature

### dispatcher

- new function ds_list_exist() to check if a dispatcher set exists
- added per gateway and global send socket configuration

### dmq

- resolve multiple IPv4/IPv6 addresses for a single notification
    address
    - optionally enabled by new parameter "multi_notify"
    - includes addresses from DNS SRV records, A and AAAA records

### geoip

- return continent id via contid attribute

### ims_charging

- added realtime DB support for Ro sessions
- added support for trunk ID in Ro CCR
- added access-network-information data to CCR - allows OCS to know
    location of UE when charge was made
- added extra statistic: replies received for CCRs

### ims_icscf

- new module param use_preferred_scscf_uri - allows ICSCF to have a
    preferred S-CSCF is HSS returns a list

### ims_registrar-pcscf

- use separate process to manage reginfo subscribes and publishes
- new pseude-variable to get username of Contact that was used during
    registration
- added optinal extra parameter for lookup_transport - allows
    avp,pv,etc to be used as URI in search for lookup_transport

### ims_registrar_scscf

- use dedicated process to send notifies
- new parameter user_data_always - if set S-CSCF always requests user
    data from HSS
- new mod_param subscription_expires_range - if set this parameter
    randomises the subscription expiry
- new parameter notification_list_size_threshold
- new function term_impu_has_contact - use this function to check if
    an IMPU has a valid contact
- added support to receive RTR on Cx/Dx interface

### ims_qos

- Rx_reg - use received IP for framed_ip_address AVP
- Rx_AAR - new parameters that let you set sub-id and sub-id-type
- new parameter cdp_event_list_size_threshold
- added stats framework and basic stats
- added new statistic aar_replies_received

### ims_usrloc_pcscf

- added new parameter to contact match using only URI host and port

### ims_usrloc_scscf

- added database support for subscriptions
- callback when contact is deleted/removed

### ipops

- added function to perform dns srv query in config
- new config variable $srvquery(key) gives access to result

### jsonrpc-s

- support to receive RPC commands via FIFO file
    - JSON-RPC commands can be sent now via a FIFO file, as
        alternative to (or together with) HTTP/S

### mi_fifo

- default path to fifo file is /var/run/kamailio/kamailio_fifo

### msilo

- new parameter skip_notification_flag
    - set to a flag value to be used to mark when the notification
        back to sender shouldn't be sent

### nathelper

- add append_sdp_oldmediaip parameter
- use always contact to build ruri and received field if available to
    send the ping

### ndb_mongodb

- added mongodb_find_one()
    - find first matching document and return it
    - faster when knowing it is supposed to be only one, or needing
        only one

### ndb_redis

- Redis authentication is now supported:
    - modparam("ndb_redis", "server",
        "name=srvX;addr=127.0.0.2;port=6379;db=4;pass=mypassword")
- optionally allow starting without a connection to Redis server

### pipelimit

- take in consideration number of cpus for load

### presence

- configurable matching criteria to remove subscriptions from memory
- added min_expires parameter
- added min_expires_action parameter - action to take when
    min_expires > 0, possible values are:
    - 1 - RC compliant, return "423 Interval Too Brief"
    - 2 - force min_expires in the subscription
- option to set priority for presentity documents
    - xavp_cfg - new parameter to specify the name of xavp use to
        store attributes for publish processing
    - priority can be set inside xavp_cfg with
        $xavp(xavp_cfg=>priority)
    - priority is stored in a new column inside database table
        presentity for each publish that has the xavp set
    - retrieve_order - new parameter to specify the order to retrieve
        the records from database. Default value is 0 (retrieve by
        received_time like so far). If set to 1, retrieve by priority
        value
    - if xavp_cfg parameter is set but priority field inside it is
        not, then inside the database is stored a value based on
        timestamp so the newest records will have a higher value,
        preserving the old behaviour even the retrieve_order=1
- added sip_uri_match module parameter
    - 0 - case sensitive (default)
    - 1 - case insensitive
- added $subs(uri) - retrieve subscription uri, useful when handling
    subscribe updates

### pua

- added outbound_proxy for publishing info
- new parameter db_table_lock_write: enable (=1) or disable (=0) the
    locks for table during an transaction

### pua_dialoginfo

- load dialogs for dialoginfo event upon restart
- store pubruri for caller and callee in dlg vars

### pv

- new variable type: $vn() that can hold a $NULL value. The existing
    $var() can not have a $NULL value.
    - similar to $var(name) and able to hold $null
    - default value is $null

<!-- -->

      $vn(x) = 0; $vn(x) = "abc"; $vn(x) = $null;
    * $vz(name) aliased to $var(name)
    * $sut - new variable that returns full uri for source address
    * added 7Bit encoding/decoding transformations
    * new function xavp_params_explode(p, x)
      * convert a string formatted as SIP params in xavp attribute
      * e.g., xavp_params_explode("a=b;c=d;e=d", "x") results in:

``` c
      $xavp(x=>a) = "b";
      $xavp(x=>c) = "d";
      $xavp(x=>e) = "f";
```

- new config var - $sbranch(key)
    - a static branch structure that can be used for config operations
    - the key can be like for $branch(key)
    - the static branch is not used for outbound routing, it is just a
        local container
- functions to manage ruri and branches using $sbranch(key)
    - sbranch_set_ruri() -- use the $sbranch(key) attributes to update
        first branch fields (corresponding to r-uri)
    - sbranch_append() -- use the $sbranch(key) attributes to append a
        branch (alternative to append_branch() which is not affecting
        r-uri branch)
    - sbranch_reset() -- reset the attributes of $sbranch(key)

### registrar

- add optional check for local path during lookup()
    - when performing a lookup the Path (if present) is evaluated and
        if the first hop is local we skip it to avoid looping
- add optional params to registered function
    - 3rd parameter as flag is used to optionally restrict contacts
        when searching values are:
        - 1 - match_callid
        - 2 - match_received
        - 3 - match_contact
    - 4th parameter as flag to optionally perform action on positive
        match values are:
        - 1 - set xavp_rcd with value from matched contact

### rr

- new variable class $rdir(key)
    - return the direction of the request within dialog
    - $rdir(id) - returns integer 1 for downstream and 2 for upstream
    - $rdir(name) - returns the strings 'downstream' or 'upstream'
- new config variables $fti and $tti
    - $fti - from tag as in initial INVITE
    - $tti - to tag as in the response to the initial INVITE

### rtpengine

     * rtpengine_tout is now rtpengine_tout_ms
         * rtpengine tout param is now expressed in milliseconds and renamed
     * new ''write_sdp_pv'' parameter, to return the new SDP in a $var() or $avp() instead of message body
     * new modparam force_send_interface
     * rtp_inst_pvar: pseudo variable to store the chosen RTP engine address
     * added queried_nodes_limit parameter - configure the total number of nodes inside a set to be tried before giving up selecting a rtpengine
     * support for IPv6 force_send_interface

### sdpops

- new function sdp_with_active_media
    - return true of the SDP has 'media=type ...' line and the media
        is active.
    - active media means the port is non-zero and the direction is not
        "inactive"

### siputils

- new function is_tel_number(val)
    - returns true if the parameter is a telephone number (optional
        leading + followed by digits)
- new function is_numeric(val)

### tls

- options to set TLS versions lower limit
    - example: if method is set to TLSv1.1+, then the connection must
        be TLSv1.1 or newer
- reintroduced server side SNI support
- added server_name to module parameter
- set SNI for outbound connections via xavp
- new parameter: xavp_cfg to set the name of the xavp that holds
    attributes for tls connections
    - server_name attribute can be used to specify SNI for outbound
        connections

### tm

     * new function t_is_retr_async_reply to check if a reply being processed is part of a transaction currently suspended
     * handle r-uri alias parameter for local generated requests within a dialog
     * default value for failure_reply_mode set to 3 - discard previous replies if a new serial forking step is done

### tmx

- $T_branch(uri) - return uri of the branch when processing a reply in
    tm onreply_route

### tsilo

- new MI and RPC commands
- use use_domain inherited from usrloc

### uac

- counters for active, disabled and total number of registrations
- new fields in $uac_req() to allow execution of event route on reply
    - attributes:
        - evroute - set to 1 to enable execution of event route
        - evparam - generic string value that will be available in
            event route
        - evcode - sip reply code, available in event route
        - evtype - type of the reply - received or local generated
            (e.g., timeout)
- option to execute event_route\[uac:reply\] for uac_req_send()
    replies
    - $uac(evroute) has to be set to 1 and event_route\[uac:reply\]
        defined
        - inside event_route\[uac_reply\] the $uac_req(...) variable
            is restored back as before uac_req_send(), having the values
            from that time, excepting:
            - $uac_req(evcode) is set to the reply code
            - $uac_req(evtype) is set to 1 if the reply was received
                or to 2 if the reply was self generated (e.g., case of
                transmission timeout)
    - if $uac_req(evtype)==1, the message processed inside the event
        route is the received reply, otherwise is a faked request with
        no relation to the request sent out by uac_req_send()

### userblacklist

- adding new fifo commands
    - dump_blacklist, check_blacklist, check_whitelist,
        check_userblacklist, check_userwhitelist commands

### usrloc

- new parameter: `close_expired_tcp`. When set to 1, usrloc will close
    the corresponding TCP connection for expired entries
- store server_id, connection id and keepalive values for location
    records
- fetching of records for nat keepalives in db only is done using new
    partition column

### xlog

- xlog: new log function xlogm(...) - logs with method filtering
    - same as xlog(level, message), fitering on methods
- new parameter methods_filter - a bitmask with internal sip method
    ids to be skipped from printing logs. Default -1 (skip all)
- parameter can be set at runtime via cfg reload framework kamcmd
    cfg.set_now_int xlog methods_filter 15

## New in Core

### Code

- execute onsend_route for replies before sending out
    - control execution of onsend_route block for replies via
        parameter onsend_route_reply
- default tcp read buffer size set to 16kB
- pv print default buffer size set to 8kB
- default size for shared memory is 64MB
- new parameter - max_branches
    - the maximum number of uac branches can be set via config
    - default value is 12 (old static value for MAX_BRNACHES)
    - the upper limit is 31, it has to be at least 1
- preprocessor subst rules are applied to pv names
- add support for per-TCP connection lifetime
- libsrdb1: mechanism to be able to quote table and column names

#### TLSF Memory Manager

- Two Level Segregated Fit memory allocator
    - <http://tlsf.baisoku.org>
- bounded-time performance memory manager
- malloc and free operations always done in O(1)
- build with `MEMMNG=2` option to activate TLSF

### Default Config

- parameters with the paths to fifo and unixsocket control file are
    pointing to /var/run/kamailio/

## Tools

### Kamctl

- support of fnmatch operator for dialplan
    - do not reload rules in memory after each change in database to
        allow batch updates. Reload command has to be done explicitely
    - parameters of addrule after match expression are optional

## Build Process

Support [reproducible
builds](https://wiki.debian.org/ReproducibleBuilds/) adding compile
options to skip compile date or set a particular value

- default is current behaviour, date and time included in version
    string
- compile with no date and time:
    `make CC_EXTRA_OPTS="-DVERSION_NODATE"`
- compile with a specific date and time:
    `make CC_EXTRA_OPTS='"-DVERSION_DATE=\"19:30:40 Feb  8 2015\""'`
