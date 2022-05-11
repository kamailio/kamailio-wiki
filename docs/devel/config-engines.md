# Configuration File Engines

Kamailio implements from scratch the interpreter for its configuration
file native scripting language (used inside kamailio.cfg).

Starting with v5.0.0, the routing blocks can be written in some other
(well known) scripting languages and run via their embedded interpreters
inside Kamailio. Known to work:

-   JavaScript - implemented by app_jsdt module, as "jsdt" config engine
-   Lua - implemented by app_lua module, as "lua" config engine
-   Python - implemented by app_python module, as "python" config engine

Setting a configuration engine can be done with the global setting:

``` c
cfgengine = "name"
```

If the name is "native" or "default", then is own language interpreter
will be used (this is same behaviour as when cfgengine is not set at
all).

This setting must be after loading the module that implements the
engine. For example:

``` c
...
loadmodule "app_lua.so"
...
cfgengine = "lua"
...
```

The aim is that the runtime active part of kamailio.cfg (the routing
blocks) to be implemented in an embedded scripting language. Core
parameters, loading modules and modules parameters will still be set via
kamailio.cfg.

Among benefits of using different scripting languages:

-   ability to benefit from what a well established language already
    provides:
    -   more people are expected to be familiar with
    -   an extended set of data types, expressions and statements
        already available
    -   a large set of extensions and libraries already available
    -   good documentation about language itself and its extensions
-   reload the SIP routing logic without restarting Kamailio
    (implemented for Lua)

Internally, the support for implementing routing logic in an embedded
language is codenamed **KEMI** - Kamailio EMbedded Interface.

## Exporting Functions To KEMI

Because Kamailio needs to load modules in order to export useful
functions to KEMI, statical wrappers to C functions implemented in other
modules cannot be used, because they will introduce dependencies on each
embedded interpreter for all modules.

The implementation relies on defining a set of generic functions that
are exported to each embedded interpreter, which are associated at
startup with a Kamailio C functions. The lookup at runtime is by an
integer index, therefore very fast.

Currently the association table size is 1024 (it means that there can be
maximum 1024 Kamailio C functions exported to the interpreter by a
configuration file). The number can be increased, but it should be
fairly enough as all kamailio.cfg functions are around 1000 and it is no
real use case to load all the modules at the same time for use in
production. Also, many functions may not be exported to an embedded
language, as they have native alternative in the embedded language.

Each existing component of Kamailio (e.g., module), can export new
functions to KEMI in the following way:

-   declare an array of type sr_kemi_t
-   register it to KEMI in mod_register() function (or at startup for
    core components) using sr_kemi_modules_add()

The structure sr_kemi_t is declared in Kamailio core, the file kemi.h:

``` c
#define SR_KEMI_PARAMS_MAX  6

typedef struct sr_kemi {
    str mname; /* sub-module name */
    str fname; /* function name */
    int rtype; /* return type (supported SR_KEMIP_INT/BOOL) */
    void *func; /* pointer to the C function to be executed */
    int ptypes[SR_KEMI_PARAMS_MAX]; /* array with the type of parameters */
} sr_kemi_t;

```

Next C code snippet shows how **sl** module exports two functions:

-   C function sl_send_reply_str(...) is exported as sl.sreply(...)
-   C function send_reply(...) is exported as sl.freply(...)

``` c
static sr_kemi_t sl_kemi_exports[] = {
    { str_init("sl"), str_init("sreply"),
        SR_KEMIP_INT, sl_send_reply_str,
        { SR_KEMIP_INT, SR_KEMIP_STR, SR_KEMIP_NONE,
            SR_KEMIP_NONE, SR_KEMIP_NONE, SR_KEMIP_NONE }
    },
    { str_init("sl"), str_init("freply"),
        SR_KEMIP_INT, send_reply,
        { SR_KEMIP_INT, SR_KEMIP_STR, SR_KEMIP_NONE,
            SR_KEMIP_NONE, SR_KEMIP_NONE, SR_KEMIP_NONE }
    },

    { {0, 0}, {0, 0}, 0, NULL, { 0, 0, 0, 0, 0, 0 } }
};

int mod_register(char *path, int *dlflags, void *p1, void *p2)
{
    sr_kemi_modules_add(sl_kemi_exports);
    return 0;
}
```

