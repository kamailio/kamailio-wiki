# Pseudo-Variables

Version: Kamailio SIP Server v5.8.x (devel)

![pseudovariables.png](pseudovariables.png)

## Introduction

The term `pseudo-variable` is used for special tokens that can be given
as parameters to different script functions and they will be replaced
with a value before the execution of the function.

The beginning of a `pseudo-variable` is marked by the character `$`. If
you want to have the character `$` just double it `$$`.

There is a set of predefined pseudo-variables, which have the name
composed from one or more characters, and special pseudo-variables that
are references to dynamic fields (AVP and Headers).

Pseudo-Variables are implemented by various modules, most of them are
provided by **pv** (if there is no special reference to a module, expect
that the pseudo-variable is provided by **pv** module).

## Pseudo-variables usage

Pseudo-variables can be used with many modules, among them:

-   acc
-   avpops
-   htable
-   http_async_client
-   textops
-   uac
-   xlog

## The list of pseudo-variables

Predefined pseudo-variables are listed in alphabetical order.

### $$ - Pseudo-variable marker

`$$` - represents the character `$`

### $\_s(format) - Evaluate dynamic format

**$\_s(format)** - returns the string after evaluating all
pseudo-variables in format

        $var(x) = "sip:" + $rU + "@" + $fd;

        # is equivalent of:

        $var(x) = $_s(sip:$rU@$fd);

### $ai - URI in P-Asserted-Identity header

**$ai** - reference to URI in request's P-Asserted-Identity header (see
RFC 3325)

### $adu - Auth Digest URI

**$adu** - URI from Authorization or Proxy-Authorization header. This
URI is used when calculating the HTTP Digest Response.

### $aa - Auth algorithm

**$aa** - algorithm from Authorization or Proxy-Authorization header.

### $ar - Auth realm

**$ar** - realm from Authorization or Proxy-Authorization header

### $au - Auth username user

**$au** - user part of username from Authorization or
Proxy-Authorization header

### $ad - Auth username domain

**$ad** - domain part of username from Authorization or
Proxy-Authorization header

### $aU - Auth whole username

**$aU** - whole username from Authorization or Proxy-Authorization
header

### $Au - Acc username and realm/domain

**$Au** - username for accounting purposes. It's a selective pseudo
variable (inherited from acc module). It returns the auth username and
realm ($au@$ar) if it exists or From URI ($fu) otherwise.

### $AU - Acc username

**$AU** - username for accounting purposes. It's a selective pseudo
variable (inherited from acc module). It returns the auth username ($au)
if it exists or From user ($fU) otherwise.

### $branch(name) - Branch attributes

**$branch(name)** - reference to attribute 'name' of a branch

This pseudo variable gives you access to the "additional branches" only,
not to the "main branch". E.g. if there are 3 clients registered for the
same AoR, after lookup() you will have one contact in the "main branch"
and two "additional branches". Using $branch() you can access the
additional branches, the main branch can be accessed using $ru and $du.
(Note: In branch_routes there is no distinction between the main and the
additional branches - the branch_route will be called once for each one
of them.)

The 'name' can be:

-   uri - return uri of the branch
-   dst_uri - return destination uri (next hop address)
-   path - return the path vector for the branch
-   q - return the q value of the branch as integer `0..100` (representing `q * 100`)
-   send_socket - return the socket to be used to send the branch
-   count - return the number of the branches
-   flags - return the branch flags value
-   ruid - return the ruid of the branch (Record internal Unique ID from
    usrloc)

The PV can take an index to access a specific branch:
$(branch(name)\[index\])

Example:

``` c
$var(i)=0;
while($var(i)<$branch(count))
{
   xlog("$(branch(uri)[$var(i)])\n");
   $var(i) = $var(i) + 1;
}
```

Starting with 3.1.0, you can assign value per attribute. Index can be
used to update a specific branch:

``` c
$(branch(attr)[index]) = value;
```

If index is missing, first branch is used. If index is -1 the last
branch is used.

Assigning $null to uri attribute will drop the branch, for the rest of
attributes will just set the value to null.

``` c
$(branch(uri)[2]) = "sip:test@kamailio.org;transport=sctp";
```

### $br - Request's first branch

**$br** - reference to request's first branch

🔥**IMPORTANT**: It is R/W variable, you can assign values to it directly in
configuration file (will add a new branch).

### $bR - Request's all branches

**$bR** - reference to request's all branches

### $bf - Branch flags

**$bf** - reference to branch flags of branch 0 (RURI) - decimal output

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $bF - Branch flags

**$bF** - reference to branch flags of branch 0 (RURI) - hexa output

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $bs - Body size

**$bs** - body size

### $ci - Call-Id

**$ci** - reference to the value of call-id header

### $cl - Content-Length

**$cl** - reference to the value of content-length header

### $cnt(pv) - Count number of pvs

**$cnt(avp)** - return the number of avps

``` c
xlog("$$avp(x) found $cnt($avp(x)) times\n");
```

**$cnt(xavp)** - return the number of xavps

     * $cnt($xavp(key[*])) : number of XAVPs "key".
     * $cnt($xavp(key[n]=>sub[*])) : number of children "sub" in XAVP "key[n]".
     * $cnt($xavp(key[*]=>sub[*])) : total number of children "sub" in all XAVPs "key".

     * $cnt($xavp(key[n])) : 1 or 0 (if this index exists or not).
     * $cnt($xavp(key[-n])) : same but with reverse indexing (-1 is the last index).

     * $cnt($xavp(key[*]=>sub[n])) : number of children "sub[n]" that exist in all XAPVs "key".

     * $cnt($xavp(key)) is the same as $cnt($xavp(key[*])).
     * $cnt($xavp(key=>sub)) is the same as $cnt($xavp(key[*]=>sub[*]))

### $conid - TCP Connection ID

**$conid** - The TCP connection ID of the connection the current message
arrived on for TCP, TLS, WS, and WSS. Set to $null for SCTP and UDP.

### $cs - CSeq Number

**$cs** - reference to the sequence number in the CSeq header. The
method in the CSeq header is identical to the request method, thus use
$rm to get the method (works also for responses).

### $csb - CSeq Header Body

**$csb** - reference to the CSeq header body (number method).

### $ct - Contact header

**$ct** - reference to the value of contact header

### $cT - Content-Type

**$cT** - reference to the value of content-type header

### $dd - Domain of destination URI

**$dd** - reference to domain of destination uri (without port)

### $def(name) - Defined Value

**$def(name)** - return a defined value.

Example:

``` c
#!define ABC xyz

xlog("FLT_ACC: $def(ABC)\n");
```

### $defn(name) - Defined Value As Number

**$defn(name)** - return a defined value as a signed integer.

Example:

``` c
#!define FLT_ACC 1

xlog("FLT_ACC: $defn(FLT_ACC)\n");
```

### $di - Diversion header URI

**$di** - reference to Diversion header URI

### $dip - Diversion "privacy" parameter

**$dip** - reference to Diversion header "privacy" parameter value

### $dir - Diversion "reason" parameter

**$dir** - reference to Diversion header "reason" parameter value

### $dic - Diversion "counter" parameter

**$dic** - reference to Diversion header "counter" parameter value

### $dp - Port of destination URI

**$dp** - reference to port of destination uri

### $dP - Transport protocol of destination URI

**$dP** - reference to transport protocol of destination uri

### $ds - Destination set

**$ds** - reference to destination set

### $du - Destination URI

**$du** - reference to destination uri

If loose_route() returns TRUE a destination uri is set according to the
first Route header. $du is also set if lookup() function of 'registrar'
module finds contact(s) behind NAT or if you use the path functionality.
The function handle_ruri_alias() from the nathelper module will also set
it. You can set $du to any SIP URI.

     sip:kamailio.org
     sip:pbx123.kamailio.org;transport=udp
     sip:[2001:DB8::33:2]:5980;transport=tls

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

To reset $du:

    $du = $null;

### $fd - From URI domain

**$fd** - reference to domain in URI of 'From' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

### $fn - From display name

**$fn** - reference to display name of 'From' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

### $fs - Forced Send Socket

**$fs** - reference to the forced send socket for the SIP message (if
any) in the form "proto:ip:port". It is the socket from where Kamailio
is going to send out the message.

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file). Transport proto can be omitted when assigning
value, in which case it is taken from destination URI of the
message.

Example:

``` c
listen=udp:1.2.3.4:5060
...
$fs = "udp:1.2.3.4:5060";
```

### $fsn - Forced Send Socket Name

**$fsn** - reference to the name of the forced send socket for the SIP
message. The name can be assigned to this variable to select a send
socket via its name.

``` c
listen=udp:1.2.3.4:5060 name "s1"
...
$fsn = "s1";
...
$fs = "udp:1.2.3.4:5060";
xdbg("name for forced send socket: $fsn\n");
```

### $ft - From tag

**$ft** - reference to tag parameter of 'From' header

### $fti - Initial From tag

**$fti** - reference to tag parameter of 'From' header as it was in the
initial request (e.g., initial INVITE).

The value From tag in the initial request can be in the To tag, if the
request within the dialog is sent by the callee. This variable detects
who sent the request within the dialog and returns the proper value that
was in the From tag of the request initiating the dialog.

It is exported by **rr** module and has to be used after loose_route().
The append_fromtag parameter is required to be set to 1 in order to have
this variable returning the right value.

### $fu - From URI

**$fu** - reference to URI of 'From' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

Note that changing the From: header may break backwards compatibility
with SIP 1.0 devices.

### $fU - From URI username

**$fU** - reference to username in URI of 'From' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

Note that changing the From: header may break backwards compatibility
with SIP 1.0 devices.

### $fUl - From URI Username Length

**$fUl** - length of the username in the From URI

### $mb - SIP message buffer

**$mb** - reference to SIP message buffer

### $mbu - updated SIP message buffer

**$mbu** - reference to updated SIP message buffer, after applying
changes

### $mf - Flags

**$mf** - reference to message/transaction flags set for current SIP
request

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $mF - Flags in hexadecimal

**$mF** -reference to message/transaction flags set for current SIP
request in hexa-decimal

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $mi - SIP message id

**$mi** - reference to SIP message id

### $ml - SIP message length

**$ml** - reference to SIP message length

### $mt - SIP Message Type

**$mt** - returns 1 if the sip message is a request, returns 2 if the
sip message is a reply

### $od - Domain original R-URI

**$od** - reference to domain in request's original R-URI

### $op - Port in original R-URI

**$op** - reference to port of original R-URI

### $oP - Protocol of original R-URI

**$oP** - reference to transport protocol of original R-URI

### $ou - Original R-URI

**$ou** - reference to request's original URI

### $oU - Username in original R-URI

**$oU** - reference to username in request's original URI

### $oUl - Original R-URI Username Length

**$oUl** - the length of the username in the original R-URI

### $pd - Domain in P-Preferred-Identity header URI

