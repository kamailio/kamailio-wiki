====== Writing Docbook Files for Module Readme ======

README file for each module is generated from xml docbook files residing in **doc/** sub folder. When one adds a new module it has to write these files, then generate the README using:

<code>
make modules-readme modules=modules/modname
</code>

===== Naming Files =====

==== Kamailio Style ====

The docbook file are:

  * modname.xml - the main docbook file, including other files that have content
  * modname_admin.xml - the docbook file that includes content targeting administrators (e.g., short description, dependencies, parameters and functions for the config file, a.s.o.)
  * modname_devel.xml - the docbook file that includes content targeting developers (e.g., inter module APIs)

==== SER Style ====

The docbook file are:

  * modname.xml - the main docbook file, including other files that have content
  * params.xml - the docbook file that includes module config parameters
  * funcs.xml - the docbook file that includes module config functions
  * ... 


===== Section IDs =====

To generate IDs that make html version of README easier to refer to, each section tag for parameters, functions, etc. has to contain an **id** attribute. To avoid conflicts when merging some readme file, the value of ID attributes should use following pattern:

<code>
[module name] [dot] [type] [dot] [title]
</code>

The [type] should be:
  * p - parameters
  * f - functions
  * m - mi commands
  * r - rpc commands
  * s - statistics
  * e - event routes
  * v - pseudovariable

Next is an example showing the id for the section corresponding to parameter **workers** from module **async**:

<code>
<section id="async.p.workers">
        <title><varname>workers</varname> (int)</title> 
</code>
