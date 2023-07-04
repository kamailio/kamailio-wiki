# Troubleshooting Memory

Details on how to monitor and collect information about memory usage by
Kamailio.

A typical case is to investigate the cases when "out of memory" or "no
more memory" log messages are printed in syslog and Kamailio stops
working properly.

## Memory Size

Kamailio is using a custom memory manager. The main reason to implement
and use own memory manager is simplifying access to shared memory. The
custom memory manager allocates a big zone of virtual memory at Kamailio
startup and then manages the allocation and free of smaller chunks
inside the zone.

There are two types of memory used by Kamailio:

-   private memory - allocated for each Kamailio process
    -   one zone per child - no syncronization needed to access it
    -   referred also as pkg (the operations in the code are done with
        pkg_malloc()/pkg_free()/...)
-   shared memory - allocated for entire Kamailio instances
    -   all processes use the same zone - syncronization (mutex)
        required to access it
    -   referred also as shm (the operations in the code are done with
        shm_malloc()/shm_free()/...)

As of v4.2.0, default size for private memory is 8MB and for shared
memory is 64MB. You can run 'kamailio -I' to check these values - they
are printed as:

``` c
  DEFAULT PKG_SIZE=8MB
  DEFAULT SHM_SIZE=64MB
```

The size for private or shared memory can be specified via command line
parameter -M (for pkg) and -m (for shm). Let's say kamailio should use
up to 12MB of pkg and 128MB of shm, the command line should be:

    kamailio -M 12 -m 128 ...

## Insufficient Memory

There could be two reasons for getting insufficient memory log messages:

-   too small PKG or SHM - insufficient size to accommodate all data
    needed to be stored in memory
-   memory leak - some part of code allocates memory at runtime and does
    not free it

## Monitoring Memory

Keeping an eye on memory is highly recommended. Kamailio keeps
internally several counters that present how much memory was allocated,
used, free, etc.

The statistics for SHM memory can be seen with:

    kamctl stats shmem
    kamcmd mod.stats all shm

The statistics for PKG memory can be seen with:

    kamcmd pkg.stats
    kamcmd mod.stats all pkg

Notice that for SHM only one group of statistics is printed, being one
zone of memory, while for PKG you get a list with many groups of
statistics, each specific for a Kamailio process (child).

In order to merge the free memory fragments one should enable the memory
join support in the core. It is enabled by default (mem_join=1).

    mem_join=1

## Analysis of Memory Incidents

If the free memory size from printed statistics continues to decrease
constantly then:

-   if you have growth on the service, like new subscribers, more calls,
    then it can be the reason for increase in memory usage and you may
    need to restart with higher values if free size is getting too
    small. If possible, stop sending traffic to that instance (in case
    there can be added some traffic redirection) and watch to see if the
    memory usage starts decreasing, getting back to a state like at the
    moment when Kamailio was started.
-   if the number of subscribers, traffic is constant, no larger data
    was reloaded (e.g., dispacher, lcr), then there is very likely a
    memory leak that has to be discovered and fixed

## Memory Manager Debugging

Kamailio can be compiled with memory manager in debugging mode.
Practically, at that moment for each allocated chunk, the memory manager
stores more details, such as function name, file path and line from
where the allocation was done.

To see if the memory manager is compiled in debugging mode, run:

    kamailio -I | grep DBG_QM_MALLOC

If it is printed, then it is, if not, then Kamailio has to be recompiled
with:

    MEMDBG=1 make cfg ...

Instead of ... add your other make cfg parameters (e.g.,
include_modules="...").

Then run the typical:

    make all
    make install

Check again with "kamailio -I \| grep DBG_QM_MALLOC" to be sure the
memory manager debugging was turned on.

Set the following global parameters in kamailio.cfg

``` c
memlog=0
```

Then restart and wait a bit for getting some traffic processed.

MEMMNG=0/1/2 to select from different memory allocation algorithms (fm,
qm, tlsf) is deprecated. Use "-x" parameter when running kamailio
instead; see kamailio -h for more details.

