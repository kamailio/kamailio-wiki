# Kamailio SIP Server (SER) - New Features in v4.1.x

**First release in this series is numbered 4.1.0 , released on December
04, 2014**.

\<fc #0000FF> **Previous stable version was 4.0.x (released in March
2013), see what was new in that release at:** \</fc>

- \<fc
    #0000FF><http://www.kamailio.org/wiki/features/new-in-4.0.x>\</fc>

\<fc #800000>*This is a draft of new features added for v.4.1.x,
manually updated, thus not always synchronized with what is new in
source code repository.*\</fc>

## New Modules

### app_java

- embedded Java interpreter
- <http://kamailio.org/docs/modules/devel/modules/app_java.html>

### auth_ephemeral

- user authentication with ephemeral credentials
- <http://kamailio.org/docs/modules/devel/modules/auth_ephemeral.html>

### cnxcc

- credit control module - prepaid system
- <http://kamailio.org/docs/modules/devel/modules/cnxcc.html>

### dnssec

- DNSSEC implementation
- <http://kamailio.org/docs/modules/devel/modules/dnssec.html>

### gzcompress

- compress/decompress body using zlib controlled via SIP header
- <http://kamailio.org/docs/modules/devel/modules/gzcompress.html>

### ims_charging

- IMS charging module for Diameter-Ro-Operations
- <http://kamailio.org/docs/modules/devel/modules/ims_charging.html>

### mohqueue

- music on hold queue
- <http://kamailio.org/docs/modules/devel/modules/mohqueue.html>

### rtpproxy-ng

- ng control protocol for RTP relay applications (e.g., useful for NAT
    traversal)
- supports encoding/decoding WebRTC/SRTP to bare RTP (when using with
    mediaproxy-ng from sipwise)
- <http://kamailio.org/docs/modules/devel/modules/rtpproxy-ng.html>

### sctp

- SCTP transport layer
- <http://kamailio.org/docs/modules/devel/modules/sctp.html>

### sipt

- SIP-T and SIP-I operations
- <http://kamailio.org/docs/modules/devel/modules/sipt.html>

### stun

- STUN requirements for SIP outbound
- <http://kamailio.org/docs/modules/devel/modules/stun.html>

## New in Old Modules

### acc

- new parameter time_mode
    - store additional time values in time_attr and time_exten
        attributes/db columns
    - if time_mode==1, save timestamp in time_attr and microsecs in
        time_exten
    - if time_mode==2, then time_attr store the seconds.miliseconds
    - if time_mode==0 (default), then it is like now, only timestamp
        stored
    - time_attr value can be set via parameter with same name - it
        represents syslog value or db table column
    - for db accounting, when time_mode==1, the type of column has to
        be int, and for time_mode==2, the type of column has to be
        double
    - features implemented only for syslog and db accounting
    - new parameter acc_time_format - specify the format to print time
        as string for acc_time_mode=3 (using localtime) and
        acc_time_mode=4 (using gmtime)
        - default value is "%Y-%m-%d %H:%M:%S"
- option to write dialog-based cdrs to database
    - new module parameter cdrs_table has to be set and classic db
        accounting enabled at compile time and db_url set
    - cdr_log_enable - new parameter to turn off writing cdrs to
        syslog, cdr_enable being now used as top level control flag for
        both cdrs to syslog or db

### app_lua

- app_lua.list and app_lua.reload rpc commands
- added sr.xavp.get_keys function
- added sr.xavp.get function - get a table with all the values of a
    xavp

### avpops

- avp_check re operation can now use a pseudo variable as second
    parameter.
- avp_check with xavp as second parameter can now be used with \[\*\]
    index on the second key.
- allow xavp as parameter where avp is allowed

### cdp

- framework for Credit Control Application - initial support for RFC
    4006, used for IMS Ro charging interface TS32.299

### cfgutils

- new functions
    - route_if_exists() calls a routing block only if it exists in the
        configuration script
    - check_route_exists() checks if a routing block exists in the
        script.

### corex

- new pv $cfg(key) - return attributes for config file
    - $cfg(line) - the line of the current action.
    - $cfg(name) - the name of the current conf file
    - example: append_to_reply("P-Cfg-Line: $cfg(line)\\r\\n");

### db_mysql

