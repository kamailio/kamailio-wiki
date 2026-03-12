# Kamailio SIP Server - New Features in Devel Version

**Current devel version will be numbered 6.2.0 and it is planned to be
released in late 2027**.

**Previous version was 6.1.x (released on Feb 2026), see
what was new in that release at**:

- [New In v6.1.x](new-in-6.1.x.md)

*This is a draft of new features added in devel version,
manually updated, thus not always synchronized with what is new in
source code repository.*

## New Modules

## New in existing Modules

### ims_dialog

- ``dbg_list`` module parameter to print internal debug information related to dialogs

## Archived Modules

modules considered obsolete and not maintained have been moved to
<https://github.com/kamailio/kamailio-archive/>

## New in Core

### Command line arguments

### Interpreter

### Parameters

- `udp_accept_proxy` - add support for two UDP proxy protocols (HAproxy and "simple")
- RPC command `udp.proxy.dump` to inspect the contents of the UDP proxy hash table
- RPC command `udp.proxy.stats` to get an overview of the size of the UDP proxy hash table
- RPC command `udp.proxy.clean` to remove expired entries from the UDP proxy hash table
- RPC command `udp.proxy.flush` to remove all entries from the UDP proxy hash table

### Functions

### Memory Managers

### Architecture

### kamailio.cfg

## Tools

### kamcmd

### kamctl

### kamdbctl

### kamcli
