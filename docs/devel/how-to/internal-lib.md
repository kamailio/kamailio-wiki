# How To Create And Use An Internal Library

## Create a library

- make a new directory in `lib` folder
- copy there the Makefile from `lib/print/` and change the name in it
- add your `.c` and `.h` files.

## Use a library from a module

- add to the module's Makefile (replace `print` with your lib name):

<!-- -->

    SERLIBPATH=../../lib
    # libraries, in the format path/shortname , where shortname is
    # what will be used for -l
    SER_LIBS=$(SERLIBPATH)/print/print

Compiling the module will re-compile the library automatically if needed
(e.g. some change in it).

`make install` will also re-link the module (needed to change the
rpath).
