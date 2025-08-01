# Kamailio SIP Server v4.3.x (stable): Pseudo-Variables

<img src="pseudovariables.png" class="align-right" width="200" />

## Introduction

The term “pseudo-variable” is used for special tokens that can be given
as parameters to different script functions and they will be replaced
with a value before the execution of the function.

The beginning of a “pseudo-variable” is marked by the character “$”. If
you want to have the character “$” just double it “$$”.

There is a set of predefined pseudo-variables, which have the name
composed from one or more characters, and special pseudo-variables that
are references to dynamic fields (AVP and Headers).

Pseudo-Variables are implemented by various modules, most of them are
provided by **pv** (if there is no special reference to a module, expect
that the pseudo-variable is provided by **pv** module).

## Pseudo-variables usage

Pseudo-variables can be used with many modules, among them:

- acc
- avpops
- htable
- textops
- uac
- xlog

## The list of pseudo-variables

Predefined pseudo-variables are listed in alphabetical order.

### $$ - Pseudo-variable marker

**$$** - represents the character '$'

### $\_s(format) - Evaluate dynamic format

**$\_s(format)** - returns the string after evaluating all
pseudo-variables in format

        $var(x) = "sip:" + $rU + "@" + $fd;

        # is equivalent of:

        $var(x) = $_s(sip:$rU@$fd);

### $ai - URI inP-Asserted-Identity header

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

### $Au - Acc username

**$Au** - username for accounting purposes. It's a selective pseudo
variable (inherited from acc module). It returns $au if exits or From
username otherwise.

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

- uri - return uri of the branch
- dst_uri - return destination uri (next hop address)
- path - return the path vector for the branch
- q - return the q value of the branch
- send_socket - return the socket to be used to send the branch
- count - return the number of the branches
- flags - return the branch flags value
- ruid - return the ruid of the branch (Record internal Unique ID from
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

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file (will add a new branch).\</fc>

### $bR - Request's all branches

**$bR** - reference to request's all branches

### $bf - Branch flags

**$bf** - reference to branch flags of branch 0 (RURI) - decimal output

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### $bF - Branch flags

**$bF** - reference to branch flags of branch 0 (RURI) - hexa output

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### $bs - Body size

**$bs** - body size

### $ci - Call-Id

**$ci** - reference to the value of call-id header (R/O)

### $cl - Content-Length

**$cl** - reference to the value of content-length header

### $cnt(pv) - Count number of pvs

**$cnt(avp)** - return the number of avps

``` c
xlog("$$avp(x) found $cnt($avp(x)) times\n");
```

### $conid - TCP Connection ID

**$conid** - The TCP connection ID of the connection the current message
arrived on for TCP, TLS, WS, and WSS. Set to $null for SCTP and UDP.

### $cs - CSeq

**$cs** - reference to the sequence number in the cseq header. The
method in the CSeq header is identical to the request method, thus use
$rm to get the method (works also for responses).

### $ct - Contact header

**$ct** - reference to the value of contact header

### $cT - Content-Type

**$cT** - reference to the value of content-type header

### $dd - Domain of destination URI

**$dd** - reference to domain of destination uri (without port)

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
module finds contact(s) behind NAT. You can set $du to any SIP URI.

     sip:kamailio.org
     sip:pbx123.kamailio.org;transport=udp
     sip:[2001:DB8::33:2]:5980;transport=tls

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

To reset $du:

    $du = null;

### $fd - From URI domain

**$fd** - reference to domain in URI of 'From' header

### $fn - From display name

**$fn** - reference to display name of 'From' header

### $fs - Forced socket

**$fs** - reference to the forced socket for message sending (if any) in
the form proto:ip:port

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file). Transport proto can be omitted when assigning
value, in which case it is taken from destination URI of the
message.\</fc>

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

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

Note that changing the From: header may break backwards compatibility
with SIP 1.0 devices.

### $fU - From URI username

**$fU** - reference to username in URI of 'From' header

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

Note that changing the From: header may break backwards compatibility
with SIP 1.0 devices.

### $mb - SIP message buffer

**$mb** - reference to SIP message buffer

### $mf - Flags

**$mf** - reference to message/transaction flags set for current SIP
request

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### $mF - Flags in hexadecimal

**$mF** -reference to message/transaction flags set for current SIP
request in hexa-decimal

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

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

### $pd - Domain in P-Preferred-Identity header URI

**$pd** - reference to domain in request's P-Preferred-Identity header
URI (see RFC 3325)

