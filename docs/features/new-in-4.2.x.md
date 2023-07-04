# Kamailio SIP Server (SER) - New Features in 4.2.x Version

**First release in this series is numbered 4.2.0, released on October
16, 2014.**

\<fc #0000FF> **Previous stable version was 4.1.x (released on December
04, 2013), see what was new in that release at:** \</fc>

-   \<fc
    #0000FF><http://www.kamailio.org/wiki/features/new-in-4.1.x>\</fc>

\<fc #800000>*This is a draft of new features added in 4.2.x version,
manually updated, thus not fully synchronized with what is new in source
code repository.*\</fc>

## New Modules

### evapi

-   push details of events to remote applications via tcp
-   <http://kamailio.org/docs/modules/4.2.x/modules/evapi.html>

### db_mongodb

-   DB APIv1 connector implementation for MongoDB NoSQL engine
-   <http://kamailio.org/docs/modules/4.2.x/modules/db_mongodb.html>

### jsonrcp-s

-   implementation of JSONRPC server over HTTP
-   <http://kamailio.org/docs/modules/4.2.x/modules/jsonrpc-s.html>

### kazoo

-   middle layer communication message queue for Kazoo platform
-   <http://kamailio.org/docs/modules/4.2.x/modules/kazoo.html>

### ndb_cassandra

-   configuration script connector for Cassandra NoSQL engine
-   <http://kamailio.org/docs/modules/4.2.x/modules/ndb_cassandra.html>

### ndb_mongodb

-   configuration script connector for MongoDB NoSQL engine
-   <http://kamailio.org/docs/modules/4.2.x/modules/ndb_mongodb.html>

### nosip

-   allow handling non-sip traffic via event_route
-   <http://kamailio.org/docs/modules/4.2.x/modules/nosip.html>

### rtpengine

-   control rtpengine application for RTP relaying or WebRTC gatewaying
-   successor of rtpproxy-ng
-   <http://kamailio.org/docs/modules/4.2.x/modules/rtpengine.html>

### tsilo

-   attach attributes and add new branches to ongoing transaction
-   <http://kamailio.org/docs/modules/4.2.x/modules/tsilo.html>

### uuid

-   variables returning unique variables using libuid
-   <http://kamailio.org/docs/modules/4.2.x/modules/uuid.html>

## New in Old Modules

### acc

-   acc functions can now be used with strings containing pseudo
    variables
-   if db_insert_mode==2, use async db insert to store the record
-   added reason_from_hf module parameter to fill the reason filed from
    header
-   added the cdr_expired_dlg_enable module parameter to toggle on/off
    the cdr writing feature (default is off=0)
    -   if enabled, only the dlg_vars in the cdr_extra will get printed
        on dialog expiry; the other parameters' values in the cdr extra
        will be left empty

### app_lua

-   sr.xavp.get now can return all indexes and can be used with indx \<0
    to return values counting from the end.

### app_perl

-   option to reset embedded interpreter after a number of executions
-   ability to run on Mac OS X - Darwin
-   new param perl_destroy_func to specify Perl function to be executed
    before destroying the embedded interpreter
-   new parameter reset_cycles to specify after how many executions the
    embedded interpreter is going to be re-initialized
-   synchronized log level values

### async

-   new function async_task_route(rname) - execute actions in a routing
    block via core async framework

### auth_db

-   new flag for auth_check() to skip caller id check for forwarding
    requests
    -   caller id check is skipped for INVITE, BYE, PRACK, UPDATE,
        MESSAGE -- these requests can come with an anonymous caller id
-   load_credentials defaults now to empty list (null value)

### carrierroute

-   removed dependency on libconfuse

### cdp

-   new RPC commands to disable/enable a peer dynamically
-   added RPC cmd to list diameter information, including peers and
    their details
-   added loadbalancing across diameter peers within the same realm and
    with the same metric

### corex

-   corex.shm_status and corex.shm_summary rpc commands
-   new function send_data(uri, data)
    -   send arbitrary formatted data to uri
    -   uri param has to be a valid sip uri
    -   both parameters can include pseudo-variables
