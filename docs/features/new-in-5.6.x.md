# Kamailio SIP Server - New Features in v5.6.x (pre)

📘 **Previous version was 5.5.x (released on May 2021), see
what was new in that release at**:

  -  [New In v5.5.x](http://www.kamailio.org/wiki/features/new-in-5.5.x)

📘 *This is a draft of new features added in this version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

### misctest

  - C code testing framework for fuzzing and memory operations
  - incorporates former `malloc_test` module
  - [https://www.kamailio.org/docs/modules/5.6.x/modules/misctest.html](https://www.kamailio.org/docs/modules/5.6.x/modules/misctest.html)

### nats

  - NATS connector - PubSub messaging system
  - [https://www.kamailio.org/docs/modules/5.6.x/modules/nats.html](https://www.kamailio.org/docs/modules/5.6.x/modules/nats.html)

### pospos

  - operations with position in the message buffer
  - [https://www.kamailio.org/docs/modules/5.6.x/modules/pospos.html](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html)

### ruxc

  - utility functions based on libruxc
    - alternative HTTP client function using RUST libraries
  - [https://www.kamailio.org/docs/modules/5.6.x/modules/ruxc.html](https://www.kamailio.org/docs/modules/5.6.x/modules/ruxc.html)

### siprepo

  - SIP message repository
  - [https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html](https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html)

## New In Existing Modules

### dispatcher

  - options to control better when the dns query should be done

## New in Core

### Command Line Arguments

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