### $pn - Display Name in P-Preferred-Identity header

**$pn** - reference to Display Name in request's P-Preferred-Identity
header (see RFC 3325)

### $pp - Process id

**$pp** - reference to process id (pid)

### $pr - Protocol of received message

**$pr** or **$proto** - protocol of received message (udp, tcp, tls,
sctp, ws, wss)

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

### $rd - Domain in R-URI

**$rd** - reference to domain in request's URI (without port) or to the
Namespace Specific String of a URN (see RFC 2141)

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### $rdir(key) - Request Direction

**$rdir(key)** - get the direction of the request within dialog.

The direction is 'downstream' if sent by the caller and 'upstream' if
sent by callee.

The key can be:

- id - the returned value is an integer: 1 - for direction downstream,
    2 - for direction upstream
- name - the returned value is a string: 'downstream' or 'upstream'

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

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

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

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### $rU - Username in R-URI

**$rU** - reference to username in request's URI or to the Namespace
Identifier of a URN (see RFC 2141)

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### $ruid - Record internal Unique ID

**$ruid** - the Record internal Unique ID for the location record
selected by calling registrar:lookup()

### $rz - URI Scheme of R-URI

**$rz** - returns R-URI scheme, possible values: sip, sips, tel, tels
and urn, R-URI scheme parsing error should be reflected by value: none

### $Ri - Received IP address

**$Ri** - reference to IP address of the interface where the request has
been received

### $Rp - Received port

**$Rp** - reference to the port where the message was received

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

**$si** - reference to IP source address of the message

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

**$su** - returns the representation of source address (ip, port, proto)
as full SIP URI. The proto UDP is added also as transport parameter.

Its value looks like:

    "sip:ip:port;transport=proto"

### $td - To URI Domain

**$td** - reference to domain in URI of 'To' header

### $tn - To display name

**$tn** - reference to display name of 'To' header

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

### $tU - To URI Username

**$tU** - reference to username in URI of 'To' header

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

## $avp(id) - AVPs

**$avp(id)** - the value of the AVP identified by 'id'.

**$(avp(id)\[N\])** - represents the value of N-th AVP identified by
'id'.

The 'id' can be:

- "\[(s\|i):\]name" - name is the id of an AVP; 's' and 'i' specifies
    if the id is string or integer. If missing, it is considered to be
    string.
- "name" - the name is an AVP alias, or if the alias is not found, it
    is a string name
- pseudo variable - if value of pv is integer, id is integer, if
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

- $expires(min) - the minimum value for expires
- $expires(max) - the maximum value for expires

When there is only one expires value, then min and max return the same.

Example of usage:

``` c
if($expires(max)!=$null) {
    xlog("max expires value is: $expires(max)\n");
}
```

## $xavp(id) - XAVPs

xavp - extended AVP's - are structures that can store multiple values.
They work like a stack, much like AVPs, and are attached to SIP
transactions. Each xavp has a name and can contain multiple named
values, the structure name and the value name are separated by '=>' like
$xavp(root=>branch) where "root" is the name of the structure and branch
is a named value. To assign a value use

``` c
$xavp(root=>branch)="value";
```

Like avps, xavp act like a stack. To refer to an existing value, use an
index. The newest xavp has index zero \[0\].

``` c
$xavp(root[0]=>newbranch)=12;
```

If you assign a value without an index, a new xavp is allocated and the
old one is pushed up the stack, becoming index \[1\]. Old index \[1\]
becomes \[2\] etc.

``` c
$xavp(example=>name)="one";
#create new
$xavp(example=>name)="two";
#add extra value to "two"
$xavp(example[0]=>value)="John";
#add value to first variable - "one"
$xavp(example[1]=>value)="Anna";
```

Another example:

``` c
# Create new xavp
$xavp(sf=>uri)="sip:10.10.10.10";

#assign values
$xavp(sf[0]=>fr_timer)=10;
$xavp(sf[0]=>fr_inv_timer)=15;
$xavp(sf[0]=>headers)="X-CustomerID: 1234\r\n";

#create new xavp, moving previous one to sf[1]
$xavp(sf=>uri)="sip:10.10.10.11";
$xavp(sf[0]=>fr_timer)=20;
$xavp(sf[0]=>fr_inv_timer)=35;

#Create a third xavp
$xavp(sf=>uri)="sip:10.10.10.12";
$xavp(sf[0]=>fr_timer)=10;
$xavp(sf[0]=>fr_inv_timer)=15;
$xavp(sf[0]=>headers)="X-CustomerID: pw45\r\n";
```