-   functions for management of msg internal flags
    -   msg_iflag_set("flagname")
    -   msg_iflag_reset("flagname")
    -   msg_iflag_is_set("flagname")
    -   flagname can be: USE_UAC_FROM, USE_UAC_TO or UAC_AUTH
    -   these functions should not be used in configuration file for
        (re)setting the flags, those are done by various functions
        internally, however, in very particular cases they might be
        useful (e.g., changing From/To via textops functions)

### ctl

-   fifo server implementation was lacking adding struct values-
    specifier '{' was not handled for adding values
-   implemented adding array with '\[' specifier

### db_cluster

-   new parameter max_query_length - set threshold in second after which
    a connection is marked inactive if the query fails
-   allow to let connectioncs being active if the error is due to some
    sql mistake - default is 0 (set connection inactive immediately,
    same behavior as so far)

### db_mysql

-   implemented async raw query and async insert - both use the core
    async framework

### db_text

-   refactoring to store result in private container, instead of
    connection structure

### debugger

-   show route name in cfgtrace output
-   new parameter log_level_name - allow overwriting default log level
    name for cfgtrace messages

### dialog

-   added parameter and dialog property to disable timeout reset
-   option to run dialog main timer tasks via dedicated process
    -   timer_procs - new parameter, if set to 1, a dedicated timer
        process is used, if set to 0 (default), the core timer is used
        (existing behavior)
-   if ACK for 200ok is not coming in 60sec, dialog lifetime is
    shortened for 10 more seconds
-   refactored json serialization format for dialog profiles
-   add a unique id for each profile item - internal sruid is used for
    generating uids
-   internal refactoring to allow adding remote profile - this is a
    profile item without a local dialog - allow operations to add or
    remove such profiles