To get the list of chunks from memory manager, there are two ways:

-   stop kamailio - the log messages at kamailio shutdown will contain
    them
-   send a rpc command during runtime
    -   for PKG memory:

<!-- -->

    kamcmd cfg.set_now_int core mem_dump_pkg _PID_

        * notes for PKG dump:
          * replace _PID_ with Kamailio process id you want to troubleshoot - it can be taken via: kamctl ps
          * along with the processing of first SIP message coming to that PID, you get the status of pkg memory in syslog

      * for SHM memory:

    kamcmd cfg.set_now_int core mem_dump_shm 1

The log file will contain the messages detailing the chunks from memory
manager. The ones for SHM should look like:

       0(17665) Memory status (shm):
       0(17665) qm_status (0xb5a7e000):
       0(17665)  heap size= 33554432
       0(17665)  used= 1592952, used+overhead=1811564, free=31742868
       0(17665)  max used (+overhead)= 1811564
       0(17665) dumping all alloc'ed. fragments:
       0(17665)       0. N  address=0xb5ab240c frag=0xb5ab23f4 size=4 used=1
       0(17665)             alloc'd from mem/shm_mem.c: shm_mem_init_mallocs(199)
       0(17665)         start check=f0f0f0f0, end check= c0c0c0c0, abcdefed
       0(17665)       1. N  address=0xb5ab2440 frag=0xb5ab2428 size=4 used=1 
       0(17665)             alloc'd from timer.c: init_timer(52)
       0(17665)         start check=f0f0f0f0, end check= c0c0c0c0, abcdefed

For PKG is similar format, just SHM replaced with PKG in messages.

To generate summary report, do:

    # first set memlog lower than debug
    kamcmd cfg.set_now_int core memlog 1

    kamcmd corex.shm_summary

The log for f_malloc with debug enabled should look like:

    20(4082) NOTICE: fm_status: summarizing all alloc'ed. fragments:
    20(4082) NOTICE: fm_status:  count=     1 size=     16640 bytes from <core>: counters.c: counters_prefork_init(207)
    20(4082) NOTICE: fm_status:  count=     1 size=     14560 bytes from debugger: debugger_api.c: dbg_init_pid_list(572)
    20(4082) NOTICE: fm_status:  count=     1 size=      4992 bytes from sl: sl_stats.c: init_sl_stats_child(125)
    20(4082) NOTICE: fm_status:  count=     1 size=       256 bytes from tmx: tmx_pretran.c: tmx_init_pretran_table(90)
    20(4082) NOTICE: fm_status:  count=     1 size=      6656 bytes from tm: t_stats.c: init_tm_stats_child(60)
    20(4082) NOTICE: fm_status:  count=     1 size=      1248 bytes from kex: pkg_stats.c: pkg_proc_stats_init(79)
    20(4082) NOTICE: fm_status:  count=     2 size=        64 bytes from <core>: cfg/cfg_struct.c: cfg_clone_str(130)
    20(4082) NOTICE: fm_status:  count=     1 size=       704 bytes from <core>: cfg/cfg_struct.c: cfg_shmize(217)
    20(4082) NOTICE: fm_status:  count=     3 size=        64 bytes from usrloc: udomain.c: build_stat_name(51)

If you dumped the status with qm_malloc, you can extract the logs from
syslog and count the unique allocations with next commands:

    grep qm_status /var/log/syslog >qm_status.txt

    # or:
    # grep qm_status /var/log/messages >qm_status.txt

    grep alloc qm_status.txt | awk '{ print substr( $0, 16, length($0) ) }' | sort | uniq -c | sort -k1n

## Using GDB

GDB, the GNU Debugger, can be used to attach to a Kamailio process and
print the details of memory manager chunks from memory.

Next is a GDB batch script to print used PKG chunks, the first 2000 are
not printed (very likely to be allocated at startup for config parsing,
etc), up to 10000. Note again that Kamailio has to be compiled with
memory manager debugging. The range of used PKG chunks can be adjusted,
just replace the 2000 and 10000 numbers in the script.