- new module parameter - insert_delayed - if set to 1, then all INSERT
    API queries will be converted in INSERT DELAYED (only DB API insert,
    not for raw queries)
- sql transaction support

### db_postgres

- handle prepare statements in DB APIv2

### debugger

- new parametes:
    - per module debug level
    - log_assign. Enables the log of every single assign action on
        config
    - reset_msgid. Enables the ability to reset the msgid ( $mi )
        through the RPC command.
- new functions:
    - dbg_pv_dump() dumps the pv_cache content in json format.
- new RPC commands:
    - options to enable/disable per module log level as well as set
        per module log level at runtime.
    - dbg.reset_msg: resets the msgid ( $mi ).
- new parameter cfgpkgcheck to do pkg memory check before each action

### dialog

- SDP can be passed to MI/RPC dlg_bridge command
- added timer process to clean unconfirmed dialogs older than 5min
- decode alias parameter from contact address and use it as dst uri -
    makes dialog module to work with set_contact_alias() as first hop
    after a nat router

### dispatcher

- new parameter to specify the pv where to store attrs for matched
    address in ds_is_from_list()
    - attrs_pvname can be set to get attributes of matched address in
        config file
- allow pv in ds_is_from_list(setid) parameter

### htable

- new htable.sets and htable.seti RPC commands
- new htable.reload rpc command
- cross-server replication via DMQ module integration
- two new functions to lock htable slots based on item name
    - sht_lock("htable=>key") and sht_unlock("htable=>key")
    - useful to update existing items without additional locks
- lifted the limit for max number of slots, now is 2^31
- added rpc command htable.stats - print stats about htables: name,
    number of slots, number of items, max number of items per slot, min
    number of items per slot
- dmq integration

### ipops

- dns_sys_match_ip(hostname, ipaddr) - do dns query for the hostname
    and compare the result to see if is a match with ipaddr
- dsn_int_match_ip(hostname, ipaddr) - function that uses the internal
    resolver to match a hostname with an ip (similar operation like
    'scr_ip=="hostname"')
- new function dns_query(hostname, pvid) - store the result of dns
    query in a variable $dns(pvid=>key)
    - dns query is using getaddrinfo()
    - $dns(pvid=>key) - new pv allowing to navigate through the result
        of a dns query
    - key can be:
        - count - number of addresses
        - ipv4 - set to 1 if at least one ipv4 address (otherwise 0)
        - ipv6 - set to 1 if at least one ipv6 address (otherwise 0)
        - addr\[index\] - the address as string from position index in
            the list (0 based indexing)
        - type\[index\] - the type of address from position index in
            the list (0 based indexing), the value is 4 for ipv4 and 6
            for ipv6
        - example:

``` c
        if(dns_query("test.com", "xyz"))
        {
            xlog("===== number of addresses: $dns(xyz=>count)\n");
            xlog("===== ipv4 address found: $dns(xyz=>ipv4)\n");
            xlog("===== ipv6 address found: $dns(xyz=>ipv6)\n");
            $var(i) = 0;
            while($var(i)<$dns(xyz=>count)) {
                xlog("===== #[$var(i)] type ($dns(xyz=>addr[$var(i)])) addr [$dns(xyz=>addr[$var(i)])]\n");
                $var(i) = $var(i) + 1;
            }
        }
```

### memcached

- use the newer libmemcached library

### misc_radius

- new parameter - common_response - get the radius response specific
    attributes in avps

### mtree

- mtree.reload rpc command
- added 'multi' param to mtree definition - new 'multi' param makes
    it possible to store both integer and string typed mtrees into
    single db table

### nathelper

- new option - natping_disable_bflag can be set on a per-registration
    basis to disable NAT pings completely
- removed natping_proceses limit
- set_contact_alias() new function for adding alias parameter to
    contact uri
    - similar to add_contact_alias(), but this works like
        fix_nated_contact(), in the way that new contact uri is
        immediately visible to other modules (e.g., dialog, presence)
- udpping_from_path - enable sending UDP pings with raw sockets from
    Path address

### outbound

- flow-token key is now automatically generated

### path

- support for variables in add_path\*() parameters

### permissions

- DNS domain names in address table - possibility to check also
    against DNS domain names with allow_address() function. Now in the
    address table one group can have exact IPs, subnet IPs and DNS
    domain names

### pike

