# Kamailio SIP Server and SER v3.3.x (stable): Pseudo-Variables

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
provided by **pv**.

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

### Pseudo-variable marker

**$$** - represents the character '$'

### URI in SIP Request's P-Asserted-Identity header

**$ai** - reference to URI in request's P-Asserted-Identity header (see
RFC 3325)

### Auth Digest URI

**$adu** - URI from Authorization or Proxy-Authorization header. This
URI is used when calculating the HTTP Digest Response.

### Auth realm

**$ar** - realm from Authorization or Proxy-Authorization header

### Auth username user

**$au** - user part of username from Authorization or
Proxy-Authorization header

### Auth username domain

**$ad** - domain part of username from Authorization or
Proxy-Authorization header

### Auth whole username

**$aU** - whole username from Authorization or Proxy-Authorization
header

### Acc username

**$Au** - username for accounting purposes. It's a selective pseudo
variable (inherited from acc module). It returns $au if exits or From
username otherwise.

### Branch attributes

**$branch(name)** - reference to attribute 'name' of a branch

This pseudo variable gives you access to the "additional branches" only,
not to the "main branch". E.g. if there are 3 clients registered for the
same AoR, after lookup() you will have one contact in the "main branch"
and two "additional branches". Using $branch() you can access the
additional branches, the main branch can be accessed using $ru and $du.
(Note: In branch_routes there is no distinction between the main and the
additional branches - the branch_route will be called for all of them.)

The 'name' can be:

- uri - return uri of the branch
- dst_uri - return destination uri (next hop address)
- q - return the q value of the branch
- path - return the path vector for the branch
- send_socket - return the socket to be used to send the branch
- flags - return the branch flags value
- count - return the number of the branches

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

### Request's first branch

**$br** - reference to request's first branch

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file (will add a new branch).\</fc>

### Request's all branches

**$bR** - reference to request's all branches

### Branch flags

**$bf** - reference to branch flags of branch 0 (RURI) - decimal output

### Branch flags

**$bF** - reference to branch flags of branch 0 (RURI) - hexa output

### Body size

**$bs** - body size

### Call-Id

**$ci** - reference to the value of call-id header

### Content-Length

**$cl** - reference to the value of content-length header

### CSeq

**$cs** - reference to the sequence number in the cseq header. The
method in the CSeq header is identical to the request method, thus use
$rm to get the methode (works also for responses).

### Contact header

**$ct** - reference to the value of contact header

### Content-Type

**$cT** - reference to the value of content-type header

### Domain of destination URI

**$dd** - reference to domain of destination uri (without port)

### Diversion header URI

**$di** - reference to Diversion header URI

### Diversion "privacy" parameter

**$dip** - reference to Diversion header "privacy" parameter value

### Diversion "reason" parameter

**$dir** - reference to Diversion header "reason" parameter value

### Diversion "counter" parameter

**$dic** - reference to Diversion header "counter" parameter value

### Port of destination URI

**$dp** - reference to port of destination uri

### Transport protocol of destination URI

**$dP** - reference to transport protocol of destination uri

### Destination set

**$ds** - reference to destination set

### Destination URI

**$du** - reference to destination uri

If loose_route() returns TRUE a destination uri is set according to the
first Route header. $du is also set if lookup() function of 'registrar'
module finds contact(s) behind NAT.

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

To reset $du:

    $du = null;

### Error class

**$err.class** - the class of error (now is '1' for parsing errors)

### Error level

**$err.level** - severity level for the error

### Error info

**$err.info** - text describing the error

### Error reply code

**$err.rcode** - recommended reply code

### Error reply reason

**$err.rreason** - recommended reply reason phrase

### From URI domain

**$fd** - reference to domain in URI of 'From' header

### From display name

**$fn** - reference to display name of 'From' header

### From tag

**$ft** - reference to tag parameter of 'From' header

### From URI

**$fu** - reference to URI of 'From' header

### From URI username

**$fU** - reference to username in URI of 'From' header

### SIP message buffer

**$mb** - reference to SIP message buffer

### Flags

**$mf** - reference to message/transaction flags set for current SIP
request

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### Flags in hexadecimal

**$mF** -reference to message/transaction flags set for current SIP
request in hexa-decimal

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### SIP message id

