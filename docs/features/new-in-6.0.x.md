# Kamailio SIP Server - New Features in Devel Version

**Current devel version will be numbered 6.0.0 and it is planned to be
released in late 2024 or early 2025**.

**Previous devel, current stable, version was 5.8.x (released during the spring of 2024), see what was new in that release at:**

- <https://www.kamailio.org/wikidocs/features/new-in-5.8.x/>

*This is a draft of new features added in devel version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

## New in existing Modules

### cfgutils

- **lock** family functions got another optional key parameter to
  generate the hash id. See [#3808](https://github.com/kamailio/kamailio/pull/3808)
  or [cfgutils docs](https://www.kamailio.org/docs/modules/devel/modules/cfgutils.html)
  for details

### permissions

- **allow_register_include_port()**, the permissions module got a new function, which extends
  a functionality for checking contacts (locations) allowed to be registered.
  With a newer function one has a possibility to include Contact URI port into this check.
  See [#3846](https://github.com/kamailio/kamailio/pull/3846)
  or [permissions docs](https://www.kamailio.org/docs/modules/devel/modules/permissions.html)
  for details.

### pua_dialoginfo

- **use_uuid** optional parameter to generate pres_id using libuuid via uuid module

### rabbitmq

- kamailio init will not fail if rabbitmq connection doesn't work. The module will try to reconnect
  when **rabbitmq_publish()** or **rabbitmq_publish_consume()** are called in the config.

### sca

- **from_uri_avp** **to_uri_avp** module parameters adding the possibility of define what is the URI value
  for To and/or From instead of the values coming from the SIP message.

### siputils

- **sip_p_charging_vector()** Once a new PCV has been generated by 'g' or 'f' the PCV cannot be changed
  again.
  The icid-generated-at parameter of a generated PCV will now be set to the sending interface IP address
  The function now returns a status value about what was done.

- **$pcv(status)** New pseudo-variable parameter. Returns whether the PCV header was successfully parsed,
  deleted, newly generated or other.
  See [#3929](https://github.com/kamailio/kamailio/pull/3846)
  or [siputils](https://www.kamailio.org/docs/modules/devel/modules/siputils.html)
  for details.

## Archived Modules

modules considered obsolete and not maintained have been moved to
<https://github.com/kamailio/kamailio-archive/>

- auth_identity
- app_lua_sr
- app_sqlang
- app_mono

## New in Core

### Command line arguments

### Interpreter

### Parameters

### Functions

### Memory Managers

### Architecture

### kamailio.cfg

## Tools

### kamcmd

### kamctl

### kamdbctl

### kamcli