xavps are read and write variables. You can create multilevel xavps, as
xavps may contain xavps.

## $hdr(name) - Headers

**$hdr(name)** - represents the body of first header identified by
'name'

**$(hdr(name)\[N\])** - represents the body of the N-th header
identified by 'name'.

If \[N\] is omitted then the body of the first header is printed. The
first header is got when N=0, for the second N=1, a.s.o. In case of a
comma-separated multi-body headers, it returns all the bodies,
comma-separated. To print the last header of that type, use -1, or other
negative values to count from the end. No white spaces are allowed
inside the specifier (before }, before or after {, \[, \] symbols). When
N='\*', all headers of that type are printed.

The module should identify compact header names. It is recommended to
use dedicated specifiers for headers (e.g., $ua for user agent header),
if they are available -- they are faster.

Example of usage:

``` c
if($hdr(From)=~"kamailio\.org") {
...
}
```

\<fc #0000ff>It is read-only variable. You can remove or add headers
using functions from textops module.\</fc>

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

\<fc #0000FF>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

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
shared variable. The module exports a set of MI functions to get/set the
value of shared variables.

Example - shv(name) pseudo-variable usage:

    ...
    modparam("pv", "shvset", "debug=i:1")
    ...
    if ($shv(debug) == 1) {
        xlog("request: $rm from $fu to $ru\n");
    }
    ...

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

## $time(name) - Broken-down time

**$time(name)** - the PV provides access to broken-down time attributes.

The 'name' can be:

- sec - return seconds (int 0-59)
- min - return minutes (int 0-59)
- hour - return hours (int 0-23)
- mday - return the day of month (int 1-31)
- mon - return the month (int 1-12)
- year - return the year (int, e.g., 2008)
- wday - return the day of week (int, 1=Sunday - 7=Saturday)
- yday - return the day of year (int, 1-366)
- isdst - return daylight saving time status (int, 0 - DST off, >0 DST
    on)

Example - time(name) pseudo-variable usage:

``` c
...
if ($time(year) == 2008) {
    xlog("request: $rm from $fu to $ru in year 2008\n");
}
...
```

## $timef(format) - Strftime Formatted Time

**$timef(format)** - return current time as formatted by strftime
'format'. See 'man strftime' to see the available time attribute
specifiers.

Example:

``` c
xlog("Today is $timef(%m/%d/%y)\n");
```

## $sel(name) - Selects

**$sel(name)** - return the value of **select** specified by name.
**select** refers a class of config variables introduced by SER 2.0,
allowing to select and return parts of sip messages and not only.

List of available selects:

- <http://www.kamailio.org/wiki/cookbooks/devel/selects>

Example:

``` c
if($sel(via[1].host)=="10.10.10.10")
{
  ...
}
```

## Send Address Attributes

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

- ip - IP address of destination
- af - address family to be used to send (numeric)
- port - port of destination address
- proto - transport protocol to be used to send (numeric)
- buf - entire send buffer as string
- len - length of outgoing packet (length of above buf)

Example:

``` c
onsend_route {
  if($snd(ip)=="10.10.10.10")
  {
    ...
  }
}
```

## Benchmark module Pseudo-Variables

### $BM_time_diff

$BM_time_diff - the time difference elapsed between calls of
bm_start_timer(name) and bm_log_timer(name). The value is 0 if no
bm_log_timer() was called.

## Dialog module Pseudo-Variables

### $dlg(attr)

Return the attribute of the current processed dialog.

\<fc #0000ff>It is R/O variable.\</fc>

The 'attr' can be:

- h_id - hash id
- h_entry - hash entry
- ref - reference count
- state - state of dialog
- to_rs - To route set
- from_rs - From route set
- dflags - dialog internal flags
- sflags - dialog script flags
- callid - sip call id
- to_uri - To uri
- to_tag - To tag
- from_uri - From uri
- from_tag - From tag
- toroute - timeout route
- lifetime - timeout inteval
- start_ts - start timestamp
- to_cseq - To CSeq
- from_cseq - From CSeq
- to_contact - To contact address
- from_contact - From contact address
- to_bindaddr - To bind address
- from_bindaddr - From bind address

### $dlg_ctx(attr)

Return the attribute of the context for current processed dialog.

\<fc #0000ff>It is R/W variable.\</fc>

The 'attr' can be:

- set
- flags
- timeout_route
- timeout_bye

### $dlg_var(key)

Store and retrieve custom variable for current processed dialog.