**$mi** - reference to SIP message id

### SIP message length

**$ml** - reference to SIP message length

### SIP Message Type

**$mt** - returns 1 if the sip message is a request, returns 2 if the
sip message is a reply

### Domain in SIP Request's original URI

**$od** - reference to domain in request's original R-URI

### Port of SIP request's original URI

**$op** - reference to port of original R-URI

### Transport protocol of SIP request original URI

**$oP** - reference to transport protocol of original R-URI

### SIP Request's original URI

**$ou** - reference to request's original URI

### Username in SIP Request's original URI

**$oU** - reference to username in request's original URI

### Domain in SIP Request's P-Preferred-Identity header URI

**$pd** - reference to domain in request's P-Preferred-Identity header
URI (see RFC 3325)

### Display Name in SIP Request's P-Preferred-Identity header

**$pn** - reference to Display Name in request's P-Preferred-Identity
header (see RFC 3325)

### Process id

**$pp** - reference to process id (pid)

### Protocol of received message

**$pr** or **$proto** - protocol of received message (UDP, TCP, TLS,
SCTP)

### User in SIP Request's P-Preferred-Identity header URI

**$pU** - reference to user in request's P-Preferred-Identity header URI
(see RFC 3325)

### URI in SIP Request's P-Preferred-Identity header

**$pu** - reference to URI in request's P-Preferred-Identity header (see
RFC 3325)

### Domain in SIP Request's URI

**$rd** - reference to domain in request's URI (without port) or to the
Namespace Specific String of a URN (see RFC 2141)

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### Body of request/reply

**$rb** - reference to message body

### Returned code

**$rc** - reference to returned code by last invoked function

**$retcode** - same as **$rc**

### Remote-Party-ID header URI

**$re** - reference to Remote-Party-ID header URI

### SIP request's method

**$rm** - reference to request's method. Works also for replies (by
using the CSeq header)

### Request Method ID

**$rmid** - returns internal integer representation of SIP method type

### SIP request's port

**$rp** - reference to port of R-URI

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### Transport protocol of SIP request URI

**$rP** - reference to transport protocol of R-URI

### SIP reply's reason (Reason-Phrase)

**$rr** - reference to reply's reason

### SIP reply's status (status-code, response-code, reply-code)

**$rs** - reference to reply's status

### Refer-to URI

**$rt** - reference to URI of refer-to header

### SIP Request's URI

**$ru** - reference to request's URI

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### Username in SIP Request's URI

**$rU** - reference to username in request's URI or to the Namespace
Identifier of a URN (see RFC 2141)

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### URI Scheme of Request URI

**$rz** - returns R-URI scheme, possible values: sip, sips, tel, tels
and urn, R-URI scheme parsing error should be reflected by value: none

### Received IP address

**$Ri** - reference to IP address of the interface where the request has
been received

### Received port

**$Rp** - reference to the port where the message was received

### Script flags

**$sf** - reference to script flags - decimal output

### Script flags

**$sF** - reference to script flags - hexa output

### IP source address

**$si** - reference to IP source address of the message

### Source port

**$sp** - reference to the source port of the message

### Statistics

**$stat(name)** - return the value of statistic item specified by 'name'

### Forced socket

**$fs** - reference to the forced socket for message sending (if any) in
the form proto:ip:port

\<fc #0000ff>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

### To URI Domain

**$td** - reference to domain in URI of 'To' header

### To display name

**$tn** - reference to display name of 'To' header

### To tag

**$tt** - reference to tag parameter of 'To' header

### To URI

**$tu** - reference to URI of 'To' header

### To URI Username

**$tU** - reference to username in URI of 'To' header

### Kamailio startup (boot) timestamp

**$Tb** - reference to unix timestamp of the time at which kamailio was
started

### String formatted time - cached

**$Tf** - reference string formatted time

Note: the system time is retrieved only once for each processed SIP
message. Subsequent calls of $Tf for same SIP message will return same
value.

### String formatted time - current

**$TF** - reference string formatted time

Note: the system time is computed for each call of $TF. Subsequent calls
of $TF for same SIP message may return different values.

### Unix time stamp - cached

**$Ts** - reference to unix time stamp

Note: the system time is retrieved only once for each processed SIP
message. Subsequent calls of $Ts for same SIP message will return same
value.

