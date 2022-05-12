# Frequently Asked Questions

This page is open for contributions, you must create an user account via
registration form:

-   <https://www.kamailio.org/wiki/start?do=register>

If you have a question suitable for FAQ and you don't know the answer,
add it and set the answer to 'TBA', others can read it and give the
right answer.


## General

### What is Kamailio?

📃 Kamailio is a SIP server, implementing the specifications from
RFC3261. Its root functionality is routing any kind of SIP packets. On
top of that, many conceptual features are implemented, see more at:

-   [Kamailio Features](http://www.kamailio.org/w/features/)

### Is Kamailio a B2BUA?

📃 No, Kamailio is a flexible SIP proxy. Many people integrate
Asterisk, FreeSWITCH, SEMS, or other products with Kamailio for a B2BUA.

     * [[http://ftp.iptel.org/pub/sems/doc/current/ModuleDoc_sbc.html|SEMS B2BUA]]

### Can Kamailio be used as SIP redirect server?

📃 Yes.

### Can Kamailio be used as SIP registrar and location server?

📃 Yes.

### Can Kamailio be used as SIP proxy server?

📃 Yes.

### Can Kamailio be used as SIP load balancer server?

📃 Yes.

### Can I load balance Asterisk or FreeSwitch with Kamailio?

📃 Yes.

### Can Kamailio be used as SIP least cost routing server?

📃 Yes.

### Is it possible to reload Kamailio configuration file?

📃 If you use native scripting language, you must restart after you
update the configuration file.

But note that many global parameters can be changed via RPC/MI commands
without restart (e.g., TCP connecting timeout, debug level). Applying
changes related to loaded modules or routing block require always a
restart.

If you use a KEMI scripting language (Lua, Python, JavaScript, Ruby,
Squirrel), then you can reload the routing logic script without
restarting Kamailio by issuing an RPC command (see KEMI interpreter
modules documentation for more details: app_lua, app_python,
app_python3, app_jsdt, app_ruby, app_sqlang).

### What is the license of Kamailio?

📃 Kamailio is an open source application licensed under GNU Public
License version 2 (aka GPLv2). It can be used for free "as in beer" on
your infrastructure. Keep in mind that you need also distribute the
source code of your changes, if you distribute it as a binary to your
customer. For more information have a look to the [GPLv2 FAQ](https://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html.en).

Starting with end of 2008, contributions to core and several modules are
done under BSD license. That means parts of it can be extracted and used
under BSD license terms. But over all, when used as one application, the
use must follow the terms of GPLv2, because GPLv2 is viral.

### Can it be installed on Windows?

📃 No. There is no official development pushed in this direction,
Linux/Unix being the de facto for running servers. But it might not be
big effort to make it compile using the Linux-like environments for
Windows (such as cygwin).

## Transport Layers

### What transport layer protocols are implemented in Kamailio?

📃 At network layer, Kamailio supports both IPv4 and IPv6.

At transport layer, Kamailio support UDP, TCP, TLS and SCTP.
Transmission can be done in asynchronous mode (configuration option),
inclusive for TCP and TLS.

Kamailio can be used to bridge between any combinations of these
protocols, e.g., receiving SIP packets on UDP over IPv4 and sending out
on TLS over IPv6.

Starting with version 4.0.0, Kamailio supports WebSocket transport
protocol, allowing modern web browsers to call between them directly
through Kamailio.

### Does Kamailio have support for WebSockets?

📃 Yes, starting with version 4.0.0. It supports WebSockets over TCP
(WS) and over TLS (WSS), on both IPv4 and IPv6.

### Can Kamailio do gatewaying between transport layers?

📃 Yes. You can use Kamailio to receive SIP message on one transport
and send out on a different transport. For example, receive TLS on IPv6
and send out UDP on IPv4.

### Can Kamailio be used to call from web browsers (webrtc) to classic
SIP phones?

📃 Yes, from signaling point of view. Remember that Kamailio is SIP
packet router, not handling media plane at all. Simply, Kamailio can do
gatewaying from WebSocket to UDP, TCP, TLS or SCTP for all SIP messages.

However, note that media plane (RTP streams) requires special secure
encoding of the RTP packets, which may not be supported by the old SIP
phones.

###### Modules

### What is a Kamailio module?

📃 A module is an extension that compiles in a separate object file and
can be loaded at Kamailio startup. Usually a module exports new
functions that can be used in configuration file routing blocks.

### Where are Kamailio modules located?

📃 Inside the source tree, there are three directories:

-   modules/
-   modules_k/ - no longer used since version 4.0.0
-   modules_s/ - no longer used since version 4.0.0

Each module is located in its own sub-folder. The documentation for
modules that are bundled in Kamailio packages is available at:

-   <http://kamailio.org/docs/modules/stable/>

### Which modules are compiled by default?

📃 The modules that have the same dependencies as the core of Kamailio.
Those that are not compiled by default are kept in the variable
'exclude_modules' of Makefile. To print the list of excluded modules:

    make printvar v=exclude_modules

### How can I compile and install a module that is excluded by default?

📃 Add it to the variable 'include_modules' to the command 'make cfg'.
For example, compiling and installing the modules app_lua and db_mysql:

    make FLAVOUR=kamailio include_modules="app_lua db_mysql" cfg
    make all
    make install

### I use 'make all', but I can't get the db_mysql.so. How can I get this?

📃 The module is not compiled by default, because depends on
libmysqlclient. Use following commands to get in compiled and installed:

    make modules include_modules="db_mysql"

    make install include_modules="db_mysql" 

### How to compile only one module?

📃 First be sure that the core compiles fine with the command:

    make 

To compile a single module, use:

    make modules modules=modules/modname

Replace modname with the real name of the module you want to compile --
for example, compiling only tls module:

    make modules modules=modules/tls

## SIP Message Processing

### Why changes made to headers or body are not visible immediately?

📃 Kamailio is working always with the received SIP message (request or
reply). Changes done to headers or body are kept as a list of operations
to be applied before writing to the network. If you want changes to be
applied immediately, use **msg_apply_changes()** from textopsx module:

-   <http://kamailio.org/docs/modules/stable/modules/textopsx.html#textopsx.msg_apply_changes>

Be careful with it and don't use it after record_route(), because this
function has to insert a header containing the IP address from the local
socket that is going to be used for forwarding - the socket is not yet
know during configuration file execution.

For example, considering that X-Hdr does not exist in incoming message,
here are some cases:

-   without applying changes

``` c
append_hf("X-Hdr: xyz\r\n");

if(is_present_hf("X-Hdr")) {
   # this part is not executed
} else {
   # this part is executed
}
```

-   with applying changes

``` c
append_hf("X-Hdr: xyz\r\n");

msg_apply_changes();

if(is_present_hf("X-Hdr")) {
   # this part is executed
} else {
   # this part is not executed
}
```

### Why parts of From/To header appear many times?

📃 After doing header management operations, it can result that parts
of From/To header are duplicated or the result is the concatenation of
many values. That is related to previous question, because the changes
are not applied immediately and updates to parts of headers are not a
simple set operation.

For example, if From username is "alice" and the operations in the
config file are:

``` c
$fU = "bob";
...
$fU = "carol";
```

The result can be that From username is "bobcarol".

One solution is to use **msg_apply_changes()** in between:

``` c
$fU = "bob";
msg_apply_changes();
...
$fU = "carol";
```

Another solution is to keep the value in a variable (e.g., avp or xavp)
and do the operation only once, like:

``` c
$xavp(fuser) = "bob";
...
$xavp(fuser[0]) = "carol";
...
$fU = $xavp(fuser);
```

Updating From/To headers is recommended to be done in **branch_route**,
specially if it is needed to have different value for outgoing branches.

The examples above were with assignments to $fU (can be other vars as
well, such as $fu, $tU, $tu, ..), but it is the same behaviour when
using functions such as uac_replace_from() or uac_replace_to().

### Why body or other parts of the SIP message appear multiple times?

📃 It is practically the same reason as for multiple From/To parts.

The configuration file does an operation that changes parts in the
headers or body many times. For example, if the body has two
concatenated IP addresses for media stream, then likely the rtpproxy
function is used twice, or, if the SDP appears two time, then the
rtpengine function is used two times.

If the update has to be done many times, use **msg_apply_changes()** in
between, otherwise refactor the config to perform the operation only
once (e.g., the RTP relaying functions should be used in a branch_route
block).

### How to set different header values for each destination of a SIP request?

📃 Set the value of the header inside a **branch_route**.

All the operations done over a SIP message inside the **request_route**
(including from the sub-routes executed from request_route) will be
common to all outgoing branches. If you want to do updates only for
specific destinations, use branch routes.

Example:

-   add X-VBox header only when sending to voicemail server
-   add X-Peer-ID header when sending somewhere else

``` c
request_route {
  ...
  if(is_method("INVITE")) {
    t_on_branch("SETHEADERS");
    t_on_failure("REROUTE");
  }
  t_relay();
  exit;
}

branch_route[SETHEADERS] {
   if($rd=="voicemail.server.com") {
     append_hf("X-VBox: $fU\r\n");
   } else {
     append_hf("X-Peer-ID: abc\r\n");
   }
}

failure_route[REROUTE] {
  if (t_is_canceled()) {
    exit;
  }
  if (t_check_status("486|408")) {
    $du = $null;
    $ru = "sip:voicemail.server.com";
    t_on_failure("REROUTE");
    exit;
  }
}
```

Very important is also to be aware that doing same operation many times
in request_route is not overwriting the previous value, but combines
them. For example, if you do two times uac_replace_from(), the From
header can become corrupt. Like:

``` c
request_route {
  ...
  uac_replace_from("sip:test1@kamailio.org");
  uac_replace_from("sip:test2@kamailio.org");
  ...
}
```

Results in From header having the URI:
**<sip:test1@kamailio.orgsip:test2@kamailio.org>**. Again, use
branch_route to do the operations if you need different From header for
outgoing branches.

### How to remove a single header field when a header appears multiple times?

📃 SIP allows that certain header fields may appear multiple times in a
SIP message. This header fields (e.g. Via, Route, Record-Route, Contact)
may be written either on a single line (with comma separated) or on
multiple lines (see [RFC 3261 section 7.3](http://tools.ietf.org/html/rfc3261#section-7.3) for details).

The remove_hf() function from textops module always removes all header
fields with a certain name, thus it can not be used in this case.

To address a certain header (regardless if headers are in a single line
or in separate lines) use the @hf_value select. The trick is to load the
textopsx module (this select used to be in ser's textops module). Note,
header names must use '\_' instead of '-'. To delete or manipulate a
certain header also use the functions from the textopsx module, e.g:
remove_hf_value(). Note, here '-' is used for headers with '-'

For example, incoming message:

    Record-Route: <sip:1.1.1.1;lr=on;nat=yes>
    Record-Route: <sip:2.2.2.2:5060;lr;transport=udp>,
       <sip:3.3.3.3:22506;lr;transport=udp>

Dump all headers:

    xlog("$sel(@hf_value.Record_Route)");

Dump the first header (\<<sip:1.1.1.1;lr=on;nat=yes>\>):

    xlog("$sel(@hf_value.Record_Route[1])");

Dump the second last header (\<<sip:2.2.2.2:5060;lr;transport=udp>\>):

    xlog("$sel(@hf_value.Record_Route[-2])");

Remove the last header (\<<sip:3.3.3.3:22506;lr;transport=udp>\>):

    remove_hf_value("Record-Route[-1]");
    #or in above case:
    remove_hf_value("Record-Route[3]");

### Why the SIP requests are replied with "483 Too Many Hops" or "513 Message Too Large"?

📃 In both cases, the reason is probably an error in request routing
script which caused an infinite loop.

You can easily verify whether this happens by watching SIP traffic on
loopback interface, for example using ngrep:

    ngrep -d lo -qt -W byline port 5060

A typical reason for misrouting is a failure to match local domain
correctly. If a server fails to recognize a request for itself, it will
try to forward it to current URI in believe it would forward them to a
foreign domain.

Alas, it forwards the request to itself again. This continues to happen
until value of the max_forwards header field reaches zero or the request
grows too big.

The solution: make sure that domain matching is correctly configured.

A quick way to achieve that is to introduce a config option to
kamailio.cfg:

    alias=domainname

where domainname has to be replaced with name of domain, which you wish
to serve by Kamailio and which appears in request-URIs.

### I send SIP requests to Kamailio, but nothing happens, why?

📃 Check if you have a firewall rule dropping traffic on SIP port
(5060). Note that network sniffing tools have hooks in kernel before the
firewall, so even if you see the SIP packets with ngrep or wireshark,
they may be dropped by the firewall.

If you have the pike module loaded, double check to see if you don't
block valid trusted traffic with it.

You can increase the debug parameter value to 3 in the configuration
file, restart kamailio and watch syslog messages to see if there is any
text printed by kamailio. For each SIP packet received on the networks,
Kamailio is printing at least few debug messages.

## Media Streams

### Does Kamailio relay media streams?

📃 No, *however* Kamailio can be configured to proxy media if needed.

-   [See rtpengine, rtpproxy, lrkproxy, or mediaproxy](http://www.kamailio.org/docs/modules/stable/)

### What codecs are supported by Kamailio?

📃 **Kamailio supports all codecs** (*even codecs that haven't been
created yet*).

Since Kamailio is a SIP proxy, it does not handle the media streams.
Codecs are negotiated between the two endpoints.

### Can Kamailio be used for video calls?

📃 Yes, Kamailio can be used for video calls. The two SIP phones must
support video codecs/calling.

## Getting Started

### What are the minimum knowledge requirements before starting with Kamailio?

📃 To be familiar with Linux or UNIX (FreeBSD, OpenBSD, OS/X) and
understand Session Initiation Protocol (SIP - RFC3261).

### Any step-by-step guide to install Kamailio?

📃 Yes, see:

-   <http://www.kamailio.org/wiki/#installation>

## Support

### Are there public mailing list where one can ask questions about Kamailio?

📃 Yes, there are few of them, each addressing a particular category of
topics, see the list at:

-   <http://www.kamailio.org/w/mailing-lists/>

### What are the rules for posting questions about Kamailio?

📃 You must subscribe to be able to post questions. Subscription is
free, instructions are presented at the link related to each mailing
list.

The most important rules are to use a decent vocabulary and post about
something related to Kamailio.

If the question is related to a stable version of Kamailio, then email
to:

-   sr-users \[at\] lists.sip-router.org
-   mailing list web page:
    -   <http://lists.sip-router.org/cgi-bin/mailman/listinfo/sr-users>

If the question is related to development version of Kamailio, then
email to:

-   sr-dev \[at\] lists.sip-router.org
-   mailing list web page:
    -   <http://lists.sip-router.org/cgi-bin/mailman/listinfo/sr-dev>

If the question is related to commercial aspects of Kamailio, then email
to:

-   business \[at\] lists.kamailio.org
-   mailing list web page:
    -   <http://lists.kamailio.org/cgi-bin/mailman/listinfo/business>

### Where I can report an issue?

📃 Use the bug tracker available at:

-   <https://github.com/kamailio/kamailio/issues>

### Where can I buy commercial support?

📃 See details posted at:

-   <http://www.kamailio.org/w/business-directory/>
-   <http://www.kamailio.org/w/business/>

## DNS

### Does it have support for ENUM?

📃 Yes. See enum module.

### What kind of DNS queries can it do?

📃 Kamailio can do next DNS query types: A-Name, C-Name, AAAA (IPv6),
SRV, NAPTR and TXT.

### Can it do DNS-based (SRV) load balancing?

📃 Yes.

### How to avoid reverse DNS for **src_ip** comparison?

📃 Do not enclose the IP address between quotes. Use like:

    if(src_ip==1.2.3.4) { ...

The next example results in reverse DNS operation, because src_ip is
compared with a string:

    if(src_ip=="1.2.3.4") { ...

## Instant Messaging and Presence

### Can it route SIP instant messaging requests (page mode, RFC3428)?

📃 Yes. There is nothing special to do for that in configuration file,
MESSAGE requests are simply routed as any other SIP request.

### Can it store instant messages for offline users and deliver them
when the users become online?

📃 Yes. See msilo module.

### Can it route instant messages using MSRP (RFC4975)?

📃 Yes. Kamailio offers an embedded MSRP relay function via msrp
module. You don't need any external application for relaying MSRP
packets.

### Can it handle end-to-end presence requests?

📃 Yes. There is nothing special to do for that in configuration file,
SUBSCRIBE and NOTIFY requests are simply routed as any other SIP
request.

### Does it have support for SIP SIMPLE Presence (presence agent model)?

📃 Yes. You have to use presence and presence_xml modules to handle
PUBLISH and SUBSCRIBE requests.

### Does it have support for Resource Lists Service?

📃 Yes. You have to use rls module.

### Can it act as a presence user agent?

📃 Yes. See pua module and its extensions named with 'pua\_' prefix
(such as pua_usrloc, pua_dialoginfo, etc.).

### Can it handle subscription requests for dialog states (aka, blinking
lamps)?

📃 Yes. You have to use dialog module together with presence_dialoginfo
and pua_dialoginfo modules.

### Does it have support for handling XCAP?

📃 Yes. Kamailio offers an embedded XCAP server via xcap_server module.
It can receive and handle directly the XCAP requests without using any
external application.

The xcap_client module can be used when you want to interact with an
external XCAP server (that could be another instance of Kamailio).

## NAT Traversal

### Can Kamailio be used with phones connecting from behind NAT?

📃 Yes, Kamailio supports the so called "far-end NAT traversal". One
solution is to use nathelper for NAT traversal of SIP signaling, and
rtpproxy modules with the rtpproxy (<http://rtpproxy.org>) application
for relaying RTP packets.

Read the comments at top of default configuration file shipped with
Kamailio, to enable NAT traversal logic there, one has to enable the
define WITH_NAT:

    #!define WITH_NAT

### Can Kamailio be installed behind NAT (e.g., like on Amazon EC2)?

📃 Yes. You have to set the public IP address as advertised attribute
to listen parameter:

      listen=_localsocket_ advertise _publicaddr_

Example:

      listen=udp:10.10.10.10:5060 advertise 11.11.11.11:5060

## Configuration File Processing

### Can I check the configuration files for syntax errors?

📃 Yes. Use '-c' command line parameter, like:

    /usr/local/sbin/kamailio -c -f /usr/local/etc/kamailio/kamailio.cfg

Note that even configuration file is reported to be ok, there might
still be troubles starting kamailio with the respective configuration
file. For example, the database URL can be syntactically correct, but
the access itself is not working due to wrong username or password,
causing kamailio to fail starting.

### Do I have to delete the AVPs added in the configuration file for a SIP message?

📃 No. The AVPs are automatically deleted when associated SIP
transaction is destroyed.

If you want to do it on purpose, you can delete the AVP using assignment
to $null, like:

    $avp(name) = $null;

### What is a pseudo-variable?

📃 A pseudo-variable is a special token that is expanded at runtume
with a specific value. It can be used inside the parameters of some
functions or in configuration file expressions.

A pseudo-variable can refer to the value of an avp, body of a header,
part of a SIP message or other variables from system.

For more see:

-   <http://www.kamailio.org/wiki/cookbooks/devel/pseudovariables>

### How to iterate through the items in a comma separated string?

📃 If you have a variable holding a string like "a,b,c,d" and want to
get each character separately, you have to use a WHILE loop with
{s.count,separator} and {s.select,index,separator} transformations.

Here is an example:

``` c
$var(x) = "a,b,c,d";
$var(i) = 0;
$var(n) = $(var(x){s.count,,});

while( $var(i) <= $var(n) ) {
   xlog("token at position $var(i) is: $(var(x){s.select,$var(i),,})\n");
   $var(i) = $var(i) + 1;
}
```

### How is the function return code evaluated?

📃 Configuration file interpreter evaluates the return code of a
function as follow:

-   \<0 (negative value) - it is evaluated to false
-   \>0 (positive value) - it is evaluated to true
-   =0 (zero) - it is evaluated as exit (stop execution of configuration
    file)

Example:

``` c
if(function_returns_one()) {
   # it goes here
} else {
   # it doesn't go here
}
...
if(function_returns_minus_one()) {
   # it doesn't go here
} else {
   # it goes here
}
...
if(function_returns_zero()) {
   # it doesn't go here
} else {
   # it doesn't go here
}
```

Note that you can use $rc to get the return code value, like:

``` c
function();
xlog("returned code by function() is $rc\n");
```

However, if return code is 0, the next action after function() is not
executed. It can be used only of positive or negative response code.

On the other hand, the pseudo-variables (including $rc) have to be
compared as an integer, the rules for evaluating return code of the
functions do not apply, for example:

``` c
$var(x) = 0;
if($var(x) == 0) {
  # do something
}
```

To compare the return code of a function with a number is recommended to
use the value stored in $rc, because the priority of the operators can
convert function return code to internal-true or internal-false.
Therefore the next approach should be used:

``` c
function_returns_four();
$var(rc4) = $rc;
if($var(rc4)==4) {
   # it goes here
} else {
   # it doesn't go here
}
...
function_returns_two();
$var(rc2) = $rc;
if($var(rc4)==$var(rc2)) {
   # it doesn't go here
} else {
   # it goes here
}
...
if (function_returns_four() && $rc ieq 6 ) {
   # it doesn't go here
} else if ($rc ieq 4) {
   # it goes here
} else {
   # it doesn't go here
}
```

Note that $rc is overwritten by a new function call, therefore store its
value in another variable (like $var(...)) if it is needed for longer
time.

For pseudo-variables, the non-zero value is evaluated to true and zero
to false, for example:

``` c
$var(x) = 1;
if($var(x)) {
  # do something
}
```

### How is the SIP request retransmission handled?

📃 The next snippet is detecting retransmissions:

``` c
    # handle retransmissions
      if (!is_method("ACK")) {
          if(t_precheck_trans()) {
              t_check_trans();
              exit;
          }
          t_check_trans();
      }
```

The **ACK** request is skipped because it doesn't have a SIP response,
therefore it doesn't create a transaction, being forwarded in stateless
mode.

The function **t_precheck_trans()** returns true if the same SIP request
is processed at that time by another Kamailio process, so in this case
it is a retransmission. The inner **t_check_trans()** has the role of
detecting if the SIP transaction was created by the other process, and
if yes, send again the last SIP response of the transaction, when one
was already sent out (a requirement from SIP specs). The **exit** is
then used to finish the execution of the config file for that request.

If the function **t_precheck_trans()** returns false, the SIP request is
not under processing by another Kamailio process, but it can be the case
that the request processing was finished, request being sent out in
stateful mode, therefore **t_check_trans()** is used to see if a
transaction is found in shared memory corresponding to the same request.
If such transaction is found in shared memory, then **t_check_trans()**
triggers internally the **exit** for configuration file execution.

## Troubleshooting

### I get 'out of memory' errors, what can be done?

📃 Most probably you run out of memory allocated for Kamailio. The
application does not use the entire system memory, but up to a
configured size.

There are two memory pools used by Kamailio:

-   shared memory - shm - common at application level, where most of the
    data needed for long time is stored (such as location records, least
    cost routing records, transactions, etc.). The default size is 32MB.
-   private memory - pkg - allocated per process, used for local storage
    and temporary operations. The default size is 4MB.

To increase the sizes for memory pools you have to give following
command line parameters:

-   **-m SIZE** - specify the shared memory size in MB
-   **-M SIZE** - specify the private memory size in MB

For example, start Kamailio with 512MB of shared memory and 8MB of
private memory:

    /usr/local/bin/kamailio -m 512 -M 8 ...

## Tools

### How to generate HA1 value in command line?

📃 Use following command:

    echo -n 'user:realm:password' | md5sum | awk '{ print $1 }'

### How to generate HA1B value in command line?

📃 Use following command:

    echo -n 'user@realm:realm:password' | md5sum | awk '{ print $1 }'

### Kamctl gives an error regarding opening FIFO file, why?

📃 Kamctl couldn't connect to FIFO file for sending MI commands -
default FIFO file is **/tmp/kamailio_fifo**.

Check if your configuration loads the mi_fifo module and configures a
fifo name.

Example for the configuration syntax:

```
    loadmodule "mi_fifo.so"

    modparam("mi_fifo", "fifo_name", "/tmp/kamailio_fifo")
```

Check also the access privileges of the FIFO file in order to be sure
that the user running kamctl can read and write to the file.

⚠️ **Note:** the MI control interface was removed starting with Kamailio v5.0.0,
being replaced by RPC control interface.

### Kamcmd sometime fails to execute RPC commands with number parameters, why?

📃 There are situations when a **kamcmd** RPC command fails because the
parameters that are provided are auto-converted to integer numbers. This
happens when the implementation of the RPC commands expects a string
parameter (e.g., username).

To prevent **kamcmd** to do the auto-conversion, you can prefix its
parameter with **s:**.

Example:

```shell
    # - next command fails
    kamcmd uac.reg_refresh 1001

    # use instead
    kamcmd uac.reg_refresh s:1001
```