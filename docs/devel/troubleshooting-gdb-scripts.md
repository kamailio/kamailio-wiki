# Troubleshooting - GDB Snippets

A collection of GDB scripts useful to print Kamailio's internals at
runtime.

## TM Module

### Transaction Structures

Transactions are stored in hash table \_tm_table that has 65536 slots
(defined as TABLE_ENTRIES in the code).

``` perl
set $i=0
while($i<65536)

set $ehead = &_tm_table->entries[$i]
set $tcell = _tm_table->entries[$i].next_c

while($ehead!=(void*)$tcell)
p $tcell
p *$tcell
set $tcell = $tcell->next_c;
end

set $i = $i + 1
end
```

## Memory

See:

-   <https://www.kamailio.org/wiki/tutorials/troubleshooting/memory#using_gdb>
