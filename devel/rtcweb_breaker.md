The [Doubango Telecom](http://www.doubango.org)
[webrtc2sip](http://webrtc2sip.org/) gateway includes an RTCWeb Breaker
component. The Doubango RTCWeb Breaker is a B2BUA. It would be useful to
have a Kamailio RTCWeb Breaker that is lighter-weight and which can be
used without degrading the SIP signalling by using a B2BUA.

An RTCWeb Breaker converts SDP and media streams between those supported
by WebRTC end-points and non-WebRTC end-points. An RTCWeb Breaker does
not need to transcode the media streams; G.711 is supported by most SIP
UAs and is a Mandatory To Implement (MTI) codec in WebRTC, and many SIP
UAs now support OPUS and VP8 too.

## Proposed RTCWeb Breaker architecture

The RTCWeb Breaker should consist of two components:

-   A Kamailio control module
-   An RTCWeb Breaker daemon

Kamailio should control the RTCWeb Breaker using a light-weight TCP
protocol. SDP should be handled and manipulated by the RTCWeb daemon.

RTCWeb Breaker sessions should be initiated within Kamailio failure
routes and branch-failure routes. In parallel forking scenarios Kamailio
should create distinct RTCWeb Breaker sessions in branch-failure routes
enabling sessions to be successfully forked to WebRTC and non-WebRTC
end-points.

![breaker2.png](/devel/breaker2.png)

## Example RTCWeb Breaker signalling flow

![breaker.png](/devel/breaker.png)

## Scenarios

The RTCWeb Breaker SHOULD support:

-   Sessions from WebRTC to non-WebRTC end-points
-   Sessions from non-WebRTC to WebRTC end-points
-   Session renegotiation using re-INVITE and UPDATE
-   Early media (SDP in 183, PRACK, and UPDATE)
-   SDP offer in INVITE and answer in 180/183/200
-   SDP offer in 180/183/200 and answer in ACK
-   Parallel forking (distinct RTCWeb Breaker sessions for each branch
    that requires it)
