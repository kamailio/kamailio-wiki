# Basic SDP parser for app_python

Python script to be used from kamailio.cfg via app_python module (cached
here from mailing list).

``` python
# -*- coding: utf-8 -*-

import Router

class OriginType:
    username = None
    sess_id = None
    sess_ver = None
    nettype = None
    addrtype = None
    unicast_addr = None
    RAW_STRING = None

# WARNING:
# Maybe in the format: <base multicast address>[/<ttl>]/<number of addresses>
# Examples:
#   c=IN IP4 224.2.36.41/127
#   c=IN IP4 224.2.36.42/127
#   c=IN IP4 224.2.36.43/127
#   c=IN IP4 224.2.1.1/127/3
#   c=IN IP6 FF15::101/3
class ConnectionType:
    nettype = None
    addrtype = None
    connection_addr = None
    RAW_STRING = None

# Formats:
#   <media> <port> <proto> <fmt> ...
#   <media> <port>/<number of ports> <proto> <fmt> ...
class MediaType:
    media = None
    port = None
    proto = None
    fmt = None
    args = ""
    RAW_STRING = None

class SDPBodyMessage:
    origin = OriginType()           # o=root 2135137275 2135137277 IN IP4 192.168.254.54
    session_name = None             # s=Asterisk PBX 1.8.7.1
    conn_data = [] # of ConnectionType()    # c=IN IP4 192.168.254.54
    media = [] # of MediaType()         # m=audio 17406 RTP/AVP 0 101


class SdpParser:

    def __init__(self):
    pass

    def __del__(self):
    pass

    def child_init(self, y):
    return 0


    def ParseSDP(self, msg, args):


    sdpBody = SDPBodyMessage()
    sdpBody.origin = OriginType()
    sdpBody.session_name = None
    sdpBody.conn_data = []
    sdpBody.media = []
    
    if args.lower().find("application/sdp") >= 0:
    
        SIPMSGLines = []
        SDPBodyLines = []
        
        emptyLineCounter = 0
        for line in args.splitlines():
        if line.strip() == "":
            emptyLineCounter += 1
            continue
        
        if emptyLineCounter == 0:
            SIPMSGLines.append(line)
        else:
            SDPBodyLines.append(line)

        for sdpLine in SDPBodyLines:
        sdpType = sdpLine.split("=")[0].lower().strip()
        sdpPartLine = sdpLine[2:]
        sdpParts = sdpPartLine.split()

        if sdpType == "o":
            oType = OriginType()
            try:
            oType.username, oType.sess_id, oType.sess_ver, oType.nettype, oType.addrtype, oType.unicast_addr = sdpParts
            oType.RAW_STRING = sdpPartLine.strip()
            sdpBody.origin = oType
            except:
            pass
            continue

        if sdpType == "s":
            sdpBody.session_name = sdpPartLine
            continue
        
        if sdpType == "c":
            cType = ConnectionType()
            cType.nettype, cType.addrtype, cType.connection_addr = sdpParts
            cType.RAW_STRING = sdpPartLine.strip()
            sdpBody.conn_data.append(cType)
            continue
        
        if sdpType == "m":
            mType = MediaType()
            mType.media = sdpParts[0]
            mType.port = sdpParts[1]
            mType.proto = sdpParts[2]
            mType.fmt = sdpParts[3]
            mType.args = " ".join(sdpParts[4:]).strip()
            mType.RAW_STRING = sdpPartLine.strip()
            sdpBody.media.append(mType)
            continue


        
        msg.call_function("append_hf", "X-Mangled--Connection-From: %s:%d\r\n" % (msg.src_address[0], msg.src_address[1]))
        msg.call_function("append_hf", "X-Mangled--Contact: %s\r\n" % msg.getHeader("Contact"))
        if sdpBody.origin.RAW_STRING is not None:
            msg.call_function("append_hf", "X-Mangled--Origin: o=%s\r\n" % sdpBody.origin.RAW_STRING)
        if sdpBody.session_name is not None:
            msg.call_function("append_hf", "X-Mangled--Session-Name: s=%s\r\n" % sdpBody.session_name)
        CLcount=0
        for CLine in sdpBody.conn_data:
        if CLine.RAW_STRING is not None:
            msg.call_function("append_hf", "X-Mangled--Connection-Data-%d: c=%s\r\n" % (CLcount, CLine.RAW_STRING))
        CLcount += 1

        CMcount=0
        for CMline in sdpBody.media:
        if CMline.RAW_STRING is not None:
            msg.call_function("append_hf", "X-Mangled--Media-Data-%d: m=%s\r\n" % (CMcount, CMline.RAW_STRING))
        CMcount += 1

        return 1

def mod_init():
    return SdpParser()

```

In kamailio.cfg:

``` c
loadmodule "app_python.so"
modparam("app_python", "script_name", "/opt/kamailio/python/sdp.py")
modparam("app_python", "mod_init_function", "mod_init")
modparam("app_python", "child_init_method", "child_init") 
```

and put in a routing block:

``` c
python_exec("ParseSDP", $mb);
```