### Unix time stamp - current

**$TS** - reference to unix time stamp

Note: the system time is computed for each call of $TS. Subsequent calls
of $TS for same SIP message may return different values.

### User agent header

**$ua** - reference to user agent header field

## AVPs

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

## Headers

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
if($hdr(From)=~"sip-router\.org") {
...
}
```

\<fc #0000ff>It is read-only variable. You can remove or add headers
using functions from textops module.\</fc>

## Script private variables

**$var(name)** - refers to variables that can be used in configuration
script, having integer or string value. This kind of variables are
faster the AVPs, being referenced directly to memory location. The value
of script variables persists over the processing of SIP messages, being
specific per each SIP-Router process.

Example of usage:

    $var(a) = 2; -- sets the value of variable 'a' to integer '2'
    $var(a) = "2"; -- sets the value of variable 'a' to string '2'
    $var(a) = 3 + (7&(~2));
    $var(a) = "sip:" + $au + "@" + $fd; -- compose a value from authentication username and From URI domain

    if( [ $var(a) & 4 ] ) {
      xlog("var a has third bit set\n");
    }

Setting a variable to null is actually initializing the value to integer
'0'. Script variables don't have NULL value.

**Note:** A script variable persists over the SIP-Router process in
which it was initialized, so be sure of giving it a new value before
reading it or you'll get the value assigned in any other previous message
processed by the same SIP-Router process (pid).

\<fc #0000FF>It is R/W variable (you can assign values to it directly in
configuration file)\</fc>

**pv** module can be used to initialize the script variables.

## Script shared variables

**$shv(name)** - it is a class of pseudo-variables stored in shared
memory. The value of $shv(name) is visible across all openser processes.
Each “shv” has single value and it is initialised to integer 0. You can
use “shvset” parameter of **pv module** to initialize the shared
variable. The module exports a set of MI functions to get/set the value
of shared variables.

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

## Broken-down time

**$time(name)** - the PV provides access to broken-down time attributes.

The 'name' can be:

- sec - return seconds (int 0-59)
- min - return minutes (int 0-59)
- hour - return hours (int 0-23)
- mday - return the day of month (int 0-59)
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

## Strftime Formatted Time

**$timef(format)** - return current time as formatted by strftime
'format'. See 'man strftime' to see the available time attribute
specifiers.

Example:

``` c
xlog("Today is $timef(%m/%d/%y)\n");
```

## Selects

**$sel(name)** - return the value of **select** specified by name.
**select** refers a class of config variables introduced by SER 2.0,
allowing to select and return parts of sip messages and not only.

List of available selects:

- <http://sip-router.org/wiki/cookbooks/selects/devel>

Example:

``` c
if($sel(via[1].host)=="10.10.10.10")
{
  ...
}
```

## Send Address Attributes

**$snd(name)** - return attributes of the address from where the request
is going to be sent (local socket).

**$sndfrom(name)** - return attributes of the address from where the
request is going to be sent (local socket, same as $snd(name)).

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

## HTable module Pseudo-Variables

### $sht(htable=>key)

Access hash table entries.

\<fc #0000ff>It is R/W variable, you can assign values to it directly in
configuration file.\</fc>

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

<!-- -->

    ...
    $mct($au) = 1;
    $mct($ru) = $fu;
    $mct(test) = 1;
    xlog("stored value is $mct(test)");
    $mct(test) = null; # delete it
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

## Presence_xml Pseudo-Variables

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

## UAC module Pseudo-Variables

### $uac_req(key)

- used to build the input for uac_send_req() function of UAC module

key can be:

- method - SIP method
- ruri - request URI
- furi - From URI
- turi - To URI
- ouri - Outbound proxy URI
- hdrs - SIP Headers
- body - Body
- all - alias useful to rest all fields - $uac_req(all) = null;

``` c
$uac_req(method)="OPTIONS";
$uac_req(ruri)="sip:kamailio.org";
$uac_req(furi)="sip:kamailio.org";
$uac_req(turi)="sip:kamailio.org";
uac_send_req();
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

## Special pseudo-variables - Escape Sequences

These pseudo variables are exported, and mainly used, by xlog module to
print messages in many colors (foreground and background) using escape
sequences.

### Foreground and background colors

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
