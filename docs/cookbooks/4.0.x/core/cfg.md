# The Configuration File

## Configuration Elements

For the sake and sanity of the user of this software, we should cover
the basic elements of the configuration before getting to the meat and
potatoes. There are three basic configuration elements to be concerned
about.

-   Configuration Directives
-   Comments
-   Instruction Separator

------------------------------------------------------------------------

------------------------------------------------------------------------

### Configuration Directives

There are five (5) types of configuration directives used with
Kamailio.  

| \<fc #800000>**Each type of configuration directive uses its own syntax!**\</fc> |
|----------------------------------------------------------------------------------|

1.  C-Style Control Directives
2.  Apache-Like Name/Value Pairs
3.  Normal Name/Value Pairs
4.  Modify Parameter Procedure
5.  Route Functions

------------------------------------------------------------------------

### Comments

| \<fc #800000>**The first thing you should understand is the comment syntax used in the configuration file.**\</fc> |
|--------------------------------------------------------------------------------------------------------------------|

Comments in the configuration file are a mixture of C-Style (**not
C++**) and scripting language syntaxes.  
It closely resembles the PHP style, ***except*** you **can not use**
double-slash ( ⁄ ⁄ ) for line comments. Only the hash (#) may be used
for line comments.  
  
It can be confusing seeing the C-Style Control Directives ([explained later](cfg.md#c-style-control-directives)) that begin with a hash-bang (#!)
mixed with line comments beginning with a hash (#).

| Examples:                                                                           |
|-------------------------------------------------------------------------------------|
| Block Comment:`/* This is a ...                                                     
    block comment */`                                                                 |
| \<fc #800000>**Not a Comment:**\</fc>\<code> // this is NOT a line comment \</code> |
| Line Comment:`# this is a line comment `                                            |
| **\<fc #800000>Valid Configuration Directive:\</fc>**`#!c_style_directive`          |

------------------------------------------------------------------------

### Instruction Separator

\<fc #438D80>Just getting this out of the way before covering the
Configuration Directives.\</fc>

The semicolon (;) is ***not required*** and ***may*** be used as an
instruction separator for all configuration directives ***except***
Route Functions[1].  

The general use is to allow for comments or additional configuration
directives be placed on the same line.

| Examples:                                                              |
|------------------------------------------------------------------------|
| `configuration_directive_a                                             
 configuration_directive_b;                                              
 configuration_directive_c; configuration_directive_d                    
 configuration_directive_e; # comment about the configuration directive  
 `                                                                       |

------------------------------------------------------------------------

------------------------------------------------------------------------

## Configuration Directives

| Type                         | Format                                   | Comment                                    |
|------------------------------|------------------------------------------|--------------------------------------------|
| C-Style Control Directives   | #!directive \[ NAME \[ VALUE \] \]       | Begins with hash-bang (#!)                 |
| Apache-Like Name/Value Pairs | name "value"                             | Delimited by a space & Value within quotes |
| Normal Name/Value Pairs      | name=value                               | Delimited by an equals sign                |
| Modify Parameter Procedure   | modparam("MODULE", "PARAMETER", "VALUE") |                                            |
| Route Functions              | route {...}                              | Scripting Language                         |

### C-Style Control Directives

Available directives:

-   #!define NAME - define a keyword
-   #!define NAME VALUE - define a keyword with value
-   #!ifdef NAME - check if a keyword is defined
-   #!ifndef - check if a keyword is not defined
-   #!else - swtich to false branch of ifdef/ifndef region
-   #!endif - end ifdef/ifndef region
-   #!trydef - add a define if not already defined
-   #!redefine - force redefinition even if already defined
-   #!subst
-   #!substdef

| Example:                           |
|------------------------------------|
| `#!define MODULE_NAME              
                                     
 #!ifdef MODULE_NAME                 
  ".. set directives .."             
 #!else                              
  ".. set alternate directives .."   
 #!endif                             
 `                                   |

------------------------------------------------------------------------

### Apache Name/Value Pairs

| Syntax         |
|----------------|
| `name "value"` |

\<fc #FF0000>*The value MUST be enclosed in quotes.*\</fc>

| Examples                                  |
|-------------------------------------------|
| `loadmodule "module_name.so"              
 loadmodule "another_module.so"             
 include_file "file_to_include.cfg"         
 import_file "/path/to/file_to_import.cfg"  
 `                                          |

------------------------------------------------------------------------

### Normal Name/Value Pairs

These name/value pairs are normally delimited by an equal sign.

| Syntax:      |
|--------------|
| `name=value` |

\<fc #FF0000>There are a couple situations where the value needs to be
enclosed in quotes.\</fc>  
Check the [core parameters](..//core.md#core_parameters) for the required
syntax.

| Examples:                |
|--------------------------|
| `memdbg=5                
 memlog=5                  
 log_facility=LOG_LOCAL0   
 fork=yes                  
 children=4                
 #disable_tcp=yes          
 auto_aliases=no           
 alias="sip.mydomain.com"  
 `                         |

------------------------------------------------------------------------

### Modify Parameter Procedure

The modify parameter is similar to other types programming procedure.  
You call the procedure and it modifies the defined modules parameter.

| Syntax:                                                                |
|------------------------------------------------------------------------|
| `modparam ( string "$module" , string "$parameter" , mixed "$value" )` |

\<fc #800000>Strings should be enclosed in quotes.\</fc>

See the [module documentation](http://www.kamailio.org/docs/modules/4.0.x/) for support
parameter settings.

| Examples:                                                                             |
|---------------------------------------------------------------------------------------|
| `modparam("first_module", "module_parameter_text", "new_value");  # Set Text Value    
 modparam("second_module", "module_parameter_number", 10000);      # Set Numeric Value  
 modparam("second_module", "module_parameter_on", 1);              # Enable Parameter   
 modparam("third_module", "module_parameter_on", 0);             # Disable Parameter    
 `                                                                                      |

------------------------------------------------------------------------

### Route Functions

I will not go into too much detail here, the scripting methods,
functions, and procdedures should be covered elsewhere in this wiki.  

| Example:                                  |
|-------------------------------------------|
| `request_route {                          
         route(REQINIT); # Request Initial  
         route(NATDETECT); # NAT Detection  
                                            
         # CANCEL ??                        
         if (is_method("CANCEL")) {         
          exit;                             
         }                                  
                                            
         # OTHER SCRIPT CODE HERE           
 }`                                         |

[1] Route Functions use scripting language syntax and **must** be
terminated with a semicolon at the end of each statement.
