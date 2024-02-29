# RTPProxy-NG

This page is intended to collate suggestions for improvements and new
features for RTPProxy and the Kamailio RTPProxy module.

### Architecture

#### JSON Interface

- Will make the interface simpler and easier to extend.

#### Send/receive SDP to/from RTPProxy

- Enables the RTPProxy to see and directly manipulate the SDP.

### Kamailio RTPProxy Module

#### re-INVITE/UPDATE failure handling

- When a re-INVITE/UPDATE fails the original stream should be used.
- Currently, the module closes the old stream.
- Also may cause problems with early media where early stream and
    active stream are connected to different end-points.

#### Hangs during startup when RTPProxy instance is unavailable

- Each RTPProxy instance is contacted in-sequence. If one or more
    RTPProxy instances is unavailable Kamailio hangs until the connect
    attempt times out.
- RTPProxy connection at start-up should be asynchronous.

#### Enable/disable and add/remove RTPProxy instances

- Would be good to load sets from a DB.
- DB should contain indications whether RTPProxy is enabled/disabled
    at load.
- Reload DB to change RTPProxy sets (and enable/disable proxies within
    sets) - probably needs hash-table data-structure changes.
- Be able to mark RTPProxies enabled/disabled through MI command.
    Existing calls (and re-INVITE/UPDATE) on disabled proxies should
    continue to work, but new calls should not go to a disabled proxy.

#### Receive RTP timeout notifications

- rtpproxies should be able to notify, via the new rtpproxy protocol,
    media timeouts to the corresponding Kamailio instance (to the
    rtpproxy module).
- The rtpproxy module should be able to trigger some event route in
    which the user could decide to send a BYE in both directions, stop
    the accounting or whatever. No more HTTP XMLRPC for notifying
    timeouts to a single Kamailio server (hack).

### RTPProxy

#### ICE Support

- TURN Server as well as RTPProxy
- Handle ICE candidate lines in SDP
- Breaking ICE (for CALEA and call recording)
- Architecture, SDP sent to/from RTPProxy (from above) will be
    required

#### Bridging

- Currently can only specify two networks
- Would be good to be able to specify many networks and bridge between
    any combination

#### Failover

- Deploy RTPProxies in pairs, replicate media sessions between them,
    fail-over/swap between instances.

#### RTP timeout notification

- If a media sessions timeouts (so rtpproxy closes its sockets)
    rtpproxy should notify it to the proper Kamailio instance by
    providing data enough to Kamailio about the session (call-id, from,
    to...).

#### RTP/AVP to RTP/SAVPF conversion

- For WebRTC
- Need to be able to decrypt traffic from WebRTC and encrypt traffic
    to WebRTC
- Need to be able to terminate and originate RTCP messages for the
    stream from/to WebRTC (if the other side does not support WebRTC)
- ICE support (above) will be required

#### SRTP-RTP Gatewaying

- Works only if RTPProxy sees the session key (e.g. SDES: RFC 4568)

#### Session Statistics

- The current statistics give little information about the media
    session. The most obvious missing informations is the codec used
    during the session.