**$pd** - reference to domain in request's P-Preferred-Identity header
URI (see RFC 3325)

### $pn - Display Name in P-Preferred-Identity header

**$pn** - reference to Display Name in request's P-Preferred-Identity
header (see RFC 3325)

### $pp - Process id

**$pp** - reference to process id (pid)

### $pr or $proto - Protocol of received message

**$pr** or **$proto** - protocol of received message (udp, tcp, tls,
sctp, ws, wss)

### $prid - protocol id

**$prid** - internal protocol id

-   0 - NONE
-   1 - UDP
-   2 - TCP
-   3 - TLS
-   4 - SCTP
-   5 - WS
-   6 - WSS
-   7 - OTHER

### $pU - User in P-Preferred-Identity header URI

**$pU** - reference to user in request's P-Preferred-Identity header URI
(see RFC 3325)

### $pu - URI in P-Preferred-Identity header

**$pu** - reference to URI in request's P-Preferred-Identity header (see
RFC 3325)

### $rb - Body of request/reply

**$rb** - reference to message body

### $rc - Returned code

**$rc** - reference to returned code by last invoked function

**$retcode** - same as **$rc**

Note that the value of $rc is overwritten by each new function call.

Example of use:

``` c
    lookup("location");
    $var(rc) = $rc;
    if ($var(rc) < 0) {
        t_newtran();
        switch ($var(rc)) {
            case -1:
            case -3:
                send_reply("404", "Not Found");
                exit;
            case -2:
                send_reply("405", "Method Not Allowed");
                exit;
        }
    }

```

### $rd - Domain in R-URI

**$rd** - reference to domain in request's URI (without port) or to the
Namespace Specific String of a URN (see RFC 2141)

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $rdir(key) - Request Direction

**$rdir(key)** - get the direction of the request within dialog.

The direction is 'downstream' if sent by the caller and 'upstream' if
sent by callee.

The key can be:

-   id - the returned value is an integer: 1 - for direction downstream,
    2 - for direction upstream
-   name - the returned value is a string: 'downstream' or 'upstream'

Example:

``` c
if($rdir(name)=="upstream") {
  xlog("request was sent by callee\n");
}
```

The variable is exported by **rr** module and append_fromtag parameter
must be enabled. The variable has to be used after loose_route()
function.

### $re - Remote-Party-ID header URI

**$re** - reference to Remote-Party-ID header URI

### $rm - SIP method

**$rm** - reference to request's method. Works also for replies (by
using the CSeq header)

### $rmid - SIP Method ID

**$rmid** - returns internal integer representation of SIP method type

### $route_uri - URI in first Route header

**$route_uri** - returns the string with URI field in the first Route
header

### $rp - Port in R-URI

**$rp** - reference to port of R-URI

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $rP - Protocol of R-URI

**$rP** - reference to transport protocol of R-URI

### $rr - SIP reply reason phrase

**$rr** - reference to reply's reason phrase (the text after reply code)

### $rs - SIP reply code

**$rs** - reference to reply's status (status-code, response-code,
reply-code)

### $rt - Refer-to URI

**$rt** - reference to URI of refer-to header

### $ru - Request URI

**$ru** - reference to request's URI (address in the first line of a SIP
request)

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $rU - Username in R-URI

**$rU** - reference to username in request's URI or to the Namespace
Identifier of a URN (see RFC 2141)

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

### $rUl - R-URI Username Length

**$rUl** - the length of the username in R-URI

### $rv - SIP message version

**$rv** - reference to SIP message (reply or request) version

### $ruid - Record internal Unique ID

**$ruid** - the Record internal Unique ID for the location record
selected by calling registrar:lookup()

### $rz - URI Scheme of R-URI

**$rz** - returns R-URI scheme, possible values: sip, sips, tel, tels
and urn, R-URI scheme parsing error should be reflected by value: none

### $RAi - Received advertised IP address

**$RAi** - reference to advertised IP address of the interface where the
request has been received, or $Ri if no advertised address.

### $RAp - Received advertised port

**$RAp** - reference to advertised port where the request has been
received, or $Rp if no advertised port.

### $Ri - Received IP address

**$Ri** - reference to IP address of the interface where the request has
been received

### $Rp - Received port

**$Rp** - reference to the port where the message was received

### $Rn - Received socket name

**$Rn** - reference to the name of the socket where the message was
received

### $RAu - Advertised socket URI

**$RAu** - local socket where the SIP messages was received in URI
format, without transport parameter for UDP, using advertised address
when available.

### $RAut - Advertised socket URI

**$RAut** - local socket where the SIP messages was received in URI
format, always with transport parameter, using advertised address when
available.

### $Ru - Received socket URI

**$Ru** - local socket where the SIP messages was received in URI
format, without transport parameter for UDP.

### $Rut - Received socket URI

**$Rut** - local socket where the SIP messages was received in URI
format, always with transport parameter.

### $sas - Source address in socket format

**$sas** - get source address in socket format (proto:address:port).

### $sbranch(attr) - Static Branch

**$sbranch(attr)** - class of variables allowing to manage the values of
attributes for static branch. The static branch is internal structure
that is used by the functions sbranch_push_ruri() and sbranch_append()
from **pv** module, enabling more flexibility in updating the R-URI
(first) branch attributes as well as extra branches (e.g., for parallel
forking).

The **attr** can be any of the supported values for **$branch(attr)**
class of variables -- see above for proper details.

Example of usage:

``` c
sbranch_reset();
$sbranch(uri) = "sip:127.0.0.1:5080";
$sbranch(dst_uri) =  "sip:127.0.0.1:5090";
$sbranch(path) =  "sip:127.0.0.1:5090, sip:127.0.0.1:5094";
$sbranch(send_socket) =  "udp:127.0.0.1:5060";
sbranch_set_ruri();
```

### $sf - Script flags

**$sf** - reference to script flags - decimal output

### $sF - Script flags

**$sF** - reference to script flags - hexa output

### $si - Source IP address

**$si** - reference to IP source address of the message - see also $siz

### $sid - Server ID

**$sid** - the value for server id (server_id parameter)

### $siz - Source IP address

**$siz** - reference to IP source address of the message, with enclosing
square brackets for IPv6

### $sp - Source port

**$sp** - reference to the source port of the message

### $stat(name) - Statistics

**$stat(name)** - return the value of statistic item specified by 'name'

### $su - Source address as URI

**$su** - returns the representation of source address (ip, port, proto)
as SIP URI. If the proto is UDP, then it is not added (being the default
transport protocol).

Its value looks like:

    "sip:ip:port" -- if proto is UDP
    "sip:ip:port;transport=proto"  -- if proto is not UDP

Note that WS and WSS are both represented by transport=ws, conforming
with the IETF RFC for SIP over WebSocket.

### $sut - Source address as full URI

**$sut** - returns the representation of source address (ip, port,
proto) as full SIP URI. The proto UDP is added also as transport
parameter.

Its value looks like:

    "sip:ip:port;transport=proto"

### $td - To URI Domain

**$td** - reference to domain in URI of 'To' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

### $tn - To display name

**$tn** - reference to display name of 'To' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

### $tt - To tag

**$tt** - reference to tag parameter of 'To' header

### $tti - Initial To tag

**$tti** - reference to tag parameter of 'To' header as it was in the
SIP response to the initial request (e.g., 200ok to the initial INVITE).

The value To tag in the initial transaction can be in the From tag, if
the request within the dialog is sent by the callee. This variable
detects who sent the request within the dialog and returns the proper
value that was in the To tag of the transaction initiating the dialog.

It is exported by **rr** module and has to be used after loose_route().
The append_fromtag parameter is required to be set to 1 in order to have
this variable returning the right value.

### $tu - To URI

**$tu** - reference to URI of 'To' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

### $tU - To URI Username

**$tU** - reference to username in URI of 'To' header

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file, but its value does not change)

### $tUl - To URI Username Length

**$tUl** - the length of the username in To URI

### $Tb - Startup timestamp

**$Tb** - reference to unix timestamp of the time at which kamailio was
started (boot time)

### $Tf - String formatted time - cached

**$Tf** - reference string formatted time

Note: the system time is retrieved only once for each processed SIP
message. Subsequent calls of $Tf for same SIP message will return same
value.

### $TF - String formatted time - current

**$TF** - reference string formatted time

Note: the system time is computed for each call of $TF. Subsequent calls
of $TF for same SIP message may return different values.

### $Ts - Unix time stamp - cached

**$Ts** - reference to unix time stamp

Note: the system time is retrieved only once for each processed SIP
message. Subsequent calls of $Ts for same SIP message will return same
value.

### $TS - Unix time stamp - current

**$TS** - reference to unix time stamp

Note: the system time is computed for each call of $TS. Subsequent calls
of $TS for same SIP message may return different values.

### $ua - User agent header

**$ua** - reference to user agent header field

### $version() - version

**$version(num)** - version as number

**$version(full)** - full version string "name version
architecture/platform"

**$version(hash)** - TBA

## $env(NAME) - environment variables

**$env(NAME)** - value of the environment variable named NAME

Example:

``` c
xdbg("PATH environment variable:  $env(PATH)\n");
```

## $avp(id) - AVPs

**$avp(id)** - the value of the AVP identified by 'id'.

**$(avp(id)\[N\])** - represents the value of N-th AVP identified by
'id'.

The 'id' can be:

-   "\[(s\|i):\]name" - name is the id of an AVP; 's' and 'i' specifies
    if the id is string or integer. If missing, it is considered to be
    string.
-   "name" - the name is an AVP alias, or if the alias is not found, it
    is a string name
-   pseudo variable - if value of pv is integer, id is integer, if
    string, id is string

$(avp(id)\[0\]) can be written in shorter form as $avp(id) and
$avp(s:name) as $avp(name).

AVPs are special variables that are attached to SIP transactions. It is
a list of pairs (name,value). Before the transaction is created, the AVP
list is attached to SIP request. Note that the AVP list works like a
stack, last added value is retrieved first, and there can be many values
for same AVP name, an assignment to the same AVP name does not overwrite
old value, it will add the new value in the list.

To delete the first AVP with name 'id' you have to assign to it '$null':

``` c
$avp(id) = $null;
```

To delete all the AVP with name 'id' you have to assign $null to the
index '\*':

``` c
$(avp(id)[*]) = $null;
```

To overwrite the value of the AVP with name 'id' you have to assign the
new value to the index '\*':

``` c
$(avp(id)[*]) = newvalue;
```

The value of an AVP can be integer or string. To assign a value as
string, it has to be enclosed in double quotes. To assign the value as
integer, it has to be a valid number given without quotes.

Example of usage:

``` c
$avp(x) = 1;  # assign of integer value
$avp(x) = 2;
$avp(y) = "abc"; # assign of string value
if($(avp(x)[1])==1) {
  ...
}
$(avp(x)[1]) = $null;
```

