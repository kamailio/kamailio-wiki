# Core Cookbook

Version: Kamailio SIP Server v6.1.x (devel)

## Overview

This tutorial collects the functions and parameters exported by Kamailio
core to configuration file.

**Note:** The parameters on this page are **NOT** in alphabetical order.

## Structure

The structure of the kamailio.cfg can be seen as three parts:

- global parameters
- modules settings
- routing blocks

For clarity and making it easy to maintain, it is recommended to keep
them in this order, although some of them can be mixed.

### Global Parameters Section

This is the first part of the configuration file, containing the
parameters for the core of kamailio and custom global parameters.

Typically this is formed by directives of the form:

``` c
name=value
```

The name corresponds to a core parameter as listed in one of the next
sections of this document. If a name is not matching a core parameter,
then Kamailio will not start, rising an error during startup.

The value is typically an integer, boolean or a string.

Several parameters can get a complex value which is formed from a group
of integer, strings or identifiers. For example, such parameter is
**listen**, which can be assigned a value like **proto:ipaddress:port**.

Example of content:

``` c
log_facility=LOG_LOCAL0

children=4

disable_tcp=yes

alias="sip.mydomain.com"

listen=udp:10.0.0.10:5060
```

Usually setting a parameter is ended by end of line, but it can be also
ended with **;** (semicolon). This should be used when the grammar of a
parameter allows values on multiple lines (like **listen** or **alias**)
and the next line creates a conflict by being swallowed as part of value
for previous parameter.

``` c
alias="sip.mydomain.com";
```

If you want to use a reserved config keyword as part of a parameter, you
need to enclose it in quotes. See the example below for the keyword
"dns".

``` c
listen=tcp:127.0.0.1:5060 advertise "sip.dns.example.com":5060
```

### Modules Settings Section

This is the second section of the configuration file, containing the
directives to load modules and set their parameters.