-   added cleanup of expired remote profiles via internal timer
-   new config function - dlg_remote_profile - dlg_remote_profile(cmd,
    profile, value, uid, expires
    -   manage non-local profiles from configuration file
    -   cmd can be add (insert a remote profile) and rm (remove a remote
        profile)
-   allow '\_' in dlg profile names
-   replicate profiles to other nodes via dmq module
-   add option to increment cseq upon local authentication to next hop
    -   feature has to be enabled via module parameter
        track_cseq_updates
    -   it does it only for downstream direction (requests from caller
        and callee, as it is the typical use case of calling via a
        provider, after authenticating the caller locally, provider asks
        for another 'trunk' authentication
    -   diff of cseq value is stored in dialog var named 'cseq_diff',
        therefore be sure it is not overwritten from config

### dialog_ng

-   added DB support for dialog_ng

### dispatcher

-   expand attrs while running rpc command dispatcher.list
-   ds_select_dst/domain can take args as string (not only int) -
    internal conversion of string->int (if possible)
-   new variant - ds_is_from_list(groupid, mode, uri)
    -   can match against records in dispatcher groups
    -   if groupid==1 - will match against all groups
    -   if uri is empty, then will match against source address (ip,
        port, proto). Otherwise it has to be a full SIP URI value. The
        matching is not taking in consideration any parameter apart of
        transport
        -   mode is a bitmask to tell the matching rules
            -   if it is 0, will match everything: ip, port and protocol
            -   if bit one is set, will skip matching the port
            -   if bit two is set, will skip matching the protocol

### dmq

-   added function to broadcast message from config file
-   added RPC interface to query the nodes in the cluster
-   new function: dmq_t\_replicate() - replicates current SIP message to
    all active DMQ nodes. Includes built-in loop detection which can be
    skipped with optional parameter
-   new function: dmq_is_from_node() - Checks whether current message
    has come from another node, based on source IP

### htable

-   add event route when htable entries expire
    -   event_route\[htable:expired:\<table>\] called when an entry
        expires
    -   pseudo-vars $shtrecord(key) and $shtrecord(value) access the
        expired content
-   new config function sht_reset("tname") - remove all items in the
    hash table
-   iterator implementation for hash tables
    -   new functions:
        -   sht_iterator_start(iname, hname)
        -   sht_iterator_next(iname)
        -   sht_iterator_end(iname)
    -   the current item in the iterator is accessible via:
        -   $shtitkey(iname)
        -   $shtitval(iname)

### ims_auth

-   ims_www_challenge() allows specification of auth algorithm from cfg

### ims_charging

-   allow E164 to be used as subscription-type in CCR requests
-   new capability to add dialog data to contact when charging session
    is created

### ims_registrar_pcscf

-   new features to support P-CSCF subscription and publishing reg event
-   new modparam hashing_type - hash storage based on IP:PORT
-   new exported function pcscf_assert_called_identity() - used to
    assert the identity for SIP responses
    -   function retrieves Called-Party-ID AVP from SIP request and adds
        to SIP response as P-Asserted-Identity as per TS 24.229 section
        5.2.6.4.4
-   new param ue_unsubscribe_on_dereg: for UEs that do no send
    UNSUBSCRIBE for reg event when de-registering
-   option to disable the "received check" upon lookup
-   new module parameter ignore_contact_rxport_check to ignore check on
    received port
-   new module parameter force_icscf_uri - if set we use it as the ICSCF
    next hop - if not set (default) we use DNS SRV to find ICSCF next
    hop
-   new module function lookup_transport() - this allows terminating
    P-CSCF to check(and possibly) change the transport for the request
    before relaying/fwding to terminating UE
-   option to ignore "REGISTERED STATE", when checking for a registered
    client

### ims_registrar_scscf

-   new features to fully support subscription to reg_event

### ims_qos

-   use p_asserted_identity as default subscription-id for AAR requests
-   allow E164 to be used as subscription type for AAR requests
-   store AAR flow descriptions in CDP session
-   new parameter: authorize_video_flows - a flag that specifies whether
    or not to authorize video flows

### ims_usrloc_pcscf

-   added DB support for persistent storage
-   added storage for security data (IPSEC/TLS)

### ims_usrloc_scscf

-   new features to fully support subscription to reg_event
-   add dialog data to contact and tear down dialog when contact is
    removed
-   new match mode CONTACT_PORT_IP_ONLY allows to match contact based
    only on port and IP - ignoring user part
-   added ability to do AKA resync of auth vectors

### ipops

-   new pv to get hostname details:
    -   $HN(n) - hostname
    -   $HN(d) - domain
    -   $HN(f) - fullname
    -   $HN(i) - ip address
    -   based on gethsontname and resolving it

### kex

-   rpc commands for statistics

### lcr

-   added capability to inactive a faulty gateway and re-activate it
    automatically by successful response to OPTIONS ping

### maxfwd

-   max_limit default value set to 70 - recommended value by RFC

### memcached

-   new parameter 'stringify' to the memcached module to force the
    module to evaluate all returned values as strings. This is useful if
    other parts of the memcached infrastructure are not able to set the
    correct value flags

### mqueue

-   new psuedo-variable to return mqueue size

### mtree

-   added 'multi' param to mtree definition
    -   new 'multi' param makes it possible to store both integer and
        string typed mtrees into single db table
-   added mi/rpc command to match against records in memory trees
-   store reload count and timestamp for trees - print these details via
    mi/rpc summary command

### nathelper

-   added matching carrier grade nat address space (rfc6598)

### permissions

-   set peer tag avp for allow_address_group(), also for
    allow_source_address_group()

### pipelimit

-   run timer at 1000ms - proper execution on timer_interval
-   added pl_check(pipeid, alg, limit)
    -   when alg and limit parameters are given, pl_check() creates the
        pipe if it doesn't exists
    -   if exists, then no change is done to existing pipe (alg and
        limit are not changed)
-   added hash_size parameter
    -   can be used to set the number of slots for the internal hash
        table, which is computed as 2^hash_size (aka 1\<\<hash_size)
    -   default is 6 (2^6 = 64 slots)
-   option disable database loading - if db url or table name are empty,
    skip loading pipes from db

### presence

-   new parameter local_log_level - control verbosity of some log
    messages, default value: L_INFO

### presence_dialoginfo

-   handle all states to get most relevant xml

### pua_reginfo

-   reflect use domain from usrloc
-   avoid duplicate contacts if domain is not considered

### pv

-   added sha256, sha384 and sha512 string transformations
-   new variables - $expires(min) and $expires(max)
    -   return the min and max of expires value for sip message
    -   contact headers are checked with higher priority, if no expires
        parameter there, then Expires header is used
    -   if none is found, $null is returned
-   added pseudo-variable ($aa) for access to algorithm in authorization
    header
-   new variable $su to return source address in uri format
    -   $su is expanded "<sip:$si:$sp;transport=$pr>" - example:
        "<sip:127.0.0.1:5060;transport=udp>"

### registrar

-   new parameter expire_range: allow randomization of expire value
    coming from UA
-   new api function lookup_to_dset()

### rr

-   remove_record_route() - config function to remove record-route lumps

### rtpproxy

-   new parameter to specify an AVP where to store the chosen RTPProxy
    instance IP address
-   allow any config variable for rtpproxy instance

### sca

-   sca_call_info_update can now take an int argument (1=caller,
    2=callee) limiting call-info state update to only that leg's AoR
-   use sca_create_canonical_aor in INVITE/2OO OK handler

### sdpops

-   new function: sdp_with_transport_like()
-   new function: sdp_transport(pv)
-   added sdp_with_ice() function for checking if sdp - contains ICE
    candidate attribute(s)

### sipcapture

-   added X-Rtp stats from Siemens and RTPEngine
-   added insert_retries and insert_retry_timeout parameters, which
    control how many times and for how long Kamailio should try to
    rewrite to the Homer database in case the first attempt fails

### sipt

-   support for parsing CPG and ACM messages
-   support for $sipt_event_info
-   refactored pseudo-variables to be of the form
    $sipt(header\[.field\])

### siptrace

-   adds optional addr param to sip_trace()
    -   address is a SIP uri which specifies the address of the
        capturing server. This parameter trumps duplicate_uri and allows
        tracing to more than one server.
-   added force_send_sock parameter - the local interface in form of SIP
    uri from where to send the duplicated traffic

### sqlops

-   new cfg function - sql_query_asycn(con, sql)
    -   execute sql statement via async raw query, if implemented by db
        driver module (e.g., db_mysql
    -   the query is executed in another process and result is not
        available back to config, thus it should be used only for sql
        statements that don't return values (e.g., insert, delete,
        update...)

### textops

-   new functions to manage multipart bodies:
    -   set_body_multipart(\[txt,content_type\]\[,boundary\])
    -   append_body_part(txt,content_type\[, content_disposition\])
    -   remove_body_part(content_type)

### textopsx

-   msg_apply_changes() returns error if record route was already added
-   msg_apply_changes() exits config execution if result is not parsing
    well - sip_msg_t structure is can be invalid

### tls

     * extended supported tls methods - TLSv1.1 and TLSv1.2 (from openssl 1.0.1e on)
     * execute event_route[tls:connection-out] - done when a new outgoing tls connection is opened

### tm

-   t_replicate() without outbound proxy address
-   rebuild local Via when force socket is changed in
    event_route\[tm:local-request\] - new forced socket is also set for
    sending out
-   rebuild the local request if uri was changed in event route
-   new api function t_append_branches()

### tmx

-   t_cancel_callid() can set the Reason header in generated CANCEL
-   new function t_reuse_branch()
-   new variable: $T_branch(flags)
-   t_precheck_tran() - lightweight filtering of retransmissions - keep
    track of processed messages per process to catch retransmissions in
    early phase, to avoid simultaneous processing until transaction is
    created
-   precheck_trans - new parameter to enable/disable pre-transaction
    check - enable/disable usage of t_precheck_trans() - don't init
    internal structures

### topoh

-   allow server ip to be used as mask ip

### uac

-   enhancements to remote registration
    -   new rpc commands:
        -   reload records from database
        -   enable/disable a record for remote registration
        -   refresh details of a record from database or add a new one
-   mark request with FL_UAC_AUTH upon using uac_auth()

### userblacklist

-   added check_whitelist function
    -   check_whitelist(string table) finds the longest prefix that
        matches the request URI for the given table and returns true if
        the match is set to whitelist

### usrloc

-   generate callid at startup and increase cseq for records added via
    mi/rpc commands
-   option to set datetime columns as bigint
    -   should handle better daylight shifting
    -   new parameter expires_type - if set to 1, it expects expires and
        last modified columns to be bigint
    -   the change to the type of columns has to be done manually to the
        database server
    -   default values is 0, expecting to work with datetime columns
        (existing behavior)
-   new parameter db_raw_fetch_type - specify what type of query should
    be used in DB-only mode for retrieving contacts for specific needs
    (e.g., sending NAT keepalives)
-   option to control if the null fields should be in insert statement

### utils

-   http_query() now stores result also in case of 4xx replies

### xmlrpc

-   implemented specifier '\[' for array - it is only for add operations
    (no scan)

### websocket

-   option to compile the module without libunistring

## New in Core

### Code

-   struct action has now route name info.
-   dns_naptr_ignore_rfc - new parameter to control the order field in
    NAPTR, as required by RFC 2915
-   -f parameter can take the value '-' to read config from stdin
    -   allows piping the config from various sources (e.g., downloading
        from web)
    -   example: cat /etc/kamailio/kamailio.cfg \| /usr/sbin/kamailio
        -f -
-    L_NPRL aliased to L_ALERT-1 to allow printing messages without
    level name
    -   new defines LM_NPRL() and NPRL() are using it
-   new maro LOG\_\_(...) to allow overwriting default name for log
    level
-   LOG_LN() new macro to print log messages overwriting log level name
-   new global parameter max_recursive_level
    -   replace define ROUTE_MAX_REC_LEV with config paramter
    -   number of allowed recursive levels can be set in config no
    -   it affects calls of route blocks and chained if { ... } else if
        { ... } else ...
-   framework for creating asynchronous pool of workers
    -   dedicated group of processes that can get tasks from other
        processes via memory pipe
    -   react immediately, no time based polling
-   async_workers - new core parameter
    -   specify how many processes to create for async framework
    -   default is 0 (asyn framework disabled)
-   DBG_SYS_MALLOC can be set to get verbose mem ops with system
    allocator - PKG_MEMORY has to be undefined in Makefile.defs
-   mem/f_malloc: link previous free fragment to speed up join/defrag
    operations
-   added field to link sip msg in onsend structure - to be used when
    opening an ongoing stream (tcp/tls) connection
-   new core event executed when a non sip packet is received - event
    type SREV_RCV_NOSIP
-   fork_sync_timer() uses milisecond precision to catch up on delayed
    execution
-   lib/srutils: add sruid_next_safe() function - checks to see if the
    sruid was initialized by same process and if not, triggers a
    reinit - pid is stored inside the sruid struct
-   call onsend_route for replies
    -   onsend_route_reply - parameter to control if onsend_route is
        executed for forwarded replies
-   return OK as string for a successful dns.delete rpc command
-   new internal msg flag - FL_UAC_AUTH - to mark requests that had
    local uac authentication done (e.g., via uac_auth() from uac
    module) - it is an indication that cseq should be increased
-   allow up to three callback functions for net_data_in and
    net_data_out
-   new parameter - log_prefix
    -   can be used to set what prefix to be printed for each log
        message while processing a SIP message
    -   can contain variables
    -   example: log_prefix="\[$mt $hdr(CSeq) $ci\]"
-   add received parameter to via if rport parameter is present -
    required by RFC3581, section 4

### Default Config

-   catch friendly-scanner if anti-flood is enabled
-   enable_full_lr set to 0
-   use t_precheck_trans() to catch retransmissions faster
-   NAT OPTIONS keepalive can be enabled with define WITH_NATSIPPING

## Tools

### Kamctl

-   dispatcher command updated to handle all available columns in
    database table
-   added shortcuts for dialog mi commands
-   new command 'trap' - useful to get a full bt dump of all kamailio
    processes
-   db connect - new command for db management subset - execute to
    command line client tool and stay connected using the attributes
    from kamctlrc
-   address dump command to list subnets