It is R/W variable (you can assign values to it directly in
configuration file).

## $expires(key) - Expires Values

Return the min and max of expires value for current SIP message. Contact
headers are checked with higher priority, if no expires parameter there,
then Expires header is used

If none is found, $null is returned.

Possible 'key' values:

-   $expires(min) - the minimum value for expires
-   $expires(max) - the maximum value for expires

When there is only one expires value, then min and max return the same.

Example of usage:

``` c
if($expires(max)!=$null) {
    xlog("max expires value is: $expires(max)\n");
}
```

## $xavp(id) - XAVPs

**xavp** - eXtended AVPs - are variables that can store multiple values,
which can also be grouped in a structure-like fashion. Their value can
be a string, an integer number or a list of named values (child values).

They work like a stack, similar to AVPs, and are attached to SIP
transactions and automatically destroyed when the transaction is
finished.

Each xavp has a string name and can contain a string, an integer or a
list of named values. The structure name (or root list name) and the
value name (or field name, or child value name) are separated by => like
$xavp(root=>field) where "root" is the name of the structure and "field"
is the name of the (child) value.

To assign a single value use:

``` c
$xavp(root)="string value";
$xavp(root)=intnumber;
```

To assign a named value use:

``` c
$xavp(root=>field)="string value";
$xavp(root=>field)=intnumber;
```

Like avps, xavp act like a stack. To refer to an existing value, use an
index. The newest xavp has index zero \[0\].

``` c
$xavp(root[0]=>field)=12;
```

If you assign a value without an index, a new xavp is allocated and the
old one is pushed up the stack, becoming index \[1\]. Old index \[1\]
becomes \[2\] etc.

``` c
# new item (person => [(lastname = "Smith")])
$xavp(person=>lastname)="Smith";

# add new item (person => [(lastname = "Doe")])
$xavp(person=>lastname)="Doe";

# add another named value to the last example item
#   (person => [(firstname="John"), (lastname = "Doe")])
$xavp(person[0]=>firstname)="John";

# add another named value to first example item
#   (person => [(firstname="Alice"), (lastname = "Smith")])
xavp(person[1]=>firstname)="Alice";
```

Another example:

``` c
# create new (the first) root xavp with a named value of string type
$xavp(sf=>uri)="sip:10.10.10.10";

# add named values (child values)
$xavp(sf[0]=>fr_timer)=10;
$xavp(sf[0]=>fr_inv_timer)=15;
$xavp(sf[0]=>headers)="X-CustomerID: 1234\r\n";

# create new (the second) root xavp with a named value of string type, moving previous one to sf[1]
$xavp(sf=>uri)="sip:10.10.10.11";
# add named values (child values)
$xavp(sf[0]=>fr_timer)=20;
$xavp(sf[0]=>fr_inv_timer)=35;

# create new (the third) xavp with a named value of string type, moving previous one to sf[1] and the other one to sf[2]
$xavp(sf=>uri)="sip:10.10.10.12";
# add named values (child values)
$xavp(sf[0]=>fr_timer)=10;
$xavp(sf[0]=>fr_inv_timer)=15;
$xavp(sf[0]=>headers)="X-CustomerID: pw45\r\n";
```

xavps are read and write variables.

## $xavu(id) - XAVUs

Similar to XAVPs, but with single value items, therefore there are no
indexes in the naming format. XAVUs are also stored in transaction
context and destroyed when the transaction is terminated.

Examples:

``` c
$xavu(x) = 123; # <- set the value
$xavu(x) = 234; # <- update to the value, not adding to a list like for xavps
$xavu(x) = $null; # <- delete the xavu
$xavu(a=>b) = "xyz"; # <- two level naming supported
```

## $xavi(id) - XAVIs

Similar to XAVPs, but with key names are case insensitive. XAVIs are
also stored in transaction context and destroyed when the transaction is
terminated.

Examples:

``` c
$xavi(WhatEver=>FoO) = 123; # <- set the value
# $xavi(whatever[0]=>foo) == 123
```

## $hdr(name) - Headers

**$hdr(name)** - represents the body of first header field identified by
'name'

**$(hdr(name)\[N\])** - represents the body of the N-th header field
identified by 'name'.

If \[N\] is omitted then the body of the first header is printed. The
body of first header is returned when N=0, for the second N=1, a.s.o. In
case of a comma-separated multi-body headers, it returns all the bodies,
comma-separated. To print the last header of that type, use -1, or other
negative values to count from the end. No white spaces are allowed
inside the specifier (before }, before or after {, \[, \] symbols). When
N='\*', all headers of that type are printed.

If name is \*, then any header name is matched, e.g., $hdr(\*) is body
of first header, $(hdr(\*)\[-1\]) is body of last header.

The module should identify compact header names. It is recommended to
use dedicated specifiers for headers (e.g., $ua for user agent header),
if they are available -- they are faster.

Example of usage:

``` c
if($hdr(From)=~"kamailio\.org") {
...
}
```

🔥**IMPORTANT**: It is read-only variable. You can remove or add headers
using functions from textops module.

## $hfl(name) - Header Field With List Of Bodies

Similar to **$hdr(name)**, but for some of the standard headers that can
have many bodies serialized in the same header field (i.e., comma
separated list of bodies in same header field) is able to return the
individual body values.

Implemented for:

-   Contact
-   Record-Route
-   Route
-   Via
-   Diversion
-   P-Asserted-Identity
-   P-Preferred-Identity

For the rest of the headers works like **$hdr(name)**.

**$hfl(name)** - represents the first body of first header field
identified by 'name'.

**$(hfl(name)\[N\])** - represents the body of the N-th header field
identified by 'name'.

Example of usage:

``` c
if($(hfl(Via)[1])=~"TLS") {
...
}
```

## $hdrc(name) - Number of Headers

**$hdrc(name)** - get the number of headers with the respective name

Example of usage:

``` c
if($hdrc(Via) == 2) {
...
}
```

## $hflc(name) - Number of Header Bodies

Similar to **$hdrc(name)**, but for some of the standard headers that
can have many bodies serialized in the same header field (i.e., comma
separated list of bodies in same header field) is able to count the
number of individual bodies.

Implemented for:

-   Record-Route
-   Route
-   Via
-   Diversion
-   P-Asserted-Identity
-   P-Preferred-Identity

For the rest of the headers works like **$hdrc(name)**.

Example of usage:

``` c
if($hflc(Via)==3) {
...
}
```

## $var(name) - Private memory variables (zero)

**$var(name)** - refers to variables that can be used in configuration
script, having integer or string value. This kind of variables are
faster than AVPs, being referenced directly to memory location.

Example of usage:

``` c
$var(a) = 2; #-- sets the value of variable 'a' to integer '2'
$var(a) = "2"; #-- sets the value of variable 'a' to string '2'
$var(a) = "sip:" + $au + "@" + $fd; #-- compose a value from authentication username and From URI domain
$var(a) = 3 + (7&(~2));

if( $var(a) & 4 ) {
  xlog("var a has third bit set\n");
}
```

**Note:** Setting a variable to $null is actually initializing the value
to integer '0'. This type of script variables doesn't have $null value.

``` c
$var(x) = $null;

if($var(x)==0) { # this is true
  ...
}
```

**Note:** A script variable persists over the Kamailio process in which
it was initialized, so be sure of giving it a new value before reading
it or you'll get the value assigned in any other previous message
processed by the same Kamailio process (pid).

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

**pv** module can be used to initialize the script variables.

## $vz(name) - Private memory variables (zero)

Same as $var(name) -- added to pair with $vn(name).

## $vn(name) - Private memory variables (null)

Similar to $var(name) and able to hold $null (which is the default
value). The value is kept in private memory (pkg) and it is persistent
across SIP message processing, within the space of each Kamailio
process.

Example of usage:

``` c
$vn(x) = 1;
$vn(x) = "abc";
$vn(x) = $null;

if($vn(x) == $null) { ... }
```

## $shv(name) - Shared memory variables

**$shv(name)** - it is a class of pseudo-variables stored in shared
memory. The value of $shv(name) is visible across all Kamailio
processes. Each “shv” has single value and it is initialised to integer
0. You can use “shvset” parameter of **pv module** to initialize the
shared variable. The module exports a set of RPC functions to get/set
the value of shared variables.

Example - shv(name) pseudo-variable usage:

    ...
    modparam("pv", "shvset", "debug=i:1")
    ...
    if ($shv(debug) == 1) {
        xlog("request: $rm from $fu to $ru\n");
    }
    ...

🔥**IMPORTANT**: It is R/W variable (you can assign values to it directly in
configuration file)

## $dsv(key) - Dispatcher variables

Return attributes related to dispatcher module.

The key can be:

-   code - the SIP response code that caused the execution of
    event_route 'dispatcher:dst-up' or 'dispatcher:dst-down', if
    available
-   reason - the SIP response reason that caused the execution of
    event_route 'dispatcher:dst-up' or 'dispatcher:dst-down', if
    available
-   flags - flags set internally when executing event_route
    'dispatcher:dst-up' or 'dispatcher:dst-down'

## $dsg(key) - Dispatcher group attributes

Return attributes related to dispatcher group that is set via
`ds_dsg_fetch()`.

The key can be:

  - `count` - the number of records (destination addresses) in the group
  - `active`- the number of active destinations in the group
  - `pactive`- the percent of active destinations in the group
  - `inactive` - the number of inactive destination in the group
  - `pinactive` - the percent of inactive destination in the group

## $time(name) - Broken-down time

**$time(name)** - the PV provides access to broken-down time attributes
in the local timezone.

The 'name' can be:

-   sec - return seconds (int 0-59)
-   min - return minutes (int 0-59)
-   hour - return hours (int 0-23)
-   mday - return the day of month (int 0-59)
-   mon - return the month (int 1-12)
-   year - return the year (int, e.g., 2008)
-   wday - return the day of week (int, 1=Sunday - 7=Saturday)
-   yday - return the day of year (int, 1-366)
-   isdst - return daylight saving time status (int, 0 - DST off, >0 DST
    on)

Example - time(name) pseudo-variable usage:

``` c
...
if ($time(year) == 2008) {
    xlog("request: $rm from $fu to $ru in year 2008\n");
}
...
```

## $utime(name) - Broken-down time

**$utime(name)** - the PV provides access to broken-down time attributes
in UTC.

See **$time(name)** above for the possible attributes

## $timef(format) - Strftime Formatted Time

**$timef(format)** - return current time as formatted by strftime
'format'. See 'man strftime' to see the available time attribute
specifiers.

Example:

``` c
xlog("Today is $timef(%m/%d/%y)\n");
```

## $utimef(format) - Strftime Formatted UTC Time

**$utimef(format)** - return current time in UTC as formatted by
strftime 'format'. See 'man strftime' to see the available time
attribute specifiers.

Example:

``` c
xlog("The time is $utimef(%m/%d/%y %H:%M:%S)\n");
```