\<fc #0000ff>It is R/W variable.\</fc>

The 'key' can be any string.

## Erlang module Pseudo-Variables

### Erlang pseudo-variable attributes

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

## HTable module Pseudo-Variables

### $sht(htable=>key)

Access hash table entries.

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file. Hash table entry can be deleted by assigning value
$null to it.\</fc>

The “htname” must be a hash table name defined via “htable” parameter.

The “key” can be:

- static string - set of characters without pseudo-variables
- dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

<!-- -->

    ...
    modparam("htable", "htable", "a=>size=4;")
    ...
    $sht(a=>$au) = 1;
    $sht(a=>$ru) = $fu;
    ...

### $shtex(htable=>key)

Access hash table entry expire value. Value represents the seconds until
the htable entry will expire and be deleted from htable.

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file.\</fc>

The “htname” must be a hash table name defined via “htable” parameter
and have auto-expire greater than 0.

The “key” can be:

- static string - set of characters without pseudo-variables
- dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

<!-- -->

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

- reqexp - match by regular expression 'regexp'
- \~\~regexp - match by regular expression 'regexp'
- \~%prefix - match by right prefix
- %\~prefix - match by left prefix
- ==value - match by string value
- eqvalue - match by integer value
- \* \* - (two asterisks next to each other) - count all items

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

## Memcached module Pseudo-Variables

### $mct(key)

Access hash table entries stored in the memcached server.

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file.\</fc>

The “key” can be:

- static string - set of characters without pseudo-variables
- dynamic string - set of characters that include pseudo-variables.
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

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file.\</fc>

The “key” can be:

- static string - set of characters without pseudo-variables
- dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

<!-- -->

    ...
    $mct(cnt) = 1;
    $mcinc(cnt) = 2; # increment by 2
    xlog("counter is now $mct(cnt)");
    ...

### $mcdec(key)

Do an atomic decrement operation on the value stored in memcached. You
need to add a value previously.

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file.\</fc>

The “key” can be:

- static string - set of characters without pseudo-variables
- dynamic string - set of characters that include pseudo-variables.
    The pseudo-variables will be evaluated at runtime.

<!-- -->

    ...
    $mct(cnt) = 10;
    $mcdec(cnt) = 2; # decrement by 2
    xlog("counter is now $mct(cnt)");
    ...

## XMLOPS Pseudo-Variables

### $xml(name=>spec)

- name - id to refer the documet
- spec - specifier:
  - doc - set/get the document as text
  - xpath:xpath-expression - evaluate xpath expression

Example:

    $xml(x=>doc) = '<?xml version="1.0" encoding="UTF-8"?><a><b>test</b></a>';
    xlog("content of node b: $xml(x=>xpath:/a/b/text())\n");
    $xml(x=>xpath:/a/b) = "1234";

## TMX module Pseudo-Variables

### $T_branch_idx

- the index (starting with 1 for the first branch) of the branch for
    which is executed the branch_route\[\]. If used outside of
    branch_route\[\] block, the value is '0'.

### $T_reply_ruid

- the ruid stored in the current branch of the transaction. The ruid
    is stored in a branch from the details in a contact binding. In an
    event_route\[tm:branch-failure\] block, this is the ruid of the
    branch that sent a failure reply. In a failure_route\[\] block, this
    is the ruid of the winning failure response.

### $T_reply_code

- the code of the reply, as follows: in request_route will be the last
    stateful sent reply; in reply_route will be the current processed
    reply; in failure_route will be the negative winning reply. In case
    of no-reply or error, '0' value is returned

### $T_req(pv)

- can be used in reply routes or inside the modules to get access to
    attributes of the request belonging to same transaction as the reply

<!-- -->

    route {
      t_on_reply("1");
      t_relay();
    }

    onreply_route[1] {
      xlog("Request SRCIP:PORT = $T_req($si):$T_req($sp)\n");
    }

### $T_rpl(pv)

- can be used in failure routes or inside the modules to get access to
    attributes of the winning reply belonging to same transaction as the
    request

<!-- -->

    route {
      t_on_failure("1");
      t_relay();
    }

    failure_route[1] {
      xlog("Reply SRCIP:PORT = $T_rpl($si):$T_rpl($sp)\n");
    }

### $T_inv(pv)

- can be used in request routes or inside the modules to get access to
    attributes of the INVITE request while processing a CANCEL.

<!-- -->

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

- pseudo-variable class to access TM attributes

The **name** can be:

