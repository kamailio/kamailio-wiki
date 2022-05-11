# Kamailio's Makefile System

## Generate Main Binary

    make

## Compile Everything

    make all

## Install Everything

    make install

## Clean Source Tree

-   clean object files

<!-- -->

    make clean

-   clean all generated files

<!-- -->

    make proper

## Generate Modules

    make modules

## Generate Config for Makefile

    make cfg

-   add extra defines in makefile config

<!-- -->

    make EXTRA_DEFS="-DSTATISTICS" cfg

-   cfg for Makefile is config.mak
-   you can edit it and tune as you wish before compilation

## Enable Module

If the module is not compiled by default:

-   edit **modules.lst**
-   remove the name of the module from **exclude_modules** variable

or type: `make modules-cfg include_modules=<name_of_the_module>` .

The same can be accomplished with
`make cfg include_modules=<name_of_the_module> ` , but this will remake
the whole config.

## Combined Parameters

Various parameters can be given to make command, an example:

``` c
make prefix=/opt/kamailio \
     SCTP=1 \
     CC_EXTRA_OPTS=-I/usr/gnu/include \
     group_include="standard postgres presence" \
     include_modules="snmpstats perl tls" \
     all

```

or you can save them in the config (they will be used by future make
invocations) by givin the same parameters to make cfg:

``` c
make cfg prefix=/opt/kamailio \
     SCTP=1 \
     CC_EXTRA_OPTS=-I/usr/gnu/include \
     group_include="standard postgres presence" \
     include_modules="snmpstats lcr tls"
```

## Generate README For Modules

-   all READMEs for modules located in directory **modules**

<!-- -->

    make modules-readme

-   README for one module. Example for **modules/dispatcher**:

<!-- -->

    make modules-readme modules=modules/dispatcher

or

    make -C modules/dispatcher/doc readme

## Generate Different Formats For Modules Documentation

Available formats: \* txt - text plain \* xhtml - single xhtml file \*
html - html files (chunks) split by sections \* pdf - PDF file

Command to generate a specific format for a module:

    make modules-doc doc_format=format modules=path/to/module

Example: generate single xhtml file for **auth** module:

    make modules-doc doc_format=xhtml modules=modules/auth

## Regenerated Database Scripts

    make dbschema

## Various Helpful Commands

### Print Uninstall Details

    make uninstall

### Install Debian init.d Scripts

    make install-initd-debian

### Install CentOS init.d Scripts

    make install-initd-centos

### Print C Define Flags

    make printcdefs

### Print Content of Variable

    make printvar v=varname

Printing $(C_DEFS) content.

    make printvar v=C_DEFS