Note that the exported array is ended by a sentinel of 0/NULL values for
all fields.

Exported functions must take first parameter as 'sip_msg_t\*' type
(which is the structure with the SIP message being processed), then
followed by up to 6 int or str\* parameters. When SR_KEMIP_NONE is given
in the array with the types of parameters, it means there is no
parameter from there on (some compilers may rise warning, so it is
recommended to fill all 6 items in array).

The functions exported by Kamailio core are listed inside the array
**\_sr_kemi_core** from the file **kemi.c**.

Not all combinations of extra (after sip_msg_t\*) parameters types are
supported right now - currently the are:

-   1 param - can be int of str\*
-   2 params - any combination of int or str\*
-   3 params - any combination of int or str\*
-   4 params - all have to be str\* (other combinations to be added as
    needed)
-   5 params - all have to be str\* (other combinations to be added as
    needed)
-   6 params - all have to be str\* (other combinations to be added as
    needed)

## Lua Config KEMI Engine

The **app_lua** module must be loaded and the Lua script with routing
logic must be set to its **load** parameter.

Inside the Lua script, following functions are relevant:

-   **ksr_request_route()** - is executed by Kamailio core every time a
    SIP request is received. If this function is not defined, then
    Kamailio will write error messages. This is equivalent of
    request_route {} from kamailio.cfg.
-   **ksr_reply_route()** - is executed by Kamailio core every time a
    SIP Response (reply) is received. If this function is not defined,
    then Kamailio will not write error messages. This is equivalent of
    reply_route {} from kamailio.cfg.
-   **ksr_onsend_route()** - is executed by Kamailio core every time a
    SIP request (and optionally for a response) is sent out. If this
    function is not defined, then Kamailio will not write error
    messages. This is equivalent of onsend_route {} from kamailio.cfg.
-   branch route callback - the name of the Lua function to be executed
    instead of a branch route has to be provided as parameter to
    KSR.tm.t_on_branch(...)
-   onreply route callback - the name of the Lua function to be executed
    instead of an onreply route has to be provided as parameter to
    KSR.tm.t_on_reply(...)
-   failure route callback - the name of the Lua function to be executed
    instead of a failure route has to be provided as parameter to
    KSR.tm.t_on_failure(...)
-   branch failure route callback - the name of the Lua function to be
    executed instead of an event route for branch failure has to be
    provided as parameter to KSR.tm.t_on_branch_failure(...)
-   TBD: the options for specific event_route blocks. Meanwhile, should
    work using hybrid configuration with request_route/reply_route/...
    in embedded interpreter and the other routing blocks in native
    kamailio.cfg.

The following objects are available inside the Lua script:

-   **sr** - provided by the old way of exporting functions to Lua
    (<https://www.kamailio.org/wiki/embeddedapi/devel/lua>)
-   **KSR** - provided via KEMI interface. The functions exported to
    KEMI are accessible as KSR.submodule.function(...). If submodule
    name is empty (reserved for core functions), then they are available
    as KSR.function(...).

### Lua Embedded Config Example

The kamailio.cfg with global/core and module settings:

``` c
#!KAMAILIO


debug=3
log_stderror=yes
fork=yes
children=2

memdbg=5
memlog=5

auto_aliases=no

listen=udp:127.0.0.1:5060

mpath="modules"

loadmodule "mi_fifo.so"
loadmodule "kex.so"
loadmodule "tm.so"
loadmodule "tmx.so"
loadmodule "sl.so"
loadmodule "pv.so"
loadmodule "maxfwd.so"
loadmodule "textops.so"
loadmodule "xlog.so"
loadmodule "ctl.so"
loadmodule "mi_rpc.so"
loadmodule "debugger.so"
loadmodule "app_lua.so"

# ----------------- setting module-specific parameters ---------------

# ----- mi_fifo params -----
modparam("mi_fifo", "fifo_name", "/var/run/kamailio/kamailio_fifo")


# ----- tm params -----
# auto-discard branches from previous serial forking leg
modparam("tm", "failure_reply_mode", 3)
# default retransmission timeout: 30sec
modparam("tm", "fr_timer", 30000)
# default invite retransmission timeout after 1xx: 120sec
modparam("tm", "fr_inv_timer", 120000)

# ----- debugger params -----
modparam("debugger", "cfgtrace", 1)

####### Routing Logic ########

modparam("app_lua", "load", "/etc/kamailio/kamailio.lua")
modparam("app_lua", "register", "maxfwd")
modparam("app_lua", "register", "sl")

cfgengine "lua"
```

The **/etc/kamailio/kamailio.lua** with the routing logic for runtime:

``` lua
-- Kamailio - equivalent of routing blocks in Lua
-- KSR - the new dynamic object exporting Kamailio functions
-- sr - the old static object exporting Kamailio functions
--
-- SIP request routing
-- equivalent of request_route{}
function ksr_request_route()
    KSR.info("===== request - from kamailio lua script\n");

    if sr.maxfwd.process_maxfwd(10) < 0 then
        KSR.sl.send_reply(483, "Too Many Hops");
        return;
    end

    -- KSR.sl.sreply(200, "OK Lua");

    sr.pv.sets("$du", "sip:127.0.0.1:5080")
    KSR.tm.t_on_branch("ksr_branch_route_one");
    KSR.tm.t_on_reply("ksr_onreply_route_one");
    KSR.tm.t_on_failure("ksr_failure_route_one");

    if KSR.tm.t_relay() < 0 then
        KSR.sl.send_reply(500, "Server error")
    end
end

-- SIP response routing
-- equivalent of reply_route{}
function ksr_reply_route()
    KSR.info("===== response - from kamailio lua script\n");
end

-- branch route callback
-- equivalent of a branch_route{}
function ksr_branch_route_one()
    KSR.info("===== branch route - from kamailio lua script\n");
end

-- onreply route callback
-- equivalent of an onreply_route{}
function ksr_onreply_route_one()
    KSR.info("===== onreply route - from kamailio lua script\n");
end

-- failure route callback
-- equivalent of a failure_route{}
function ksr_failure_route_one()
    KSR.info("===== failure route - from kamailio lua script\n");
end

```

## Python Config KEMI Engine

The **app_python** module must be loaded and the Python script with
routing logic must be set to its **script_name** parameter.

The **kemi** engine is built reusing the exiting **app_python** way of
executing C code from Kamailio. In the Python script you have to declare
the global **mod_init()** method where to instantiate an object of a
class that implements the other callback methods (functions) to be
executed by Kamailio.

Inside the new class, the following methods are relevant:

-   **ksr_request_route(self, msg)** - is executed by Kamailio core
    every time a SIP request is received. If this function is not
    defined, then Kamailio will write error messages. This is equivalent
    of request_route {} from kamailio.cfg.
-   **ksr_reply_route(self, msg)** - is executed by Kamailio core every
    time a SIP Response (reply) is received. If this function is not
    defined, then Kamailio will not write error messages. This is
    equivalent of reply_route {} from kamailio.cfg.
-   **ksr_onsend_route(self, msg)** - is executed by Kamailio core every
    time a SIP request (and optionally for a response) is sent out. If
    this function is not defined, then Kamailio will not write error
    messages. This is equivalent of onsend_route {} from kamailio.cfg.
-   branch route callback - the name of the Python function to be
    executed instead of a branch route has to be provided as parameter
    to KSR.tm.t_on_branch(...)
-   onreply route callback - the name of the Python function to be
    executed instead of an onreply route has to be provided as parameter
    to KSR.tm.t_on_reply(...)
-   failure route callback - the name of the Python function to be
    executed instead of a failure route has to be provided as parameter
    to KSR.tm.t_on_failure(...)
-   branch failure route callback - the name of the Python function to
    be executed instead of an event route for branch failure has to be
    provided as parameter to KSR.tm.t_on_branch_failure(...)
-   TBD: the options for specific event_route blocks. Meanwhile, should
    work using hybrid configuration with request_route/reply_route/...
    in embedded interpreter and the other routing blocks in native
    kamailio.cfg.

The following objects are available inside the Python script:

-   **Router** - provided by the old way of exporting functions to
    Python (<https://www.kamailio.org/wiki/embeddedapi/devel/python>)
-   **KSR** - provided via KEMI. The functions exported to KEMI are
    accessible as KSR.submodule.function(...). If submodule name is
    empty (reserved for core functions), then they are available as
    KSR.function(...).

### Python Embedded Config Example

The kamailio.cfg with the global/core and modules settings:

``` c
#!KAMAILIO
#
# Kamailio (OpenSER) SIP Server v5.0
#     - web: http://www.kamailio.org
#
####### Global Parameters #########

debug=4
log_stderror=yes
fork=yes
children=2

memdbg=5
memlog=5

auto_aliases=no

listen=udp:127.0.0.1:5060

mpath="modules"

loadmodule "mi_fifo.so"
loadmodule "kex.so"
loadmodule "tm.so"
loadmodule "tmx.so"
loadmodule "sl.so"
loadmodule "pv.so"
loadmodule "maxfwd.so"
loadmodule "textops.so"
loadmodule "xlog.so"
loadmodule "ctl.so"
loadmodule "mi_rpc.so"
loadmodule "debugger.so"
loadmodule "app_python.so"

# ----------------- setting module-specific parameters ---------------

# ----- mi_fifo params -----
modparam("mi_fifo", "fifo_name", "/tmp/kamailio_fifo")


# ----- tm params -----
# auto-discard branches from previous serial forking leg
modparam("tm", "failure_reply_mode", 3)
# default retransmission timeout: 30sec
modparam("tm", "fr_timer", 30000)
# default invite retransmission timeout after 1xx: 120sec
modparam("tm", "fr_inv_timer", 120000)

# ----- debugger params -----
modparam("debugger", "cfgtrace", 1)

####### Routing Logic ########

modparam("app_python", "script_name", "/etc/kamailio/kamailio.py")

cfgengine "python"
```

The **/etc/kamailio/kamailio.py** with the routing logic for runtime:

``` python
import sys
import Router.Logger as Logger
import KSR as KSR

def dumpObj(obj):
    for attr in dir(obj):
        # KSR.info("obj.%s = %s\n" % (attr, getattr(obj, attr)));
        Logger.LM_INFO("obj.%s = %s\n" % (attr, getattr(obj, attr)));

def mod_init():
    KSR.info("===== from Python mod init\n");
    # dumpObj(KSR);
    return kamailio();

class kamailio:
    def __init__(self):
        KSR.info('===== kamailio.__init__\n')

    def child_init(self, rank):
        KSR.info('===== kamailio.child_init(%d)\n' % rank)
        return 0

    def ksr_request_route(self, msg):
        KSR.info("===== request - from kamailio python script\n");
        msg.rewrite_ruri("sip:alice@127.0.0.1:5080");
        KSR.tm.t_on_branch("ksr_branch_route_one");
        KSR.tm.t_on_reply("ksr_onreply_route_one");
        KSR.tm.t_on_failure("ksr_failure_route_one");
        KSR.sl.send_reply(100, "Trying")
        if KSR.tm.t_relay() < 0 :
            KSR.sl.send_reply(500, "Server error")
        return 1;

    def ksr_reply_route(self, msg):
        KSR.info("===== response - from kamailio python script\n");
        return 1;

    def ksr_branch_route_one(self, msg):
        KSR.info("===== branch route - from kamailio python script\n");
        return 1;

    def ksr_onreply_route_one(self, msg):
        KSR.info("===== onreply route - from kamailio python script\n");
        return 1;

    def ksr_failure_route_one(self, msg):
        KSR.info("===== failure route - from kamailio python script\n");
        return 1;
```

## JavaScript Config KEMI Engine

The **app_jsdt** module must be loaded and the JavaScript script with
routing logic must be set to its **load** parameter.

Inside the JavaScript script, following functions are relevant:

-   **ksr_request_route()** - is executed by Kamailio core every time a
    SIP request is received. If this function is not defined, then
    Kamailio will write error messages. This is equivalent of
    request_route {} from kamailio.cfg.
-   **ksr_reply_route()** - is executed by Kamailio core every time a
    SIP Response (reply) is received. If this function is not defined,
    then Kamailio will not write error messages. This is equivalent of
    reply_route {} from kamailio.cfg.
-   **ksr_onsend_route()** - is executed by Kamailio core every time a
    SIP request (and optionally for a response) is sent out. If this
    function is not defined, then Kamailio will not write error
    messages. This is equivalent of onsend_route {} from kamailio.cfg.
-   branch route callback - the name of the Lua function to be executed
    instead of a branch route has to be provided as parameter to
    KSR.tm.t_on_branch(...)
-   onreply route callback - the name of the Lua function to be executed
    instead of an onreply route has to be provided as parameter to
    KSR.tm.t_on_reply(...)
-   failure route callback - the name of the Lua function to be executed
    instead of a failure route has to be provided as parameter to
    KSR.tm.t_on_failure(...)
-   branch failure route callback - the name of the Lua function to be
    executed instead of an event route for branch failure has to be
    provided as parameter to KSR.tm.t_on_branch_failure(...)
-   TBD: the options for specific event_route blocks. Meanwhile, should
    work using hybrid configuration with request_route/reply_route/...
    in embedded interpreter and the other routing blocks in native
    kamailio.cfg.

The following objects are available inside the Lua script:

-   **KSR** - provided via KEMI interface. The functions exported to
    KEMI are accessible as KSR.submodule.function(...). If submodule
    name is empty (reserved for core functions), then they are available
    as KSR.function(...).

## Basic IP Telephony Config Example

Some examples of configuration files using the native, Lua or Python
interpreter are available in Kamailio source tree inside the
**examples/kemi** folder - online at github:

-   <https://github.com/kamailio/kamailio/tree/master/misc/examples/kemi>

The configuration file to start with is **kamailio-basic-kemi.cfg**:

-   <https://github.com/kamailio/kamailio/blob/master/misc/examples/kemi/kamailio-basic-kemi.cfg>

You can either rename it to kamailio.cfg or use **-f** command line
option to point to it.

If started without any change and no define in command line, then
Kamailio will continue to load the routing blocks in the native
language, stored in the file **kamailio-basic-kemi-native.cfg**:

-   <https://github.com/kamailio/kamailio/blob/master/misc/examples/kemi/kamailio-basic-kemi-native.cfg>

If you define WITH_CFGLUA inside **kamailio-basic-kemi.cfg** or provide
the command line parameter **-A WITH_CFGLUA**, then Kamailio will load
the routing blocks in the Lua language, stored in the file
**kamailio-basic-kemi-lua.lua**:

-   <https://github.com/kamailio/kamailio/blob/master/misc/examples/kemi/kamailio-basic-kemi-lua.lua>

If you define WITH_CFGJSDT inside **kamailio-basic-kemi.cfg** or provide
the command line parameter **-A WITH_CFGJSDT**, then Kamailio will load
the routing blocks in the JavaScript language, stored in the file
**kamailio-basic-kemi-jsdt.js**:

-   <https://github.com/kamailio/kamailio/blob/master/misc/examples/kemi/kamailio-basic-kemi-jsdt.js>

If you define WITH_CFGPYTHON inside **kamailio-basic-kemi.cfg** or
provide the command line parameter **-A WITH_CFGPYTHON**, then Kamailio
will load the routing blocks in the Python language, stored in the file
**kamailio-basic-kemi-python.py**:

-   <https://github.com/kamailio/kamailio/blob/master/misc/examples/kemi/kamailio-basic-kemi-python.py>

Combining **kamailio-basic-kemi.cfg** with
**kamailio-basic-kemi-native.cfg** results more or less in the
**kamailio-basic.cfg** from the **etc/** folder in Kamailio source tree.
The Lua, JavaScript and Python scripts are offering the same features,
but written in another language.

Note that you need to copy these files at the location of the
configuration file for your Kamailio configuration and eventually adjust
the paths to them inside **kamailio-basic-kemi.cfg**.

Let's say you installed from sources, the config files are located
inside the **/usr/local/etc/kamailio/**. Copy all the files listed above
to that folder.

Then you can start Kamailio with native routing blocks:

``` c
/usr/local/sbin/kamailio -f /usr/local/etc/kamailio/kamailio-basic-kemi.cfg -M 12 -M 128
```

To start it with Lua routing blocks:

``` c
/usr/local/sbin/kamailio -f /usr/local/etc/kamailio/kamailio-basic-kemi.cfg -M 12 -M 128 - A WITH_CFGLUA
```

To start it with Python routing blocks:

``` c
/usr/local/sbin/kamailio -f /usr/local/etc/kamailio/kamailio-basic-kemi.cfg -M 12 -M 128 - A WITH_CFGPYTHON
```

To start it with JavaScript routing blocks:

``` c
/usr/local/sbin/kamailio -f /usr/local/etc/kamailio/kamailio-basic-kemi.cfg -M 12 -M 128 - A WITH_CFGJSDT
```

If you want to print the log messages to the terminal, add the extra
parameters **-E -e -ddd** - this will print up to debug level which can
be too verbose. Using up to info level can be better, use the extra
parameters **-E -e -dd** .

When you have at least log level info, with kamailio-basic-kemi.cfg you
will notice that a log message is printed showing the duration in
microseconds of executing the main routing blocks, no matter they were
in native language, Lua, JavaScript or Python. If the logs were printed
to the terminal, they look like:

    LUA {REGISTER}: 13(28737) INFO: <core> [receive.c:268]: receive_msg(): request-route executed in: 292 usec

Depending on the scripting language used for routing blocks, the log
messages start with:

-   NAT - for native interpreter
-   LUA - for LUA
-   JSC - for JavaScript
-   PYT - for Python

Again, these are specific to the config options in the
kamailio-basic-kemi.cfg file -- look for log_prefix inside it for more
details.

### Interpreters Performances

Relaying on the log messages that print the execution time for main
routing blocks handling the SIP requests and responses, some statistics
were gathered to see how the execution time compares for each of the
interpreters.

The tests were not targeting to measure the capacity of Kamailio, but
the impact of using different interpreters for same kind of features.

The system used for testing was a VirtualBox with 2GB or RAM and 2
processors, having Linux Mint as guest OS. The host was a MAC OS X
running on a Mid 2012 model of Macbook Pro.

Testing was done for registrations with user authentication, using
**sipp** tool with parameters **-m 1000 -r 50** on the same VirtualBox
system with Kamailio. Each test for different interpreters was doing
1000 registrations with different caller ids. Each first REGISTER was
challenged for authentication, so practically there were 2000 REGISTER
requests: first REGISTER being challenged with 401, the follow up was
receiving 200ok as the authentication succeeded.

The values are in micro-seconds (1 / 1 000 000 of a second) and
represents the average execution time, the minimum execution time and
the maximum execution time for request_route{...} block (or the
equivalent of).

The results were:

    INTERPRETER - AVERAGE - MIN - MAX 

    NATIVE      - 302.275 - 6  - 3824

    LUA         - 308.32  - 6  - 3596

    PYTHON      - 393.707 - 23 - 3266

Remarks:

-   the average was between 300 and 400 micro-seconds, resulting in a
    capacity of 2500 to over 3000 REGISTERs/second. CPU usage per
    Kamailio SIP worker process was around 1%. Again, not targeting to
    measure the capacity, the config runs with 4 SIP workers, increasing
    that will increase the capacity as database operations were involved
    to fetch the username and password via **auth_db** module.
-   the test was run many times, the Native and Lua execution were close
    to each other, many times Lua being faster, but again, at small
    difference
-   no big surprise as Lua is calling directly the C bindings and its
    interpreter is written also in C. With the config used in the tests,
    the Lua script doesn't do much of specific Lua operations, it mainly
    executes the functions exported by Kamailio
-   Python is slower comparing to Native and Lua, but not that much as
    one may expect. It can still deal with 2500 REGISTERs/second. Even
    more, some of its latency comes from the way **app_modules** is
    designed, to create a Python object from Kamailio's SIP message
    structure. That involves cloning (and freeing) of each SIP message
    to be represented as an object in Python. Lua uses the Kamailio core
    SIP message structure, like the Native interpreter without any
    overhead. Same approach should be possible for **app_python**,
    current approach is more object-oriented at expense of using more
    resources.
-   in some tests, the maximum execution time was between 5000 and 10000
    micro-second, but for all interpreters, suspecting to be related to
    other tasks done by guest OS (which was running a web browser as
    well). The average didn't result in big differences, even in such
    cases. Also, sometimes the minimum was below 1 micro-second.

## To-Do

-   see if same dynamic object mechanism can be implemented for Perl,
    Mono, Java, etc.
-   discuss and decide the way to generate documentation of available
    functions via KEMI
-   analyze if worth using a declarative language for specifying the
    exported functions and then generate necessary C code from them
    (could be useful for generating docs as well)
