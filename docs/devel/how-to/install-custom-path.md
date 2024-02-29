# How to Install Kamailio in a Custom Path

Working with multiple versions could get complex unless you use
different paths for installation.

The command line variable PREFIX can be used to specify the root
directory where all the files deployed by **make install** will be
copied.

Assuming you want to install version 3.3. to /usr/local/kamailio-3.3 and
you checked out branch 3.3, then run following commands:

    make FLAVOUR=kamailio PREFIX=/usr/local/kamailio-3.3 cfg
    make all
    make install

All installed files will be located in sub-folders of
/usr/local/kamailio-3.3, for example:

- binaries in /usr/local/kamailio-3.3/sbin
- config files in /usr/local/kamailio-3.3/etc

To delete this installation, simply remove /usr/local/kamailio-3.3
directory.
