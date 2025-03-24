# Kamailio Available Targets

This document lists all available targets for Kamailio with CMake, providing a brief description of each.

Use `make target_name` to execute the desired target in the build folder.

## Build Targets

- **all**: Builds all components (core and modules) of Kamailio.
- **clean**: Cleans up the build directory by removing all generated files.
- **GenerateParser**: Generates the configuration parser source files from the configuration parser grammar files.
- **kamailio**: Builds the Kamailio core.
- **modules**: Builds all the enabled modules.
  + **<module_name>**: Compile module with name `module_name`, ie `make acc` for `acc` module.

- **kamctl**: Builds the `kamctl` utility, which is used for managing Kamailio configurations. (even though kamctl does not require building, there are some config files that are generated during the build process)
- **kamdbctl**: Builds the `kamdbctl` utility, which is used for managing Kamailio databases. (even though kamdbctl does not require building, there are some config files that are generated during the build process)
- **kamcmd**: Builds the `kamcmd` utility.
- **dbschema**: Generates the database schema for all databases used by Kamailio that are enabled in the configuration (`db_*` modules). **Note**: This target is NOT included in the default `all` target. You need to run it separately. If you want to install the schema, make sure to build it first.__
  + **dbschema_<db_name>**: Generates the database schema for a specific database. Replace `<db_name>` with the actual database name, such as `mysql`, `postgres`, `db_berkeley`, etc. See kamctl folder structure for exact naming.
  + **dbschema_<db_name>_clean**: Cleans up the database schema for a specific database. Replace `<db_name>` with the actual database name, such as `mysql`, `postgres`, `db_berkeley`, etc. See kamctl folder structure for exact naming.
- **dbschema_clean**: Cleans up the database schema for all databases used by Kamailio that are enabled in the configuration (`db_*` modules).

## Install Targets

- **install**: Installs the built components to the specified directory.
- **uninstall**: Uninstalls the previously installed components.

## Documentation Targets

- **kamailio_docs**: Generates the documentation for Kamailio and it's modules.
  + **<module_name>_doc**: Generates the documentation for a specific module. Replace `module_name` with the actual module name.
    * **<module_name>_doc_text**: Generates the documentation for a specific module in text format.
    * **<module_name>_doc_html**: Generates the documentation for a specific module in HTML format.
    * **<module_name>_readme**: Generates the documentation for a specific module in README format in the source code tree of each module.
- **kamailio_docs_man**: Generates the man pages for ALL modules.
  + **<module_name>_man**: Generates the man page for a specific module if available. Replace `module_name` with the actual module name.
- **kamailio_docs_readme**: Generates the documentation for ALL modules in README format in the source code tree of each module. _Note: This will overwrite the existing README files._

- **man**: Creates the manual pages for Kamailio core and utils.
  + **kamctl_man**: Creates the manual page for the `kamctl` and `kamdbctl` utils.
  + **kamdcmd_man**: Creates the manual page for the `kamcmd`util.