It contains the directives **loadmodule** and **modparam**. In the
default configuration file starts with the line setting the path to
modules (the assignment to **mpath** core parameter.

Example of content:

``` c
loadmodule "debugger.so"
...
modparam("debugger", "cfgtrace", 1)
```

### Routing Blocks Section

This is the last section of the configuration file, typically the
biggest one, containing the routing blocks with the routing logic for
SIP traffic handled by Kamailio.

The only mandatory routing block is **request_route**, which contains
the actions for deciding the routing for SIP requests.

See the chapter **Routing Blocks** in this document for more details
about what types of routing blocks can be used in the configuration file
and their role in routing SIP traffic and Kamailio behaviour.

Example of content:

``` c
request_route {

    # per request initial checks
    route(REQINIT);

    ...
}

branch_route[MANAGE_BRANCH] {
    xdbg("new branch [$T_branch_idx] to $ru\n");
    route(NATMANAGE);
}
```

## Generic Elements

### Comments

Line comments start with `#` (hash/pound character - like in shell) or
`//` (double forward slash - like in C++/Java).

Block comments start with `/*` (forward slash and asterisk) and are ended
by `*/` (asterisk and forward slash) (like in C, C++, Java).

Example:

``` c
# this is a line comment

// this is another line comment

/* this
    is
    a
    block
    comment */
```

Important: be aware of preprocessor directives that start with `#!`
(hash/pound and exclamation) - those are no longer line comments.

### Values

There are three types of values used for parameters, assignments, arithmetic
or string expressions:

- integer - numbers of 32bit size
- boolean - aliases to `1` (`true`, `on`, `yes`) or `0` (`false`, `off`, `no`)
- string - tokens enclosed in between double or single quotes

Example:

``` c
// next two are strings

  "this is a string value"
  'this is another string value'

// next is a boolean

  yes

// next is an integer

  64

```

Note: be aware of specific rules for logical evaluation of expressions and
return codes, see the docs for `IF` and `return`.

### Identifiers

Identifiers are tokens which are not enclosed in single or double quotes
and to match the rules for integer or boolean values.

For example, the identifiers are the core parameters and functions,
module functions, core keywords and statements.

Example:

``` c
return
```

### Variables

The variables start with **$** (dollar character).

You can see the list with available variables in the Pseudo-Variables
Cookbook.

Example:

``` c
$var(x) = $rU + "@" + $fd;
```

### Actions

An action is an element used inside routing blocks ended by **;**
(semicolon). It can be an execution of a function from core or a module,
a conditional or loop statement, an assignment expression.

Example:

``` c
  sl_send_reply("404", "Not found");
  exit;
```

### Expressions

An expression is an association group of statements, variables,
functions and operators.

Example:

``` c
if(!t_relay())

if($var(x)>10)

"sip:" + $var(prefix) + $rU + "@" + $rd
```

## Config Pre-Processor Directives

Pre-processor directives are evaluated before building the execution
tree (before 'understanding' configuration file content). They require an
end-of-line (`\n`) after each one in order to be properly identified
(e.g., `#!else\n`, `#!endif\n`).

### include_file

``` c
include_file "path_to_file"
```

Include the content of the file in config before parsing. path_to_file
must be a static string. Including file operation is done at startup. If
you change the content of included file, you have to restart the SIP
server to become effective.

The path_to_file can be relative or absolute. If it is not absolute
path, first attempt is to locate it relative to current directory, and
if fails, relative to directory of the file that includes it. There is
no restriction where include can be used or what can contain - any part
of config file is ok. There is a limit of maximum 10 includes in depth,
otherwise you can use as many includes as you want. Reporting of the cfg
file syntax errors prints now the file name for easier troubleshooting.

If the included file is not found, the config file parser throws error.
You can find this error message at the logging destination, usually in
the system logging (file).

You can use also the syntax **#!include_file** or **!!include_file**.

Example of usage:

``` c
request_route {
    ...
    include_file "/etc/kamailio/checks.cfg"
    ...
}
```

- `/etc/kamailio/checks.cfg`:

```c

   if (!mf_process_maxfwd_header("10")) {
       sl_send_reply("483","Too Many Hops");
       exit;
   }
```

### import_file

``` c
import_file "path_to_file"
```

Similar to `include_file`, but does not throw error if the included
file is not found.

### define

Control in C-style what parts of the config file are executed. The parts
in non-defined zones are not loaded, ensuring lower memory usage and
faster execution.

Available directives:

- `#!define NAME` - define a keyword
- `#!define NAME VALUE` - define a keyword with value
- `#!ifdef NAME` - check if a keyword is defined
- `#!ifndef` - check if a keyword is not defined
- `#!ifexp` - check if an expression is true (see corresponding section for more)
- `#!else` - switch to false branch of `ifdef/ifndef/#!ifexp` region (needs `EoL`
  after it to be detected)
- `#!endif` - end `ifdef/ifndef/#!ifexp` region (needs `EoL` after it to be detected)
- `#!trydef` - add a define if not already defined
- `#!redefine` - force redefinition even if already defined

Predefined keywords:

- `KAMAILIO_X[_Y[_Z]]` - Kamailio versions
- `MOD_X` - when module `X` has been loaded
- `KAMAILIO_VERSION` - associated with a number representation of Kamailio
     version (e.g., for version `X.Y.Z`, the value is `X00Y00Z`, representing
    `X*1000000 + Y*1000 + Z`)
- `OS_NAME` - associated with a string representing the Operating System name

Examples:

``` c
KAMAILIO_5
KAMAILIO_5_6
KAMAILIO_5_6_2

MOD_acc
MOD_corex
```

See `kamctl rpc core.ppdefines_full` for full list.

Among benefits:

- easy way to enable/disable features (e.g., see default cfg --
    controlling support of nat traversal, presence, etc...)
- switch control for parts where conditional statements were not
    possible (e.g., global parameters, module settings)
- faster by not using conditional statements inside routing blocks
    when switching between running environments

Example: how to make config to be used in two environments, say testbed
and production, controlled just by one define to switch between the two
modes:

``` c
...

#!define TESTBED_MODE

#!ifdef TESTBED_MODE
  debug=5
  log_stderror=yes
  listen=192.168.1.1
#!else
  debug=2
  log_stderror=no
  listen=10.0.0.1
#!endif

...

#!ifdef TESTBED_MODE
modparam("acc|auth_db|usrloc", "db_url",
    "mysql://kamailio:kamailiorw@localhost/kamailio_testbed")
#!else
modparam("acc|auth_db|usrloc", "db_url",
    "mysql://kamailio:kamailiorw@10.0.0.2/kamailio_production")
#!endif

...

#!ifdef TESTBED_MODE
route[DEBUG] {
  xlog("SCRIPT: SIP $rm from: $fu to: $ru - srcip: $si"\n);
}
#!endif

...

request_route {
#!ifdef TESTBED_MODE
  route(DEBUG);
#!endif

  ...
}

...
```

- you can define values for IDs

``` c
#!define MYINT 123
#!define MYSTR "xyz"
```

- defined IDs are replaced at startup, during config parsing, e.g.,:

``` c
$var(x) = 100 + MYINT;
```

- is interpreted as:

``` c
$var(x) = 100 + 123;
```

- you can have multi-line defined IDs

``` c
#!define IDLOOP $var(i) = 0; \
                while($var(i)<5) { \
                    xlog("++++ $var(i)\n"); \
                    $var(i) = $var(i) + 1; \
                }
```

- then in routing block

``` c
request_route {
    ...
    IDLOOP
    ...
}
```

- number of allowed defines is now set to 256

- notes:
  * multilines defines are reduced to single line, so line counter
    should be fine
  * column counter goes inside the define value, but you have to
    omit the `\` and `CR` for the accurate inside-define position
  * text on the same line as the directive will cause problems. Keep
    the directive lines clean and only comment on a line before or
    after.

### ifexp

Evaluate an expression and if true, then enable first region, otherwise
enable the `#!else` region (if it exists).

The expression has to be till the end of the line (no support for multi-line yet).

The evaluation is done using `snexpr` (which is embedded inside Kamailio code):

- [https://github.com/miconda/snexpr](https://github.com/miconda/snexpr)

Defined IDs can be used inside expressions with the following characteristics:

- if there is an associated value, then the value is used as a string, with the
enclosing quotes being removed
- if there is no associated value, but the ID is defined, then the value `1`
(integer) is used (equivalent of `true`)
- if the ID is not defined, then the value `0` is used (equivalent of `false`)

The result of an expression is evaluated to:

- `true` if it is a number different than `0`
- `false` if it is number `0`
- `true` if it is a string with length greater than `0`
- `false` if it is an empty string (length is `0`)

Comparison operations between two strings are done using `strcmp(s1, s2)` and
it is considered:

- `s1 < s2` -  if the result of `strcmp(s1, s2)` is negative
- `s1 == s2` -  if the result of `strcmp(s1, s2)` is `0`
- `s1 > s2` -  if the result of `strcmp(s1, s2)` is positive

Operations between two values with different types are done by converting
the second value (right operand) to the type of the first value (left operand).

Examples:

``` c
1 + "20" -> converted to: 1 + 20 (result: 21)
```

``` c
"1" + 20 -> converted to: "1" + "20" (result: "120")
```

``` c
4 > "20" -> converted to: 4 > 20 (result: false)
```

``` c
"4" > 20 -> converted to: "4" > "20" (result: true)
```

#### Available Operators

Arithmetic operations:

- `+` - addition
- `-` - subtraction
- `*` - multiplication
- `/` - division
- `%` - modulus (remainder)
- `**` - power

Bitwise operations

- `<<` - shift left
- `>>` - shift right
- `&` - and
- `|` - or
- `^` - xor (unary bitwise negation)

Logical operations:

- `==` - equal
- `!=` - not equal (different)
- `<` - less than
- `>` - greater than
- `<=` - less than or equal to
- `>=` - greater than or equal to
- `&&` - and
- `||` - or
- `!` - unary not

String operations:

- `+` - concatenation

Other operations:

- `=` - assignment
- `( ... )` - parenthesis to group parts of the expression
- `,` - comma (separates expressions or function parameters)

#### ifexp examples

``` c
#!ifexp KAMAILIO_VERSION >= 5006000
...
#!else
...
#!endif


#!ifexp MOD_xlog && (OS_NAME == "darwin")
...
#!endif


#!define WITH_NAT
#!define WITH_RTPENGINE

#!ifexp WITH_NAT && WITH_RTPENGINE
...
#!endif


#!ifexp WITH_RTPENGINE || WITH_RTPPROXY
...
#!endif
```

### defexp

Preprocessor directive to define an ID to the value of an expression.

``` c
#!defenv ID STM
```

The evaluation of `STM` is done using `snexpr`, see the section for `#!ifexp`
for more details about how the expression can be built, what data types and
operators are supported.

Examples:

``` c
#!define IPADDR 127.0.0.1

#!defexp SIPURI "sip:" + IPADDR + ":5060"
#!defexp QSIPURI '"sip:' + IPADDR + ':5060"'

#!defexp V16 1<<4
```

### defexps

Preprocessor directive similar to `#!defexp`, but the the result being enclosed
in double quotes, suitable to be used for string values.

### defenv

Preprocessor directive to define an ID to the value of an environment
variable with the name ENVVAR.

``` c
#!defenv ID=ENVVAR
```

It can also be just **$!defenv ENVVAR** and the defined ID is the ENVVAR
name.

Example:

``` c
#!defenv SHELL
```

If environment variable $SHELL is '/bin/bash', then it is like:

``` c
#!define SHELL /bin/bash
```

Full expression variant:

``` c
#!defenv ENVSHELL=SHELL
```

Then it is like:

``` c
#!define ENVSHELL /bin/bash
```

It is a simplified alternative of using **#!substdef** with
**$env(NAME)** in the replacement part.

### defenvs

Similar to **#!defenv**, but the value is defined in between double
quotes to make it convenient to be used as a string token.

``` c
#!defenvs ENVVAR
#!defenvs ID=ENVVAR
```

### trydefenv

``` c
#!trydefenv ID=ENVVAR
```

Similar to **defenv**, but will not error if the environmental variable
is not set. This allows for boolean defines via system ENVVARs. For
example, using an environmental variable to toggle loading of db_mysql:

``` c
#!trydefenv WITH_MYSQL

#!ifdef WITH_MYSQL
loadmodule "db_mysql.so"
#!ifdef
```

### trydefenvs

Similar to **#!trydefenv**, but the value is defined in between double
quotes to make it convenient to be used as a string token.

``` c
#!trydefenvs ENVVAR
#!trydefenvs ID=ENVVAR
```

### subst

- perform substitutions inside the strings of config (note that define
    is replacing only IDs - alphanumeric tokens not enclosed in quotes)
- `#!subst` offers an easy way to search and replace inside strings
    before cfg parsing. E.g.,:

``` c
#!subst "/regexp/subst/flags"
```

- flags is optional and can be: 'i' - ignore case; 'g' - global
    replacement

Example:

``` c
#!subst "/DBPASSWD/xyz/"
modparam("acc", "db_url", "mysql://user:DBPASSWD@localhost/db")
```

- will do the substitution of db password in db_url parameter value

### substdef

``` c
#!substdef "/ID/subst/"
```

Similar to `#!subst`, but in addition it adds a `#!define ID subst`.

### substdefs

``` c
#!substdefs "/ID/subst/"
```

Similar to `#!subst`, but in addition it adds a `#!define ID "subst"`
(note the difference from `#!substdef` that the value for define is
enclosed in double quotes, useful when the define is used in a place for
a string value).

## Core Keywords

Keywords specific to SIP messages which can be used mainly in `if`
expressions.

### af

The address family of the received SIP message. It is INET if the
message was received over IPv4 or INET6 if the message was received over
IPv6.

Exampe of usage:

``` c
    if (af==INET6) {
        log("Message received over IPv6 link\n");
    }
```

### dst_ip

The IP of the local interface where the SIP message was received. When
the proxy listens on many network interfaces, makes possible to detect
which was the one that received the packet.

Example of usage:

``` c
   if(dst_ip==127.0.0.1) {
      log("message received on loopback interface\n");
   };
```

### dst_port

The local port where the SIP packet was received. When Kamailio is
listening on many ports, it is useful to learn which was the one that
received the SIP packet.

Example of usage:

``` c
   if(dst_port==5061)
   {
       log("message was received on port 5061\n");
   };
```

### from_uri

This script variable is a reference to the URI of 'From' header. It can
be used to test 'From'- header URI value.

Example of usage:

``` c
    if(is_method("INVITE") && from_uri=~".*@kamailio.org")
    {
        log("the caller is from kamailio.org\n");
    };
```

### method

The variable is a reference to the SIP method of the message.

Example of usage:

``` c
    if(method=="REGISTER")
    {
       log("this SIP request is a REGISTER message\n");
    };
```

### msg:len

The variable is a reference to the size of the message. It can be used
in 'if' constructs to test message's size.

Example of usage:

``` c
    if(msg:len>2048)
    {
        sl_send_reply("413", "message too large");
        exit;
    };
```

.

### proto

This variable can be used to test the transport protocol of the SIP
message.

Example of usage:

``` c
    if(proto==UDP)
    {
        log("SIP message received over UDP\n");
    };
```

### status

If used in onreply_route, this variable is a referece to the status code
of the reply. If it used in a standard route block, the variable is a
reference to the status of the last reply sent out for the current
request.

Example of usage:

``` c
    if(status=="200")
    {
        log("this is a 200 OK reply\n");
    };
```

### snd_af

### snd_ip

### snd_port

### snd_proto

### src_ip

Reference to source IP address of the SIP message.

Example of usage:

``` c
    if(src_ip==127.0.0.1)
    {
        log("the message was sent from localhost!\n");
    };
```

### src_port

Reference to source port of the SIP message (from which port the message
was sent by previous hop).

Example of usage:

``` c
    if(src_port==5061)
    {
        log("message sent from port 5061\n");
    }
```

### to_ip

### to_port

### to_uri

This variable can be used to test the value of URI from To header.

Example of usage:

``` c
  if(to_uri=~"sip:.+@kamailio.org")
  {
      log("this is a request for kamailio.org users\n");
  };
```

### uri

This variable can be used to test the value of the request URI.

Example of usage:

``` c
    if(uri=~"sip:.+@kamailio.org")
    {
        log("this is a request for kamailio.org users\n");
    };
```

## Core Values

Values that can be used in `'if`' expressions to check against Core
Keywords

### INET

Variant: `IPv4`

This keyword can be used to test whether the SIP packet was received
over an IPv4 connection.

Example of usage:

``` c
    if (af==INET) {
        log("the SIP message was received over IPv4\n");
    }
```

### INET6

Variant: `IPv6`

This keyword can be used to test whether the SIP packet was received
over an IPv6 connection.

Example of usage:

``` c
  if(af==INET6)
  {
      log("the SIP message was received over IPv6\n");
  };
```

### SCTP

This keyword can be used to test the value of 'proto' and check whether
the SIP packet was received over SCTP or not.

Example of usage:

``` c
  if(proto==SCTP)
  {
      log("the SIP message was received over SCTP\n");
  };
```

### TCP

This keyword can be used to test the value of 'proto' and check whether
the SIP packet was received over TCP or not.

Example of usage:

``` c
  if(proto==TCP)
  {
      log("the SIP message was received over TCP\n");
  };
```

### TLS

This keyword can be used to test the value of 'proto' and check whether
the SIP packet was received over TLS or not.

Example of usage:

``` c
  if(proto==TLS)
  {
      log("the SIP message was received over TLS\n");
  };
```

### UDP

This keyword can be used to test the value of 'proto' and check whether
the SIP packet was received over UDP or not.

Example of usage:

``` c
  if(proto==UDP)
  {
      log("the SIP message was received over UDP\n");
  };
```

### WS

This keyword can be used to test the value of 'proto' and check whether
the SIP packet was received over WS or not.

Example of usage:

``` c
  if(proto==WS)
  {
      log("the SIP message was received over WS\n");
  };
```

### WSS

This keyword can be used to test the value of 'proto' and check whether
the SIP packet was received over WSS or not.

Example of usage:

``` c
  if(proto==WSS)
  {
      log("the SIP message was received over WSS\n");
  };
```

### max_len

Note: This command was removed.

### myself

This is a reference to the list of local IP addresses, hostnames and
aliases that has been set in the Kamailio configuration file. This lists
contain the domains served by Kamailio.

The variable can be used to test if the host part of an URI is in the
list. The usefulness of this test is to select the messages that has to
be processed locally or has to be forwarded to another server.

See "alias" to add hostnames, IP addresses and aliases to the list.

Example of usage:

``` c
    if(uri==myself) {
        log("the request is for local processing\n");
    };
```

Note: You can also use the is_myself() function.

## Core parameters

### advertised_address

It can be an IP address or string and represents the address advertised
in Via header. If empty or not set (default value) the socket address
from where the request will be sent is used.

    WARNING:
    - don't set it unless you know what you are doing (e.g. nat traversal)
    - you can set anything here, no check is made (e.g. foo.bar will be accepted even if foo.bar doesn't exist)

Example of usage:

``` c
advertised_address="​1.2.3.4"​
advertised_address="kamailio.org"
```

Note: this option may be deprecated and removed in the near future, it
is recommended to set **advertise** option for **listen** parameter.

### advertised_port

The port advertised in Via header. If empty or not set (default value)
the port from where the message will be sent is used. Same warnings as
for 'advertised_address'.

Example of usage:

``` c
advertised_port=5080
```

Note: this option may be deprecated and removed in the near future, it
is recommended to set **advertise** option for **listen** parameter.

### alias

**Alias name:** **domain**

Parameter to set alias hostnames for the server. It can be set many
times, each value being added in a list to match the hostname when
'myself' is checked.

It is necessary to include the port (the port value used in the "port="
or "listen=" defintions) in the alias definition otherwise the
loose_route() function will not work as expected for local forwards.
Even if you do not use 'myself' explicitly (for example if you use the
domain module), it is often necessary to set the alias as these aliases
are used by the loose_routing function and might be needed to handle
requests with pre-loaded route set correctly.

Example of usage:

``` c
alias=other.domain.com:5060
alias=another.domain.com:5060

domain=new.domain.com:5060
```

Note: the hostname has to be enclosed in between quotes if it has
reserved tokens such as **forward**, **drop** ... or operators such as
**-** (minus) ...

### async_workers

Specify how many child processes (workers) to create for asynchronous
execution in the group "default". These are processes that can receive
tasks from various components (e.g, modules such as async, acc, sqlops)
and execute them locally, which is different process than the task
sender.

Default: 0 (asynchronous framework is disabled).

Example:

``` c
async_workers=4
```

### async_nonblock

Set the non-block mode for the internal sockets used by default group of
async workers.

Default: `0`

Example:

``` c
async_nonblock=1
```

### async_usleep

Set the number of microseconds to sleep before trying to receive next
task (can be useful when async_nonblock=1).

Default: `0`

Example:

``` c
async_usleep=100
```

### async_workers_group

Define groups of asynchronous worker processes.

Prototype:

``` c
async_workers_group="name=X;workers=N;nonblock=[0|1];usleep=M"
```

The attributes are:

- **name** - the group name (used by functions such as
    **sworker_task(name)**)
- **workers** - the number of processes to create for this group
- **nonblock** - set or not set the non-block flag for internal
    communication socket
- **usleep** - the number of microseconds to sleep before trying to
    receive next task (can be useful if nonblock=1)

Default: "".

Example:

``` c
async_workers_group="name=reg;workers=4;nonblock=0;usleep=0"
```

If the **name** is default, then it overwrites the value set by
**async_workers**.

See also `event_route[core:pre-routing]` and `sworker` module.

### async_tkv_evcb

Set the name of the event route or KEMI callback for processing tkv.

Default: `` (empty string)

Example:

``` c
async_tkv_evcb = "core:tkv"
...
async_tkv_evcb = "ksr_core_tkv"
```

### async_tkv_gname

Set the name of the async group to be used for processing TKV events. The
async group has to be defined.

Default: `` (empty string)

Example:

``` c
async_workers_group="name=tkv;workers=1;nonblock=0;usleep=0"

async_tkv_gname = "tkv"
```

### auto_aliases

**Alias name:** **auto_domains**

Kamailio by default discovers all IPv4 addresses on all interfaces and
does a reverse DNS lookup on these addresses to find host names.
Discovered host names are added to aliases list, matching the **myself**
condition. To disable host names auto-discovery, turn off auto_aliases.

Example:

``` c
auto_aliases=no

auto_domains=no
```

### auto_bind_ipv6

When turned on, Kamailio will automatically bind to all IPv6 addresses
(much like the default behaviour for IPv4).

Default is `0`.

Example:

``` c
auto_bind_ipv6=1
```

### bind_ipv6_link_local

If set to `1`, try to bind also IPv6 link local addresses by discovering
the scope of the interface. If set to `2`, skip binding link local addresses.

Note: for UDP sockets by first implementation, to be added for the other protocols.

Default is `0`.

Example:

``` c
bind_ipv6_link_local=1
```

### check_via

Check if the address in top most via of replies is local. Default value
is 0 (check disabled).

Example of usage:

``` c
check_via=1
```

### children

Number of children to fork for the UDP interfaces (one set for each
interface - ip:port). Default value is 8. For example if you configure
the proxy to listen on 3 UDP ports, it will create 3xchildren processes
which handle the incoming UDP messages.

For configuration of the TCP/TLS worker threads see the option
"tcp_children".

Example of usage:

``` c
children=16
```

### chroot

The value must be a valid path in the system. If set, Kamailio will
chroot (change root directory) to its value.

Example of usage:

``` c
chroot=/other/fakeroot
```

### corelog

Set the debug level used to print some log messages from core, which
might become annoying and don't represent critical errors. For example,
such case is failure to parse incoming traffic from the network as SIP
message, due to someone sending invalid content.

Default value is `-1` (`L_ERR`).

Example of usage:

``` c
corelog=1
```

### coreparam

This parameter offers a generic framework to set new core parameters without
the need to write new code in Lex/Yacc, but to add to an internal exports
structure in the core. The format is:

``` c
coreparam[name] = value
```

The `name` can be a string or an ID, and the `value` can be a string, an ID or
a number (integer).

Available parameters that can be set via `coreparam` are listed next.

#### random_engine

Set the random engine to be used internally. The values can be:

- `rand` - use the libc `rand()/random()` functions (the default)
- `fast` - use internal `fastrand()` functions (the default)

Example:

``` c
coreparam[random_engine] = "fast"
```

### debug

Set the debug level. Higher values make Kamailio to print more debug
messages. Log messages are usually sent to syslog, except if logging to
stderr was activated (see [#log_stderror](#log_stderror) parameter).

The following log levels are defined:

``` c
L_ALERT     -5
L_BUG       -4
L_CRIT2     -3
L_CRIT      -2
L_ERR       -1
L_WARN       0
L_NOTICE     1
L_INFO       2
L_DBG        3
```

A log message will be logged if its log-level is lower than the defined
debug level. Log messages are either produced by the the code, or
manually in the configuration script using log() or xlog() functions.
For a production server you usually use a log value between -1 and 2.

Default value: `L_WARN` (`debug=0`)

Examples of usage:

- debug=3: print all log messages. This is only useful for debugging
    of problems. Note: this produces a lot of data and therefore should
    not be used on production servers (on a busy server this can easily
    fill up your hard disk with log messages)
- debug=0: This will only log warning, errors and more critical
    messages.
- debug=-6: This will disable all log messages.

Value of 'debug' parameter can also be obtained and set dynamically using the
'debug' Core MI function or the RPC function, e.g.:

``` bash
kamcmd cfg.get core debug
kamcmd cfg.set_now_int core debug 2
kamcmd cfg.set_now_int core debug -- -1
```

Note: There is a difference in log-levels between Kamailio 3.x and
Kamailio\<=1.5: Up to Kamailio 1.5 the log level started with 4, whereas
in Kamailio>=3 the log level starts with 3. Thus, if you were using
debug=3 in older Kamailio, now use debug=2.

For configuration of logging of the memory manager see the parameters
[#memlog](#memlog) and [#memdbg](#memdbg).

Further information can also be found at:

- [https://www.kamailio.org/wiki/tutorials/3.2.x/syslog](https://www.kamailio.org/wiki/tutorials/3.2.x/syslog)

### description

**Alias name:** **descr desc**

This is a keyword that can be used when declaring custom global parameters to
specify their text description. See the section `Custom Global Parameters`.

### disable_core_dump

Can be 'yes' or 'no'. By default core dump limits are set to unlimited
or a high enough value. Set this config variable to 'yes' to disable
core dump-ing (will set core limits to 0).

Default value is `no`.

Example of usage:

``` c
disable_core_dump=yes
```

### disable_tls

**Alias name:** **tls_disable**

Global parameter to disable TLS support in the SIP server. Default value
is 'yes'.

Note: Make sure to load the "tls" module to get tls functionality.

Example of usage:

``` c
disable_tls=yes
```

In Kamailio TLS is implemented as a module. Thus, the TLS configuration
is done as module configuration. For more details see the README of the
TLS module: <http://kamailio.org/docs/modules/devel/modules/tls.html>

### enable_tls

**Alias name:** **tls_enable**

Reverse Meaning of the disable_tls parameter. See disable_tls parameter.

``` c
enable_tls=yes # enable tls support in core
```

### tls_connection_match_domain

Value: `yes`/`no` (default `no`)

When set to `yes` allows to establish multiple TLS connections with different TLS domains to the same host:port target.
Default Kamailio behavior is to reuse TLS connection for the same host:port target despite possible different TLS domains.

```c
tls_connection_match_domain=yes
```

### exit_timeout

**Alias name:** **ser_kill_timeout**

How much time Kamailio will wait for all the shutdown procedures to
complete. If this time is exceeded, all the remaining processes are
immediately killed and Kamailio exits immediately (it might also
generate a core dump if the cleanup part takes too long).

Default: 60 s. Use 0 to disable.

``` c
exit_timeout = seconds
```

### flags

SIP message (transaction) flags can have string names. The *name* for
flags cannot be used for **branch** or **script flags**(\*)

``` c
...
flags
  FLAG_ONE   : 1,
  FLAG_TWO   : 2;
...
```

- NOTE: The named flags feature was propagated from the source code merge
  back in 2008 and is not extensively tested. The recommended way of
  defining flags is using [#!define](core.md#define) (which
  is also valid for branch/script flags):

``` c
#!define FLAG_NAME FLAG_BIT
```

### force_rport

Value: `yes`/`no` (default `no`)

Similar to the force_rport() function, but activates symmetric response routing
globally.

### fork

If set to 'yes' the proxy will fork and run in daemon mode - one process
will be created for each network interface the proxy listens to and for
each protocol (TCP/UDP), multiplied with the value of 'children'
parameter.

When set to 'no', the proxy will stay bound to the terminal and runs as
single process. First interface is used for listening to. This is
equivalent to setting the server option "-F".

Default value is 'yes'.

Example of usage:

``` c
fork=no
```

### fork_delay

Number of usecs to wait before forking a process.

Default is 0 (don't wait).

Example of usage:

``` c
fork_delay=5000
```

### group

**Alias name:** **gid**

The group id to run Kamailio.

Example of usage:

``` c
group="kamailio"
```

### http_reply_parse

Alias: http_reply_hack

When enabled, Kamailio can parse HTTP replies, but does so by treating
them as SIP replies. When not enabled HTTP replies cannot be parsed.
This was previously a compile-time option, now it is run-time.

Default value is 'no'.

Example of usage:

``` c
http_reply_parse=yes
```

### ip_free_bind

Alias: ipfreebind, ip_nonlocal_bind

Control if Kamailio should attempt to bind to non local ip. This option
is the per-socket equivalent of the system **ip_nonlocal_bind**.

Default is 0 (do not bind to non local ip).

Example of usage:

``` c
  ip_free_bind = 1
```

### ipv6_hex_style

Can be set to `a`, `A` or `c` to specify if locally computed string
representation of IPv6 addresses should be expanded lowercase, expanded
uppercase or compacted lowercase hexa digits.

Default is `c` (compacted lower hexa digits, conforming better with RFC
5952).

`A` is preserving the behaviour before this global parameter was
introduced, while `a` enables the ability to follow some of the
recommendations of RFC 5952, section 4.3.

Example of usage:

``` c
  ipv6_hex_style = "a"
```

### kemi.onsend_route_callback

Set the name of callback function in the KEMI script to be executed as
the equivalent of `onsend_route` block (from the native configuration
file).

Default value: ksr_onsend_route

Set it to empty string or `none` to skip execution of this callback
function.

Example:

``` c
kemi.onsend_route_callback="ksr_my_onsend_route"
```

### kemi.received_route_callback

Set the name of callback function in the KEMI script to be executed as
the equivalent of `event_route[core:msg-received]` block (from the
native configuration file). For execution, it also require to have the
received_route_mode global parameter set to 1.

Default value: `none`

Set it to empty string or `none` to skip execution of this callback
function.

Example:

``` c
kemi.received_route_callback="ksr_my_receieved_route"
```

### kemi.reply_route_callback

Set the name of callback function in the KEMI script to be executed as
the equivalent of `reply_route` block (from the native configuration
file).

Default value: `ksr_reply_route`

Set it to empty string or `none` to skip execution of this callback
function.

Example:

``` c
kemi.reply_route_callback="ksr_my_reply_route"
```

### kemi.pre_routing_callback

Set the name of callback function in the KEMI script to be executed as
the equivalent of `event_route[core:pre-routing]` block (from the
native configuration file).

Default value: `none`

Set it to empty string or `none` to skip execution of this callback
function.

Example:

``` c
kemi.pre_routing_callback="ksr_pre_routing"
```

### latency_cfg_log

If set to a log level less or equal than debug parameter, a log message
with the duration in microseconds of executing request route or reply
route is printed to syslog.

Default value is `3` (`L_DBG`).

Example:

``` c
latency_cfg_log=2
```

### latency_limit_action

Limit of latency in us (micro-seconds) for config actions. If a config
action executed by cfg interpreter takes longer than its value, a
message is printed in the logs, showing config path, line and action
name when it is a module function, as well as internal action id.

Default value is `0` (disabled).

``` c
latency_limit_action=`500`
```

### latency_limit_db

Limit of latency in us (micro-seconds) for db operations. If a db
operation executed via DB API v1 takes longer that its value, a message
is printed in the logs, showing the first 50 characters of the db query.

Default value is `0` (disabled).

``` c
latency_limit_db=`500`
```

### latency_log

Log level to print the messages related to latency.

Default value is `-1` (`L_ERR`).

``` c
latency_log=3
```

### listen

Set the network addresses the SIP server should listen to. It can be an
`IP address`, `hostname` or `network interface id` or combination of
`protocol:address:port` (e.g., `udp:10.10.10.10:5060`). This parameter can
be set multiple times in same configuration file, the server is listening
on all addresses specified.

Example of usage:

``` c
    listen=10.10.10.10
    listen=eth1:5062
    listen=udp:10.10.10.10:5064
```

If you omit this directive then the SIP server will listen on all network
interfaces. On start the SIP server reports all the interfaces that it
is listening on. Even if you specify only UDP interfaces here, the
server will start the TCP engine too. If you don't want this, you need
to disable the TCP support completely with the core parameter
`disable_tcp`.

If you specify IPv6 addresses, you should put them into square brackets,
e.g.:

``` c
    listen=udp:[2a02:1850:1:1::18]:5060
```

You can specify an advertise address (like `ip:port`) per listening socket, it
will be used to build the SIP headers such as Via and Record-Route:

``` c
    listen=udp:10.10.10.10:5060 advertise 11.11.11.11:5060
```

The advertise address must be in the format `address:port`, the protocol is
taken from the bind socket. The advertise address is a convenient
alternative to `advertised_address` / `advertised_port` config parameters or
`set_advertised_address()` / `set_advertised_port()` config functions.

A typical use case for advertise address is when running SIP server
behind a NAT/Firewall, when the local IP address (to be used for bind)
is different than the public IP address (to be used for advertising).

A unique name can be set for sockets to simplify the selection of the
socket for sending out. For example, the rr and path modules can use the
socket name to advertise it in header URI parameter and use it as a
shortcut to select the corresponding socket for routing subsequent
requests.

The name has to be provided as a string enclosed in between quotes after
the `name` keyword.

``` c
    listen=udp:10.0.0.10:5060 name "s1"
    listen=udp:10.10.10.10:5060 advertise 11.11.11.11:5060 name "s2"
    listen=udp:10.10.10.20:5060 advertise "mysipdomain.com" name "s3"
    listen=udp:10.10.10.30:5060 advertise "mysipdomain.com" name "s4"
    ...
    $fsn = "s4";
    t_relay();
```

Note that there is no internal check for uniqueness of the socket names,
the admin has to ensure it in order to be sure the desired socket is
selected, otherwise the first socket with a matching name is used.

As of 5.6, there is now a `virtual` keyword which can be added to
the end of each listen directive. This can be used in combination with
any other keyword, but must be added at the end of the line.

``` c
    listen=udp:10.1.1.1:5060 virtual
    listen=udp:10.0.0.10:5060 name "s1" virtual
    listen=udp:10.10.10.10:5060 advertise 11.11.11.11:5060 virtual
    listen=udp:10.10.10.20:5060 advertise "mysipdomain.com" name "s3" virtual
```

The `virtual` keyword is meant for use in situations where you have
a floating/virtual IP address on your system that may not always be
active on the system. It is particularly useful for active/active
virtual IP situations, where otherwise things like usrloc PATH support
can break due to incorrect `check_self` results.

This identifier will change the behaviour of how `myself`, `is_myself()`
or `check_self` matches against traffic destined to this IP address. By
default, Kamailio always considers traffic destined to a listen IP as
`local` regardless of if the IP is currently locally active. With this
flag set, Kamailio will do an extra check to make sure the IP is
currently a local IP address before considering the traffic as local.

This means that if Kamailio is listening on an IP that is not currently
local, it will recognise that, and can relay the traffic to another
Kamailio node as needed, instead of thinking it always needs to handle
the traffic.

### loadmodule

Loads a module for later usage in the configuration script. The module
is searched in the path specified by `loadpath` (or `mpath`).

Prototypes:

- `loadmodule "modulepath"`
- `loadmodule("modulepath")`
- `loadmodule("modulepath", "opts")`

If `modulepath` is only `modulename` or `modulename.so`, then Kamailio will
try to search also for `modulename/modulename.so`, very useful when
using directly the version compiled in the source tree.

The `opts` parameter is a list of characters that can specify loading options.
They can be:

- `g` (or `G`) - open the module shared object file with `RTLD_GLOBAL` set,
  which can be used for modules related to external scripting languages to avoid
  reloading.
- `o` (or `O`) - if module is already loaded (e.g., via `--loadmodule`), skip it

Example of usage:

``` c
    loadpath "/usr/local/lib/kamailio/:usr/local/lib/kamailio/modules/"

    loadmodule "/usr/local/lib/kamailio/modules/db_mysql.so"
    loadmodule "modules/usrloc.so"
    loadmodule "tm"
    loadmodule "dialplan.so"
    loadmodule("app_lua.so", "g")
```

### loadmodulex

Similar to `loadmodule` with the ability to evaluate variables in its
parameter.

### loadpath

**Alias name:** `mpath`

Set the module search path. `loadpath` takes a list of directories
separated by `:`. The list is searched in-order. For each directory `d`,
`$d/${module_name}.so` and `$d/${module_name}/${module_name}.so` are tried.

This can be used to simplify the loadmodule parameter and can include
many paths separated by colon. First module found is used.

Example of usage:

``` c
    loadpath "/usr/local/lib/kamailio/modules:/usr/local/lib/kamailio/mymodules"

    loadmodule "mysql"
    loadmodule "uri"
    loadmodule "uri_db"
    loadmodule "sl"
    loadmodule "tm"
```

The proxy tries to find the modules in a smart way, e.g: `loadmodule "uri"`
tries to find `uri.so` in the loadpath, but also `uri/uri.so`.

### local_rport

Similar to **add_local_rport()** function, but done in a global scope,
so the function does not have to be executed for each request.

Default: off

Example:

``` c
local_rport = on
```

### log_engine_data

Set specific data required by the log engine. See also the
**log_engine_type**.

``` c
log_engine_type="udp"
log_engine_data="127.0.0.1:9"
```

### log_engine_type

Specify what logging engine to be used and its initialization data. A
logging engine is implemented as a module. Supported values are a matter
of the module.

For example, see the readme of **log_custom** module for more details.

``` c
log_engine_type="udp"
log_engine_data="127.0.0.1:9"
```

### log_facility

If Kamailio logs to syslog, you can control the facility for logging.
Very useful when you want to divert all Kamailio logs to a different log
file. See the man page syslog(3) for more details.

For more see:

- [https://www.kamailio.org/dokuwiki/doku.php/tutorials:debug-syslog-messages](https://www.kamailio.org/dokuwiki/doku.php/tutorials:debug-syslog-messages)

Default value is LOG_DAEMON.

Example of usage:

``` c
log_facility=LOG_LOCAL0
```

### log_name

Allows to configure a log_name prefix which will be used when printing
to syslog -- it is also known as syslog tag, and the default value is
the application name or full path that printed the log message. This is
useful to filter log messages when running many instances of Kamailio on
same server.

``` c
log_name="kamailio-proxy-5080"
```

### log_prefix

Specify the text to be prefixed to the log messages printed by Kamailio
while processing a SIP message (that is, when executing route blocks).
It can contain script variables that are evaluated at runtime. See
[#log_prefix_mode](#log_prefix_mode) about when/how evaluation is done.

If a log message is printed from a part of the code executed out of
routing blocks actions (e.g., can be timer, evapi worker process, ...),
there is no log prefix set, because this one requires a valid SIP
message structure to work with.

Example - prefix with message type (1 - request, 2 - response), CSeq and
Call-ID:

``` c
log_prefix="{$mt $hdr(CSeq) $ci} "
```

### log_prefix_mode

Control if [log prefix](#log_prefix) is re-evaluated.

If set to 0 (default), then log prefix is evaluated when the sip message
is received and then reused (recommended if the **log_prefix** has only
variables that have same value for same message). This is the current
behaviour of **log_prefix** evaluation.

If set to 1, then the log prefix is evaluated before/after each config
action (needs to be set when the **log_prefix** has variables that are
different based on the context of config execution, e.g., $cfg(line)).

Example:

``` c
log_prefix_mode=1
```

### log_stderror

With this parameter you can make Kamailio to write log and debug
messages to standard error. Possible values are:

- `yes` - write the messages to standard error
- `no` - write the messages to syslog

Default value is `no`.

For more see:

- [https://www.kamailio.org/dokuwiki/doku.php/tutorials:debug-syslog-messages](https://www.kamailio.org/dokuwiki/doku.php/tutorials:debug-syslog-messages)

Example of usage:

``` c
log_stderror=yes
```

### cfgengine

Set the config interpreter engine for execution of the routing logic
inside the configuration file. Default is the native interpreter.

Example of usage:

``` c
cfgengine="name"
cfgengine "name"
```

If name is `native` or `default`, it expects to have in native config
interpreter for routing logic.

The name can be the identifier of an embedded language interpreter, such
as `lua` which is registered by the `app_lua` module:

``` c
cfgengine "lua"
```

### maxbuffer

The size in bytes multiplied by 2 not to be exceeded during the auto-probing
procedure of discovering and increasing the maximum OS buffer size for receiving
UDP messages (socket option SO_RCVBUF). Default value is 262144.

Example of usage:

``` c
maxbuffer=65536
```

Note: it is not the size of the internal SIP message receive buffer.

### maxsndbuffer

The size in bytes multiplied by 2 not to be exceeded during the auto-probing
procedure of discovering and increasing the maximum OS buffer size for sending
UDP messages (socket option SO_SNDBUF). Default value is 262144.

Example of usage:

``` c
maxsndbuffer=65536
```

### max_branches

The maximum number of outgoing branches for each SIP request. It has
impact on the size of destination set created in core (e.g., via
append_branch()) as well as the serial and parallel forking done via tm
module. It replaces the old defined constant MAX_BRANCHES.

The value has to be at least 1 and the upper limit is 30.

Default value: 12

Example of usage:

``` c
max_branches=16
```

### max_recursive_level

The parameters set the value of maximum recursive calls to blocks of
actions, such as sub-routes or chained IF-ELSE (for the ELSE branches).
Default is 256.

Example of usage:

``` c
max_recursive_level=500
```

### max_while_loops

The parameters set the value of maximum loops that can be done within a
"while". Comes as a protection to avoid infinite loops in config file
execution. Default is 100. Setting to 0 disables the protection (you
will still get a warning when you start Kamailio if you do something
like while(1) {...}).

Example of usage:

``` c
max_while_loops=200
```

### mcast

This parameter can be used to set the interface that should join the
multicast group. This is useful if you want to **listen** on a multicast
address and don't want to depend on the kernel routing table for
choosing an interface.

The parameter is reset after each **listen** parameter, so you can join
the right multicast group on each interface without having to modify
kernel routing beforehand.

Example of usage:

``` c
mcast="eth1"
listen=udp:224.0.1.75:5060
```

### mcast_loopback

It can be 'yes' or 'no'. If set to 'yes', multicast datagram are sent
over loopback. Default value is 'no'.

Example of usage:

``` c
mcast_loopback=yes
```

### mcast_ttl

Set the value for multicast ttl. Default value is OS specific (usually
1).

Example of usage:

``` c
mcast_ttl=32
```

### memdbg

**Alias name:** `mem_dbg`

This parameter specifies on which log level the memory debugger messages
will be logged. If memdbg is active, every request (alloc, free) to the
memory manager will be logged. (Note: if compile option NO_DEBUG is
specified, there will never be logging from the memory manager).

Default value: L_DBG (memdbg=3)

For example, memdbg=2 means that memory debugging is activated if the
debug level is 2 or higher.

``` c
debug=3    # no memory debugging as debug level
memdbg=4   # is lower than memdbg

debug=3    # memory debugging is active as the debug level
memdbg=2   # is higher or equal memdbg
```

Please see also [#memlog](#memlog) and [#debug](#debug).

### memlog

**Alias name:** `mem_log`

This parameter specifies on which log level the memory statistics will
be logged. If memlog is active, Kamailio will log memory statistics on
shutdown (or if requested via signal SIGUSR1). This can be useful for
debugging of memory leaks.

Default value: L_DBG (memlog=3)

For example, memlog=2 means that memory statistics dumping is activated
if the debug level is 2 or higher.

``` c
debug=3    # no memory statistics as debug level
memlog=4   # is lower than memlog

debug=3    # dumping of memory statistics is active as the
memlog=2   # debug level is higher or equal memlog
```

Please see also [#memdbg](#memdbg) and [#debug](#debug).

### mem_add_size

Size in bytes to be added for each chunk allocated by the internal `qm` (quick malloc) memory manager.
It could be useful in cases when external libraries initialized to use `qm` expose issues of buffer
overflow.

It can be set via config reload framework.

Default is 0.

``` c
mem_add_size=4
```

### mem_join

If set to 1, memory manager (e.g., q_malloc) does join of free fragments.
It is effective if MEM_JOIN_FREE compile option is defined.

It can be set via config reload framework.

Default is 1 (enabled).

``` c
mem_join=1
```

To change its value at runtime, **kamcmd** needs to be used and the
modules **ctl** and **cfg_rpc** loaded. Enabling it can be done with:

``` bash
kamctl rpc cfg.set_now_int core mem_join 1
```

To disable, set its value to 0.

### mem_safety

If set to `1`, memory free operation does not call `abort()` for double
freeing a pointer or freeing an invalid address. The server still prints
the alerting log messages. If set to 0, the SIP server stops by calling
`abort()` to generate a core file.

It can be set via config reload framework.

Default is `1` (enabled).

``` c
mem_safety=0
```

### mem_status_mode

If set to `1`, memory status dump for `qm` allocator will print details
about used fragments. If set to `0`, the dump contains only free
fragments. It can be set at runtime via cfg param framework (e.g., via
`kamcmd`).

Default is `0`.

``` c
mem_status_mode=1
```

### mem_summary

Parameter to control printing of memory debugging information displayed
on `exit` or `SIGUSR1`. The value can be composed by following flags:

- `1` - dump all the pkg used blocks (status)
- `2` - dump all the shm used blocks (status)
- `4` - summary of pkg used blocks
- `8` - summary of shm used blocks
- `16` - short status

If set to `0`, nothing is printed.

Default value: `12`

Example:

``` c
mem_summary=15
```

### mhomed

Set the server to try to locate outbound interface on multihomed host.
This parameter affects the selection of the outgoing socket for
forwarding requests. By default is off (0) - it is rather time
consuming. When deactivated, the incoming socket will be used or the
first one for a different protocol, disregarding the destination
location. When activated, Kamailio will select a socket that can reach
the destination (to be able to connect to the remote address). (Kamailio
opens a UDP socket to the destination, then it retrieves the local IP
which was assigned by the operating system to the new UDP socket. Then
this socket will be closed and the retrieved IP address will be used as
IP address in the Via/Record-Route headers)

Example of usage:

``` c
mhomed=1
```

### mlock_pages

Locks all Kamailio pages into memory making it unswappable (in general
one doesn't want his SIP proxy swapped out :-))

``` c
mlock_pages = yes |no (default no)
```

### modinit_delay

Number of microseconds to wait after initializing a module - useful to
cope with systems where are rate limits on new connections to database
or other systems.

Default value is 0 (no wait).

``` c
modinit_delay=100000
```

### modparam

The modparam command will be used to set the options (parameters) for the loaded
modules.

Prototypes:

``` c
modparam("modname", "paramname", intval)
modparam("modname", "paramname", "strval")
```

The first pameter is the name of the module or a list of module names separated
by `|` (pipe). Actually, the `modname` is enclosed in beteen `^(` and `)$` and
matched with the names of the loaded modules using POSIX regexp operation. For example,
when `auth` is given, then the module name is matched with `^(auth)$`; when
`acc|auth` is given, then the module name is matched with `^(acc|auth)$`. While
using only `|` between the names of the modules is recommended for clarity, any
value that can construct a valid regular expression can be used. Note also that
`modparam` throws error only when no module name is matched and no parameter is
set. If the list of modules in `modname` includes a wrong name, Kamailio starts.
For example setting `modname` to `msilo|notamodule` does not result in a startup
error if `msilo` module is loaded. Be also careful with expressions than can
match more module names than wanted, for example setting `modname` to `a|b` can
result in matching all module names that include either `a` or `b`.

The second parameter of `modparam` is the name of the module parameter.

The third parameter of `modparam` has to be either an interger or a string value,
a matter of what the module parameter expects, as documented in the README of the
module.

Example:

``` c
modparam("usrloc", "db_mode", 2)
modparam("usrloc", "nat_bflag", 6)
modparam("auth_db|msilo|usrloc", "db_url",
    "mysql://kamailio:kamailiorw@localhost/kamailio")
```

See the documenation of the respective module to find out the available
options.

### modparamx

Similar to **modparam**, with ability to evaluate the variables in its
parameters.

### msg_recv_max_size

Set the maximum size in bytes of a SIP message to be accepted by Kamailio.

Default: `32767` (`2^15 - 1`)

Example:

``` c
msg_recv_max_size = 10000
```

### onsend_route_reply

If set to 1 (yes, on), onsend_route block is executed for received
replies that are sent out. Default is 0.

``` c
onsend_route_reply=yes
```

### open_files_limit

If set and bigger than the current open file limit, Kamailio will try to
increase its open file limit to this number. Note: Kamailio must be
started as root to be able to increase a limit past the hard limit
(which, for open files, is `1024` on most systems). "Files" include
network sockets, so you need one for every concurrent session
(especially if you use connection-oriented transports, like TCP/TLS).

Example of usage:

``` c
open_files_limit=2048
```

### phone2tel

By enabling this feature, Kamailio internally treats SIP URIs with
user=phone parameter as TEL URIs. If you do not want this behavior, you
have to turn it off.

Default value: `1` (enabled)

``` c
phone2tel = 0
```

### pmtu_discovery

If set to 1, the don't-fragment (DF) bit will be set in outbound IP
packets, but no fragmentation from the kernel will be done for IPv4
and IPv6. This means that packets might be dropped and it is up to
the user to reduce the packet size and try again.

If set to 2, the kernel will will fragment a packet if needed
according to the path MTU, or will set the don't-fragment flag
otherwise. For IPv6 the kernel will fragment a packet if needed
according to the path MTU. The kernel keeps track of the path MTU
per destination host.

The default is 0, do not set the don't-fragment bit or fragment
packets for IPv4 and IPv6.

``` c
pmtu_discovery = 0 | 1 | 2 (default 0)
```

### port

The port the SIP server listens to. The default value for it is 5060.

Example of usage:

``` c
port=5080
```

### pv_buffer_size

The size in bytes of internal buffer to print dynamic strings with
pseudo-variables inside. The default value is 8192 (8kB). Please keep in
mind that for xlog messages, there is a dedicated module parameter to
set the internal buffer size.

Example of usage:

``` c
pv_buffer_size=2048
```

### pv_buffer_slots

The number of internal buffer slots to print dynamic strings with
pseudo-variables inside. The default value is 10.

Example of usage:

``` c
pv_buffer_slots=12
```

### pv_cache_limit

The limit how many pv declarations in the cache after which an action is
taken. Default value is 2048.

``` c
pv_cache_limit=1024
```

### pv_cache_action

Specify what action to be done when the size of pv cache is exceeded. If
`0`, print a warning log message when the limit is exceeded. If `1`,
warning log messages is printed and the cache systems tries to drop a
`$sht(...)` declaration. Default is `0`.

    pv_cache_action=1

### rpc_exec_delta

Specify the time interval (in seconds) required to wait before executing again
an RPC command exported with the flag `RPC_EXEC_DELTA`. Practically it enables
an execution rate limit for such command. The rate limiting is per RPC command.

Such RPC commands can be those related to reload of data records or config options
from backends such as database or hard drive. For them, executing the RPC command
too ofter can result in compromizing the internal structures (e.g., previous reload
of data was not finished when next reload is triggered).

Default value: `0` (no rate limiting)

Example:

``` c
rpc_exec_delta=5
```

### rundir

Alias: run_dir

Set the folder for creating runtime files such as MI fifo or CTL
unixsocket.

Default: `/var/run/kamailio`

Example of usage:

``` c
rundir="/tmp"
```

### received_route_mode

Enable or disable the execution of `event_route[core:msg-received]`
routing block or its corresponding Kemi callback.

Default value: `0` (disabled)

Example of usage:

``` c
received_route_mode=1
```

### reply_to_via

If it is set to 1, any local reply is sent to the IP address advertised
in top most Via of the request instead of the IP address from which the
request was received. Default value is 0 (off).

Example of usage:

``` c
reply_to_via=0
```

### route_locks_size

Set the number of mutex locks to be used for synchronizing the execution
of config script for messages sharing the same `Call-Id`. In other words,
enables Kamailio to execute the config script sequentially for the
requests and replies received within the same dialog -- a new message
received within the same dialog waits until the previous one is routed
out.

For smaller impact on parallel processing, its value it should be at
least twice the number of Kamailio processes (all children processes).

Example:

``` c
route_locks_size = 256
```

Note that ordering of the SIP messages can still be changed by network
transmission (quite likely for UDP, especially on long distance paths)
or CPU allocation for processes when executing pre-config and
post-config tasks (very low chance, but not to be ruled out completely).

### server_id

A configurable unique server id that can be used to discriminate server
instances within a cluster of servers when all other information, such
as IP addresses are the same.

``` c
  server_id = number
```

### server_header

Set the value of Server header for replies generated by Kamailio. It
must contain the header name, but not the ending `CRLF`.

Example of usage:

``` c
server_header="Server: My Super SIP Server"
```

### server_signature

This parameter controls the "Server" header in any locally generated
message.

Example of usage:

``` c
server_signature=no
```

If it is enabled (default=yes) a header is generated as in the following
example:

``` c
Server: Kamailio (<version> (<arch>/<os>))
```

### shm_force_alloc

Tries to pre-fault all the shared memory, before starting. When "on",
start time will increase, but combined with mlock_pages will guarantee
Kamailio will get all its memory from the beginning (no more kswapd slow
downs)

``` c
shm_force_alloc = yes | no (default no)
```

### shm_mem_size

Set shared memory size (in Mb).

``` c
shm_mem_size = 64 (default 64)
```

### sip_parser_log

Log level for printing debug messages for some of the SIP parsing
errors.

Default: `0` (`L_WARN`)

``` c
sip_parser_log = 1
```

### sip_parser_mode

Control sip parser behaviour.

If set to `1`, the parser is more strict in accepting messages that have
invalid headers (e.g., duplicate To or From). It can make the system
safer, but loses the flexibility to be able to fix invalid messages with
config operations.

If set to `0`, the parser is less strict on checking validity of headers.

Default: `1`

``` c
sip_parser_mode = 0
```

### sip_warning (noisy feedback)

Can be `0` or `1`. If set to `1` (default value is `0`) a 'Warning' header is
added to each reply generated by Kamailio. The header contains several
details that help troubleshooting using the network traffic dumps, but
might reveal details of your network infrastructure and internal SIP
routing.

Example of usage:

``` c
sip_warning=0
```

### socket

Specify an address to listen (bind) to, a simplified alternative to `listen`
paramter that allows specifying the attributes using a structure style.

Prototype:

``` c
socket = {
    attr1 = value1;
    ...
    attrN = valueN;
}
```

The attributes are:

- `bind` - the address to listen on in format `[proto:]address[:port]` or
  `[proto:]address[:port1-port2]`
- `advertise` - the address to advertise in SIP headers in format `address[:port]`
- `name` - name of the socket to be referenced in configuration file
- `agname` - async (action) group name where to push SIP messages received using
  multi-threaded mode
- `virtual` - set to `yes/no` to indicate if the IP has to be considered virtual or not

The attribute `bind` is mandatory and has to provide at list the address to listen on.

Example:

``` c
socket = {
    bind = udp:10.10.10.10:5060;
    advertise = 11.11.11.11:5060;
    name = "s0";
    virtual = yes;
}
```

The above is the equivalent of:

``` c
listen=udp:10.10.10.10:5060 advertise 11.11.11.11:5060 name "s0" virtual
```

When attribute `bind` is set to `[proto:]address[:port1-port2]`, then Kamailio
binds to a range of ports from `port1` to `port2` (the start and end ports are
inclusive). If socket `name` is provided in this case, then the port is appended,
becoming `[name][port]` for each of the sockets created in the port range. If
`advertise` is also provided, then a corresponding range of ports is used for
advertised addresses, although only the start port for advertise has to be provided.

If the following `socket` definition is provided:

``` c
socket = {
    bind = udp:10.10.10.10:5060-5068;
    advertise = 11.11.11.11:5060;
    name = "s0p";
    virtual = yes;
}
```

The first bind socket in rage is the equivalent of:

``` c
socket = {
    bind = udp:10.10.10.10:5060;
    advertise = 11.11.11.11:5060;
    name = "s0p5060";
    virtual = yes;
}
```

And the last one is:

``` c
socket = {
    bind = udp:10.10.10.10:5068;
    advertise = 11.11.11.11:5068;
    name = "s0p5068";
    virtual = yes;
}
```

### socket_workers

Number of workers to process SIP traffic per listen socket - typical use
is before a **listen** global parameter.

- when used before **listen** on UDP or SCTP socket, it overwrites
    **children** or **sctp_children** value for that socket.
- when used before **listen** on TCP or TLS socket, it adds extra tcp
    workers, these handling traffic only on that socket.

The value of **socket_workers** is reset with next **listen** socket
definition that is added, thus use it for each **listen** socket where
you want custom number of workers.

If this parameter is not used at all, the values for **children**,
**tcp_children** and **sctp_children** are used as usually.

Example for udp sockets:

``` c
children=4
socket_workers=2
listen=udp:127.0.0.1:5080
listen=udp:127.0.0.1:5070
listen=udp:127.0.0.1:5060
```

- it will start 2 workers to handle traffic on udp:127.0.0.1:5080
    and 4 for each of udp:127.0.0.1:5070 and udp:127.0.0.1:5060. In
    total there are 10 worker processes

Example for tcp sockets:

``` c
children=4
socket_workers=2
listen=tcp:127.0.0.1:5080
listen=tcp:127.0.0.1:5070
listen=tcp:127.0.0.1:5060
```

- it will start 2 workers to handle traffic on tcp:127.0.0.1:5080 and
    4 to handle traffic on both tcp:127.0.0.1:5070 and
    tcp:127.0.0.1:5060. In total there are 6 worker processes

### sql_buffer_size

The size in bytes of the SQL buffer created for data base queries. For
database drivers that use the core db_query library, this will be
maximum size object that can be written or read from a database. Default
value is 65535.

Example of usage:

``` c
sql_buffer_size=131070
```

### statistics

Kamailio has built-in support for statistics counter. This means, these
counters can be increased, decreased, read and cleared. The statistics
counter are defined either by the core (e.g. tcp counters), by modules
(e.g. 2xx_transactions by "tmx" module) or by the script writer using
the "statistics" module.

The statistics counters are read/updated either automatically by
Kamailio internally (e.g. tcp counters), by the script writer via the
module functions of the "statistics" module, by the script writer using
the `$stat()` pseudo variable (read-only), or via MI commands.

Following are some examples how to access statistics variables:

**script**:

``` c
modparam("statistics", "variable", "NOTIFY")

(if method == "NOTIFY") {
    update_stat("NOTIFY", "+1");
}

xlog("Number of received NOTIFYs: $stat(NOTIFY)");
```

**RPC**:

``` bash
# get counter value
kamctl rpc stats.get_statistics NOTIFY
# set counter to zero
kamctl rpc stats.reset_statistics NOTIFY
# get counter value and then set it to zero
kamctl rpc stats.clear_statistics NOTIFY

# or use the kamcmd tool
kamcmd stats.get_statistics 1xx_replies
```

### stats_name_separator

Specify the character used as a separator for the internal statistics'
names. Default value is `_`.

Example of usage:

``` c
stats_name_separator = "-"
```

### tos

The TOS (Type Of Service) to be used for the sent IP packages (both TCP
and UDP).

Example of usage:

``` c
tos=IPTOS_LOWDELAY
tos=0x10
tos=IPTOS_RELIABILITY
```

### udp_mtu

Fallback to another protocol (`udp_mtu_try_proto` must be set also either
globally or per packet) if the constructed request size is greater than
udp_mtu.

RFC 3261 specified size: `1300`. Default: `0` (off).

``` c
udp_mtu = number
```

### udp_mtu_try_proto

If `udp_mtu != 0` and udp forwarded request size (after adding all the
"local" headers) `> udp_mtu`, use this protocol instead of udp. Only the
Via header will be updated (e.g. The Record-Route will be the one built
for udp).

**Warning:** Although RFC3261 mandates automatic transport protocol
changing, enabling this feature can lead to problems with clients which
do not support other protocols or are behind a firewall or NAT. Use this
only when you know what you do!

See also `udp_mtu_try_proto(proto)` function.

Default: `UDP` (`off`). Recommended: `TCP`.

``` c
udp_mtu_try_proto = TCP|TLS|SCTP|UDP
```

### udp_receiver_mode

Specify how UDP traffic is received, either via a pool of processes per UDP socket
or a single multi-threaded process with a thread per socket.

Default value is `0` (pool of processes defined by `children`, old-style behaviour).

Value `1` switches to multi-threaded process receiver for all UDP sockets.
SIP messages are pushed to `udp` async tasks group, sending is still done by any
of processes.

```c
async_workers_group="name=udp;workers=8"
udp_receiver_mode = 1
```

Value `2` allows to define sockets that can be groupped to a specific async tasks
group by providing the `agname` to `socket` definition. These sockets use the
multi-threaded receiver style. The sockets without `agname` set use the old-style
multi-process receivers.

```c
async_workers_group="name=udp507x;workers=8"
async_workers_group="name=udp5080;workers=8"
udp_receiver_mode = 2

// multi-process UDP receiving
socket = {
    bind = udp:10.10.10.10:5060;
    advertise = 11.11.11.11:5060;
    name = "s5060";
}
// multi-threaded UDP receiving
socket = {
    bind = udp:10.10.10.10:5070;
    name = "s5070";
    agname = "udp507x";
}
// multi-threaded UDP receiving
socket = {
    bind = udp:10.10.10.10:5072;
    name = "s5072";
    agname = "udp507x";
}
// multi-threaded UDP receiving
socket = {
    bind = udp:10.10.10.10:5080;
    advertise = 11.11.11.11:5080;
    name = "s5080";
    agname = "udp5080";
}
```

### uri_host_extra_chars

Specify additional chars that should be allowed in the host part of URI.

``` c
uri_host_extra_chars = "_"
```

### user

**Alias name:** **uid**

The user id to run Kamailio (Kamailio will suid to it).

Example of usage:

``` c
    user="kamailio"
```

### user_agent_header

Set the value of User-Agent header for requests generated by Kamailio.
It must contain header name as well, but not the ending CRLF.

``` c
user_agent_header="User-Agent: My Super SIP Server"
```

### verbose_startup

Control if printing routing tree and udp probing buffer debug messages
should be printed at startup.

Default is 0 (don't print); set to 1 to get those debug messages.

Example of usage:

``` c
   verbose_startup=1
```

### version_table

Set the name of the table holding the table version. Useful if the proxy
is sharing a database within a project and during upgrades. Default
value is "version".

Example of usage:

``` c
   version_table="version44"
```

### wait_worker1_mode

Enable waiting for child SIP worker one to complete initialization, then
create the other child worker processes.

Default: 0 (do not wait for child worker one to complete
initialization).

Example:

``` c
wait_worker1_mode = 1
```

### wait_worker1_time

How long to wait for child worker one to complete the initialization. In
micro-seconds.

Default: 4000000 (micro-seconds = 4 seconds).

Example:

``` c
wait_worker1_time = 1000000
```

### wait_worker1_usleep

Waiting for child worker one to complete the initialization is done in
a loop, which loop waits until wait_worker1_time passes.  This parameter
specifies how long after each iteration of that loop to wait in micro-seconds.

Default: 100000 (micro-seconds = 0.1 seconds).

Example:

``` c
wait_worker1_usleep = 50000
```

### workdir

**Alias name:** **wdir**

The working directory used by Kamailio at runtime. You might find it
useful when it comes to generating core files :)

Example of usage:

``` c
wdir="/usr/local/kamailio"
# or
wdir=/usr/kamwd
```

### xavp_via_params

Set the name of the XAVP of which subfields will be added as local `Via`
-header parameters.

If not set, `XAVP` to `Via` header parameter manipulation is not applied
(default behaviour).

If set, local `Via` header gets additional parameters from defined `XAVP`.
Core flag `FL_ADD_XAVP_VIA_PARAMS` needs to be set¹.

Example:

``` c
xavp_via_params="via"
```

`[1]` See function `via_add_xavp_params()` from "corex" module.

### xavp_via_fields

Set the name of xavp from where to take Via header field: address and
port. Use them to build local Via header.

Example:

``` c
xavp_via_fields="customvia"

request_route {
  ...
  $xavp(customvia=>address) = "1.2.3.4";
  $xavp(customvia[0]=>port) = "5080";  # must be string
  via_use_xavp_fields("1");
  t_relay();
}
```

See function `via_use_xavp_fields()` from "corex" module.

### xavp_via_reply_params

Set the name of the XAVP of which subfields will be added as header parameters to the top `Via` of the replies sent out.

If not set, `XAVP` to `Via` header parameter manipulation is not applied
(default behaviour).

If set, top `Via` header of the to-be-sent reply gets additional parameters from defined `XAVP`.
Core flag `FL_ADD_XAVP_VIA_REPLY PARAMS` needs to be set¹.

Example:

``` c
xavp_via_reply_params="viarpl"
```

`[1]` See function `via_reply_vadd_xavp_params()` from "corex" module.

## DNS Parameters

Note: See also file `doc/tutorials/dns.txt` for details about Kamailio's
DNS client.

Kamailio has an internal DNS resolver with caching capabilities. If this
caching resolver is activated (default setting) then the system's stub
resolver won't be used. Thus, also local name resolution configuration
like `/etc/hosts` entries will not be used. If the DNS cache is
deactivated (`use_dns_cache=no`), then system's resolver will be used. The
DNS failover functionality in the tm module references directly records
in the DNS cache (which saves a lot of memory) and hence DNS based
failover only works if the internal DNS cache is enabled.

| DNS resolver comparison                  | internal resolver | system resolver |
|------------------------------------------|-------------------|-----------------|
| Caching of resolved records              | yes               | no\*            |
| NAPTR/SRV lookups with correct weighting | yes               | yes             |
| DNS based failover                       | yes               | no              |

- Of course you can use the resolving name servers configured in
`/etc/resolv.conf` as caching nameservers.

If the internal resolver/cache is enabled you can add/remove records by
hand (using kamcmd or xmlrpc) using the DNS RPCs, e.g. dns.add_a,
dns.add_srv, dns.delete_a a.s.o. For more info on DNS RPCs see:

- [https://www.kamailio.org/docs/docbooks/devel/rpc_list/rpc_list.html#dns.add_a](https://www.kamailio.org/docs/docbooks/devel/rpc_list/rpc_list.html#dns.add_a)

Note: During startup of Kamailio, before the internal resolver is
loaded, the system resolver will be used (it will be used for queries
done from module register functions or modparams fixups, but not for
queries done from `mod_init()` or normal fixups).

Note: The dns cache uses the DNS servers configured on your server
(`/etc/resolv.conf`), therefore even if you use the internal resolver you
should have a working DNS resolving configuration on your server.

Kamailio also allows you to finetune the DNS resolver settings.

The maximum time a dns request can take (before failing) is (if
`dns_try_ipv6` is yes, multiply it again by `2`; if `SRV` and `NAPTR` lookups
are enabled, it can take even longer!):

``` c
(dns_retr_time*(dns_retr_no+1)*dns_servers_no)*(search_list_domains)
```

Note: During DNS lookups, the process which performs the DNS lookup
blocks. To minimize the blocked time the following parameters can be
used (max 2s):

``` c
dns_try_ipv6=no
dns_retr_time=1
dns_retr_no=1
dns_use_search_list=no
```

### dns

This parameter controls if the SIP server will try doing a DNS lookup on
the address in the Via header of a received sip request to decide if
adding a `received=src_ip` parameter to the Via is necessary. Note that
Vias containing DNS names (instead of IPs) should have `received=` added,
so turning dns to yes is not recommended.

Default is `no`.

### rev_dns

**Alias name:** **dns_rev_via**

This parameter controls if the SIP server will try doing a reverse DNS
lookup on the source IP of a sip request to decide if adding a
`received=src_ip` parameter to the Via is necessary (if the Via
contains a DNS name instead of an IP address, the result of the reverse
dns on the source IP will be compared with the DNS name in the Via). See
also dns (the effect is cumulative, both can be turned on and in that
case if the DNS lookup test fails the reverse DNS test will be tried).
Note that Vias containing DNS names (instead of IPs) should have
`received=` added, so turning rev_dns to yes is not recommended.

Default is `no`.

### dns_cache_del_nonexp

**Alias name:** **dns_cache_delete_nonexpired**

``` c
dns_cache_del_nonexp = yes | no (default: no)
```

      allow deletion of non-expired records from the cache when there is no more space
      left for new ones. The last-recently used entries are deleted first.

### dns_cache_rec_pref

``` c
dns_cache_rec_pref = number (default 0)
```

      dns cache record preference, determines how new DNS records are stored internally in relation to existing entries.
      Possible values:
        0 - do not check duplicates
        1 - prefer old records
        2 - prefer new records
        3 - prefer records with longer lifetime

### dns_cache_flags

``` c
dns_cache_flags = number (default 0)
```

      dns cache specific resolver flags, used for overriding the default behaviour (low level).
      Possible values:
        1 - ipv4 only: only DNS A requests are performed, even if Kamailio also listens on ipv6 addresses.
        2 - ipv6 only: only DNS AAAA requests are performed. Ignored if dns_try_ipv6 is off or Kamailio
            doesn't listen on any ipv6 address.
        4 - prefer ipv6: try first to resolve a host name to an ipv6 address (DNS AAAA request) and only
            if this fails try an ipv4 address (DNS A request). By default the ipv4 addresses are preferred.

### dns_cache_gc_interval

Interval in seconds after which the dns cache is garbage collected
(default: 120 s)

``` c
dns_cache_gc_interval = number
```

### dns_cache_init

If off, the dns cache is not initialized at startup and cannot be
enabled at runtime, this saves some memory.

``` c
dns_cache_init = on | off (default on)
```

### dns_cache_max_ttl

``` c
dns_cache_max_ttl = time in seconds (default MAXINT)
```

### dns_cache_mem

Maximum memory used for the dns cache in KB (default 500 K)

``` c
dns_cache_mem = number
```

### dns_cache_min_ttl

``` c
dns_cache_min_ttl = time in seconds (default 0)
```

### dns_cache_negative_ttl

Tells how long to keep negative DNS responses in cache. If set to 0,
disables caching of negative responses. Default is 60 (seconds).

### dns_naptr_ignore_rfc

If the DNS lookup should ignore the remote side's protocol preferences,
as indicated by the Order field in the NAPTR records and mandated by RFC
2915.

``` c
dns_naptr_ignore_rfc = yes | no (default yes)
```

### dns_retr_no

Number of dns retransmissions before giving up. Default value is system
specific, depends also on the '/etc/resolv.conf' content (usually 4).

Example of usage:

``` c
dns_retr_no=3
```

### dns_retr_time

Time in seconds before retrying a dns request. Default value is system
specific, depends also on the '/etc/resolv.conf' content (usually 5s).

Example of usage:

``` c
dns_retr_time=3
```

### dns_search_full_match

When name was resolved using dns search list, check the domain added in
the answer matches with one from the search list (small performance hit,
but more safe)

``` c
dns_search_full_match = yes | no (default yes)
```

### dns_servers_no

How many dns servers from the ones defined in '/etc/resolv.conf' will be
used. Default value is to use all of them.

Example of usage:

``` c
dns_servers_no=2
```

### dns_srv_lb

**Alias name:** **dns_srv_loadbalancing**

Enable dns srv weight based load balancing (see doc/tutorials/dns.txt)

``` c
dns_srv_lb = yes | no (default no)
```

### dns_try_ipv6

Can be 'yes' or 'no'. If it is set to 'yes' and a DNS lookup fails, it
will retry it for ipv6 (AAAA record). Default value is 'no'.

Note: If dns_try_ipv6 is off, no hostname resolving that would result in
an ipv6 address would succeed - it doesn't matter if an actual DNS
lookup is to be performed or the host is already an ip address. Thus, if
the proxy should forward requests to IPv6 targets, this option must be
turned on!

Example of usage:

``` c
dns_try_ipv6=yes
```

### dns_try_naptr

Enable NAPTR support according to RFC 3263 (see doc/tutorials/dns.txt
for more info)

``` c
dns_try_naptr = yes | no (default no)
```

### dns_sctp_pref, dns_tcp_pref, dns_tls_pref, dns_udp_pref

**Alias name:** **dns_sctp_preference, dns_tcp_preference,
dns_tls_preference, dns_udp_preference**

Set preference for each protocol when doing naptr lookups. By default
dns_udp_pref=30, dns_tcp_pref=20, dns_tls_pref=10 and dns_sctp_pref=20.
To use the remote site preferences set all dns\_\*\_pref to the same
positive value (e.g. dns_udp_pref=1, dns_tcp_pref=1, dns_tls_pref=1,
dns_sctp_pref=1). To completely ignore NAPTR records for a specific
protocol, set the corresponding protocol preference to -1 (or any other
negative number). (see doc/tutorials/dns.txt for more info)

``` c
dns_{udp,tcp,tls,sctp}_pref = number
```

### dns_use_search_list

Can be 'yes' or 'no'. If set to 'no', the search list in
'/etc/resolv.conf' will be ignored (=> fewer lookups => gives up
faster). Default value is 'yes'.

HINT: even if you don't have a search list defined, setting this option
to 'no' will still be "faster", because an empty search list is in fact
search "" (so even if the search list is empty/missing there will still
be 2 dns queries, eg. foo+'.' and foo+""+'.')

Example of usage:

``` c
dns_use_search_list=no
```

### use_dns_cache

**Alias name:** **dns_use_cache**

Tells if DNS responses are cached - this means that the internal DNS
resolver (instead of the system's stub resolver) will be used. If set to
"off", disables caching of DNS responses and, as side effect, DNS
failover. Default is "on". Settings can be changed also during runtime
(switch from internal to system resolver and back).

### use_dns_failover

**Alias name:** **dns_use_failover**

``` c
use_dns_failover = on | off (default off)
```

If `on` and sending a request fails (due to not being allowed from an `onsend_route`,
send failure, blocklisted destination or, when using tm, invite timeout), and the
destination resolves to multiple ip addresses and/or multiple `SRV` records, the send
will be re-tried using the next ip/record. In `tm` case, a new branch will be
created for each new send attempt.

## TCP Parameters

The following parameters allows to tweak the TCP behaviour.

### disable_tcp

Global parameter to disable TCP support in the SIP server. Default value
is `no`.

Example of usage:

``` c
disable_tcp=yes
```

### tcp_accept_aliases

If a message received over a tcp connection has "alias" in its via a new
tcp alias port will be created for the connection the message came from
(the alias port will be set to the via one).

Based on `draft-ietf-sip-connect-reuse-00.txt`, but using only the port
(host aliases are dangerous, involve extra DNS lookups and the need for
them is questionable)

See `force_tcp_alias` for more details.

Note: For NAT traversal of TCP clients it is better to not use
tcp_accept_aliases but just use nathelper module and
`fix_nated_[contact|register]()` functions.

Default is `no` (`off`)

``` c
tcp_accept_aliases= yes|no
```

### tcp_accept_haproxy

Enable the internal TCP stack to expect a PROXY-protocol-formatted
header as the first message of the connection. Both the human-readable
(v1) and binary-encoded (v2) variants of the protocol are supported.
This option is typically useful if you are behind a TCP load-balancer,
such as HAProxy or an AWS' ELB, and allows the load-balancer to provide
connection information regarding the upstream client. This enables the
use of IP-based ACLs, even behind a load-balancer.

Please note that enabling this option will reject any inbound TCP
connection that does not conform to the PROXY-protocol spec.

For reference - the PROXY protocol:

- [https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt](https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt)

Default value is **no**.

``` c
tcp_accept_haproxy=yes
```

### tcp_accept_hep3

Enable internal TCP receiving stack to accept HEP3 packets. This option
has to be set to **yes** on a Kamailio instance acting as Homer
SIPCapture server that is supposed to receive HEP3 packets over TCP/TLS.

Default value is **no**.

``` c
tcp_accept_hep3=yes
```

### tcp_accept_iplimit

Set limit for accepted connections from the same IP address.

Default: `1024`.

``` c
tcp_accept_iplimit=32
```

It can be set to `0` (or a negative value) to disable this limit.

### tcp_accept_no_cl

Control whether to throw or not error when there is no Content-Length
header for requests received over TCP. It is required to be set to
**yes** for XCAP traffic sent over HTTP/1.1 which does not use
Content-Length header, but splits large bodies in many chunks. The
module **sanity** can be used then to restrict this permission to HTTP
traffic only, testing in route block in order to stay RFC3261 compliant
about this mandatory header for SIP requests over TCP.

Default value is **no**.

``` c
tcp_accept_no_cl=yes
```

### tcp_accept_unique

If set to `1`, reject duplicate connections coming from same source IP and
port.

Default set to `0`.

``` c
tcp_accept_unique = 1
```

### tcp_async

**Alias name:** **tcp_buf_write**

If enabled, all the tcp writes that would block / wait for connect to
finish, will be queued and attempted latter (see also `tcp_conn_wq_max`
and `tcp_wq_max`).

**Note:** It also applies for TLS.

``` c
tcp_async = yes | no (default yes)
```

### tcp_check_timer

Set the check interval (in seconds) for tcp connections. It is used to check
if there was any data received on new connections or if the receiving of SIP
messages takes too long. See also `tcp_msg_data_timeout` and `tcp_msg_read_timeout`.

Default half of `tcp_msg_data_timeout` or `tcp_msg_read_timeout` value depending on
which one is smaller and not zero or 0 if both are zero

``` c
tcp_check_timer=5
```

### tcp_children

Number of children processes to be created for reading from TCP
connections. If no value is explicitly set, the same number of TCP
children as UDP children (see "children" parameter) will be used.

Example of usage:

``` c
tcp_children=4
```

### tcp_clone_rcvbuf

Control if the received buffer should be cloned from the TCP stream,
needed by functions working inside the SIP message buffer (such as
msg_apply_changes()).

Default is `0` (don't clone), set it to `1` for cloning.

Example of usage:

``` c
tcp_clone_rcvbuf=1
```

### tcp_connection_lifetime

Lifetime in seconds for TCP sessions. TCP sessions which are inactive
for longer than **tcp_connection_lifetime** will be closed by Kamailio.
Default value is defined is `120`. Setting this value to 0 will close the
TCP connection pretty quick.

Note: As many SIP clients are behind NAT/Firewalls, the SIP proxy should
not close the TCP connection as it is not capable of opening a new one.

Example of usage:

``` c
tcp_connection_lifetime=3605
```

### tcp_connection_match

If set to `1`, try to be more strict in matching outbound TCP connections,
attempting to lookup first the connection using also local port, not
only the local IP and remote IP+port.

Default is `0`.

``` c
tcp_connection_match=1
```

### tcp_connect_timeout

Time in seconds before an ongoing attempt to establish a new TCP
connection will be aborted. Lower this value for faster detection of TCP
connection problems. The default value is 10s.

Example of usage:

``` c
tcp_connect_timeout=5
```

### tcp_conn_wq_max

Maximum bytes queued for write allowed per connection. Attempting to
queue more bytes would result in an error and in the connection being
closed (too slow). If tcp_buf_write is not enabled, it has no effect.

``` c
tcp_conn_wq_max = bytes (default 32 K)
```

### tcp_crlf_ping

Enable SIP outbound TCP keep-alive using PING-PONG (CRLFCRLF - CRLF).

``` c
tcp_crlf_ping = yes | no default: yes
```

### tcp_defer_accept

Tcp accepts will be delayed until some data is received (improves
performance on proxies with lots of opened tcp connections). See linux
`tcp(7)` `TCP_DEFER_ACCEPT` or freebsd `ACCF_DATA(0)`. For now linux and
freebsd only.

WARNING: the linux `TCP_DEFER_ACCEPT` is buggy (`<=2.6.23`) and doesn't
work exactly as expected (if no data is received it will retransmit syn
acks for `~ 190 s`, irrespective of the set timeout and then it will
silently drop the connection without sending a RST or FIN). Try to use
it together with tcp_syncnt (this way the number of retrans. SYNACKs can
be limited => the timeout can be controlled in some way).

On FreeBSD:

``` c
tcp_defer_accept =  yes | no (default no)
```

On Linux:

``` c
tcp_defer_accept =  number of seconds before timeout (default disabled)
```

### tcp_delayed_ack

Initial ACK for opened connections will be delayed and sent with the
first data segment (see linux tcp(7) TCP_QUICKACK). For now linux only.

``` c
tcp_delayed_ack  = yes | no (default yes when supported)
```

### tcp_fd_cache

If enabled FDs used for sending will be cached inside the process
calling tcp_send (performance increase for sending over tcp at the cost
of slightly slower connection closing and extra FDs kept open)

``` c
tcp_fd_cache = yes | no (default yes)
```

### tcp_keepalive

Enables keepalive for tcp (sets SO_KEEPALIVE socket option)

``` c
tcp_keepalive = yes | no (default yes)
```

### tcp_keepcnt

Number of keepalives sent before dropping the connection (TCP_KEEPCNT
socket option). Linux only.

``` c
tcp_keepcnt = number (not set by default)
```

### tcp_keepidle

Time before starting to send keepalives, if the connection is idle
(TCP_KEEPIDLE socket option). Linux only.

``` c
tcp_keepidle  = seconds (not set by default)
```

### tcp_keepintvl

Time interval between keepalive probes, when the previous probe failed
(TCP_KEEPINTVL socket option). Linux only.

``` c
tcp_keepintvl = seconds (not set by default)
```

### tcp_linger2

Lifetime of orphaned sockets in FIN_WAIT2 state (overrides
tcp_fin_timeout on, see linux tcp(7) TCP_LINGER2). Linux only.

``` c
tcp_linger2 = seconds (not set by default)
```

### tcp_main_threads

If set to 1, the TLS read and encode (for sending) operations are done by threads
created by the main TCP process. If set to 0, the operations are done in the
old-style, mostly by the SIP worker processes.

Default: `0`

``` c
tcp_main_threads = 1
```

### tcp_max_connections

Maximum number of tcp connections (if the number is exceeded no new tcp
connections will be accepted). Default is defined in tcp_init.h: #define
DEFAULT_TCP_MAX_CONNECTIONS 2048

Example of usage:

``` c
tcp_max_connections=4096
```

### tcp_msg_data_timeout

Duration in seconds for how long to wait till data is received on a new tcp
connection. Default 20.

``` c
tcp_msg_data_timeout=10
```

### tcp_msg_read_timeout

Duration in seconds for how long to wait till a SIP message is read on
a new tcp connection. Default 20.

``` c
tcp_msg_read_timeout=10
```

### tcp_no_connect

Stop outgoing TCP connects (also stops TLS) by setting tcp_no_connect to
yes.

You can do this any time, even even if Kamailio is already started (in
this case using the command "kamcmd cfg.set_now_int tcp no_connect 1").

### tcp_poll_method

Poll method used (by default the best one for the current OS is
selected). For available types see io_wait.c and poll_types.h: none,
poll, epoll_lt, epoll_et, sigio_rt, select, kqueue, /dev/poll

Example of usage:

``` c
tcp_poll_method=select
```

### tcp_rd_buf_size

Buffer size used for tcp reads. A high buffer size increases performance
on server with few connections and lot of traffic on them, but also
increases memory consumption (so for lots of connection is better to use
a low value). Note also that this value limits the maximum message size
(SIP, HTTP) that can be received over tcp.

The value is internally limited to 16MByte, for higher values recompile
Kamailio with higher limit in tcp_options.c (search for "rd_buf_size"
and 16777216). Further, you may need to increase the private memory, and
if you process the message stateful you may also have to increase the
shared memory.

Default: 4096, can be changed at runtime.

``` c
tcp_rd_buf_size=65536
```

### tcp_reuse_port

Allows reuse of TCP ports. This means, for example, that the same TCP
ports on which Kamailio is listening on, can be used as source ports of
new TCP connections when acting as an UAC. Kamailio must have been
compiled in a system implementing SO_REUSEPORT (Linux \> 3.9.0, FreeBSD,
OpenBSD, NetBSD, MacOSX). This parameter takes effect only if also the
system on which Kamailio is running on supports SO_REUSEPORT.

``` c
tcp_reuse_port = yes (default no)
```

### tcp_script_mode

Specify if connection should be closed (set to CONN_ERROR) if processing
the received message results in error (that can also be due to negative
return code from a configuration script main route block). If set to 1,
the processing continues with the connection open.

Default `0` (close connection)

``` c
tcp_script_mode = 1
```

### tcp_send_timeout

Time in seconds after a TCP connection will be closed if it is not
available for writing in this interval (and Kamailio wants to send
something on it). Lower this value for faster detection of broken TCP
connections. The default value is 10s.

Example of usage:

``` c
tcp_send_timeout=3
```

### tcp_source_ipv4, tcp_source_ipv6

Set the source IP for all outbound TCP connections. If setting of the IP
fails, the TCP connection will use the default IP address.

``` c
tcp_source_ipv4 = IPv4 address
tcp_source_ipv6 = IPv6 address
```

### tcp_syncnt

Number of SYN retransmissions before aborting a connect attempt (see
linux tcp(7) TCP_SYNCNT). Linux only.

``` c
tcp_syncnt = number of syn retr. (default not set)
```

### tcp_wait_data

Specify how long to wait (in milliseconds) to wait for data on tcp
connections in certain cases. Now applies when reading on tcp connection
for haproxy protocol.

Default: `5000ms` (`5secs`)

``` c
tcp_wait_data = 10000
```

### tcp_wq_blk_size

Block size used for tcp async writes. It should be big enough to hold a
few datagrams. If it's smaller than a datagram (in fact a tcp write())
size, it will be rounded up. It has no influenced on the number of
datagrams queued (for that see tcp_conn_wq_max or tcp_wq_max). It has
mostly debugging and testing value (can be ignored).

Default: `2100` (`~ 2 INVITEs`), can be changed at runtime.

### tcp_wq_max

Maximum bytes queued for write allowed globally. It has no effect if
tcp_buf_write is not enabled.

``` c
tcp_wq_max = bytes (default 10 Mb)
```

## TLS Parameters

Most of TLS layer attributes can be configured via TLS module
parameters.

### tls_port_no

The port the SIP server listens to for TLS connections.

Default value is `5061`.

Example of usage:

``` c
tls_port_no=6061
```

### tls_max_connections

Maximum number of TLS connections (if the number is exceeded no new TLS
connections will be accepted). It cannot exceed tcp_max_connections.

Default value is `2048`.

Example of usage:

``` c
tls_max_connections=4096
```

### tls_threads_mode

Control how to initialize the internal multi-threading system that impacts
libssl 3.x.

Values:

- `0` - no thread-specific initialization/execution (default)
- `1` - for each function that might initialize OpenSSL, run it in a temporary
  thread; this leaves the thread-local variables in rank 0, main thread at their
  default value of 0x0
- `2` - use at-fork handler to set thread-local variables to 0x0; the
  implementation will set thread-local keys from 0-15 to have value 0x0.

``` c
tls_threads_mode = 2
```

With libssl v3.x, the recommended value for production is `2`. For
development/troubleshooting, value `1` can be used.

## SCTP Parameters

### disable_sctp

Global parameter to disable SCTP support in the SIP server. See also
`enable_sctp`.

Default value is `auto`.

Example of usage:

``` c
disable_sctp=yes
```

### enable_sctp

``` c
enable_sctp = 0/1/2  - SCTP disabled (0)/ SCTP enabled (1)/auto (2),
                        default auto (2)
```

### sctp_children

sctp children no (similar to udp children)

``` c
sctp_children = number
```

### sctp_socket_rcvbuf

Size for the sctp socket receive buffer

**Alias name:** **sctp_socket_receive_buffer**

``` c
sctp_socket_rcvbuf = number
```

### sctp_socket_sndbuf

Size for the sctp socket send buffer

**Alias name:** **sctp_socket_send_buffer**

``` c
sctp_socket_sndbuf = number
```

### sctp_autoclose

Number of seconds before autoclosing an idle association (default: `180`
s). Can be changed at runtime, but it will affect only new associations.
E.g.:

``` shell
kamcmd cfg.seti sctp autoclose 120
```

``` c
sctp_autoclose = seconds
```

### sctp_send_ttl

Number of milliseconds before an unsent message/chunk is dropped
(default: `32000` ms or `32` s). Can be changed at runtime, e.g.:

``` shell
kamcmd cfg.seti sctp send_ttl 180000
```

``` c
sctp_send_ttl = milliseconds - n
```

### sctp_send_retries

How many times to attempt re-sending a message on a re-opened
association, if the sctp stack did give up sending it (it's not related
to sctp protocol level retransmission). Useful to improve reliability
with peers that reboot/restart or fail over to another machine.

WARNING: use with care and low values (e.g. 1-3) to avoid "multiplying"
traffic to unresponding hosts (default: 0). Can be changed at runtime.

``` c
sctp_send_retries = 1
```

### sctp_assoc_tracking

Controls whether or not sctp associations are tracked inside Kamailio.
Turning it off would result in less memory being used and slightly
better performance, but it will also disable some other features that
depend on it (e.g. `sctp_assoc_reuse`). Default: yes.

Can be changed at runtime ("kamcmd sctp assoc_tracking 0"), but changes
will be allowed only if all the other features that depend on it are
turned off (for example it can be turned off only if first
`sctp_assoc_reuse` was turned off).

Note: turning `sctp_assoc_tracking` on/off will delete all the tracking
information for all the currently tracked associations and might
introduce a small temporary delay in the sctp processing if lots of
associations were tracked.

Config options depending on `sctp_assoc_tracking` being on:
`sctp_assoc_reuse`.

``` c
sctp_assoc_tracking = yes/no
```

### sctp_assoc_reuse

Controls sctp association reuse. For now only association reuse for
replies is affected by it. Default: `yes`. Depends on `sctp_assoc_tracking`
being on.

Note that even if turned off, if the port in via corresponds to the
source port of the association the request was sent on or if rport is
turned on (`force_rport()` or via containing a rport option), the
association will be automatically reused by the sctp stack. Can be
changed at runtime (sctp assoc_reuse), but it can be turned on only if
`sctp_assoc_tracking` is on.

``` c
sctp_assoc_reuse = yes/no
```

### sctp_max_assocs

Maximum number of allowed open sctp associations. -1 means maximum
allowed by the OS. Default: -1. Can be changed at runtime (e.g.:
`kamcmd cfg.seti sctp max_assocs 10`). When the maximum associations
number is exceeded and a new associations is opened by a remote host,
the association will be immediately closed. However it is possible that
some SIP packets get through (especially if they are sent early, as part
of the 4-way handshake).

When Kamailio tries to open a new association and the max_assocs is
exceeded the exact behaviour depends on whether or not
`sctp_assoc_tracking` is on. If on, the send triggering the active open
will gracefully fail, before actually opening the new association and no
packet will be sent. However if `sctp_assoc_tracking` is off, the
association will first be opened and then immediately closed. In general
this means that the initial sip packet will be sent (as part of the
4-way handshake).

``` c
sctp_max_assocs = number
```

### sctp_srto_initial

Initial value of the retr. timeout, used in RTO calculations (default:
OS specific).

Can be changed at runtime (sctp `srto_initial`) but it will affect only
new associations.

``` c
sctp_srto_initial = milliseconds
```

### sctp_srto_max

Maximum value of the retransmission timeout (RTO) (default: OS
specific).

WARNING: values lower than the sctp `sack_delay` will cause lots of
retransmissions and connection instability (see sctp_srto_min for more
details).

Can be changed at runtime (sctp `srto_max`) but it will affect only new
associations.

``` c
sctp_srto_max = milliseconds
```

### sctp_srto_min

Minimum value of the retransmission timeout (RTO) (default: OS
specific).

WARNING: values lower than the sctp `sack_delay` of any peer might cause
retransmissions and possible interoperability problems. According to the
standard the `sack_delay` should be between 200 and 500 ms, so avoid
trying values lower than 500 ms unless you control all the possible sctp
peers and you do make sure their `sack_delay` is higher or their sack_freq
is 1.

Can be changed at runtime (sctp `srto_min`) but it will affect only new
associations.

``` c
sctp_srto_min = milliseconds
```

### sctp_asocmaxrxt

Maximum retransmissions attempts per association (default: OS specific).
It should be set to `sctp_pathmaxrxt` `*` no. of expected paths.

Can be changed at runtime (sctp asocmaxrxt) but it will affect only new
associations.

``` c
sctp_asocmaxrxt   = number
```

### sctp_init_max_attempts

Maximum INIT retransmission attempts (default: OS specific).

Can be changed at runtime (sctp init_max_attempts).

``` c
sctp_init_max_attempts = number
```

### sctp_init_max_timeo

Maximum INIT retransmission timeout (RTO max for INIT). Default: OS
specific.

Can be changed at runtime (sctp init_max_timeo).

``` c
sctp_init_max_timeo = milliseconds
```

### sctp_hbinterval

sctp heartbeat interval. Setting it to -1 will disable the heartbeats.
Default: OS specific.

Can be changed at runtime (sctp hbinterval) but it will affect only new
associations.

``` c
sctp_hbinterval = milliseconds
```

### sctp_pathmaxrxt

Maximum retransmission attempts per path (see also sctp_asocmaxrxt).
Default: OS specific.

Can be changed at runtime (sctp pathmaxrxt) but it will affect only new
associations.

``` c
sctp_pathmaxrxt = number
```

### sctp_sack_delay

Delay until an ACK is generated after receiving a packet. Default: OS
specific.

WARNING: a value higher than srto_min can cause a lot of retransmissions
(and strange problems). A value higher than srto_max will result in very
high connections instability. According to the standard the `sack_delay`
value should be between 200 and 500 ms.

Can be changed at runtime (sctp `sack_delay`) but it will affect only new
associations.

``` c
sctp_sack_delay = milliseconds
```

### sctp_sack_freq

Number of packets received before an ACK is sent (without waiting for
the `sack_delay` to expire). Default: OS specific.

Note: on linux with `lksctp` up to and including 1.0.9 is not possible to
set this value (having it in the config will produce a warning on
startup).

Can be changed at runtime (sctp `sack_freq`) but it will affect only new
associations.

``` c
sctp_sack_freq = number
```

### sctp_max_burst

Maximum burst of packets that can be emitted by an association. Default:
OS specific.

Can be changed at runtime (sctp `max_burst`) but it will affect only new
associations.

``` c
sctp_max_burst = number
```

## UDP Parameters

### udp4_raw

Enables raw socket support for sending UDP IPv4 datagrams (40-50%
performance increase on linux multi-cpu).

Possible values: `0` - disabled (default), `1` - enabled, `-1` auto.

In "auto" mode it will be enabled if possible (sr started as root or
with `CAP_NET_RAW`). `udp4_raw` can be used on Linux and FreeBSD. For other
BSDs and Darwin one must compile with `-DUSE_RAW_SOCKS`. On Linux one
should also set `udp4_raw_mtu` if the MTU on any network interface that
could be used for sending is smaller than `1500`.

The parameter can be set at runtime as long as sr was started with
enough privileges (`core.udp4_raw`).

``` c
udp4_raw = on
```

### udp4_raw_mtu

MTU value used for UDP IPv4 packets when udp4_raw is enabled. It should
be set to the minimum MTU of all the network interfaces that could be
used for sending. The default value is 1500. Note that on BSDs it does
not need to be set (if set it will be ignored, the proper MTU will be
used automatically by the kernel). On Linux it should be set.

The parameter can be set at runtime (`core.udp4_raw_mtu`).

### udp4_raw_ttl

TTL value used for UDP IPv4 packets when udp4_raw is enabled. By default
it is set to auto mode (`-1`), meaning that the same TTL will be used as
for normal UDP sockets.

The parameter can be set at runtime (`core.udp4_raw_ttl`).

## Blocklist Parameters

### dst_blocklist_expire

**Alias name:** **dst_blocklist_ttl**

How much time a blocklisted destination will be kept in the blocklist
(w/o any update).

``` c
dst_blocklist_expire = time in s (default 60 s)
```

### dst_blocklist_gc_interval

How often the garbage collection will run (eliminating old, expired
entries).

``` c
dst_blocklist_gc_interval = time in s (default 60 s)
```

### dst_blocklist_init

If off, the blocklist is not initialized at startup and cannot be
enabled at runtime, this saves some memory.

``` c
dst_blocklist_init = on | off (default on)
```

### dst_blocklist_mem

Maximum shared memory amount used for keeping the blocklisted
destinations.

``` c
dst_blocklist_mem = size in Kb (default 250 Kb)
```

### use_dst_blocklist

Enable the destination blocklist: Each failed send attempt will cause
the destination to be added to the blocklist. Before any send, this
blocklist will be checked and if a match is found, the send is no longer
attempted (an error is returned immediately).

Note: using the blocklist incurs a small performance penalty.

See also `doc/dst_blocklist.txt`.

``` c
use_dst_blocklist = on | off (default off)
```

## Real-Time Parameters

### real_time

Sets real time priority for all the Kamailio processes, or the timers
(bitmask).

       Possible values:   0  - off
                          1  - the "fast" timer
                          2  - the "slow" timer
                          4  - all processes, except the timers

Example: `real_time= 7` => everything switched to real time priority.

``` c
real_time = <int> (flags) (default off)
```

### rt_policy

Real time scheduling policy, `0 = SCHED_OTHER`, `1= SCHED_RR` and
`2=SCHED_FIFO`

``` c
rt_policy= <0..3> (default 0)
```

### rt_prio

Real time priority used for everything except the timers, if `real_time`
is enabled.

``` c
rt_prio = <int> (default 0)
```

### rt_timer1_policy

**Alias name:** **rt_ftimer_policy**

Like `rt_policy` but for the "fast" timer.

``` c
rt_timer1_policy=<0..3> (default 0)
```

### rt_timer1_prio

**Alias name:** **rt_fast_timer_prio, rt_ftimer_prio**

Like `rt_prio` but for the "fast" timer process (if `real_time & 1`).

``` c
rt_timer1_prio=<int> (default 0)
```

### rt_timer2_policy

**Alias name:** **rt_stimer_policy**

Like `rt_policy` but for the "slow" timer.

``` c
rt_timer2_policy=<0..3> (default 0)
```

### rt_timer2_prio

**Alias name:** **rt_stimer_prio**

Like `rt_prio` but for the "slow" timer.

``` c
rt_timer2_prio=<int> (default 0)
```

## Core Functions

Functions exported by core that can be used in route blocks.

### add_local_rport

Add **rport** parameter to local generated Via header -- see RFC3581. In
effect for forwarded SIP requests.

Example of usage:

``` c
add_local_rport();
```

### avpflags

### break

'break' statement can be used to end a 'case' block in a 'switch'
statement or exit from a 'while' statement.

### drop

Stop the execution of the configuration script and alter the implicit
action which is done afterwards.

If the function is called in a 'branch_route' then the branch is
discarded (implicit action for 'branch_route' is to forward the
request).

If the function is called in the default 'onreply_route' then you can
drop any response. If the function is called in a named 'onreply_route'
(transaction stateful) then any provisional reply is discarded.
(Implicit action for 'onreply_route' is to send the reply upstream
according to Via header.)

Example of usage:

``` c
onreply_route {
    if(status=="200") {
        drop(); # this works
    }
}

onreply_route[FOOBAR] {
    if(status=="200") {
        drop(); # this is ignored
    }
}
```

### exit

Stop the execution of the configuration script -- it has the same
behaviour as return(0). It does not affect the implicit action to be
taken after script execution.

``` c
request_route {
    if (route(ABC)) {
    xlog("L_NOTICE","method $rm is INVITE\n");
    } else {
    xlog("L_NOTICE","method is $rm\n");
    }
}

route[ABC] {
    if (is_method("INVITE")) {
    return(1);
    } else if (is_method("REGISTER")) {
    return(-1);
    } else if (is_method("MESSAGE")) {
    sl_send_reply("403","IM not allowed");
    exit;
    }
}
```

### error

``` c
error("p1", "p2");
```

Not properly implemented yet - prints a log messages with the two string parameters.

### exec

Basic implementation of executing an external application with C `system()`
function. Look also at the functions exported by `exec` module.

``` c
exec("/path/to/app");
```

### force_rport()

The `force_rport()` adds the rport parameter to the first Via header of the
received message. Thus, Kamailio will add the received port to the top
most Via header in the SIP message, even if the client does not indicate
support for rport. This enables subsequent SIP messages to return to the
proper port later on in a SIP transaction.

This is useful for NAT traversal, to enforce symmetric response
signaling.

The rport parameter is defined in RFC 3581.

Note: there is also a `force_rport` parameter which changes the global
behavior of the SIP proxy.

Example of usage:

``` c
force_rport();
```

### add_rport

Alias for force_rport();

### force_send_socket

Force to send the message from the specified socket (it **must** be one
of the sockets specified with the `listen` directive). If the protocol
doesn't match (e.g. UDP message "forced" to a TCP socket) the closest
socket of the same protocol is used.

This function does not support pseudo-variables, use the `set_send_socket()`
function from the corex module instead.

Example of usage:

``` c
force_send_socket(10.10.10.10:5060);
force_send_socket(udp:10.10.10.10:5060);
```

### force_tcp_alias

**Alias name:** **add_tcp_alias**

`force_tcp_alias(port)`

adds a tcp port alias for the current connection (if tcp). Useful if you
want to send all the traffic to port_alias through the same connection
this request came from (it could help for firewall or nat traversal).
With no parameters adds the port from the message via as the alias. When
the "aliased" connection is closed (e.g. it's idle for too much time),
all the port aliases are removed.

### forward

Forward in stateless mode the SIP request to destination address set in `$du`
or `$ru`.

Example of usage:

``` c
$du = "sip:10.0.0.10:5060;transport=tcp";
forward();
```

### isavpflagset

### isflagset

Test if a flag is set for current processed message (if the flag value
is 1). The value of the parameter can be in range of 0..31.

For more see:

- [Kamailio - Flag Operations](../../tutorials/kamailio-flag-operations.md)

Example of usage:

``` c
if(isflagset(3)) {
    log("flag 3 is set\n");
};
```

Kamailio also supports named flags. They have to be declared at the
beginning of the config file with:

``` shell
     flags  flag1_name[:position],  flag2_name ...
```

Example:

``` c
flags test, a:1, b:2 ;
request_route {
    setflag(test);
    if (isflagset(a)){ # equiv. to isflagset(1)
        ....
    }
    resetflag(b);  # equiv. to resetflag(2)
```

### is_int

Checks if a pseudo variable argument contains integer value.

``` c
if(is_int("$avp(foobar)")) {
    log("foobar contains an integer\n");
}
```

### log

Write text message to standard error terminal or syslog. You can specify
the log level (the integer id) as first parameter.

The parameters are static values. If you want dynamic parameters with
variables, look at `xlog` module.

For more see:

- [https://www.kamailio.org/dokuwiki/doku.php/tutorials:debug-syslog-messages](https://www.kamailio.org/dokuwiki/doku.php/tutorials:debug-syslog-messages)

Example of usage:

``` c
log("just some text message\n");
log(1, "another text message\n");
```

### prefix

Add the string parameter in front of username in R-URI.

Example of usage:

``` c
prefix("00");
```

### resetavpflag

### resetflag

### return

The return() function allows you to return any integer value from a
called route() block. You can test the value returned by a route using
`$retcode` variable (which is same as `$rc` or `$?`).

`return(0)` is same as [`exit()`](#exit);

In logical evaluation expressions:

- Negative is FALSE
- Positive is TRUE

If no value is specified, it returns 1. If return is used in the top level route
is equivalent with exit `[val]`. If no `return` is at the end of the routing block,
the return code is the value of the last executed action, therefore it is highly
recommended to return an explicit value (e.g., `return(1)`) to avoid unexpected
config execution.

Example usage:

``` c
request_route {
    if (route(RET)) {
        xlog("L_NOTICE","method $rm is INVITE\n");
    } else {
        xlog("L_NOTICE","method $rm is REGISTER\n");
    };
}

route[RET] {
    if (is_method("INVITE")) {
        return(1);
    } else if (is_method("REGISTER")) {
        return(-1);
    } else {
        return(0);
    };
}
```

IMPORTANT: do not compare route block or module function execution in a condition
with the value of the return code. Next example is showing a wrong use:

``` c
request_route {
    if (route(RET) == -2) {
    xinfo("return is -2\n");
    } else {
    xinfo("return is not -2\n"); ### THIS IS GOING TO BE EXECUTED
    }
}

route[RET] {
    return -2;
}
```

See also the FAQ for how the function return code is evaluated:

- [Frequently Asked Questions](../tutorials/../../tutorials/faq/main.md#how-is-the-function-return-code-evaluated)

Note: starting with version `5.7.0-dev`, this behaviour can be changed with
`return_mode` global parameter.

### return_mode

Control the return code evaluation mode:

- 0 (default) - evaluation is like so far (negative is false, positive is true)
- 1 - propagate return value and evaluation has to be done with `>0` or `<0`, otherwise
  `value!=0` is evaluated to true no matter is negative or positive

### revert_uri

Set the R-URI to the value of the R-URI as it was when the request was
received by server (undo all changes of R-URI).

Example of usage:

``` c
      revert_uri();
```

### rewritehostport

**Alias name:** **sethostport, sethp**

Rewrite the domain part and port of the R-URI with the value of
function's parameter. Other parts of the R-URI like username and URI
parameters remain unchanged.

Example of usage:

``` c
      rewritehostport("1.2.3.4:5080");
```

### rewritehostporttrans

**Alias name:** **sethostporttrans, sethpt**

Rewrite the domain part and port of the R-URI with the value of
function's parameter. Also allows to specify the transport parameter.
Other parts of the R-URI like username and URI parameters remain
unchanged.

Example of usage:

      rewritehostporttrans("1.2.3.4:5080");

### rewritehost

**Alias name:** **sethost, seth**

Rewrite the domain part of the R-URI with the value of function's
parameter. Other parts of the R-URI like username, port and URI
parameters remain unchanged.

Example of usage:

      rewritehost("1.2.3.4");

### rewriteport

**Alias name:** **setport, setp**

Rewrites/sets the port part of the R-URI with the value of function's
parameter.

Example of usage:

      rewriteport("5070");

### rewriteuri

**Alias name:** **seturi**

Rewrite the request URI.

Example of usage:

      rewriteuri("sip:test@kamailio.org");

### rewriteuserpass

**Alias name:** **setuserpass, setup**

Rewrite the password part of the R-URI with the value of function's
parameter.

Example of usage:

      rewriteuserpass("my_secret_passwd");

### rewriteuser

**Alias name:** **setuser, setu**

Rewrite the user part of the R-URI with the value of function's
parameter.

Example of usage:

      rewriteuser("newuser");

### route()

Execute route block given in parameter. Parameter may be name of the
block or a string valued expression.

Examples of usage:

      route(REGISTER_REQUEST);
      route(@received.proto + "_proto_" + $var(route_set));

### selval

Select a value based on conditional expression.

Prototype:

``` c
selval(evalexpr, valexp1, valexpr2)
```

This is a core statement that return the 2nd parameter if the 1st
parameter is evaluated to true, or 3rd parameter if the 1st parameter is
evaluated to false. It can be considered a core function that is
equivalent of ternary condition/operator

Example:

``` c
$var(x) = selval($Ts mod 2, "true/" + $ru, "false/" + $rd);
```

The first parameter is a conditional expression, like those used for IF,
the 2nd and 3rd parameters can be expressions like those used in the
right side of assignments.

### set_advertised_address

Same as `advertised_address` but it affects only the current message. It
has priority if `advertised_address` is also set.

Example of usage:

      set_advertised_address("kamailio.org");

### set_advertised_port

Same as `advertised_port` but it affects only the current message. It
has priority over `advertised_port`.

Example of usage:

      set_advertised_port(5080);

### set_forward_no_connect

The message will be forwarded only if there is already an existing
connection to the destination. It applies only to connection oriented
protocols like TCP and TLS (TODO: SCTP), for UDP it will be ignored. The
behavior depends in which route block the function is called:

- normal request route: affects stateless forwards and tm. For tm it
    affects all the branches and the possible retransmissions (in fact
    there are no retransmission for TCP/TLS).

<!-- -->

- `onreply_route[0]` (stateless): equivalent to `set_reply_*()` (it's
    better to use `set_reply_*` though)

<!-- -->

- `onreply_route[!=0]` (tm): ignored

<!-- -->

- branch_route: affects the current branch only (all messages sent on
    this branch, like possible retransmissions and CANCELs).

<!-- -->

- onsend_route: like branch route

Example of usage:

      route {
        ...
        if (lookup()) {
          //requests to local users. They are usually behind NAT so it does not make sense to try
          //to establish a new TCP connection
          set_forward_no_connect();
          t_relay();
        }
        ...
      }

### set_forward_close

Try to close the connection (the one on which the message is sent out)
after forwarding the current message. Can be used in same route blocks
as `set_forward_no_connect()`.

Note: Use with care as you might not receive the replies anymore as the
connection is closed.

### set_reply_no_connect

Like `set_forward_no_connect()`, but for replies to the current message
(local generated replies and replies forwarded by tm). The behavior
depends in which route block the function is called:

- normal request route: affects all replies sent back on the
  transaction (either local or forwarded) and all local stateless
  replies (`sl_reply()`).

<!-- -->

- `onreply_route`: affects the current reply (so the send_flags set in
    the `onreply_route` will be used if the reply for which they were set
    is the winning final reply or it's a provisional reply that is
    forwarded)

<!-- -->

- branch_route: ignored.

<!-- -->

- onsend_route: ignored

Example of usage:

``` c
      route[4] {
        //requests from local users. There are usually behind NAT so it does not make sense to try
        //to establish a new TCP connection for the replies
        set_reply_no_connect();
        // do authentication and call routing
        ...
      }
```

### set_reply_close

Like `set_reply_no_connect`, but closes the TCP connection after sending.
Can be used in same route blocks as `set_reply_no_connect`.

Example of usage:

``` c
      route {
        ...
        if (...caller-is-not-registered...) {
          // reject unregistered client
          // if request was received via TCP/TLS close the connection, as
          // this may trigger re-registration of the client.
          set_reply_close();
          sl_send_reply("403","REGISTER first");
          exit;
        }
        ...
      }
```

### setavpflag

### setflag

Set a flag for current processed message. The value of the parameter can
be in range of 0..31. The flags are used to mark the message for special
processing (e.g., accounting) or to keep some state (e.g., message
authenticated).

For more see:

- [Kamailio - Flag Operations](../../tutorials/kamailio-flag-operations.md)

Example of usage:

      setflag(3);

### strip

Strip the first N-th characters from username of R-URI (N is the value
of the parameter).

Example of usage:

      strip(3);

### strip_tail

Strip the last N-th characters from username of R-URI (N is the value of
the parameter).

Example of usage:

    strip_tail(3);

### udp_mtu_try_proto(proto)

- proto - `TCP|TLS|SCTP|UDP` - like `udp_mtu_try_proto` global
  parameter but works on a per packet basis and not globally.

Example:

    if($rd=="10.10.10.10")
        udp_mtu_try_proto(SCTP);

### userphone

Add `user=phone` parameter to R-URI.

## Custom Global Parameters

These are parameters that can be defined by the writer of kamailio.cfg
in order to be used inside routing blocks. One of the important
properties for custom global parameters is that their value can be
changed at runtime via RPC commands, without restarting Kamailio.

The definition of a custom global parameter must follow the pattern:

    group.variable = value desc "description"

The value can be a quoted string or integer number.

Example:

``` c
pstn.gw_ip = "1.2.3.4" desc "PSTN GW Address"
```

The custom global parameter can be accessed inside a routing block via:

    $sel(cfg_get.group.variable)

Example:

``` c
$ru = "sip:" + $rU + "@" + $sel(cfg_get.pstn.gw_ip);
```

**Note:** Some words cannot be used as (part of) names for custom
variables or groups, and if they are used a syntax error is logged by
kamailio. Among these keywords: "yes", "true", "on", "enable", "no",
"false", "off", "disable", "udp", "UDP", "tcp", "TCP", "tls", "TLS",
"sctp", "SCTP", "ws", "WS", "wss", "WSS", "inet", "INET", "inet6",
"INET6", "sslv23", "SSLv23", "SSLV23", "sslv2", "SSLv2", "SSLV2",
"sslv3", "SSLv3", "SSLV3", "tlsv1", "TLSv1", "TLSV1"

## Routing Blocks

The routing blocks are the parts of the configuration file executed by
kamailio at runtime. They can be seen as blocks of actions similar to
functions (or procedures) from common programming languages.

A routing block is identified by a specific token, followed by a name in
between square brackets and actions in between curly braces.

``` c
route_block_id[NAME] {
  ACTIONS
}
```

The name can be any alphanumeric string, with specific routing blocks
enforcing a particular format.

🔥**IMPORTANT**: Note: `route(number)` is equivalent to `route("number")`.

Route blocks can be executed on network events (e.g., receiving a SIP
message), timer events (e.g., retransmission timeout) or particular
events specific to modules.

There can be so called sub-route blocks, which can be invoked from
another route blocks, like a function. Invocation is done with `route`
followed by the name of sub-route to execute, enclosed in between
parentheses.

Example:

``` c
  request_route{
    ...
    route("test");
    ...
  }

  route["test"]{
    ...
  }
```

### request_route

Request routing block - is executed for each SIP request.

It contains a set of actions to be executed for SIP requests received
from the network. It is the equivalent of `main()` function for
handling the SIP requests.

🔥**IMPORTANT**: For backward compatibility reasons, the main request
`route` block can be identified by `route{...}` or
`route[0]{...}`'.

The implicit action after execution of the main route block is to drop
the SIP request. To send a reply or forward the request, explicit
actions (e.g., sl_send_reply(), forward(), t_relay()) must be called
inside the route block.

Example of usage:

``` c
    request_route {
         if(is_method("OPTIONS")) {
            # send reply for each options request
            sl_send_reply("200", "ok");
            exit();
         }
         route(FWD);
    }
    route[FWD] {
         # forward according to uri
         forward();
    }
```

### route block

This block is used to define 'sub-routes' - group of actions that can be
executed from another routing block. Originally targeted as being
executed from 'request_route', it can be executed now from all the other
blocks. Be sure you put there the actions valid for the root routing
block executing the sub-route.

The definition of the sub-route block follows the general rules, with a
name in between square brackets and actions between curly braces. A
sub-route can return an integer value back to the routing block that
executed it. The return code can be retrieved via $rc variables.

Evaluation of the return of a subroute is done with following rules:

- negative value is evaluated as false
- 0 - is interpreted as **exit**
- positive value is evaluated as true

``` c
request_route {
  if(route(POSITIVE)) {
    xlog("return number is positive\n");
  }
  if( ! route(NEGATIVE)) {
    xlog("return number is negative\n");
  }
  if( route(ZERO)) {
    xlog("this log message does not appear\n");
  }
}

route[POSITIVE] {
  return 10;
}

route[NEGATIVE] {
  return -8;
}

route[ZERO] {
  return 0;
}
```

A sub-route can execute another sub-route. There is a limit to the
number of recursive levels, avoiding ending up in infinite loops -- see
**max_recursive_level** global parameter.

The sub-route blocks allow to make the configuration file modular,
simplifying the logic and helping to avoid duplication of actions.

If no `return` is at the end of the routing block, the return code is the value
of the last executed action, therefore it is highly recommended to return an
explicit value (e.g., `return(1)`) to avoid unexpected config execution.

### branch_route

Request's branch routing block. It contains a set of actions to be taken
for each branch of a SIP request. It is executed only by TM module after
it was armed via `t_on_branch("branch_route_index")`.

Example of usage:

``` c
    request_route {
        lookup("location");
        t_on_branch("OUT");
        if(!t_relay()) {
            sl_send_reply("500", "relaying failed");
        }
    }
    branch_route[OUT] {
        if(uri=~"10\.10\.10\.10") {
            # discard branches that go to 10.10.10.10
            drop();
        }
    }
```

### failure_route

Failed transaction routing block. It contains a set of actions to be
taken each transaction that received only negative replies (`>=300`) for
all branches. The `failure_route` is executed only by TM module after it
was armed via `t_on_failure("failure_route_index")`.

Note that in `failure_route` is processed the request that initiated the
transaction, not the reply .

Example of usage:

``` c
    request_route {
        lookup("location");
        t_on_failure("TOVOICEMAIL");
        if(!t_relay()) {
            sl_send_reply("500", "relaying failed");
        }
    }
    failure_route[TOVOICEMAIL] {
        if(is_method("INVITE")) {
             # call failed - relay to voice mail
             t_relay_to_udp("voicemail.server.com","5060");
        }
    }
```

### reply_route

Main SIP response (reply) handling block - it contains a set of actions
to be executed for SIP replies. It is executed for all replies received
from the network.

It does not have a name and it is executed by the core, before any other
module handling the SIP reply. It is triggered only by SIP replies
received on the network.

There is no network route that can be enforced for a SIP reply - it is
sent based on Via header, according to SIP RFC3261 - therefore no
dedicated actions for forwarding the reply must be used in this block.

This routing block is optional, if missing, the SIP reply is sent to the
address in 2nd Via header.

One can decide to drop a SIP reply by using **drop** action.

Example:

``` c
reply_route {
  if(status=="128") {
    drop;
  }
}
```

🔥**IMPORTANT**: Note: In reply_route, if the last executed function fails, the SIP response processing is considered unsuccessful, and kamailio will not relay the reply. To ensure proper relay of the SIP response, make sure the last command in reply_route is either a **successful** function or a **return** statement.

🔥**IMPORTANT**: Note: for backward compatibility reasons, the main `reply`
routing block can be also identified by `onreply_route {...}` or
`onreply_route[0] {...}`.

### onreply_route

SIP reply routing block executed by **tm** module. It contains a set of
actions to be taken for SIP replies in the context of an active
transaction.

The `onreply_route` must be armed for the SIP requests whose replies
should be processed within it, via `t_on_reply`("`onreply_route_index`").

Core 'reply_route' block is executed before a possible **tm**
'onreply_route' block.

``` c
  request_route {
      lookup("location");
      t_on_reply("LOGRPL");
      if(!t_relay()) {
          sl_send_reply("500", "relaying failed");
      }
  }

  reply_route {
      if(!t_check_trans()) {
          drop;
      }
  }

  onreply_route[LOGRPL] {
      if(status=~"1[0-9][0-9]") {
           log("provisional response\n");
      }
  }
```

### onsend_route

The route is executed in when a SIP request is sent out. Only a limited
number of commands are allowed (`drop`, `if` + all the checks, msg flag
manipulations, `send()`, `log()`, `textops::search()`).

In this route the final destination of the message is available and can
be checked (with `snd_ip`, `snd_port`, `to_ip`, `to_port`, `snd_proto`, `snd_af`).

This route is executed only when forwarding requests - it is not
executed for replies, retransmissions, or locally generated messages
(e.g. via fifo uac).

Example:

``` c
  onsend_route {
    if(to_ip==1.2.3.4 && !isflagset(12)){
      log(1, "message blocked\n");
      drop;
    }
  }
```

- snd_ip, snd_port - behave like src_ip/src_port, but contain the
  ip/port Kamailio will use to send the message
- to_ip, to_port - like above, but contain the ip/port the message
  will be sent to (not to be confused with dst_ip/dst_port, which are
  the destination of the original received request: Kamailio's ip and
  port on which the message was received)
- snd_proto, snd_af - behave like proto/af but contain the
  protocol/address family that Kamailio will use to send the message
- msg:len - when used in an onsend_route, msg:len will contain the
  length of the message on the wire (after all the changes in the
  script are applied, Vias are added a.s.o) and not the lentgh of the
  original message.

### event_route

Generic type of route executed when specific events happen.

Prototype: `event_route[groupid:eventid]`

- groupid - should be the name of the module that triggers the event
- eventid - some meaningful short text describing the event

#### Core Event Routes

Implementations:

- `event_route[core:worker-one-init]` - executed by core after the
  first udp sip worker process executed the child_init() for all
  modules, before starting to process sip traffic
  * note that due to forking, other sip workers can get faster to
    listening for sip traffic

``` c
event_route[core:worker-one-init] {
        xlog("L_INFO","Hello world\n");
}
```

- `event_route[core:msg-received]` - executed when a message is
  received from the network. It runs with a faked request and makes
  available the $rcv(key) variables to access what was received and
  related attribtues.
  * it has to be enabled with received_route_mode global parameter.
    For usage via Kemi, set kemi.received_route_callback global
    parameter.
  * if drop is executed, the received message is no longer processed

``` c
event_route[core:msg-received] {
  xlog("rcv on $rcv(af)/$rcv(proto): ($rcv(len)) [$rcv(buf)] from [$rcv(srcip):$rcv(srcport)] to [$rcv(rcvip):$rcv(rcvport)]\n");
  if($rcv(srcip) == "1.2.3.4") {
    drop;
  }
}
```

- `event_route[core:pre-routing]` - executed by core on receiving
  SIP traffic before running request_route or reply_route.
  * if drop is used, then the message is not processed further with
    request_route or reply_route in the same process. This can be
    useful together with sworker module which can delegate the
    processing to another worker.

``` c
async_workers_group="name=reg;workers=4"
...
event_route[core:pre-routing] {
    xinfo("pre-routing rules\n");
    if(is_method("REGISTER")) {
        # delegate processing of REGISTERs to a special group of workers
        if(sworker_task("reg")) {
            drop;
        }
    }
}
```

- `event_route[core:receive-parse-error]` - executed by core
  on receiving a broken SIP message that can not be parsed.
  * note that the SIP message is broken in this case, but it gets
    access to source and local socket addresses (ip, port, proto,
    af) as well as the whole message buffer and its size

``` c
event_route[core:receive-parse-error] {
        xlog("got a parsing error from $si:$sp, message $mb\n");
}

```

- `event_route[core:modinit-before]` - executed by core before the
  module-init callbacks are run:

``` c
event_route[core:modinit-before] {
    $shv(x) = 0;
}
```

- `event_route[core:tkv]` - executed by core for events emitted with a
type-key-value (mostly for catching error cases):

``` c
async_workers_group="name=tkv;workers=1;nonblock=0;usleep=0"
async_tkv_gname = "tkv"
async_tkv_evcb = "core:tkv"

event_route[core:tkv] {
    xlog("$atkv(type) / $atkv(key) / $atkv(val)\n");
}
```

The event route is executed in an async worker process.

#### Module Event Routes

Here are only a few examples, to see if a module exports event_route
blocks and when they are executed, check the readme of the module.

- `event_route[htable:mod-init]` - executed by **htable** module
    after all modules have been initialised. Good for initialising
    values in hash tables.

``` c
modparam("htable", "htable", "a=>size=4;")

event_route[htable:mod-init] {
  $sht(a=>calls-to::10.10.10.10) = 0;
  $sht(a=>max-calls-to::10.10.10.10) = 100;
}

request_route {
  if(is_method("INVITE") && !has_totag())
  {
    switch($rd) {
      case "10.10.10.10":
        lock("calls-to::10.10.10.10");
        $sht(a=>calls-to::10.10.10.10) =
            $sht(a=>calls-to::10.10.10.10) + 1;
        unlock("calls-to::10.10.10.10");
        if($sht(a=>calls-to::10.10.10.10)>$sht(a=>max-calls-to::10.10.10.10))
        {
           sl_send_reply("500", "To many calls to .10");
           exit;
        }
      break;
      ...
    }
  }
}
```

- `event_route[tm:local-request]` - executed on locally generated
    requests.

``` c
event_route [tm:local-request] { # Handle locally generated requests
  xlog("L_INFO", "Routing locally generated $rm to <$ru>\n");
  t_set_fr(10000, 10000);
}
```

- `event_route[tm:branch-failure]` - executed on all failure
    responses.

``` c
request_route {
    ...
    t_on_branch_failure("myroute");
    t_relay();
}

event_route[tm:branch-failure:myroute] {
  xlog("L_INFO", "Handling $T_reply_code response to $rm to <$ru>\n");
  if (t_check_status("430")) { # Outbound flow failed
    unregister("location", "$tu", "$T_reply_ruid");
    if (t_next_contact_flow()) {
      t_relay();
    }
  }
}
```

## Compatibility Modes

With the merge of source trees from `Kamailio` and `SER` in 2008, there were
some different behaviours in various module parameters and functions. To control
the behaviour, the compatibility mode can be specified with `#!KAMAILIO` or
`#!SER` at the beginning (first line) of the configuration file.

The default mode is `#!KAMAILIO`.

The parameters and functions that behave differently should have a note in their
documentation.

Note: the first line having `#!KAMAILIO` is also used to set the file type by
extenssions in editors like `vim`, `vscode`, `atom`, `mcedit` or `emacs`.

## Script Statements

### if

IF-ELSE statement

Prototype:

``` c
    if(expr) {
       actions;
    } else {
       actions;
    }
```

The `expr` should be a valid logical expression.

The logical operators that can be used in `expr`:

- `==`:      equal
- `!=`:      not equal
- `=~`:      case-insensitive regular expression matching: Note: Posix regular expressions will be used, e.g. use `[[:digit:]]{3}` instead of `\d\d\d`
- `!~`:      regular expression not-matching (NOT PORTED from Kamailio 1.x, use `!(x =~ y)`)
- `>`:       greater
- `>=`:      greater or equal
- `<`:       less
- `<=`:      less or equal
- `&&`:      logical AND
- `||`:      logical OR
- `!`:       logical NOT

Example of usage:

``` c
      if(is_method("INVITE"))
      {
          log("this sip message is an invite\n");
      } else {
          log("this sip message is not an invite\n");
      }
```

See also the FAQ for how the function return code is evaluated:

- [How is the function code evaluated](../../tutorials/faq/main.md#how-is-the-function-return-code-evaluated)

### switch

SWITCH statement - it can be used to test the value of a pseudo-variable.

NOTE: `break` can be used only to mark the end of a `case`
branch (as it is in shell scripts).

Example of usage:

``` c
    request_route {
        route(1);
        switch($retcode)
        {
            case -1:
                log("process INVITE requests here\n");
            break;
            case 1:
                log("process REGISTER requests here\n");
            break;
            case 2:
            case 3:
                log("process SUBSCRIBE and NOTIFY requests here\n");
            break;
            default:
                log("process other requests here\n");
        }

        # switch of R-URI username
        switch($rU)
        {
            case "101":
                log("destination number is 101\n");
            break;
            case "102":
                log("destination number is 102\n");
            break;
            case "103":
            case "104":
                log("destination number is 103 or 104\n");
            break;
            # cases with starting slash are regular expressions
            case /"\+49.*":
                log("destination number is germany\n");
            break;
            case /"\+33.*":
                log("destination number is france\n");
            break;
            default:
                log("unknown destination number\n");
        }
    }

    route[1] {
        if(is_method("INVITE"))
        {
            return(-1);
        };
        if(is_method("REGISTER"))
            return(1);
        }
        if(is_method("SUBSCRIBE"))
            return(2);
        }
        if(is_method("NOTIFY"))
            return(3);
        }
        return(-2);
    }
```

NOTE: take care while using `return` - `return(0)` stops the execution
of the script.

### while

while statement - conditional loop

Example of usage:

``` c
    $var(i) = 0;
    while($var(i) < 10)
    {
        xlog("counter: $var(i)\n");
        $var(i) = $var(i) + 1;
    }
```

## Script Operations

Assignments together with string and arithmetic operations can be done
directly in configuration file.

### Assignment

Assignments can be done like in C, via `=` (equal). Among the
pseudo-variables that can be used in left side of an assignment:

- Unordered List Item AVPs - to set the value of an AVP
- script variables `($var(...))` - to set the value of a script variable
- shared variables (`$shv(...)`)
- `$ru` - to set R-URI
- `$rd` - to set domain part of R-URI
- `$rU` - to set user part of R-URI
- `$rp` - to set the port of R-URI
- `$du` - to set dst URI
- `$fs` - to set send socket
- `$br` - to set branch
- `$mf` - to set message flags value
- `$sf` - to set script flags value
- `$bf` - to set branch flags value

    $var(a) = 123;

For avp's there a way to remove all values and assign a single value in
one statement (in other words, delete existing AVPs with same name, add
a new one with the right side value). This replaces the `:=` assignment
operator from kamailio `< 3.0`.

``` c
    $(avp(i:3)[*]) = 123;
    $(avp(i:3)[*]) = $null;
```

### String Operations

For strings, `+` is available to concatenate.

``` c
    $var(a) = "test";
    $var(b) = "sip:" + $var(a) + "@" + $fd;
```

### Arithmetic Operations

For numbers, one can use:

- `+` : plus
- `-` : minus
- `/` : divide
- `*` : multiply
- `mod` : modulo (SER uses `%` instead of `mod`)
- `|` : bitwise OR
- `&` : bitwise AND
- `^` : bitwise XOR
- `~` : bitwise NOT
- `<<` : bitwise left shift
- `>>` : bitwise right shift

Example:

``` c
$var(a) = 4 + ( 7 & ( ~2 ) );
```

NOTE: to ensure the priority of operands in expression evaluations do
use **parenthesis**.

Arithmetic expressions can be used in condition expressions.

``` c
if( $var(a) & 4 )
    log("var a has third bit set\n");
```

## Operators

1. type casts operators: `(int)`, `(str)`.
2. string comparison: `eq`, `ne`
3. integer comparison: `ieq`, `ine`

Note: The names are not yet final (use them at your own risk). Future
version might use `==`/`!=` only for ints (`ieq/ine`) and `eq/ne` for strings
(under debate). They are almost equivalent to `==` or `!=`, but they force
the conversion of their operands (`eq` to string and `ieq` to int), allowing
among other things better type checking on startup and more
optimizations.

Non equivalent examples:

`0 == ""` (true) is not equivalent to `0 eq ""` (false: it evaluates to `"0" eq ""`).

`"a" ieq "b"` (true: `(int)"a" is 0` and `(int)"b" is 0`) is not equivalent to `"a" == "b"` (false).

Note: internally `==` and `!=` are converted on startup to `eq/ne/ieq/ine`
whenever possible (both operand types can be safely determined at start
time and they are the same).

- Kamailio tries to guess what the user wanted when operators that
  support multiple types are used on different typed operands. In
  general convert the right operand to the type of the left operand
  and then perform the operation. Exception: the left operand is
  undef. This applies to the following operators: `+`, `==` and `!=`.

- Special case: undef as left operand:
  For `+`: `undef + expr` -> `undef` is converted to string => "" + expr.
  For `==` and `!=`:   `undef == expr` -> `undef` is converted to type_of expr.
  If `expr` is `undef`, then `undef == undef` is `true` (internally is converted
  to string).

- expression evaluation changes: Kamailio will auto-convert to integer
  or string in function of the operators:

``` c
    int(undef)==0,  int("")==0, int("123")==123, int("abc")==0
    str(undef)=="", str(123)=="123"
```

- `defined expr` - returns true if expr is defined, and false if not.
  Note: only a standalone avp or pvar can be
  undefined, everything else is defined.
- `strlen(expr)` - returns the lenght of expr evaluated as string.
- `strempty(expr)` - returns true if expr evaluates to the empty
  string (equivalent to expr=="").
  Example: `if (defined $v && !strempty($v)) $len=strlen($v);`

## Command Line Parameters

Kamailio can be started with a set of command line parameters, providing
more flexibility to control what is doing at runtime. Some of them can
be quite useful when running on containerised environments.

To see the the available command line parameters, run **kamailio -h**:

``` c
~# kamailio -h

version: kamailio 5.8.3 (aarch64/linux) be1fe9
Usage: kamailio [options]
Options:
    -a mode      Auto aliases mode: enable with yes or on,
                  disable with no or off
    --alias=val  Add an alias, the value has to be '[proto:]hostname[:port]'
                  (like for 'alias' global parameter)
    --atexit=val Control atexit callbacks execution from external libraries
                  which may access destroyed shm memory causing crash on shutdown.
                  Can be y[es] or 1 to enable atexit callbacks, n[o] or 0 to disable,
                  default is no.
    -A define    Add config pre-processor define (e.g., -A WITH_AUTH,
                  -A 'FLT_ACC=1', -A 'DEFVAL="str-val"')
    -b nr        Maximum OS UDP receive buffer size which will not be exceeded by
                  auto-probing-and-increase procedure even if OS allows
    -B nr        Maximum OS UDP send buffer size which will not be exceeded by
                  auto-probing-and-increase procedure even if OS allows
    -c           Check configuration file for syntax errors
    --cfg-print  Print configuration file evaluating includes and ifdefs
    -d           Debugging level control (multiple -d to increase the level from 0)
    --debug=val  Debugging level value
    -D           Control how daemonize is done:
                  -D..do not fork (almost) anyway;
                  -DD..do not daemonize creator;
                  -DDD..daemonize (default)
    -e           Log messages printed in terminal colors (requires -E)
    -E           Log to stderr
    -f file      Configuration file (default: /usr/local/etc/kamailio/kamailio.cfg)
    -g gid       Change gid (group id)
    -G file      Create a pgid file
    -h           This help message
    --help       Long option for `-h`
    -I           Print more internal compile flags and options
    -K           Turn on "via:" host checking when forwarding replies
    -l address   Listen on the specified address/interface (multiple -l
                  mean listening on more addresses). The address format is
                  [proto:]addr_lst[:port][/advaddr],
                  where proto=udp|tcp|tls|sctp,
                  addr_lst= addr|(addr, addr_lst),
                  addr=host|ip_address|interface_name and
                  advaddr=addr[:port] (advertised address).
                  E.g: -l localhost, -l udp:127.0.0.1:5080, -l eth0:5062,
                  -l udp:127.0.0.1:5080/1.2.3.4:5060,
                  -l "sctp:(eth0)", -l "(eth0, eth1, 127.0.0.1):5065".
                  The default behaviour is to listen on all the interfaces.
    --loadmodule=name load the module specified by name
    --log-engine=log engine name and data
    -L path      Modules search path (default: /usr/local/lib64/kamailio/modules)
    -m nr        Size of shared memory allocated in Megabytes
    --modparam=modname:paramname:type:value set the module parameter
                  type has to be 's' for string value and 'i' for int value,
                  example: --modparam=corex:alias_subdomains:s:kamailio.org
    --all-errors Print details about all config errors that can be detected
    -M nr        Size of private memory allocated, in Megabytes
    -n processes Number of child processes to fork per interface
                  (default: 8)
    -N           Number of tcp child processes (default: equal to `-n')
    -O nr        Script optimization level (debugging option)
    -P file      Create a pid file
    -Q           Number of sctp child processes (default: equal to `-n')
    -r           Use dns to check if is necessary to add a "received="
                  field to a via
    -R           Same as `-r` but use reverse dns;
                  (to use both use `-rR`)
    --server-id=num set the value for server_id
    --subst=exp set a subst preprocessor directive
    --substdef=exp set a substdef preprocessor directive
    --substdefs=exp set a substdefs preprocessor directive
    -S           disable sctp
    -t dir       Chroot to "dir"
    -T           Disable tcp
    -u uid       Change uid (user id)
    -v           Version number
    --version    Long option for `-v`
    -V           Alternative for `-v`
    -x name      Specify internal manager for shared memory (shm)
                  - can be: fm, qm or tlsf
    -X name      Specify internal manager for private memory (pkg)
                  - if omitted, the one for shm is used
    -Y dir       Runtime dir path
    -w dir       Change the working directory to "dir" (default: "/")
    -W type      poll method (depending on support in OS, it can be: poll,
                  epoll_lt, epoll_et, sigio_rt, select, kqueue, /dev/poll)
```

### Log Engine CLI Parameter

The **--log-engine** parameter allows to specify what logging engine to
be used, which is practically about the format of the log messages. If
not set at all, then Kamailio does the classic style of line-based plain
text log messages.

The value of this parameter can be **--log-engine=name** or
**--log-engine=name:data**.

The name of the log engine can be:

- **json** - write logs in structured JSON format
  * the **data** for **json** log engine can be a set of character
        flags:
    + **a** - add log prefix as a special field
    + **A** - do not add log prefix
    + **c** - add Call-ID (when available) as a dedicated JSON attribute
    + **j** - the log prefix and message fields are printed in
      JSON structure format, detecting if they are enclosed in
      between **{ }** or adding them as a **text** field
    + **M** - strip EOL (`\n`) from the value of the log message field
    + **N** - do not add EOL at the end of JSON document
    + **p** - the log prefix is printed as it is in the root json
      document, it has to start with comma (**,**) and be a valid
      set of json fields
    + **U** - CEE (Common Event Expression) schema format -
      [https://cee.mitre.org/language/1.0-beta1/core-profile.html](https://cee.mitre.org/language/1.0-beta1/core-profile.html)

Example of JSON logs when running Kamailio with `--log-engine=json:M` :

``` c
    { "idx": 1, "pid": 18239, "level": "DEBUG", "module": "maxfwd", "file": "mf_funcs.c", "line": 74, "function": "is_maxfwd_present", "logprefix": "{1 1 OPTIONS 715678756@192.168.188.20} ", "message": "value = 70 " }

    { "idx": 1, "pid": 18239, "level": "DEBUG", "module": "core", "file": "core/socket_info.c", "line": 644, "function": "grep_sock_info", "logprefix": "{1 1 OPTIONS 715678756@192.168.188.20} ", "message": "checking if host==us: 9==9 && [127.0.0.1] == [127.0.0.1]" }
```

Example config for printing log message with `j` flag:

``` c
xinfo("{ \"src_ip\": \"$si\", \"method\": \"$rm\", \"text\": \"request received\" }");
```

Example config for printing log messages with `p` flag:

``` c
log_prefix=", \"src_ip\": \"$si\", \"tv\": $TV(Sn), \"mt\": $mt, \"ua\": \"$(ua{s.escape.common})\", \"cseq\": \"$hdr(CSeq)\""
```