## $ccp(key) - Config Custom Parameters

Get the value for global custom parameters:

-   [Custom Global parameters](core.md#custom-global-parameters)

Example:

``` c
gv.sval = "hello" desc "hello var"
gv.ival = 10 desc "ten var"

request_route {
    xinfo("global vars: $ccp(gv.sval) :: $ccp(gv.ival)\n");
}
```

## $sel(name) - Selects

**$sel(name)** - return the value of **select** specified by name.
**select** refers a class of config variables introduced by SER 2.0,
allowing to select and return parts of sip messages and not only.

List of available selects:

-   [Selects](selects.md)

Example:

``` c
if($sel(via[1].host)=="10.10.10.10")
{
  ...
}
```

## Received Data Attributes

### $rcv(key)

Attributes of received data. The variables must be used inside
**event_route\[core:msg-received\]** routing block.

The key can be:

-   buf - received message
-   len - lenght of received message
-   srcip - source ip
-   rcvip - local ip where it was received
-   scrport - source port
-   rcvport - local port where it was received
-   proto - protocol as int id
-   sproto - protocol as string
-   af - address family

Example of usage:

``` c
event_route[core:msg-received] {
  xlog("rcv on $rcv(af)/$rcv(proto): ($rcv(len)) [$rcv(buf)] from [$rcv(srcip):$rcv(srcport)] to [$rcv(rcvip):$rcv(rcvport)]\n");
}
```

## $rpl(key)

Attributes of the SIP reply processed at that moment. The variables must
be used during SIP reply processing, otherwise it returns $null.

The key can be:

-   duri - SIP URI corresponding to the address where the SIP reply is
    going to be sent based on 2nd via
-   dhost - host part of duri
-   dport - port part of duri
-   dproto - proto part of duri
-   dprotoid - proto id of duri
-   cntvia - the number of Via header bodies

Example of usage:

``` c
reply_route{
  xinfo("reply to be sent to: $rpl(duri)\n");
}
```

## $msgbuf(index)

Get or set the character in the message buffer at the position index.

The index has to be a positive integer or a variable holding such value.

Note that the variable returns a clone of the character stored in a
static buffer, copy it to another variable if you want to compare with
another $msgbuf(index).

The update is done directly and immediately in the message buffer -- use
it with care!

Example of usage:

``` c
if ($msgbuf(20)=="V") {
    $msgbuf(20) = "v";
}
```

## Header Field Iterator

### $hfitname(iname)

The header name of the header field iterator.

Example:

``` c
    hf_iterator_start("i1");
    while(hf_iterator_next("i1")) {
        xlog("hdr[$hfitname(i1)] is: $hfitbody(i1)\n");
    }
    hf_iterator_end("i1");
```

### $hfitbody(iname)

The header body of the header field iterator.

Example:

``` c
    hf_iterator_start("i1");
    while(hf_iterator_next("i1")) {
        xlog("hdr[$hfitname(i1)] is: $hfitbody(i1)\n");
    }
    hf_iterator_end("i1");
```

## Body Line Iterator

### $blitval(iname)

The value of the body line iterator.

Example:

``` c
    bl_iterator_start("b1");
    while(bl_iterator_next("b1")) {
        xlog("body line: $blitval(b1)");
    }
    bl_iterator_end("b1");
```

## Send Data Attributes

### $sndfrom(name)

**$snd(name)** - return attributes of the address from where the request
is going to be sent (local socket).

**$sndfrom(name)** - return attributes of the address from where the
request is going to be sent (local socket, same as $snd(name)).

The name can have same values as for $sndto(...).

### $sndto(name)

**$sndto(name)** - return attributes of the address to where the request
is going to be sent (remote socket).

They are available in **onsend_route**. The name can be:

-   ip - IP address of destination
-   af - address family to be used to send (numeric)
-   port - port of destination address
-   proto - transport protocol to be used to send (numeric - UDP=1,
    TCP=2, TLS=3, SCTP=4, WS=5, WSS=6)
-   sproto - transport protocol to be used to send (string)
-   buf - entire send buffer as string
-   len - length of outgoing packet (length of above buf)

Example:

``` c
onsend_route {
  if($snd(ip)=="10.10.10.10")
  {
    ...
  }
}
```

## SIPDUMP Module

### $sipdump(name)

**$sipdump(name)** - return attributes of the message handled in the
event_route\[sipdump:msg\].

The name can be:

-   tag - the tag of processing (rcv or snd)
-   buf - entire message buffer as string
-   len - length of the message (length of above buf)
-   af - address family
-   src_ip - source IP address as string
-   dst_ip - destination IP address as string
-   src_port - port of source address as number
-   dst_port - port of source address as number
-   proto - transport protocol

Example:

``` c
event_route[sipdump:msg] {
  if($sipdump(len) > 1024) {
    ...
  }
}
```

## SIPTRACE Module

### $siptrace(name)

**$siptrace(name)** - return attributes of the message handled in the
event_route\[siptrace:msg\].

The name can be:

-   src_addr - source socket address (proto:ip:port)
-   dst_addr - destination socket address (proto:ip:port)
-   src_host - source host, for IPv6 host contains \`\[\]\`
-   dst_host - destination host, for IPv6 host contains \`\[\]\`
-   src_hostip - source host, for IPv6 host do not contains \`\[\]\`
-   dst_hostip - destination host, for IPv6 host do not contains
    \`\[\]\`
-   src_port - source port
-   dst_port - destination port
-   src_proto - source proto
-   dst_proto - destination proto

Example:

``` c
event_route[siptrace:msg]
{
    if (allow_address("1", "$siptrace(src_hostip)", "0")) {
        return;

    }
    if (compare_ips($siptrace(src_host), "[2001:DB8::1]")) {
        return;
    }
}
```

## Benchmark Module

### $BM_time_diff

$BM_time_diff - the time difference elapsed between calls of
bm_start_timer(name) and bm_log_timer(name). The value is 0 if no
bm_log_timer() was called.

## Dialog Module

### $dlg(attr)

Return the attribute of the current processed dialog.

🔥**IMPORTANT**: It is R/O variable.

The 'attr' can be:

-   h_id - hash id
-   h_entry - hash entry
-   ref - reference count
-   state - state of dialog
-   to_rs - To route set
-   from_rs - From route set
-   dflags - dialog internal flags
-   sflags - dialog script flags
-   callid - sip call id
-   to_uri - To uri
-   to_tag - To tag
-   from_uri - From uri
-   from_tag - From tag
-   toroute - timeout route
-   lifetime - timeout inteval
-   start_ts - start timestamp
-   to_cseq - To CSeq
-   from_cseq - From CSeq
-   to_contact - To contact address
-   from_contact - From contact address
-   to_bindaddr - To bind address
-   from_bindaddr - From bind address

### $dlg_ctx(attr)

Return the attribute of the context for current processed dialog.

🔥**IMPORTANT**: Some of the attributes are R/W variables.

The 'attr' can be:

-   set - returns 1 if the dialog for current context is set, 0
    otherwise
-   flags - get/set dialog flags
-   timeout_route - get/set route name to be executed on timeout
-   timeout_route_id - get internal id for the route to be executed on
    timeout
-   timeout_bye - set to 1 if BYE has to be sent when dialog lifetime
    elapses
-   timeout - set the dialog lifetime (in seconds)
-   on - get/set an integer value associated with the context (cfg
    usage)
-   dir - get direction of the request for the dialog of the current
    context (0 - unknown, 1 - downstream, 2 - upstream)

### $dlg_var(key)

Store and retrieve custom variable for current processed dialog.

🔥**IMPORTANT**: It is R/W variable.

The 'key' can be any string.

## Erlang Module

### Attributes

\* type - get variable type. Possible types are: atom, integer, list,
string, tuple, pid and ref.

\* length - get length of list or tuple.

\* format - prints a term, in clear text. It tries to resemble the term
printing in the Erlang shell.

### $erl_atom(name)

*$erl_atom(name)* pseudo variable allows create analog to Erlang atom
data type. Erlang atom is a literal, a constant with name. Formatted
output pseudo variable atom could be enclosed in single quotes (') if it
does not begin with a lower-case letter or if it contains other
characters than alphanumeric characters, underscore (\_), or @.

Example:

``` c
$erl_atom(A) = "node@host.tld";

xlogl("L_DEBUG","$$erl_atom(A): $erl_atom(A=>format)\n");
```

### $erl_list(name)

Compound data type with a variable number of terms. Formally, a list is
either the empty list \[\] or consists of one or more elements.

Example:

``` c
$erl_atom(E) = "example";
$erl_list(L) = "list";
$erl_list(L) = "of";
$erl_list(L) = $erl_atom(E);

xlogl("L_DEBUG","length(L): $erl_list(L=>length), format(L): $erl_list(L=>format)\n");

# empty list
$erl_tuple(E[*]) = $null;
```

### $erl_tuple(name)

From the Erlang point of view the tuple compound data type with a fixed
number of terms. The module implementation of tuple has the same
behavior as the list.

Example:

``` c
$erl_atom(e) = "error";

$erl_tuple(T) = "badrpc";
$erl_tuple(T) = $erl_atom(e);

xlogl("L_DEBUG","length(T): $erl_tuple(T=>length), format(T): $erl_tuple(T=>format)\n");
```

### $erl_pid(name)

Holds Eralng process identifier. Provides access to Erlang PID value and
could be used in send message.

### $erl_ref(name)

Holds Erlang reference. Provides access to reference value and could be
used in send message.

### $erl_xbuff(name)

Generic pseudo variable to acts as other pseudo variables exported from
Erlang module.

## EVAPI Module

### $evapi(srcaddr)

The source ip

### $evapi(srcport)

The source port

### $evapi(msg)

Received event message

### $evapi(conidx)

internal connection index

## HTable Module

### $sht(htable=>key)

Access hash table entries.

🔥**IMPORTANT**: It is R/W variable, you can assign values to it directly in
configuration file. Hash table entry can be deleted by assigning value
$null to it. Value of a non-existing hash table entry is $null.

The “htname” must be a hash table name defined via “htable” parameter.

The “key” can be:

-   static string - set of characters without pseudo-variables
-   dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

    ...
    modparam("htable", "htable", "a=>size=4;")
    ...
    $sht(a=>$au) = 1;
    $sht(a=>$ru) = $fu;
    ...

### $shtex(htable=>key)

Access hash table entry expire value. Value represents the seconds until
the htable entry will expire and be deleted from htable.

🔥**IMPORTANT**: It is R/W variable, you can assign values to it directly in
configuration file.

The “htname” must be a hash table name defined via “htable” parameter
and have auto-expire greater than 0.

The “key” can be:

-   static string - set of characters without pseudo-variables
-   dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

    ...
    modparam("htable", "htable", "a=>size=4;autoexpire=120;")
    ...
    $sht(a=>$au) = 1;
    $shtex(a=>$au) = 10;
    ...

### $shtcn(htable=>exp)

Count items matching the name by regexp.

The “htname” must be a hash table name defined via “htable” parameter.

The **exp** can be:

-   reqexp - match by regular expression 'regexp'
-   \~\~regexp - match by regular expression 'regexp'
-   \~%prefix - match by right prefix
-   %\~prefix - match by left prefix
-   ==value - match by string value
-   eqvalue - match by integer value
-   \* \* - (two asterisks next to each other) - count all items

The **exp** can contain pseudo-variables.

    ...
    modparam("htable", "htable", "a=>size=4;")
    ...
    $sht(a=>abc) = 1;
    $shtex(a=>ade) = 10;
    xlog("$shtcn(a=>a.*)");
    ...

### $shtcv(htable=>exp)

Count items matching the value by regexp.

The “htname” must be a hash table name defined via “htable” parameter.

The **exp** must follow same rules as for **$shtcn(...)**.

    ...
    modparam("htable", "htable", "a=>size=4;")
    ...
    $sht(a=>abc) = "xyz";
    $shtex(a=>ade) = "xwt";
    xlog("$shtcv(a=>x.*)");
    ...

### $shtinc(htable=>key)

Atomic increment of the value for the hash table item.

    ...
    modparam("htable", "htable", "a=>size=4;")
    ...
    $sht(a=>$au) = 1;
    xlog("==== $shtinc(a=>$au)\n");
    ...

### $shtdec(htable=>key)

Atomic decrement of the value for the hash table item.

    ...
    modparam("htable", "htable", "a=>size=4;")
    ...
    $sht(a=>$au) = 1;
    xlog("==== $shtdec(a=>$au)\n");
    ...

### $shtitkey(iname)

The key at the current position in the iterator.

### $shtitval(iname)

The value at the current position in the iterator.

Example:

``` c
    sht_iterator_start("i1", "h1");
    while(sht_iterator_next("i1")) {
        xlog("h1[$shtitkey(i1)] is: $shtitval(i1)\n");
    }
    sht_iterator_end("i1");
```

### $shtrecord(id)

Get the key or the value of expired item inside the
event_route\[htable:expired:\_table_name\_\].

The id can be:

-   key
-   value

Example:

``` c
event_route[htable:expired:h1] {
  xlog("expired item ($shtrecord(key),$shtrecord(value))\n");
}
```

## Memcached Module

### $mct(key)

Access hash table entries stored in the memcached server.

🔥**IMPORTANT**: It is R/W variable, you can assign values to it directly in
configuration file.

The “key” can be:

-   static string - set of characters without pseudo-variables
-   dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

When assigning values, the default expiry will be used.

    ...
    $mct($au) = 1;
    $mct($ru) = $fu;
    $mct(test) = 1;
    xlog("stored value is $mct(test)");
    $mct(test) = null; # delete it
    xlog("stored value is $mct(test)"); # will return <null>
    ...

### $mct(key=>expiry)

Using this alternative format, the default expiry may be overidden by
including a custom value at time of assignment.

    ...
    $mct(test=>30) = 1; # set expire time to 30 seconds
    xlog("stored value is $mct(test)");
    # sleep 30 seconds
    xlog("stored value is $mct(test)"); # will return <null>
    ...

### $mcinc(key)

Do an atomic increment operation on the value stored in memcached. You
need to add a value previously.

🔥**IMPORTANT**: It is R/W variable, you can assign values to it directly in
configuration file.

The “key” can be:

-   static string - set of characters without pseudo-variables
-   dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

    ...
    $mct(cnt) = 1;
    $mcinc(cnt) = 2; # increment by 2
    xlog("counter is now $mct(cnt)");
    ...

### $mcdec(key)

Do an atomic decrement operation on the value stored in memcached. You
need to add a value previously.

🔥**IMPORTANT**: It is R/W variable, you can assign values to it directly in
configuration file.

The “key” can be:

-   static string - set of characters without pseudo-variables
-   dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

    ...
    $mct(cnt) = 10;
    $mcdec(cnt) = 2; # decrement by 2
    xlog("counter is now $mct(cnt)");
    ...

## http_async_client Module

### $http_req_id

The $http_req_id read-only variable can be used in REQUEST_ROUTE to
retrive the unique identifier for a query after sending it or in the
HTTP callback route to retrive the id of the query the reply belongs to.
Useful mainly in non-transactional context.

### $http_req(key)

The $http_req(key) write-only variable can be used to set custom
parameters before sending a HTTP query.

**key** can be one of:

-   all: if set to $null, resets all the parameters to their default
    value (the ones defined in modparam)
-   hdr: sets/modifies/removes a HTTP header. N.B.: setting this
    variable multiple times will add several headers to the query.
-   body: sets/modifies/removes the request body
-   method: sets the HTTP method: either "GET", "POST", "PUT" or
    "DELETE" (these are the supported methods). (Note: if the method is
    not set, curl will use GET, or POST if a body is specified)
-   timeout: sets the HTTP timeout. (Note, this timeout should be
    normally less than tm.fr_timer timeout, because transaction timeout
    has a higher priority over HTTP timeout)
-   tls_client_cert: sets the client certificate to use
-   tls_client_key: sets the client certificate key to use
-   tls_ca_path: sets the CA certificate path to use
-   authmethod: Sets the preferred authentication mode for HTTP/HTTPS
    requests. The value is a bitmap and multiple methods can be used.
    Note that in this case, the CURL library will make an extra request
    to discover server-supported authentication methods. You may want to
    use a specific value. Valid values are:

    * 1 - BASIC authentication
    * 2 - HTTP Digest authentication
    * 4 - GSS-Negotiate authentication
    * 8 - NTLM authentication
    * 16 - HTTP Digest with IE flavour.
    * (Default value is 3 - BASIC and Digest authentication.)
- username: sets the username to use for authenticated requests
- password: sets the password to use for authenticated requests
- suspend: if set to 0 it doesn't suspend the current transaction before performing the query
- tcp_keepalive: enable TCP keepalive
- tcp_ka_idle: set TCP keepalive idle time wait
- tcp_ka_interval: set TCP keepalive interval

### Other read-only variables

The following read-only pseudo variables can only be used in the
callback routes executed by http_async_query()

#### $http_ok

1 if cURL executed the request successfully, 0 otherwise (check
$http_err for details).

#### $http_err

cURL error string if an error occurred, $null otherwise.

#### $http_rs

HTTP status.

#### $http_rr

HTTP reason phrase.

#### $http_hdr(Name)

Value of the Name header (the $(http_hdr(Name)\[N\]) syntax can also be
used, check the SIP $hdr() PV documentation for details).

#### $http_mb and $http_ml

HTTP response buffer (including headers) and length.

#### $http_rb and $http_bs

HTTP response body and body length,

## XMLOPS Pseudo-Variables

### $xml(name=>spec)

-   name - id to refer the documet
-   spec - specifier:
    -   doc - set/get the document as text
    -   xpath:xpath-expression - evaluate xpath expression

Example:

    $xml(x=>doc) = '<?xml version="1.0" encoding="UTF-8"?><a><b>test</b></a>';
    xlog("content of node b: $xml(x=>xpath:/a/b/text())\n");
    $xml(x=>xpath:/a/b) = "1234";

## TMX Module

### $T_branch_idx

-   the index (starting with 0 for the first branch) of the branch for
    which is executed the branch_route\[\].
-   in failure_route\[\] block, the value is the number of completed
    branches added to the number of new new branches
-   in request_route block, the value is number of created branches
-   in onreply_route\[\], the value is the index of the branch receiving
    the reply
-   if used outside of transaction processing, the value is '-1'

### $T_reply_ruid

-   the ruid stored in the current branch of the transaction. The ruid
    is stored in a branch from the details in a contact binding. In an
    event_route\[tm:branch-failure\] block, this is the ruid of the
    branch that sent a failure reply. In a failure_route\[\] block, this
    is the ruid of the winning failure response.

### $T_reply_code

-   the code of the reply, as follows: in request_route will be the last
    stateful sent reply; in reply_route will be the current processed
    reply; in failure_route will be the negative winning reply. In case
    of no-reply or error, '0' value is returned

### $T_req(pv)

-   can be used in reply routes or inside the modules to get access to
    attributes of the request belonging to same transaction as the reply

    route {
      t_on_reply("1");
      t_relay();
    }

    onreply_route[1] {
      xlog("Request SRCIP:PORT = $T_req($si):$T_req($sp)\n");
    }

### $T_rpl(pv)

-   can be used in failure routes or inside the modules to get access to
    attributes of the winning reply belonging to same transaction as the
    request

    route {
      t_on_failure("1");
      t_relay();
    }

    failure_route[1] {
      xlog("Reply SRCIP:PORT = $T_rpl($si):$T_rpl($sp)\n");
    }

### $T_inv(pv)

-   can be used in request routes or inside the modules to get access to
    attributes of the INVITE request while processing a CANCEL.

    route {
      if(is_method("CANCEL"))
      {
         if($T_inv($mf) & 1 )
         {
            # first flag is set in the INVITE transaction
         }
      }
    }

### $T(name)

-   pseudo-variable class to access TM attributes

The **name** can be:

-   id_index - return the internal index of current transaction or $null
    if no transaction is found
-   id_label - return the internal label of current transaction or $null
    if no transaction is found
-   id_index_n - return the internal index of current transaction, if no
    transaction exists yet, create it
-   id_label_n - return the internal label of current transaction, if no
    transaction exists yet, create it
-   reply_code - reply code (alias to $T_reply_code)
-   reply_reason - reply reason
-   reply_last - last received reply code
-   branch_index - branch index (alias to $T_branch_idx)
-   ruid - return the internal location ruid field for current branch
-   reply_type - 1 if it is a local generated reply, 0 - if no reply for
    transaction or it is a received reply

Note: the pair (id_index,id_label) uniquely identifies a transaction.

### $T_branch(name)

-   pseudo-variable class to access TM branch attributes

The **name** can be:

-   flags - Flags of the branch. In an event_route\[tm:branch-failure\]
    block, this is the flags of the branch that sent a failure reply. In
    a failure_route\[\] block, this is the flags of the winning failure
    response.
-   uri - the R-URI of the branch. Can be used in onreply_route\[id\] -
    reply route blocks executed by tm module. For other routing blocks
    handling requests, the R-URI is returned by $ru

## UAC Module

### $uac_req(key)

-   used to build the input for uac_send_req() function of UAC module

The key can be:

-   method - SIP method
-   ruri - request URI
-   furi - From URI
-   turi - To URI
-   ouri - Outbound proxy URI
-   hdrs - SIP Headers
-   body - Body
-   flags - flags for processing
    -   1 - the password is provided in HA1 format
-   auser - authentication username
-   apasswd - authentication password
-   sock - local socket to be used for sending (proto:address:port)
-   callid - SIP-Call-ID of the generated request (by default, a call-id
    is generated)
-   all - alias useful to reset all fields - $uac_req(all) = $null;
-   evroute - it has to be set to 1 in order to execute
    event_route\[uac:reply\] when reply is received
-   evcode - reply code for the request sent with uac_req_send(),
    available inside event_route\[uac:reply\]
-   evtype - is 1 if the reply was received via network, 2 if the reply
    was locally generated (e.g., retransmission timeout), available
    inside event_route\[uac:reply\]
-   evparam - generic data buffer associated with the request that can
    be set before sending it and retrieved when executing the event
    route. It has a size of 128 characters.

``` c
$uac_req(method)="OPTIONS";
$uac_req(ruri)="sip:kamailio.org";
$uac_req(furi)="sip:kamailio.org";
$uac_req(turi)="sip:kamailio.org";
$uac_req(evroute) = 1;
uac_req_send();
...
event_route[uac:reply] {
  xlog("request sent to $uac_req(ruri) completed with code: $uac_req(evcode)\n");
}
```

## Nathelper Module

### $rr_count

-   Number of Record Routes in received SIP request or reply.

### $rr_top_count

-   If topmost Record Route in received SIP request or reply is a double
    Record Route, value of $rr_top_count is 2. If it a single Record
    Route, value of $rr_top_count is 1. If there is no Record Route(s),
    value of $rr_top_count is 0.

## MQueue Module

### $mqk(q)

-   return the key of fetched item from queue q

### $mqv(q)

-   return the value of fetched item from queue q

``` c
...
mq_add("myq", "$rU", "call from $fU at $Tf");
...
while(mq_fetch("myq"))
{
   xlog("$mqk(myq) - $mqv(myq)\n");
}
...
```

## TimeVal

### $TV(name)

Seconds and microseconds taken from struct timeval. The time at that
moment is represented by **seconds.microseconds**.

-   $TV(s) - seconds (cached at first call per sip message)
-   $TV(u) - microseconds (cached at first call per sip message)
-   $TV(sn) - seconds (not cached, taken at that moment)
-   $TV(un) - microseconds (corresponding to the moment $TV(sn) is
    retrieved)
-   $TV(Sn) - string representation seconds.microseconds (not cached,
    taken at that moment)
-   $TV(Sm) - string representation of an always increasing monotonic
    counter. Note that even if is based on clock, it starts from an
    unspecified point in time, so should really be treated as an
    opaque counter.

## Next hop address

### $nh(key)

Return attributes of next hop for the SIP messages. For SIP requests,
the address is taken from dst_uri, if set, if not from new r-uri or
original r-uri. For SIP replies, the attributes are taken from 2nd Via
header (username is always $null for SIP replies).

-   $nh(u) - uri (lower case u)
-   $nh(U) - username (upper case u)
-   $nh(d) - domain
-   $nh(p) - port (lower case p)
-   $nh(P) - transport protocol (upper case p)

## NDB_REDIS Module

### $redis(res=>key)

Access the attributes of the Redis response.

The key can be:

-   type - type of the reply (as in hiredis.h)
-   value - the value returned by REDIS server;
-   info - in case of error from REDIS, it will contain an info message.

If reply type is an array (as in hiredis.h), there are other keys
available:

-   size - returns number of elements in the array.

-   type\[n\] - returns the type of the nth element in the array. type -
    returns array type.

-   value\[n\] - returns value of the nth element. value - returns null
    for an array. You need to get each element by index.

In case one of the members of the array is also an array (for example
calling SMEMBERS in a MULTI/EXEC transaction), the members of the array
can be accessed by adding any of the above keys, after a value\[n\] key.
The first value\[n\] references the element in the first array, while
the next key references an element of the referenced array.

Example:

    redis_cmd("srvN", "GET foo", "r");
    xlog("===== result type: $redis(r=>type) * value: $redis(r=>value)\n");

### $redisd(key)

Return the corresponding value for various defines from hiredis library.

The key can be:

-   rpl_str - return REDIS_REPLY_STRING
-   rpl_arr - return REDIS_REPLY_ARRAY
-   rpl_int - return REDIS_REPLY_INTEGER
-   rpl_nil - return REDIS_REPLY_NIL
-   rpl_sts - return REDIS_REPLY_STATUS
-   rpl_err - return REDIS_REPLY_ERROR

$redisd(rpl_XYZ) can be compared with $redis(r=>type).

Example:

    redis_cmd("srvN", "GET foo", "r");
    if ($redis(r=>type) == $redisd(rpl_int)) {
    }

## GeoIP Module

### $gip(pvc=>key)

Variables exported by GeoIP module, returning geo-location attributes.
The attributes are populated upon calling function **geoip_match(ipaddr,
pvc)**.

**pvc** (container id) is second parameter of geoip_match(..) and
**key** can be:

-   cc - country code
-   tz - time zone
-   zip - postal code
-   lat - latitude
-   lon - longitude
-   dma - dma code
-   ips - ip start
-   ipe - ip end
-   city - city
-   area - area code
-   regc - region
-   regn - region name
-   metro - metro code
-   contc - continent code

You can call several time **geoip_match(ipaddr, pvc)** with different ip
address and containers in your config, to compare, for example,
attributes of source and destination of a call.

``` c
geoip_match("$si", "src");
geoip_match("$nh(d)", "dst");

if($gip(src=>cc)==$gip(dst=>cc))
{
    # source and destination from same country
}

```

### $gip2(pvc=>key)

Variables exported by GeoIP2 module, returning geo-location attributes.
The attributes are populated upon calling function
**geoip_match2(ipaddr, pvc)**.

**pvc** (container id) is second parameter of geoip_match2(..) and
**key** can be:

-   cc - country code
-   tz - time zone
-   zip - postal code
-   lat - latitude
-   lon - longitude
-   dma - dma code
-   ips - ip start
-   ipe - ip end
-   city - city
-   area - area code
-   regc - region
-   regn - region name
-   metro - metro code
-   contc - continent code

You can call several time **geoip_match(ipaddr, pvc)** with different ip
address and containers in your config, to compare, for example,
attributes of source and destination of a call.

``` c
geoip_match2("$si", "src");
geoip_match2("$nh(d)", "dst");

if($gip2(src=>cc)==$gip2(dst=>cc))
{
    # source and destination from same country
}

```

## TLS Module

### $tls(key)

Variables related to TLS communication and certificates.

The **key** can be:

-   **m_issuer_line** - return local (my) certificate issuer line
-   **p_issuer_line** - return remote (peer) certificate issuer line
-   **m_subject_line** - return local (my) certificate subject line
-   **p_subject_line** - return remote (peer) certificate subject line

Example:

``` c
if(proto==TLS) {
    xinfo("local certificate subject: $tls(m_subject_line)\n");
}
```

### $tls_version

The TLS/SSL version which is used on the TLS connection from which the
message was received. String type.

### $tls_description

The TLS/SSL description of the TLS connection from which the message was
received. String type.

### $tls_cipher_info

The TLS/SSL cipher which is used on the TLS connection from which the
message was received. String type.

### $tls_cipher_bits

The number of cipher bits which are used on the TLS connection from
which the message was received. String and Integer type.

### $tls_peer_version

The version of the certificate. String type.

### $tls_my_version

The version of the certificate. String type.

### $tls_peer_serial

The serial number of the certificate. String and Integer type.

### $tls_my_serial

The serial number of the certificate. String and Integer type.

### $tls_peer_subject

ASCII dump of the fields in the subject section of the certificate.
String type. Example:

      /C=AT/ST=Vienna/L=Vienna/O=enum.at/CN=enum.at

### $tls_peer_issuer

ASCII dump of the fields in the issuer section of the certificate.
String type.

### $tls_my_subject

ASCII dump of the fields in the subject section of the certificate.
String type.

### $tls_my_issuer

ASCII dump of the fields in the issuer section of the certificate.
String type.

### $tls_peer_subject_cn

commonName in the subject section of the certificate. String type.

### $tls_peer_issuer_cn

commonName in the issuer section of the certificate. String type.

### $tls_my_subject_cn

commonName in the subject section of the certificate. String type.

### $tls_my_issuer_cn

commonName in the issuer section of the certificate. String type.

### $tls_peer_subject_locality

localityName in the subject section of the certificate. String type.

### $tls_peer_issuer_locality

localityName in the issuer section of the certificate. String type.

### $tls_my_subject_locality

localityName in the subject section of the certificate. String type.

### $tls_my_issuer_locality

localityName in the issuer section of the certificate. String type.

### $tls_peer_subject_country

countryName in the subject section of the certificate. String type.

### $tls_peer_issuer_country

countryName in the issuer section of the certificate. String type.

### $tls_my_subject_country

countryName in the subject section of the certificate. String type.

### $tls_my_issuer_country

countryName in the issuer section of the certificate. String type.

### $tls_peer_subject_state

stateOrProvinceName in the subject section of the certificate. String
type.

### $tls_peer_issuer_state

stateOrProvinceName in the issuer section of the certificate. String
type.

### $tls_my_subject_state

stateOrProvinceName in the subject section of the certificate. String
type.

### $tls_my_issuer_state

stateOrProvinceName in the issuer section of the certificate. String
type.

### $tls_peer_subject_organization

organizationName in the subject section of the certificate. String type.

### $tls_peer_issuer_organization

organizationName in the issuer section of the certificate. String type.

### $tls_my_subject_organization

organizationName in the subject section of the certificate. String type.

### $tls_my_issuer_organization

organizationName in the issuer section of the certificate. String type.

### $tls_peer_subject_unit

organizationalUnitName in the subject section of the certificate. String
type.

### $tls_peer_subject_uid

UID in the subject section of the certificate. String type.

### $tls_peer_issuer_unit

organizationalUnitName in the issuer section of the certificate. String
type.

### $tls_my_subject_unit

organizationalUnitName in the subject section of the certificate. String
type.

### $tls_my_subject_uid

UID in the subject section of the certificate. String type.

### $tls_my_issuer_unit

organizationalUnitName in the issuer section of the certificate. String
type.

### $tls_peer_san_email

email address in the "subject alternative name" extension. String type.

### $tls_my_san_email

email address in the "subject alternative name" extension. String type.

### $tls_peer_san_hostname

hostname (DNS) in the "subject alternative name" extension. String type.

### $tls_my_san_hostname

hostname (DNS) in the "subject alternative name" extension. String type.

### $tls_peer_san_uri

URI in the "subject alternative name" extension. String type.

### $tls_my_san_uri

URI in the "subject alternative name" extension. String type.

### $tls_peer_san_ip

ip address in the "subject alternative name" extension. String type.

### $tls_my_san_ip

ip address in the "subject alternative name" extension. String type.

### $tls_peer_verified

Returns 1 if the peer's certificate was successfully verified. Otherwise
it returns 0. String and Integer type.

### $tls_peer_revoked

Returns 1 if the peer's certificate was revoked. Otherwise it returns 0.
String and Integer type.

### $tls_peer_expired

Returns 1 if the peer's certificate is expired. Otherwise it returns 0.
String and Integer type.

### $tls_peer_selfsigned

Returns 1 if the peer's certificate is selfsigned. Otherwise it returns
0. String and Integer type.

### $tls_peer_notBefore

Returns the notBefore validity date of the peer's certificate. String
type.

### $tls_peer_notAfter

Returns the notAfter validity date of the peer's certificate. String
type.

### $tls_peer_server_name

The SNI server name of the peer

### $tls_peer_raw_cert

The raw PEM-encoded client certificate. String type.

### $tls_my_raw_cert

The raw PEM-encoded client certificate. String type.

### $tls_peer_urlencoded_cert

The PEM-encoded client certificate, urlencoded. String type.

### $tls_my_urlencoded_cert

The PEM-encoded client certificate, urlencoded. String type.

## SIP Message Attributes

### $msg(attr)

Return attributes of SIP message:

-   $msg(len) - sip message length
-   $msg(buf) - sip message buffer
-   $msg(body) - sip message body
-   $msg(body_len) - sip message body length
-   $msg(hdrs) - sip message headers (surrounding white space and EoL
    chars trimmed)
-   $msg(fline) - sip message first line (surrounding white space and
    EoL chars trimmed)
-   $msg(fpart) - sip message first line and the headers
-   $msg(lpart) - sip message headers and the body

## POSOPS Module

### $pos(key)

Get attributes after a function of the module is executed.

The key can be:

-   ret - the return code on success or -1
-   idx - position inside message buffer, for find/search it is the
    start of matching
-   len - the length of matching string for search functions

## XHTTP Module

### $hu

-   URL of http request.

## MSRP Module

This class of pseudo-variables is exported by MSRP module and give
access to attributes of MSRP frames.

### $msrp(buf)

The entire content of MSRP frame - first line, headers, body and
end-line.

### $msrp(body)

The body of MSRP frame.

### $msrp(code)

The code of MSRP replies.

### $msrp(hdrs)

The headers in a MSRP frame.

### $msrp(msgid)

The body of Message-Id header.

### $msrp(method)

The method of a MSRP request.

### $msrp(buflen)

The length of entire MSRP frame.

### $msrp(sessid)

The session id for MSRP frame. It is taken from the first MSRP URI in
To-Path header.

### $msrp(reason)

The reason text in a MSRP reply.

### $msrp(crthop)

The URI for current hop - it is the first URI in To-Path header.

### $msrp(bodylen)

The length of the body in MSRP frame.

### $msrp(transid)

The transaction ID from the first line of MSRP frame.

### $msrp(prevhop)

The MSRP URI of the previous hop - the first address in From-Path
header.

### $msrp(nexthop)

The URI of the next hop - the second address in To-Path header.

### $msrp(lasthop)

The last hop URI - the last address in To-Path header.

### $msrp(srcaddr)

The address of the previous hop set as MSRP URI using received source IP
and port.

### $msrp(srcsock)

The local socket where the MSRP frame was received, set as
**proto:ipaddr:port**.

### $msrp(firsthop)

The URI of the first hop - the last address in From-Path header.

### $msrp(prevhops)

The number of previous hops - it is the number of addresses in From-Path
header.

### $msrp(nexthops)

The number of next hops - it is the number of addresses in To-Path
header minus 1 (the first address in To-Path is current hop).

### $msrp(conid)

The internal integer id for TCP/TLS connection.

## SIPT Module

### $sipt(calling_party_number.presentation) / $sipt_presentation

Returns the value of the Address presentation restricted indicator
contained in the Calling Party Number header of the IAM message if it
exists. Returns -1 if there isn't a Calling Party Number header.

The following values can be returned:

-   0 presentation allowed
-   1 resentation restricted
-   2 address not avail (national use)
-   3 spare

Example:

``` c
if($sipt(calling_party_number.presentation) == 1)
{
        append_hf("Privacy: id\r\n");
        $fn = "Anonymous";
}
```

### $sipt(calling_party_number.screening) / $sipt_screening

Returns the value of the Screening Indicator contained in the Calling
Party Number header of the IAM message if it exists. Returns -1 if there
isn't a Calling Party Number header.

Can return the following values:

-   0 Reserved (user provided, not verified)
-   1 User Provided, Verified and Passed
-   2 Reserved (user provided, verified and failed)
-   3 Network provided

Example:

``` c
# remove P-Asserted-Identity header if the screening isn't verified
# or network provided
$avp(s:screening) = $sipt(calling_party_number.screening);
if($avp(s:screening) != 1 && $avp(s:screening) != 3)
{
        remove_hf("P-Asserted-Id");
}
```

### $sipt(hop_counter) / $sipt_hop_counter

Returns the value of the Hop Counter for the IAM message if it exists.
Returns -1 if there isn't a hop counter.

Example:

``` c
# get the hop counter and update the Max-Forwards header if it exists
$avp(s:hop) = $sipt(hop_counter);
if($avp(s:hop) > 0)
{
        remove_hf("Max-Forwards");
        append_hf("Max-Forwards: $avp(s:hop)\r\n");
}
```

### $sipt(calling_party_category) / $sipt(cpc) / $sipt_cpc

Returns the value of the Calling Party Category for the IAM message.
Returns -1 if there is a parsing error.

### $sipt(calling_party_number.nature_of_address) / $sipt.(calling_party_number.nai) / $sipt_calling_party_nai

Returns the value of the Nature of Address Indicator of the Calling
Party for the IAM message. Returns -1 if there is a parsing error or if
the Calling Party Number is not present.

Can return the following values:

-   0 Spare
-   1 Subscriber Number (national use)
-   2 Unknown (national use)
-   3 National (significant) number (national use)
-   4 International use

Example:

``` c
# get the Calling Nai and add country code if national
if($sipt(calling_party_number.nai) == 3)
{
        $fU = "32" + "$fU";
}
```

### $sipt(called_party_number.nature_of_address) / $sipt(called_party_number.nai) / $sipt_called_party_nai

Returns the value of the Nature of Address Indicator of the Called Party
for the IAM message. Returns -1 if there is a parsing error.

Can return the following values:

-   0 Spare
-   1 Subscriber Number (national use)
-   2 Unknown (national use)
-   3 National (significant) number
-   4 International use
-   5 Network-specific number (national use)

Example:

``` c
# get the Called Nai and add country code if national
if($sipt(called_party_number.nai) == 3)
{
        $rU = "32" + "$rU";
}
```

### $sipt(event_info)

Returns the value of the Event Info header of the CPG message. Returns
-1 if there is a parsing error.

Can return the following values:

-   0 Spare
-   1 ALERTING
-   2 PROGRESS
-   3 In-band information or an appropriate pattern is now available
-   4 Call forward on busy
-   5 Call forward on no reply
-   6 Call forward unconditional

### $sipt(backward_call_indicator.charge_indicator)

Returns the value of the charge indication of the backward call
indicator header in the ACM or COT message. Returns -1 if there is a
parsing error

Can return the following values:

-   0 no indication
-   1 no charge
-   2 charge
-   3 spare

### $sipt(redirection_info) / $sipt_redirection_info

Returns the value of the Redirecting reason of the Call Diversion
Information header from ISUP. Returns -1 if there is a parsing error or
if the Call Diversion Information is not present.

Can return the following values:

-   0 Unknown
-   1 User busy
-   2 no reply
-   3 unconditional
-   4 deflection during alerting
-   5 deflection immediate response
-   6 mobile subscriber not reachable

### $sipt(redirection_number) / $sipt_redirection_number

Returns the value (Address signal) of the Redirection Number. Returns -1
if there is a parsing error or if the Redirection Number is not present.

Example:

``` c
# get the redirection number
$avp(s:redir_num) = $sipt(redirection_number);
```

### $sipt(redirection_number.nai) / $sipt_redirection_number_nai

Returns the value of the Nature of Address Indicator of the Redirection
Number. Returns -1 if there is a parsing error or if the Redirection
Number is not present.

Can return the following values:

-   0 Spare
-   1 Subscriber Number (national use)
-   2 Unknown (national use)
-   3 National (significant) number
-   4 International use

### $sipt(calling_party_number)

Returns the value (Address signal) of the Calling Party for the IAM
message. Returns -1 if there is a parsing error or if the Calling Party
Number is not present.

### $sipt(called_party_number)

Returns the value (Address signal) of the Called Party for the IAM
message. Returns -1 if there is a parsing error or if the Called Party
Number is not present.

### $sipt(sipt_redirection_information_reason)

Returns the value of the Redirection reason of the Redirection
information header from ISUP. Returns -1 if there is a parsing error or
if the Redirection information is not present.

### $sipt(sipt_redirection_information_original_reason)

Returns the value of the Original Redirection reason of the Redirection
information header from ISUP. Returns -1 if there is a parsing error or
if the Redirection information is not present.

### $sipt(redirecting_number.nai)

Returns the value of the Nature of Address Indicator of the Redirecting
Number. Returns -1 if there is a parsing error or if the Redirecting
Number is not present.

Can return the following values:

-   0 Spare
-   1 Subscriber Number (national use)
-   2 Unknown (national use)
-   3 National (significant) number
-   4 International use

### $sipt(redirecting_number)

Returns the value (Address signal) of the Redirecting Number for the IAM
message. Returns -1 if there is a parsing error or if the Redirecting
Number is not present.

### $sipt(original_called_number.nai)

Returns the value of the Nature of Address Indicator of the Original
Called Number. Returns -1 if there is a parsing error or if the Original
Called Number is not present.

Can return the following values:

-   0 Spare
-   1 Subscriber Number (national use)
-   2 Unknown (national use)
-   3 National (significant) number
-   4 International use

### $sipt(original_called_number)

Returns the value (Address signal) of the Original Called Number for the
IAM message. Returns -1 if there is a parsing error or if the Original
Called Number is not present.

### $sipt(generic_number.nai)

Returns the value of the Nature of Address Indicator of the Generic
Number. Returns -1 if there is a parsing error or if the Generic Number
is not present.

Can return the following values:

-   0 Spare
-   1 Subscriber Number (national use)
-   2 Unknown (national use)
-   3 National (significant) number
-   4 International use

### $sipt(generic_number)

Returns the value (Address signal) of the Generic Number for the IAM
message. Returns -1 if there is a parsing error or if the Generic Number
is not present.

## $cfg(key) - Config File Attributes

Attributes related to configuration file.

The key can be:

-   line - return the current line in config
-   name - return the name of current config file
-   file - return the name of current config file
-   route - return the name of routing block

Example:

``` c
send_reply("404", "Not found at line $cfg(line)");
```

## $dns(pvid=>key) - DNS Query Result

This variable stores the DNS result details after a call of
dns_query(hostname, pvid) function from ipops module.

-   pvid can be any string
-   key can be:
    -   count - number of addresses
    -   ipv4 - set to 1 if at least one ipv4 address (otherwise 0)
    -   ipv6 - set to 1 if at least one ipv6 address (otherwise 0)
    -   addr\[index\] - the address as string from position index in the
        list (0 based indexing)
    -   type\[index\] - the type of address from position index in the
        list (0 based indexing), the value is 4 for ipv4 and 6 for ipv6

The index can be an integer or a variable with integer value. First
address has the index 0. If negative value, the returned address is
counted from the end of the list, -1 being the last address. If no index
is provided, then the first address is returned.

``` c
if(dns_query("test.com", "xyz"))
{
    xlog(" number of addresses: $dns(xyz=>count)\n");
    xlog(" ipv4 address found: $dns(xyz=>ipv4)\n");
    xlog(" ipv6 address found: $dns(xyz=>ipv6)\n");
    $var(i) = 0;
    while($var(i)&lt;$dns(xyz=>count)) {
        xlog(" #[$var(i)] type ($dns(xyz=>type[$var(i)]))"
             " addr [$dns(xyz=>addr[$var(i)])]\n");
        $var(i) = $var(i) + 1;
    }
}
```

## $HN(key) - Hostname details

Give local hostname details (implemented by ipops module).

The key can be:

-   n - the hostname
-   f - the fullname
-   d - the domain
-   i - the ip address

``` c
xlog("local hostanme is $HN(n)\n");
```

## $RANDOM - Random number

Returns a random value from the \[0 - 2^31) range.
(Part of the cfgutils module)

``` c
if (rand_event()) {
  $avp(i:10) = ($RANDOM / 16777216); # 2^24
  if ($avp(i:10) < 10) {
     $avp(i:10) = 10;
  }
  append_to_reply("Retry-After: $avp(i:10)\n");
  sl_send_reply("503", "Try later");
  exit;
};
# normal message processing follows
```

## JSONRPCS Variables

### $jsonrpl(key) - JSONRPC Reply

This variable gives access to JSONRPC reply after executing
jsonrpc_exec(...) in kamailio.cfg.

The key can be:

-   code - code for the JSONRPC response
-   text - text of the code for the JSONRPC response
-   body - the body of the JSONRPC response

## $lsock(expr)

Get attributes for listen sockets (from corex module).

The **expr** is an expression specifying what to match and return, the
format is:

    matchid/value/field

The **expr** can contain variables that are evaluated before parsing the
expression.

The **matchid** can be:

-   n - match on name
-   l - match on listen address

The **value** specifies what to match with.

The **field** can be (only first character matches):

-   name - return name
-   listen - return the listen address
-   advertise - return the advertise address
-   index - return the index in the list of all sockets

Example:

    listen=udp:127.0.0.1:5060 advertise 127.0.0.1:5090 name "s0"
    ...
    xinfo("$lsock(n/s0/listen)\n");
    xinfo("$lsock(l/udp:127.0.0.1:5060/name)\n");
    $var(s0) = "n/s0/listen";
    xinfo("$lsock($var(s0))\n");

## Evrexec Module

### $evr(key)

evrexec attributes:

-   $evr(data) - processing data
-   $evr(srcip) - source ip
-   $evr(srcport) - sourceport as string
-   $evr(srcportno) - source port as number

## Presence Module

### $subs(key) - Subscription Attributes

This variable gives access to attributes of the current subscription.
The variable has to be used after executing *handle_subscription()* in
order to provide accurate values.

The key can be:

-   uri - subscription URI. Useful in particular for subscriptions
    within the dialog, when the request URI in SUBSCRIBE is the Contact
    address from the initial subscription.

## Registrar Module

### $ulc(profile=>attr) - Registered Contact Attributes

Access the attributes of contact addresses stored in 'profile'.

It must be used after a call of “reg_fetch_contacts()”.

## Sipcapture Module

### $hep(key) - HEP Packet Attributes

The key refers to HEP packet header values:

-   version - HEP version
-   src_ip - source IP address
-   dst_ip - destination IP address
-   0x000 - HEP attribute 0x000
-   0x999 - HEP attribute 0x999

## Phonenum Variables

$phn(rid=>key) - rid is an identifier for this query result; it is
designated by the second parameter of phonenum_match(). The key can be
one of the following:

-   number - phone number that is matched
-   valid - 1 if the matched number has a valid result; 0 otherwise
-   normalized - normalized phone number
-   cctel - country code for phone number
-   ltype - local network type
-   ndesc - phone number description
-   error - error string if phone number matching fails.

``` c
if(phonenum_match("1-484-555-8888", "src")) {
    if($phn(src=>valid)==1) {
        xlog("number normalized to: $phn(src=>normalized)\n");
    } else {
        xlog("number normalization error: $phn(src=>error)\n");
    }
}
```

## SecSIPId Variables

$secsipid(key) - return attributes of secsipid module.

The key can be:

-   val - the value of Identity computed by secsipid_build_identity(...)
-   ret - the return code of the libsecsipid function used by
    secsipid_build_identity(...)

Example:

``` c
if(secsipid_build_identity("$fU", "$rU", "A", "",
        "https://kamailio.org/stir/$rd/cert.pem", "/secsipid/$rd/key.pem")) {
    xinfo("identity value: $secsipid(val)\n");
}
```

## sdpops module variables

-   $sdp(body) - full SDP body (read only)
-   $sdp(sess_version) - sess-version -attribute from SDP o= -line. When
    set to special value -1, current value is incremented. (read +
    write)
-   $sdp(c:ip) - connection IP (read only) - taken from first media stream if specified,
    otherwise from first session

## $sruid - Unique ID

-   $sruid - return unique ID generated internally Kamailio

## $ltt(key) - Local To-Tag

$ltt(key) - return local generated To-tag when Kamailio sends a reply

-   $ltt(s) - the to-tag used in stateless replies
-   $ltt(t) - the to-tag used in transaction stateful replies
    (transaction has to be created at that time, eg., by t_newtran() or
    in a branch/failure route, otherwise it returns $null)
-   $ltt(x) - $ltt(t) if the transaction was created already, otherwise
    $ltt(s)

## $via0(attr) - Via\[0\] Attributes

$via0(attr) - attributes of first Via header.

The attr can be:

-   host - host part (string)
-   port - port (number)
-   proto - protocol - transport part (string)
-   protoid - protocol id (integer id)
-   branch - branch parameter
-   rport - rport parameter value (string)
-   received - received parameter value (string)
-   i - i parameter value (string)
-   params - all parameters
-   oc - 0 if the oc parameter is not present; 1 if present but no value; 2 if present with value
-   ocval - value of oc parameter
-   ocalgo - the value of oc-algo parameter
-   ocvalidity - the value of oc-validity parameter
-   ocseq - the value of oc-seq parameter

## $via1(attr) - Second Via Attributes

$via1(attr) - attributes of second Via header. The attr can be the same
as for $via0(attr).

## $viaZ(attr) - Last Via Attributes

$viaZ(attr) - attributes of last Via header. The attr can be the same as
for $via0(attr).

## tcpops module variable

$tcp(key) - return TCP connection attributes.

The key can be:

-   c_si - connection source ip (useful with HAProxy connections)
-   c_sp - connection source port (useful with HAProxy connections)
-   conid - connection id

## pv_headers module variables

-   $x_hdr(*header_name*): *header_name* header value
-   $x_fu: Full From header
-   $x_fU: From header user part
-   $x_fd: From header domain part
-   $x_fn: From header Display Name part
-   $x_ft: From header Tag
-   $x_tu: Full To header
-   $x_tU: To header user part
-   $x_td: To header domain part
-   $x_tn: To header Display Name part
-   $x_tt: To header Tag
-   $x_rs:
-   $x_rr:

## microhttpd module variables

`$mhttpd(key)` - return attributes of the HTTP request received by microhttpd module.

The key can be:

  - `url` - the http url
  - `data` - the body of http request
  - `size` - the size of the body
  - `method` - the http method
  - `srcip` - the source ip
  - `version` - the http version

## $C(xy) - Foreground and background colors

$C(xy) - reference to an escape sequence. “x” represents the foreground
color and “y” represents the background color.

Colors could be:

-   x : default color of the terminal
-   s : Black
-   r : Red
-   g : Green
-   y : Yellow
-   b : Blue
-   p : Purple
-   c : Cyan
-   w : White

## $K(key) - Kamailio Constants

$K(key) - return the numeric values corresponding to Kamailio
configuration constants.

The key can be:

-   IPv4 - return AF_INET
-   IPv6 - return AF_INET6
-   UDP - return PROTO_UDP
-   TCP - return PROTO_TCP
-   TLS - return PROTO_TLS
-   SCTP - return PROTO_SCTP
-   WS - return PROTO_WS
-   WSS - return PROTO_WSS

``` c
xinfo("proto UDP numeric id: $K(UDP)\n");
```

## Examples

A few examples of usage.

Example 1. Pseudo-variables usage

``` c
...
avp_aliases="uuid=I:50"
...
route {
...
    $avp(uuid)="caller_id";
    $avp(i:20)= $avp(uuid) + ": " + $fu;
    xdbg("$(C(bg))avp(i:20)$(C(xx)) [$avp(i:20)] $(C(br))cseq$(C(xx))=[$hdr(cseq)]\n");
...
}
...
```

### Request-URI and Destination-URI parsing

Following are some examples how RURI and DURI are parsed, for SIP-URIs,
tel-URIs and Service-URNs:

```shell
    # Request URI contains SIP URI
    $ru = "sip:example.com"
    $rz = "sip"
    $rU = "<null>"
    $rd = "example.com"
    $rp = "5060"
    $rP = "UDP"

    # Request URI contains SIP URI
    $ru = "sips:john.q.public:hispw@example.com:6061 transport=tls;foo=bar"
      $rz = "sips"
      $rU = "john.q.public"
      $rd = "example.com"
      $rp = "6061"
      $rP = "tls"

    # Request URI contains service URN
    $ru = "urn:service:sos.fire"
      $rz = "urn"
      $rU = "service"
      $rd = "sos.fire"
      $rp = "5060"
      $rP = "UDP"

    # Request URI contains tel: URI
    $ru = "tel:+1-201-555-0123"
      $rz = "tel"
      $rU = "+1-201-555-0123"
      $rd = "<null>"
      $rp = "5060"
      $rP = "UDP"

    # Request URI contains tel: URI with phone-context
    $ru = "tel:7042;phone-context=example.com"
      $rz = "tel"
      $rU = "7042"
      $rd = "<null>"
      $rp = "5060"
      $rP = "UDP"

    # Destination URI (must be a SIP(S) URI)
    $du = "sip:example.com:6061;transport=tls;foo=bar"
      $dd = "example.com"
      $dp = "6061"
      $dP = "tls"
```