- counter for blocked IP addresses

### presence

- RPC command presence.cleanup

### pv

- RPC commands shvGet and shvSet to manipulate and list shared
    variables
- new transformations - encode.base64 and decode.base64
- new $conid PV - returns the TCP connection ID that the current
    message arrived on (for TCP/TLS/WS/WSS) or $null (for UDP/SCTP)
- PV to provide access to the user-agent string retrieved from usrloc
- added $\_s(format) variable - evaluate the format as a dynamic
    string ($var(x) = "sip:" + $rU + "@" + $fd; is equivalent of:
    $var(x) = $\_s(<sip:$rU@$fd>);)
- added transformations for url encode/decode
- param transformation can (optionally) specify what the parameter
    delimiter is

### registrar

- add Supported headers for outbound extensions in replies
- RFC 5626 section 6 support - behaviour when outbound in use but
    first edge proxy does not support it
- added additional unregister() exported function to allow the removal
    of a specific contact - contact is removed by using the ruid (unique
    ID for the location record)
- set_q\_override API function - override the value of the q parameter
    from the Contact header in subsequent calls to the save() function
    for the current request
- regid_mode parameter - control if REGISTER contact regid (if
    present) is used when REGISTER request is saved even if request does
    not indicate support for outbound
- option to take the socket from an xavp - child named "socket" of
    xavp named by xavp_cfg parameter

### rr

- use sips to build RR headers if R-URI has sips

### rtpproxy

- database support to rtpproxy
    - if db_url modparam is set rtpproxy sets will be loaded from
        database
    - if the instance is marked as disabled in database it will be
        loaded as disabled

### sca

- private hold handling

### sdpops

- new functions:
    - sdp_with_transport(string) - hecks if is a media with the
        transport string.
    - sdp_remove_transport(string) - emoves the media info from the
        SDP that matches string transport.
    - sdp_get_line_startswith(avpvar, string)

### sipcapture

- table param for sip_capture() function
- allow customization for X-CID header
- added support for multiple capture modes

### siputils

- new functions:
    - is_supported(option) that can be used to check if request has a
        Supported header listing the given option.
    - is_first_hop() - detect if it is first hop after original sender

### snmpstats

- the SNMPstats module has been extended with a large set of new data,
    and the KAMAILIO-MIB has been extended with new OIDs
- the new data reflects the Kamailio server process (memory,
    configuration at compile time), network transports and modules.

### textopsx

- enable usage of msg_apply_changes() for sip replies

### tls

- config param can now specify a file or directory
- extended supportd tls methods - TLSv1.1 and TLSv1.2 (from openssl
    1.0.1e on) added to the internal list

### tm

- new event route to be executed for each branch failure
    - branch failure routes must be named with the format:
        - event_route\[tm:branch-failure:myroute\]
        - and enabled with the function:
            t_on_branch_failure("myroute")
- asynchronous processing of SIP responses in configuration file
- use angle brackets around From/To URI for local generated requests
- new parameter - failure_exec_mode
    - specify whether to consider or not execution of failure routing
        blocks for branches that had local delivery error (e.g., no open
        tcp connection and set_forward_no_connect() used in config)
- new module parameter - dns_reuse_rcv_socket
    - control reuse of the receive socket for additional branches
        added by dns failover
    - if 1, the rcv socket is used, if not it depends on mhomed - when
        that is 0, the first socket is used, otherwise will be selected
        based on routing table
    - default is 0
- new function t_set_disable_internal_reply(0\|1) to disable\|enable
    internal reply option per transaction
- new function t_use_uac_headers()
    - set internal flags to tell tm to use UAC side for building
        headers for local generated requests (ACK, CANCEL) - useful when
        changing From/To headers using other functions than
        uac_replace\_\[from\|to\]()

### tmx

- $T_reply_ruid - pv to return ruid for a branch reply

### uac

- added possibility to authenticate generated requests
    - $uac_req(auser) - specify the authentication username
    - $uac_req(apasswd) - specify the authentication password
    - if both attributes above are set and the request is challenged
        with 401/407, then the request is resent with auth header
- ability to set Call-Id through $uac_req(callid)
- $uac_req(sock) - new attribute to set local send socket for
    generated requests
    - $uac_req(sock) = "<udp:127.0.0.1:5060>";