``` c
set $i=0
set $a = mem_block->first_frag
while($i<10000)
if($i>2000)
if($a->u.is_free==0)
printf "=========== non-free fragment: %d\n", $i
p $a
p (void*)((char*)($a)+sizeof(struct qm_frag))
printf "----------- content\n"
p *$a
end
end
set $a = ((struct qm_frag*)((char*)($a)+sizeof(struct qm_frag)+((struct qm_frag*)$a)->size+sizeof(struct qm_frag_end)))
set $i = $i + 1
end
```

An alternative is to print all used chunks, but be aware that it may
take some time:

``` c
set $i=0
set $a = mem_block->first_frag
while($a < mem_block->last_frag_end)
if($a->u.is_free==0)
printf "=========== non-free fragment: %d\n", $i
p $a
p (void*)((char*)($a)+sizeof(struct qm_frag))
printf "----------- content\n"
p *$a
end
set $a = ((struct qm_frag*)((char*)($a)+sizeof(struct qm_frag)+((struct qm_frag*)$a)->size+sizeof(struct qm_frag_end)))
set $i = $i + 1
end
```

If the batch file is saved in /tmp/kamailio-dump-used-pkg.gdb, you can
run it with:

    gdb --batch --command=/tmp/kamailio-dump-used-pkg.gdb /path/to/kamailio _PID_

Again, be sure the path to kamailio is appropriate for the installation
and the \_PID\_ is replaced with the pid of Kamailio process you want to
troubleshoot. The real command should be like:

    gdb --batch --command=/tmp/kamailio-dump-used-pkg.gdb /usr/sbin/kamailio 21907

## PKG With System Malloc

Kamailio can be compiled to use system malloc and free for PKG needs.
You have to remove the PKG_MALLOC define from Makefile.defs and can add
DBG_SYS_MALLOC to get more verbosity with memory operations in debug
mode.

Next is a diff showing the changes in Makefile.defs, but note that lines
may vary on your specific Kamailio version.

``` c
diff --git a/src/Makefile.defs b/src/Makefile.defs
index 675f2cf5bb..ac5972dfd7 100644
--- a/src/Makefile.defs
+++ b/src/Makefile.defs
@@ -118,6 +118,7 @@ MEMMNG ?= 0
 # 0 - off (no-debug mode)
 # 1 - on (debug mode)
 MEMDBG ?= 1
+MEMPKG = sys
 
 VERSIONVAL = $(shell expr $(VERSION) \* 1000000 + $(PATCHLEVEL) \* 1000 + \
                        $(SUBLEVEL) )
```

After updating Makefile.defs recompile and reinstall.

Other tools available out there (e.g., valgrind) can be then used to
track the PKG memory operations done by Kamailio.

## OS Memory Reports

It may happen that various tools report memory usage increase on the
server. That could be due to a leak issue or due to caching done by
kernel. The memory for cache can be reclaimed and it is better to verify
whether the increase is due to it or not, before going ahead to
investigate other applications.

Kamailio itself uses in very few components extra memory directly from
the system (those are the only ones that can cause a system memory
leak). Most of the operations are done in the memory zone reserved at
startup and when that is filled, it starts printing out of memory
errors. Kamailio will not get at runtime more system memory for those
operations, even there is sufficient available in the system - the size
reserved at startup is fixed.

Here is the article that presents better the situation:

     * https://www.logicmonitor.com/blog/more-linux-memory-free-memory-that-is-not-free-nor-cache/

An relevant excerpt from the blog article:

    Looking at the contents of /proc/meminfo showed these two lines:

    Slab: 4126212 kB 
    SReclaimable: 4096172 kB

    So – almost 4G of memory was in use by the kernel slab memory structures – but
     almost all of that memory was reclaimable. (Or, in effect, free.)

    So reclaimable slab space is yet another way that Linux memory can be in
     effect free, but not show up in the free memory statistics.

The respective memory can be reclaimed with command:

    sync; echo 3 > /proc/sys/vm/drop_caches
