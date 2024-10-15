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
  a funcitonality for checking contacts (locations) allowed to be registered.
  With a newer function one has a possibility to include Contact URI port into this check.
  See [#3846](https://github.com/kamailio/kamailio/pull/3846)
  or [permissions docs](https://www.kamailio.org/docs/modules/devel/modules/permissions.html)
  for details.

### rabbitmq

- kamailio init will not fail if rabbitmq connection doesn't work. The module will try to reconnect
  when **rabbitmq_publish()** or **rabbitmq_publish_consume()** are called in the config.

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