- id_index - return the internal index of current transaction
- id_label - return the internal label of current transaction
- reply_code - alias to $T_reply_code
- branch_index - alias to $T_branch_idx
- reply_type - 1 if it is a local generated reply, 0 - if no reply for
    transaction or it is a received reply

Note: the pair (id_index,id_label) uniquely identifies a transaction.

### $T_branch(name)

- pseudo-variable class to access TM branch attributes

The **name** can be:

- flags - Flags of the branch. In an event_route\[tm:branch-failure\]
    block, this is the flags of the branch that sent a failure reply. In
    a failure_route\[\] block, this is the flags of the winning failure
    response.
- uri - the R-URI of the branch. Can be used in onreply_route\[id\] -
    reply route blocks executed by tm module. For other routing blocks
    handling requests, the R-URI is returned by $ru

## UAC module Pseudo-Variables

### $uac_req(key)

- used to build the input for uac_send_req() function of UAC module

The key can be:

- method - SIP method
- ruri - request URI
- furi - From URI
- turi - To URI
- ouri - Outbound proxy URI
- hdrs - SIP Headers
- body - Body
- auser - authentication username
- apasswd - authentication password
- sock - local socket to be used for sending (proto:address:port)
- callid - SIP-Call-ID of the generated request (by default, a call-id
    is generated)
- all - alias useful to reset all fields - $uac_req(all) = $null;
- evroute - it has to be set to 1 in order to execute
    event_route\[uac:reply\] when reply is received
- evcode - reply code for the request sent with uac_req_send(),
    available inside event_route\[uac:reply\]
- evtype - is 1 if the reply was received via network, 2 if the reply
    was locally generated (e.g., retransmission timeout), available
    inside event_route\[uac:reply\]

``` c
$uac_req(method)="OPTIONS";
$uac_req(ruri)="sip:alice@kamailio.org";
$uac_req(turi)="sip:alice@kamailio.org";
$uac_req(furi)="sip:daniel@kamailio.org";
$uac_req(evroute) = 1;
uac_req_send();
...
event_route[uac:reply] {
  xlog("request sent to $uac_req(ruri) completed with code: $uac_req(evcode)\n");
}
```

## Nathelper module Pseudo-Variables

### $rr_count

- Number of Record Routes in received SIP request or reply.

### $rr_top_count

- If topmost Record Route in received SIP request or reply is a double
    Record Route, value of $rr_top_count is 2. If it a single Record
    Route, value of $rr_top_count is 1. If there is no Record Route(s),
    value of $rr_top_count is 0.

## MQueue module Pseudo-Variables

### $mqk(q)

- return the key of fetched item from queue q

### $mqv(q)

- return the value of fetched item from queue q

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

Seconds and microseconds taken from struct timeval.

- $TV(s) - seconds (cached at first call per sip message)
- $TV(u) - microseconds (cached at first call per sip message)
- $TV(sn) - seconds (not cached)
- $TV(un) - microseconds (not cached)
- $TV(Sn) - string representation seconds.microseconds (not cached)

## Next hop address

### $nh(key)

Return attributes of next hop for the SIP request. Address is taken from
dst_uri, if set, if not from new r-uri or original r-uri.

- $nh(u) - uri (lower case u)
- $nh(U) - username (upper case u)
- $nh(d) - domain
- $nh(p) - port (lower case p)
- $nh(P) - transport protocol (upper case p)

## GeoIP module Pseudo-Variables

### $gip(pvc=>key)

Variables exported by GeoIP module, returning geo-location attributes.
The attributes are populated upon calling function **geoip_match(ipaddr,
pvc)**.

**pvc** (container id) is second parameter of geoip_match(..) and
**key** can be:

- cc - country code
- tz - time zone
- zip - postal code
- lat - latitude
- lon - longitude
- dma - dma code
- ips - ip start
- ipe - ip end
- city - city
- area - area code
- regc - region
- regn - region name
- metro - metro code
- contc - continent code

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

## TLS module Pseudo-Variables

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

### $tls_peer_issuer_unit

organizationalUnitName in the issuer section of the certificate. String
type.

### $tls_my_subject_unit

organizationalUnitName in the subject section of the certificate. String
type.

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

## XHTTP module Pseudo-Variables

### $hu

- URL of http request.

## MSRP Module Pseudo Variables

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
\*\*proto:ipaddr:port".

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

## SIPT module Pseudo-Variables

### $sipt(calling_party_number.presentation) / $sipt_presentation

Returns the value of the Address presentation restricted indicator
contained in the Calling Party Number header of the IAM message if it
exists. Returns -1 if there isn't a Calling Party Number header.

