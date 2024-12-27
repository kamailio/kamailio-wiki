# Kamailio Available Targets

This document lists all available targets for Kamailio with CMake, providing a brief description of each.

Use `make target_name` to execute the desired target in the build folder.

## Build Targets

- **all**: Builds all components (core and modules) of Kamailio.
- **install**: Installs the built components to the specified directory.
- **clean**: Cleans up the build directory by removing all generated files.
- **kamailio**: Builds the Kamailio core.
- **modules**: Builds all the enabled modules.
  + **module_name**: Compile module with name `module_name`, ie `make acc` for `acc` module.

- **kamctl**: Builds the `kamctl` utility, which is used for managing Kamailio configurations.
- **kamdbctl**: Builds the `kamdbctl` utility, which is used for managing Kamailio databases.

## Install Targets

- **install**: Installs the built components to the specified directory.
- **uninstall**: Uninstalls the previously installed components.
- **install-kamailio-utils**: Installs the Kamailio utilities (`kamctl` and `kamdbctl`) and kamailio congiguration files.
  + **install-kamailio-utils-bin**: Installs the Kamailio utilities binaries (kamctl kamdbctl).
  + **install-kamailio-utils-cfg**: Installs the Kamailio utilities configuration files (kamctlrc kamailio.cfg).
- **install_kamailio_docs**: Installs the Kamailio documentation.

## Documentation Targets

- **kamailio_docs**: Generates the documentation for Kamailio and it's modules.
  + **[module_name]_doc**: Generates the documentation for a specific module. Replace `module_name` with the actual module name.
    * **[module_name]_txt**: Generates the documentation for a specific module in text format.
    * **[module_name]_html**: Generates the documentation for a specific module in HTML format.
    * **[module_name]_README**: Generates the documentation for a specific module in README format in the source code tree of each module.

- **man**: Creates the manual pages for Kamailio commands.
