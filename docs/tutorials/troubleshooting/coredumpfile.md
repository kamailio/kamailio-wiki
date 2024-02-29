# Troubleshooting Core Dump File With GDB

**Getting the backtrace from a core file dumped upon Kamailio crash.**

After a crash of the server it may generate a core file in its working
directory, if the functionality is not disabled. This core file can be
used to get the cause (or at least a hint) of the crash. The core file
contains the memory of the process at the moment it crashes as well as
the execution trace, so it could contain sensitive data.

## Potential Causes

- Invalid input data, e.g. some messages or from the database
- Errors in the program code, e.g. null pointer access

## Analyze Core File

Core files can be examined with **gdb**, the GNU debugger. It can read
the crash informations, and display (among other things) the backtrace
that leads to the crash. Just run:

    gdb /path/to/kamailio /path/to/core/file

Substitute the paths to match your installation, for example:

    gdb /usr/local/sbin/kamailio /home/corefiles/core.1234

After gdb finished to read the input and shows its prompt, execute:

    backtrace

or the short variant:

    bt

GDB will then output the backtrace.

More useful could be the full backtrace, that can be seen with:

    bt full

This information should added to your bug report of the crash. Please
don't delete the core files after the backtrace generation, as its
really helpful for eventual further investigations.

In order to get a meaningful backtrace gdb needs some debugging
informations in its binary. If you compiled from the source, no
additional steps should be necessary from you. If you install a binary
package, e.g. from debian, you need to install the **-dbg** package too
(e.g., kamailio-dbg...deb).

If you don't understand the information that gdb prints, some developer
on the mailling list should be able to help you.

## How To Get Core Files

Sometimes the server don't write the core file after a crash.

    INFO:core:handle_sigs: core was not generated

First check if the "disable_core_dump" variable is set in your
configuration. If you run the server from a debian package, check the
DUMP_CORE setting in the "/etc/default/kamailio" file. If this are all
not set, then there is probably some ulimit configured that prohibits
the core file generation. Just run:

    ulimit -c unlimited

in the shell where you started the server. If you run from an init script
it should normally already take care of this. If its still not create a
core file then perhaps the server has no permissions to write into its
working directory, check its permissions and the startup option "-w".

On some operating systems it may be required to run Kamailio as
privileged user (e.g., root) or change the **fs.suid_dumpable** sysctl
setting:

- <https://sysctl-explorer.net/fs/suid_dumpable/>

To get per-process core file then you can use on Linux:

    echo "1" > /proc/sys/kernel/core_uses_pid

A similar command for FreeBSD:

    sysctl kern.corefile='%N.%P.core'

### CentOS Core Dump Settings

For CentOS 7, the following settings can be useful:

Edit **/etc/sysctl.d/99-sysctl.conf** and add:

    kernel.core_pattern = /tmp/core.%e.%p.%h.%t
    kernel.core_uses_pid=1
    fs.suid_dumpable = 2

Run **sysctl --system** to reload kernel parameters.

Edit **/etc/sysconfig/kamailio** and set:

    DUMP_CORE=yes

## Useful Links

Debugging with GDB:

- <https://sourceware.org/gdb/onlinedocs/gdb/index.html>

Shortcut in the tutorial for **backtrace** command of **gdb**:

- <https://sourceware.org/gdb/onlinedocs/gdb/Backtrace.html>