### usrloc

- new RPC commands:
    - ul.rm
    - ul.rm_contact
    - ul.flush
    - ul.add
- ul.add RPC and ul_add MI commands modified to be able to set the
    contact path
- new option for db_mode - DB_READONLY (4)
    - location records are loaded only at startup
    - no write back to database, not even at shutdown
    - useful when registrations are replicated to another node that
        does the db storage at runtime
- new parameter db_obs_ruid - if set to 1, db update/delete operations
    are done using ruid value
    - if paramter set to 0 (default) the old style using aor, contact
        and call-id is done
- added two new rpc commands ul.db_users and ul.db_contacts - for
    accessing number of different AoRs and contacts in a location table
- new command ul.db_expired_contacts tells number of expired contacts
- detect lost tcp connections on timer and set associated contact as
    expired
    - new module parameter to control this feature: handle_lost_tcp

### utils

- support for sending POST-Requests to http_query() method

### websocket

- added "cors_mode" parameter to enable "Cross-origin resource
    sharing" on WebSocket handshakes
- new function ws_close() - enables immediate closure of a WebSocket
    connection from the configuration file.

### xhttp

- added transformation to break a URL into "path" and "querystring"

## New in Core

- IPv6 compile time flag removed - it is not possible to compile
    Kamailio without IPv6 anymore, improving the code maintainability in
    the core and several modules
- set TOS for IPv6 sctp sockets
- the syn_branch parameter has been removed from the core, as Kamailio
    was not fully standard compliant if this was activated.
- auto-define cfg directive MOD_modname for each loaded module
    - example: if acc module is loaded, MOD_acc is defined in cfg
- new parameters:
    - modinit_delay - specify microseconds to sleep after initializing
        a module in order to cope with systems having rate limits on new
        connections to db or other servers
- removed syn_branch functionality for calculating Via branch
    parameter
- allow c++ style of one line comments (i.e., / / comment ...) - can
    make easier the read of config files with defines and comments
- execute event_route\[core:receive-parse-error\] block on error of
    initial sip message parsing - note that the SIP message is broken in
    this case, but it gets access to source and local socket addresses
    (ip, port, proto, af) as well as the whole message buffer and its
    size
- store current executed cfg action in a global variable - can be
    retrieved by module to access name of config file and the line
- handle pv comparison with $null as when 'defined' is used
- respect order field in NAPTR, as required by RFC 2915
    - the beaviour is controlled by core parameter
        dns_naptr_ignore_rfc
    - default is 1, preserving current behaviouf to ignore rfc
        requirements (for backward compatibility)

### Components

- SCTP support implementation from core was moved as a module. No need
    to recompile everything to get SCTP support, just load sctp module
- STUN implementation from core was moved as a module

### Makefile

- added install-initd-centos target - install centos specific init.d
    scripts

### kamailio.cfg

- use "co" flags for engaging rtpproxy
- route SUBSCRIBE for event message-summary to voicemail server
- reset $du for voicemail re-routing in failure route

## Tools

### kamctl

- added parameters to add the contact path:
    `kamctl ul add <user> <uri> <expires> <path>`
- command for dialog module management
- added show command to display user attributes in subscriber table
- new commands can be defined in separate files
    - write new kamctl commands either in CFGDIR/kamctl.newcmd.ext or
        \~/.kamctl/kamctl.newcmd.ext
    - 'newcmd' has to be replaced with the name of the command
    - the file must include cmd_newcmd() function which is executed
        with the parameters after the command name
- shortcut command to do q query to a database based on key and value
    - kamctl db smatch table key value - return the record from table
        that has column key matching the value as string (quoted value)
    - kamctl db nmatch table key value - return the record from table
        that has column key matching the value as non-quoted
    - examples:

<!-- -->

        kamctl db smatch subscriber username test
        kamctl db nmatch subscriber id 123

- added commands to set extra columns in subscriber table
    - useful to deal with columns added for load_credentials of
        auth_db module
        - 'sets' - sets a column with string value
        - 'setn' - sets a column with numeric value

### kamdbctl

- new command add-tables
    - creates only tables that are groupped under same id, thus have
        the sql script in a file
    - syntax: kamdbctl add-tables \<gid>
    - there has to be a \<gid>-create.sql script, eg: kamdbctl
        add-tables lcr
