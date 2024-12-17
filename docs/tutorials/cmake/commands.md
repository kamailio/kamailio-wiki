
# Old-Makefiles And CMake Commands

[Building Kamailio From Source Using CMake - ToC](index.md)

The corresponding or similar commands between the old build systems using Makefiles
and the new one using CMake.

The Old-Makefiles commands are run in the root folder of Kamailio source code:

``` bash
cd /path/to/kamailio
```

## You can build Kamailio using either of the following methods

### Method 1: Using CMake and Make

_**Note:**_ `make` should be called in **the build directory.**

_**Note:**_ if `cmake` is in the example command, it usually has to be followed by `make` to perform the compilation or installation.

``` bash
cd /path/to/kamailio
mkdir build
cd build
cmake .. [options ...]  # Configuration phase
make [target]           # Build
make install            # Installation
```

### Method 2: Using CMake for Configuration, Build, and Install

Allow builds and install using the appropriate build system (`Unix Makefiles` or `Ninja`):

_**Note:**_ All `cmake` commands should be called in `kamailio` **root directory.**

``` bash
cd path/to/kamailio
cmake -S . -B build_folder [options ...]  # Configuration phase
cmake --build build_folder  [-t target]   # Build
cmake --install build_folder              # Installation
```

## Configuration comparison: Old Makefiles vs. CMake

| Description / Command                                      | Old Makefiles Command                          | CMake Command                                      |
|-----------------------------------------------------------|------------------------------------------------|---------------------------------------------------|
| Generate configuration files for the build system         | `make cfg`                                    | `cmake ..`                                       |
| Specify installation path prefix                           | `make PREFIX=/tmp/kamailio-dev cfg`          | `cmake -DCMAKE_INSTALL_PREFIX=/tmp/kamailio-dev ..` |
| Specify additional modules to be included in compilation   | `make include_modules="app_lua db_mysql" cfg`| `cmake -DINCLUDE_MODULES="app_lua db_mysql" ..` |
| Specify modules to be excluded from compilation            | `make exclude_modules="app_lua db_mysql" cfg`| `cmake -DEXCLUDE_MODULES="app_lua db_mysql" ..` |
| Specify the compiler (example with `clang`)               | `make CC=clang`                               | `cmake -DCMAKE_C_COMPILER="clang" ..`             |
| Provide extra compiler and linker options/flags _**See note**_| | `LDFLAGS="-Wl,-z,relro" CFLAGS="-Wformat -Werror=format-security" cmake ..`|

All these options can and **SHOULD** be combined in a single `CMake` command.

_**Note:**_ Be sure to run this the **first** time you run the CMake configuration phase. Subsquent calls have the corresponding CMake variables used as cached already and therefore do no use the provided ones to initialize them. You can use `cmake --fresh ..` though, as if you were calling it the first time.

## Provided targets comparison: Old Makefiles vs. CMake

| Description / Command | Old-Makefiles | CMake |
| -- | -- | -- |
| Compile everything (core and modules) | `make all` | `make` \| `make all`|
| Compile `kamailio` binary (the core) | `make` | `make kamailio` |
| Compile `acc` modules (substitute with any other module name) | `make modules modules=src/modules/acc` | `make acc` |
| Compile `acc` documentation (substitute with any other module name) | `make modules-readme modules=src/modules/acc` | `make acc_doc` |
| Compiles all modules docs (both html and txt) (Requires `BUILD_DOC` option to be enabled Default=`ON`) | `make modules-readme` | `make kamailio_docs`|
| Compile with verbose output (quiet off) | `make [target] Q=0` | `make [target] VERBOSE=1\|on` |
| Generate the DB Schemas for the xml files | `make dbschema`| `make dbschema` |
| Generate specific DB schema (replace `mysql` with the name of database as found in the `utils/kamctl/`) _**See note**_ | -- | `make dbschema_mysql` |
| **Clean targets**|||
| Clean everything build | `make distclean`| `make clean`|
| Clean dbschema files | -- | `make dbschema_clean` |
| Uninstall everything (requires that it was installed with `make install`)| -- | `make uninstall` |
| **Install targets** |||
| Install all | `make install` | `make install` |
| Install only docs | -- | `make install_kamailio_docs` |
| Install only kamailio utils (`kamctl`,`kamdbctl` and their config files)| -- | `make install_kamailio_utils` |

_**Note:**_ To produce the `xhttp_pi` schemas use both `make dbschema_pi_framework_mod` and `make dbschema_pi_framework_table`.