### $sipt(calling_party_number.screening) / $sipt_screening

Returns the value of the Screening Indicator contained in the Calling
Party Number header of the IAM message if it exists. Returns -1 if there
isn't a Calling Party Number header.

### $sipt(hop_counter) / $sipt_hop_counter

Returns the value of the Hop Counter for the IAM message if it exists.
Returns -1 if there isn't a hop counter.

### $sipt(calling_party_category) / $sipt(cpc) / $sipt_cpc

Returns the value of the Calling Party Category for the IAM message.
Returns -1 if there is a parsing error.

### $sipt(calling_party_number.nature_of_address) / $sipt.(calling_party_number.nai) / $sipt_calling_party_nai

Returns the value of the Nature of Address Indicator of the Calling
Party for the IAM message. Returns -1 if there is a parsing error or if
the Calling Party Number is not present.

### $sipt(called_party_number.nature_of_address) / $sipt(called_party_number.nai) / $sipt_called_party_nai

Returns the value of the Nature of Address Indicator of the Called Party
for the IAM message. Returns -1 if there is a parsing error.

### $sipt(event_info)

Returns the value of the Event Info header of the CPG message. Returns
-1 if there is a parsing error.

## $cfg(key) - Config File Attributes

Attributes related to configuration file.

The key can be:

- line - return current line in config
- name - return the name of current config file

Example:

``` c
send_reply("404", "Not found at line $cfg(line)");
```

## $dns(pvid=>key) - DNS Query Result

This variable stores the DNS result details after a call of
dns_query(hostname, pvid) function from ipops module.

- pvid can be any string
- key can be:
  - count - number of addresses
  - ipv4 - set to 1 if at least one ipv4 address (otherwise 0)
  - ipv6 - set to 1 if at least one ipv6 address (otherwise 0)
  - addr\[index\] - the address as string from position index in the
        list (0 based indexing)
  - type\[index\] - the type of address from position index in the
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

- n - the hostname
- f - the fullname
- d - the domain
- i - the ip address

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

## JSONRPC-S Variables

### $jsonrpl(key) - JSONRPC Reply

This variable gives access to JSONRPC reply after executing
jsonrpc_exec(...) in kamailio.cfg.

The key can be:

- code - code for the JSONRPC response
- text - text of the code for the JSONRPC response
- body - the body of the JSONRPC response

## Presence Module Pseudo-Variables

### $subs(key) - Subscription Attributes

This variable gives access to attributes of the current subscription.
The variable has to be used after executing *handle_subscription()* in
order to provide accurate values.

The key can be:

- uri - subscription URI. Useful in particular for subscriptions
    within the dialog, when the request URI in SUBSCRIBE is the Contact
    address from the initial subscription.

## $C(xy) - Foreground and background colors

$C(xy) - reference to an escape sequence. “x” represents the foreground
color and “y” represents the background color.

Colors could be:

- x : default color of the terminal
- s : Black
- r : Red
- g : Green
- y : Yellow
- b : Blue
- p : Purple
- c : Cyan
- w : White

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

     === Request URI contains SIP URI ===
    $ru = "sip:example.com"
    $rz = "sip"
    $rU = "<null>"
    $rd = "example.com"
    $rp = "5060"
    $rP = "UDP"

    === Request URI contains SIP URI ===
    $ru = "sips:john.q.public:hispw@example.com:6061;transport=tls;foo=bar"
      $rz = "sips"
      $rU = "john.q.public"
      $rd = "example.com"
      $rp = "6061"
      $rP = "tls"

    === Request URI contains service URN ===
    $ru = "urn:service:sos.fire"
      $rz = "urn"
      $rU = "service"
      $rd = "sos.fire"
      $rp = "5060"
      $rP = "UDP"

    === Request URI contains tel: URI ===
    $ru = "tel:+1-201-555-0123"
      $rz = "tel"
      $rU = "+1-201-555-0123"
      $rd = "<null>"
      $rp = "5060"
      $rP = "UDP"

    === Request URI contains tel: URI with phone-context ===
    $ru = "tel:7042;phone-context=example.com"
      $rz = "tel"
      $rU = "7042"
      $rd = "<null>"
      $rp = "5060"
      $rP = "UDP"

    === Destination URI (must be a SIP(S) URI) ===
    $du = "sip:example.com:6061;transport=tls;foo=bar"
      $dd = "example.com"
      $dp = "6061"
      $dP = "tls"
