# Kamailio SIP Server - New features in version 3.2.0

The page collects the summary (draft notes) of the new features in
Kamailio (OpenSER) version 3.2.x.

**The release date for version 3.2.0: October 18, 2011**.

Full commits log for release 3.2.0 is available at:

- [https://www.kamailio.org/pub/kamailio/3.2.0/ChangeLog](https://www.kamailio.org/pub/kamailio/3.2.0/ChangeLog)

## Configuration File

The default configuration file shipped with Kamailio v3.2.0 has several
enhancements comparing to v3.1.0. You can read more about all features
provided by default configuration file in the comments located at the
top of it. Shortly about the enhancements in 3.2.0:

- refactored NAT traversal logic
    - use of rtpproxy_manage() to handle properly cases when 200ok and
        ACK have the SDP
    - enable RTP relaying in branch_route to optimize handling of
        parallel forking to natted and non-natted branches for the same
        call
- speed dial support - enabled when adding **#!define WITH_SPEEDDIAL**
    after the first line
- routing to voicemail in case of not available - enabled when adding
    **#!define WITH_VOICEMAIL** after the first line and setting the
    voicemail server address in *voicemail.srv_ip* variable
- blocking of redirect replies (3xx replies) - enabled when adding
    **#!define WITH_BLOCK3XX** after the first line
- acc module shows how to store source IP for each accounted record
- TCP connection lifetime is set over one hour to cope better with
    devices behind NAT connected over TCP or TLS
- main request routing block name switched to **request_route** in
    order to be easy to refer to it. Note that **route** is still valid
    name for main request routing block.
- load debugger module for WITH_DEBUG - set cfgtrace parameter to 1 in
    this case

## New Modules

### async

- collector for asynchronous config functions
- async_route(...) - execute a route block asynchronously after an
    interval of time
- async_sleep(...) - asynchronous sleep for usage when processing SIP
    requests
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules/async.html>

### db_sqlite

- database connector for SQLite
- good option to use for small (or embedded) SIP servers, as
    alternative to big DB servers such as MySQL or Postgres
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules_k/db_sqlite.html>

### dmq

- distributed message queue using SIP to communicate between peers
    (SIP server instances)
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules_k/dmq.html>

### ipops

- IPv4 and IPv6 related functions for config file
    - among implemented functions: is_ipv4(ip), is_ipv6(ip),
        compare_ips(ip1, ip2), ip_type(ip)
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules/ipops.html>

### json

- json parser for configuration file
    - get the values from a JSON document
    - example:

``` c
json_get_field("{'foo':'bar'}", "foo", "$var(foo)");
xlog("foo is $var(foo)");
```

- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules/json.html>

### jsonrpc-c

- JSON-RPC client over tcp/netstrings
    - send notifications to a JSON-RPC server
    - invoke execution of a JSON-RPC to a server
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules/jsonrpc-c.html>

### ndb_redis

- connector to Redis no-SQL database engine
    - uses hiredis library
    - exports function to send commands to redis and a new
        pseudo-variable class to access the reply: $redis(key)
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules/ndb_redis.html>

### presence_reginfo

- Support for RFC 3680 in the presence architecture of Kamailio
    - handle PUBLISH requests with reg-info content
    - notify watcher with updates of reg-info records
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules_k/presence_reginfo.html>

### pua_reginfo

- publish registration info (reg-info) according to RFC 3680
    ("reg"-package), in case a user registration (based on usrloc
    callbacks)
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules_k/pua_reginfo.html>

### p_usrloc

- partitioned user location service
- similar to usrloc module, but provides partitioned user location.
    This provides 3 benefits:
    - Redundancy - if a location db is down, there is a spare running
    - Load Balancing - the module balances the entries by hashing the
        username(or username@domain)
    - Failover- in case of error and recovery, it ensures that no
        stale contacts are returned
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules_k/p_usrloc.html>

### sdpops

- module to control the content of the SDP payload from configuration
    file
    - spd_remove_codecs_by_id(list) - remove the codecs by their
        numeric IDs given in a comma separated list as parameter
    - spd_remove_codecs_by_name(list) - remove the codecs by their
        names given in a comma separated list as parameter
    - spd_keep_codecs_by_id(list) - keep the codecs by their numeric
        IDs given in a comma separated list as parameter
    - spd_keep_codecs_by_name(list) - keep the codecs by their names
        given in a comma separated list as parameter
    - sdp_print(level) - print the parsed sdp structure to the debug
        'level' (integer representation of log levels). Good for debug
        purposes
    - sdp_with_media(type) - return true if the sdp has 'media=type'
        (e.g., media=video)
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules/sdpops.html>

### sipcapture

- SIP traffic capturing server extension for Homer project
    - save to database mirrored traffic from other SIP server
        instances - mirroring can be done by siptrace module
- README File:
    <http://kamailio.org/docs/modules/3.2.x/modules/sipcapture.html>

## IMS Extensions

- the IMS related modules resides in **carstenbock/ims** branch and
    **not included** in the release of version 3.2.x. However, they can
    be tested using 3.2.x, links to installation guidelines for IM
    extensions are available at:
    - <http://www.kamailio.org/w/2011/01/ims-extensions-available-for-testing/>

### IMS: CDP / CDP-AVP

- The CDP (C-Diameter-Peer) modules provide a Diameter-interface,
    which are used by several components of the OpenIMS-core: They are
    used as Cx-Interface for the I-/S-CSCF and for the Rx-Interface for
    the P-CSCF. The modules may be used in other ways, too (e.g. for an
    Sh-Interface for a Kamailio-based application server)

### IMS: P-CSCF

- The Proxy-CSCF in the IMS Architecture acts as an entry point to the
    network. The pcscf module of the original OpenIMS-core aggregates
    many functions required at this component: Header
    manipulation/verification, RTP-Relay and presence-support for the
    “reginfo”-event. Optional, the Rx-Interface for Billing may be
    enabled.

### IMS: I-CSCF

- The Interrogating-CSCF is a kind of “Loadbalancer” or an entry Proxy
    for the “home-network” of an IMS setup. The I-CSCF will retrieve the
    location for a user from the HSS, it will check, where a user is
    registered or where it should register (based on user-settings,
    required capabilities later maybe even load). The icscf-module
    implements the according interfaces towards the HSS (Cx) and
    according header manipulation/verification methods.

### IMS: S-CSCF

- The Serving-CSCF is acting as a registrar and as decision engine
    regarding the routing of the Request. It retrieves the user-data and
    routing rules from the HSS and applies them to the processed
    requests. The scscf-module implements the according interfaces
    towards the HSS (Cx), the interfaces towards application-servers
    (Isc) and according header manipulation/verification methods.

### IMS: MGCF

- The MGCF-Module of the OpenIMS core implements header and content
    manipulation for interconnections towards Class 4 networks.

### IMS: E-CSCF & LRF

- The Emergency-CSCF and the Location Ressource Function (LRF)
    implements IMS compliant emergency call routing. The modules provide
    required content aggregation methods.

## New in Old SIP Router modules

### acc

- you can include variables in table name and will be evaluated at
    runtime. For example:

``` c
  modparam("acc", "db_table_acc", "acc_$time(year)_$time(mon)")
```

- above example will write now to table **acc_2011_10**
- same can be done for missed_calls table name
- second parameter of acc_db_request() supports as well config
    variables

``` c
acc_log_request("200 OK", "acc_$time(year)_$time(mon)");
```

- by using **dialog module**, acc can generate user-customizable CDRs
    at once
- added 'failed_filter' module parameter: a string of failure response
    codes from 300 to 999 separated by commas. Failed transaction will
    not be accounted if its response code is in the list even when
    failed_transaction_flag is set. For example:

``` c
modparam("acc", "failed_filter", "401,407")
```

- db_insert_mode can be set to 1 in order to use INSERT DELAYED when
    adding the acc records to database

### app_lua

- more modules available in Lua
    - auth
    - auth_db
    - dispatcher
    - maxfwd
    - presence
    - presence_xml
    - registrar
    - rr
    - sdpops
    - sqlops
    - tm
    - xhttp

### auth

- New flag 16 to add stale=true to challenge response.

### auth_db

- export of inter-module API (available through Lua)
- option to skip checking version table
    - new parameter 'version_table' to be able to disable checking for
        version table
    - useful when connecting to a different database to fetch the
        password

### auth_radius

- Added optional uri_user param to radius_www_authorize().

### cfg_rpc

- two RPC commands added for deleting a configuration value from a cfg
    framework group instance:
    - cfg.del group\[id\] var
    - cfg.del_delayed group\[id\] var

### cfgutils

- added pkg_summary() and shm_summary() - ability to print summary of
    pkg and shm from config

### db_postgres

- reconnect in case of broken connection

### dialog

- read and set per-dialog variables from script
- provide callbacks to fire on OK and ACK messages following INVITE,
    respectively
- enable to terminate call programmatically

### dialplan

- dp_translate() returns -2 (instead of -1) if dp with given id does
    not exist.
- added rpc commands
    - dialplan.reload - to reload the records from database
    - dialplan.translate - to translate a string using a specific
        dialplan id

### dispatcher

- export of inter-module API (available through Lua)
- new event routes that are called when destinations go on/off-line
    - event_route\[dispatcher:dst-up\]
    - event_route\[dispatcher:dst-down\]
- added RPC commands - new RPC commands to replace the MI ones

### domain

- added rpc commands to reload and dump domains

### htable

- option to save content of htable to db at shutdown - new 'dbmode'
    attribute for hash table definition
    - if dbmode=1, the content of hash table will be saved back to
        database table when the sip server is stopped
    - default value is 0 - no sync back to database table
        - example:

``` c
  modparam("htable", "htable", "a=>size=8;dbtable=htable;dbmode=1;")
```

- new attribute 'initval' to hash table definition
    - initval can set init integer value for hash table keys, meaning
        that if the key is not set, the init value is returned by
        $sht(htable=>key)
    - useful for hash tables holding counters - the value can default
        to 0, avoiding extra check for $null value
- added two new PVs
    - $shtinc(htable=>key) - add atomically 1 to the value of the item
    - $shtdec(htable=>key) - decrement atomically 1 to the value of
        the item
    - both return the new value of the item
    - they work only with items having integer values
- options to store expires value of items in database

### kex

- added new function is_myself(uri) to return true if parameters
    matches 'myself' condition
- print private memory usage per process via rpc
    - new rpc command pkg.stats that prints used, free and real_used
        metrics per process for private memory (pkg)
    - you can see how much pkg each process is eating and how much is
        still available
    - should be useful to track pkg memory leaks and/or trigger alerts
        when there is no more pkg available
- added setdebug(level) - can change the debug level per process
- added resetdebug() - set back the debug level to the global
    parameter 'debug'
- added mi command clear_statistics - return the values and reset the
    counters for statistics

### lcr

- Added optional tag_avp module parameter and made lcr_flags module
    parameter optional.
- Renamed dont_strip_or_tag_flag module parameter to
    dont_strip_or_prefix_flag.
- load_gws() can take uri_user param, value of which is used instead
    of Request URI user part by load_gws() function.
- \[from\|to\]\[any\]\_gw functions now check also transport protocol.
- Renamed lcr_gw table's tag field to prefix field.
- Parameters of load_gw() function must be given without quotes.
- Added tag field to lcr_gw table whose value is assigned to possible
    tag_avp by next_gw() and from_gw() functions.
- Increased lcr_gw tables version number to 2.
- Script that upgrades lcr_gw table from version 3.1 is available as
    <http://box.openxg.com/tmp/lcr_upgrade_from_3.1.sh>.

### ldap

- connect to server for negative ranks - there are some processes with
    negative rank that need connection to ldap server, like timers

### mtree

- Added new mode 2 to mt_match() that instead of setting value of
    longest matching prefix to a pv, sets values of all matching
    prefixes to an avp so that value of longest matching prefix is in
    avp index 0.

### nathelper

- new function: is_rfc1918(ip_addr). Checks if the address \<ip_addr>
    is a private range address.

### maxfwd

- export of inter-module API (available through Lua)

### presence

- the module can work in three modes
    - caching
    - caching with fallback to database
    - database only

### presence_xml

- new exported functions to enable the online/offline presentity of a
    subscriber to be checked from the configuration file.
    - pres_check_basic() enables you to find out whether a users basic
        status matches the string you provide.
    - pres_check_activities() enables you to find out whether any of
        user's listed activities matches the string you provide.

### pua

- added new modparam check_remote_contact

### pv

- new pseudovariables:
    - $timef(format) - string representation of time formatted
        according to format
    - $Tb - epoch of the startup (boottime) of the current process
    - $sndto(id) points to next hop address
    - $sndfrom(id) points to local socket to be used for sending
    - $rmid - request method id
    - $mt - return sip message type
        - the value is 1 if the sip message is request
        - the value is 2 if the sip message is reply
    - $Tb - startup time available in a pseudo-variable (boottime)
    - $rz - returns r-uri scheme
        - possible values: sip, sips, tel and tels
        - r-uri scheme parsing error should be reflected by value:
            none

<!-- -->

- new transformations:
    - {s.ftime,\<format>} - format the epoch in the pvar according to
        \<format>
    - {s.sql} - output the pvar as valid SQL value. \<null> as NULL,
        integer as bare number, string as quoted and escaped string
    - {s.replace,\<search>,\<replace>} - replace every occurrence of
        \<search> in the pvar with \<replace>
    - {s.prefixes\[,\<max>\]}, {s.prefixes.quoted\[,\<max>\]} - create
        a list of (quoted) prefixes of the pvar, with optional maximum
        prefix length:

``` c
  "1234"{s.prefixes,0} => 1,12,123,1234
  "123456"{s.prefixes,4} => 1,12,123,1234
  "123456"{s.prefixes.quot,4} => '1','12','123','1234'
```

- new functions:
    - is_int() checks if pvar argument contains integer value.

### regex

- pcre_match_group() allows pseudo-variable in group parameter
    - example:

``` c
  pcre_match_group("$rU", "$var(num)");
```

### registrar

- export of inter-module API (available through Lua)

### rls

- added outbound_proxy parameter - set SIP uri where to send
    subscriptions
- use server_address parameter as contact in replies
- support for resource-list indices that reference other resource-list
    XML documents (including XPath within documents)
- new exported function to allow re-subscription to a list to be
    initiated from the configuration file
- added a new exported function: rls_update_subs() - this new function
    can be called from the Kamailio configuration file to force the RLS
    module to refresh its back-end subscriptions.

### rr

- export of inter-module API (available through Lua)
- record_route_preset takes a second parameter allowing the setting of
    a second Record-Route header
- new rr param 'enable_socket_mismatch_warning': enables or disables a
    warning log

### rtpproxy

- force_rtp_proxy function was removed, you can use rtpproxy_offer()
    and rtpproxy_answer()
- new function rtpproxy_manage()
    - auto-pilot function to handle rtp proxy session management
    - it can take same kind of parameters as rtpproxy_offer()
    - embeds the functionality of rtpproxy_offer(), rtpproxy_answer()
        and unfroce_rtp_proxy():
        - if INVITE with SDP, then do rtpproxy offer
        - if INVITE with sdp, when tm is loaded, mark transaction with
            internal flag FL_SDP_BODY to know that the 1xx and 2xx are
            for rtp answer
        - if ACK with SDP, then do rtpproxy answer
        - if BYE or CANCEL, then do unforce rtpproxy
        - if reply to INVITE with code >= 300 do unfrce rtp proxy
        - if reply with SDP to INVITE having code 1xx and 2xx, then do
            rtpproxy answer if the request had SDP or tm is not loaded,
            otherwise do rtpproxy offer
- aliased rtpproxy_destroy() to unforce_rtp_proxy()

### sanity

- new parameter autodrop to control automatic dropping of broken
    messages
- setting it to 0 is good for logging purposes in config file and
    exiting from there

### siptrace

- trace_to_database configuration parameter - to control whether to
    write to database or not and just mirror traffic
- use x-headers to add fromip, toip, method, time and direction in the
    message body (using X-\* headers). This allows to transmit them
    using duplicate_uri from one kamailio to an other.
- store milliseconds part of the time in database

### siputils

- Added set_uri_user(uri, user) and set_uri_host(uri, host) functions.
- Function tel2sip() replaced by tel2sip(uri, hostpart, result).
- Added is_request() returns true if the SIP message is a request
- Added is_reply() returns true if the SIP message is a reply
    - useful to check in sub-routes that can be executed from both
        request and reply routes

### snmpstats

- control exporting registrar records
    - exporting of large location database may result in out of shared
        memory, as well as when the records are not pulled
    - new parameter export_registrar was added to enable/disable
        location records export (off by default)

### sqlops

- xavp support. New function sql_xquery() stores the query result in
    an xavp.
- BIGINT support. Native support when sql_xquery is used, transformed
    to string for sql_query().
- new PV $sqlrows(con) - return affected rows of previous query

### textops

- new exported function to add "Date:" headers to requests.
- new function is_audio_on_hold() - return true if media stream in SDP
    is put on hold
- added remove_body() function - remove the body of the sip
    request/reply

### topoh

- new parameter 'sanity_checks' - option to bind to sanity for parsing
    checks
- the module can bind to sanity to perform parsing checks before
    proceeding to encoding/decoding of received requests

### tm

- allow nested backup of avp lists when sending local requests

### tmx

- asynchronous SIP request processing functions for configuration file
    - t_suspend() - suspend the processing of SIP request transaction
    - t_continue() - resume the processing of SIP request transaction
- $T(name) - new class of pseudo-variables for accessing transaction
    attributes:
    - internal index, label, the branch index, reply code
- two helper functions to detect route block type
    - t_is_failure_route() - return true if it is a failure_route
        execution
    - t_is_branch_route() - return true if it is a branch_route
        execution
    - useful to check in sub-routes executed from different points of
        config
- added t_reply_callid MI command
- $T(reply_type) to solve ambiguity of received or local replies
    - it returns 1 in failure route if the reply was local generated
        (e.g., timeout), otherwise is 0. If there is no transaction, it
        returns null.

### uac

- new function: uac_reg_request_to. Lookup a local user from the
    registration table and prepares message variables so the request can
    be sent to the remote user, using the same credentials as with which
    the registration has been done.
- updates to internal mechanism of registering as SIP user agents to
    remote SIP servers

### usrloc

- new parameter 'preload' can be used to specify list of location
    table to be initiated at startup, even they are not used by
    registrar module functions. Good for using the usrloc module from
    inside other modules.

### xavp

- XAVP's are enabled by default now.

### xcap_server

- added oma user-profile and pres-content (avatar) support
- support for extra auids:
    - org.openmobilealliance.user-profile
    - org.openmobilealliance.pres-content
    - org.openmobilealliance.search
- support for HTTP 1.1 pre-conditions to enable clients to avoid
    having to re-download unchanged documents and to check whether
    documents have changed or not on upload
- ability to insert new nodes in xcap docs

### xlog

- new module parameter log_facility
    - allow to specify syslog facility for messages printed by xlog
        module
    - xlog messages can be diverted now to special file via syslog
        conf

### xhttp

- export of inter-module API (available through Lua)

## New in Core

### Config Structure

- request_route { ... } can be used instead of main route { ... }
- reply_route { ... } can be used instead of main onreply_route { ...
    }
- '!!' can be used as alternative to '#!' for pre-processor
    directives, being easier to distinguish it out of commented lines
- caching support for pv spec parsing

### Preprocessor directives

- #!substdef - add a substitution rule and a define at the same time
- #!substdefs - add a substitution rule and a define with string value
    at the same time
- #!trydef - add a define if not defined already
- #!redefine - force redefinition even if defined already

**#!** and **!!** can be used as start of preprocessor directives

#### import_file

Attempt to include a file, but if it is not found, do not throw error
like **include_file**.

### Parameters

- corelog - control the log level for non-critical core error messages
- pv_buffer_size - size in bytes for internal PV buffer (default 1024)
- pv_buffer_slots - home many internal PV buffers (default 10)
- sql_buffer_size - set the size of SQL buffer (default 64k)
- auto_bind_ipv6 - auto-bind or not to IPv6 addresses (default 1 -
    bind to IPv6)

### Functions

- added functions remove_branch(index) and clear_branches()

### Config Reload Framework

- support for multiple cfg group instances
- add/del_group_inst() updates the local configuration to make sure
    that cfg_set\_\*() sees the change when it immediately follows the
    group instance modification
- @cfg_selected.group added - @cfg_selected.\<group_name> returns the
    selected instance id of the specified group. If no group instance is
    selected, i.e. the default is used, then empty string is returned.
- @cfg_get supports nested calls - @cfg_get.\<group>.\<variable> makes
    use of the already implemented nested select functions to parse the
    returned value. The following nested calls are supported:
    - @cfg.get.\<group>.\<variable>.nameaddr...
    - @cfg.get.\<group>.\<variable>.uri...
    - @cfg.get.\<group>.\<variable>.params...

### libsrdb1

- keep PID per DB connection to detect automatically if many processes
    share same DB connection

### SIP Parser

- sdp parser detection of on hold media during sdp parsing

### Memory Manager

- core events when pkg usage changes
- option for short status dumping
- pkg mem size configurable form the cmd line
    - The pkg mem size used can be configured by using the "-M"
        parameter on the command line. The default remains 4Mb.

``` c
  kamailio -M 8  -f test.cfg # start with 8mb of pkg memory
```

### STUN

- ser_stun update to RFC 5389
    - Removing checking/adding of FINGERPRINT attribute
    - Update some attribute values according to new spec

### RPC Commands

- added rpc command core.psx
    - similar to core.ps but prints the details in RPC structure along
        with process index, like:

``` c
    sercmd> core.psx
    {
        IDX: 0
        PID: 73408
        DSC: attendant
    }
    {
        IDX: 1
        PID: 73409
        DSC: udp receiver child=0 sock=127.0.0.1:5060
    }
```

## New in Documentation

### Developer visible changes

- Many bug-fixes to existing doxygen code documentation in modules and
    core
- Several extensions to doxygen documentation in modules and core
