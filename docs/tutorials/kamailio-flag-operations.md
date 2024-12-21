# Kamailio - Flag Operations

    Authors of initial tutorial:
    Elena-Ramona Modroiu
      <ramona (at) rosdev.ro>

    Daniel-Constantin Mierla
      <miconda (at) gmail.com>

Tutorial for operations with flags in Kamailio SIP Server.

* [Introduction](#introduction)
* [Functions](#functions)
  + [setflag ( flag )](#setflag--flag-)
  + [resetflag ( flag )](#resetflag--flag-)
  + [isflagset ( flag )](#isflagset--flag-)
* [Examples](#examples)
  + [Accounting](#accounting)
  + [Optimizations](#optimizations)
* [Remarks](#remarks)
* [Development](#development)

## Introduction

For each SIP request, Kamailio keeps a set of flags that can
be set, reset and tested from routing blocks in the configuration file.
At this moment, the flags are mapped over the bits of an integer value,
so there are thirty two flags (four groups of eight flags).

Example 1. flags bit map

``` text
     0                     1                     2                     3
     0 1 2 3 4 5 6 7   8 9 0 1 2 3 4 5   6 7 8 9 0 1 2 3   4 5 6 7 8 9 0 1    
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0|
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
```

The flag is identified by the position in the bit array, valid values
being in the range from 0 to 31.

Example 2. the 15th flag

``` text
     0                     1                     2                     3
     0 1 2 3 4 5 6 7   8 9 0 1 2 3 4 5   6 7 8 9 0 1 2 3   4 5 6 7 8 9 0 1    
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|X| |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0|
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
```

## Functions

There are three functions that can be used in routing blocks to operate
with flags.

### setflag ( flag )

This function sets the value of the flag given as parameter to 1 (true).
The value of the parameter must be an integer between 0 and 31.

Example 3. setflag(15) -- set the 15th flag

``` text
     0                     1                     2                     3
     0 1 2 3 4 5 6 7   8 9 0 1 2 3 4 5   6 7 8 9 0 1 2 3   4 5 6 7 8 9 0 1    
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|1| |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0|
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
```

If the value of the flag was already set, the operation has no other
effect, the flag remains set to 1.

The function returns always true.

### resetflag ( flag )

This function resets the value of the flag given as parameter to 0
(false). The value of the parameter must be an integer between 0 and 31,
too.

Example 4. resetflag(15) -- reset the 15th flag

``` text
     0                     1                     2                     3
     0 1 2 3 4 5 6 7   8 9 0 1 2 3 4 5   6 7 8 9 0 1 2 3   4 5 6 7 8 9 0 1    
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0|
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
```

If the value of the flag was already 0, the operation has no other
effect, the flag remains set to 0.

The function returns always true.

### isflagset ( flag )

This function tests the value of the flag given as parameter. The value
of the parameter must be an integer between 0 and 31, too.

The function returns true, if the value of the flag is 1, and false, if
the value of the flag is 0.

Example 5. isflagset(15)

``` text
     0                     1                     2                     3
     0 1 2 3 4 5 6 7   8 9 0 1 2 3 4 5   6 7 8 9 0 1 2 3   4 5 6 7 8 9 0 1    
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|1| |0|0|0|0|0|0|0|0| |0|0|0|0|0|0|0|0|
    +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+

      # when the flags' bit map is as above
      if(isflagset(15))
      {
         # this branch is executed
      } else {
         # not in this case
      };
```

## Examples

### Accounting

Next is a simple example of configuration file for Kamailio that enables
accounting of INVITEs and BYEs requests. In this example, the flag
number 1 is used to mark the requests to be accounted.

Example 6. accounting config file

``` js
    # Kamailio configuration file: accounting calls

    # Details about this configuration script
    # - the accounting information is written to syslog file
    # - the number of the flag used to mark messages for accounting is 1
    # - only the INVITEs and BYEs are accounted


    # ----------- global configuration parameters ------------------------


    check_via=no    # (cmd. line: -v)
    dns=no          # (cmd. line: -r)
    rev_dns=no      # (cmd. line: -R)

    # ------------------ module loading ----------------------------------

    mpath="/usr/local/lib/kamailio/modules"
    loadmodule "maxfwd.so"
    loadmodule "sl.so"
    loadmodule "rr.so"
    loadmodule "tm.so"
    loadmodule "acc.so"

    # ----------------- setting module-specific parameters ---------------

    # -- acc params --
    # set the reporting log level
    modparam("acc", "log_level", 1)

    # number of the flag which will be used to mark messages for accounting
    modparam("acc", "log_flag", 1 )

    # main routing block
    request_route {

        # --- initial sanity checks ---
        if (!mf_process_maxfwd_header("10"))
        {
            sl_send_reply("483", "Too Many Hops");
            return;
        }


        # subsequent messages withing a dialog should take the
        # path determined by record-routing
        if (loose_route())
        {
            # mark the BYEs -- they are requests within a dialog
            if(method=="BYE")
                setflag(1);
            t_relay();
            return;
        }

        # process the INVITEs
        if(method=="INVITE")
        {
            # mark the INVITEs for accounting
            setflag(1);
            # enforce record-routing so the BYEs will come through this server
            record_route();
        };
        
        # relay the requests
        if (!t_relay()) {
            sl_reply_error(); 
            return; 
        };

    }
```

### Optimizations

Flags may be used to optimize Kamailio's routing logic, avoiding
duplicated routines or executions of same security checks over database.

Example 7. optimization of config file

``` js
    # Kamailio configuration file: using flags
    #
    #

    # ----------- global configuration parameters ------------------------


    check_via=no    # (cmd. line: -v)
    dns=no          # (cmd. line: -r)
    rev_dns=no      # (cmd. line: -R)

    # ------------------ module loading ----------------------------------
    mpath="/usr/local/lib/kamailio/modules"

    loadmodule "maxfwd.so"
    loadmodule "sl.so"
    loadmodule "rr.so"
    loadmodule "tm.so"
    loadmodule "textops.so"
    loadmodule "group.so"
    loadmodule "registrar.so"
    loadmodule "usrloc.so"

    # ----------------- setting module-specific parameters ---------------

    # main routing block
    request_route {

        # --- initial sanity checks ---
        if !mf_process_maxfwd_header("10"))
        {
            sl_send_reply("483", "Too Many Hops");
            return;
        }

        if(uri==myself)
        {
            if(method=="REGISTER")
            {
                save("location");
                return;
            }
            if(method=="INVTE" && is_user_in("Request-URI", "voicemail"))
                setflag(11);
                
            if(!lookup("location"))
            {
                if(isflagset(11))
                    t_relay_to_udp("voicemail_ip","voicemail_ip");
                else
                    sl_send_reply("404", "Not Found");
                return;
            }

            if(isflagset(11))
                t_on_failure(1);
        }
        
        # relay the requests
        if (!t_relay()) {
            sl_reply_error(); 
            return; 
        }

    }

    failure_route[1] {
        revert_uri();
        t_relay_to_udp("voicemail_ip","voicemail_ip");
    }
```

## Remarks

Flags themselves have no operating issues. They provide a very easy and
fast way of keeping states during processing a request or during a
transaction, if Kamailio is in stateful mode.

One of the main purposes for flags is to enable accounting in Kamailio.
The `acc` module uses flags to identify transactions to be accounted.
These transactions are usually marked from configuration file using
`setflag()` function.

## Development

To use the functions for flag operations inside a module you have to
include the “flags.h”, file located in Kamailio's sources directory
“sip_router”. The name of the functions is the same as the ones to use
from configuration file, but now you have to provide the pointer to
“sip_msg” structure as the first parameter. The second parameter is the
number of the flag to operate on.

The next example presents the prototypes of these functions (just look
into `flags.h` file to see them).

Example 8. accounting config file

``` c
    typedef unsigned int flag_t;

    int setflag(struct sip_msg* msg, flag_t flag);
    int resetflag(struct sip_msg* msg, flag_t flag);
    int isflagset(struct sip_msg* msg, flag_t flag);
```
