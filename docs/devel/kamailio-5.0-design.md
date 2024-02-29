# Kamailio v5.0 Design

## Overview

After 15 years of development, it is time for Kamailio v5.0.

This page collects suggestions and ideas for major refactoring of
various components to make the leap to v5.0.

When adding a remark that needs to be tracked by author, use initials in
front of the paragraph. The list of contributors to this document and
initials:

- Daniel-Constantin Mierla (dcm)

## Initial Remarks

Initial content for this document is listing also ideas popped up during
discussions at Fosdem 2016 and Kamailio Development Workshop - among
participants: Camille Oudout, Daniel-Constantin Mierla, Federico
Cabiddu, Giacomo Vacca, Henning Westerholt, Olle E. Johansson, Torrey
Searle, Victor Seva.

## Configuration File Interpreters

Goals:

- have at least one option of an optimized configuration file
    interpreter targeting high performance SIP routing deployments
- have at least one option of a more flexible configuration language
    that allows:
  - extended language syntax
  - reloading routing rules at runtime

Ongoing implementation that enables writing routing blocks in Lua and
Python as alternative to native language is documented at:

- [Configuration File Engines](../devel/config-engines.md)

## Source Tree Structure

Goals:

- group files per components to be easier to spot their role,
    especially the core, include files and utilities

### Reorganizing Source Files Location

It was discussed in the past:

- source code files should be relocated to have a better structure for
    include headers, core files, modules and internal libraries as well
    as utilities

Two models proposed:

- a\) only move core files in a new 'core' folder in the root
    directory
- b\) move all source code files for Kamailio in a new 'src' folder,
    with further re-organization with subfolders inside 'src'

## Build System

Goals:

- revising the build system based on Makefiles.

### Reviewing Alternative Build Systems

Alternatives to analyze:

- configure
- cmake

## Continuous Integration

Goals:

- attempt to make a more consistent and "easy to contribute to"
    continuous integration eco-system

### Unit Test Framework

Reviving the exiting unit testing or selecting another framework.

Available frameworks:

- <http://robotframework.org/> (python)

### Minimal Unit Tests

Defining a minimum set of automatic tests that needs to be provided by
each module:

- a minimal config for loading the module, to be sure it doesn't have
    missing linking symbols
- can be done with a config as simple as:

<!-- -->

    loadmodule "foo.so"

    request_route {
      ;
    }

- or can require setting some module parameters or even loading other
    modules
