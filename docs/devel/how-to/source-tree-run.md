# How to Run Kamailio from Source Tree Directory

As a developer (and not only), it is convenient many times to do short
testing sessions without the need to completely install Kamailio.

You can run it from the top directory where you keep Kamailio's source
tree.

Compile as usual:

    make FLAVOUR=kamailio cfg
    make all

Then set **mpath** in your configuration file to be:

``` c
mpath="modules_k/:modules/"
```

And run Kamailio:

    ./kamailio -f /path/to/your/config/file

Default configuration file has a define switch that allows to run from
source tree directory, the command is:

    ./kamailio -f etc/kamailio.cfg -A WITH_SRCPATH

If you want to run it in debugging mode (print logs to terminal and be
verbose), you can use:

    ./kamailio -f etc/kamailio.cfg -A WITH_SRCPATH -E -ddd
