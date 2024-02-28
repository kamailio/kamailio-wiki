# KEMI Performances

This page collects details about performance results for KEMI
interpreters as well as tips and tricks to increase the processing
capacity when using KEMI.

## Performance Tests

- [KEMI Performance Tests For v5.2.x](../kemi/performance-tests/5.2.x.md)

## Tips And Tricks

### Variables

With some scripting languages such as Lua it was observed that is better
to store the value of a Kamailio pseudo-variables inside a local
variable if used many times. For example:

``` lua
    if KSR.corex.has_user_agent() then
        local K_ua = KSR.pv.gete("$ua");
        if string.find(K_ua, "friendly-scanner")
                or string.find(K_ua, "sipcli") then
            KSR.sl.sl_send_reply(200, "OK");
            KSR.x.exit();
        end
    end
```
