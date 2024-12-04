
# Old-Makefiles And CMake Commands

[Building Kamailio From Source Using CMake - ToC](index.md)

The corresponding or similar commands between the old build systems using Makefiles
and the new one using CMake.

The Old-Makefiles commands are run in the root folder of Kamailio source code:

```
cd /path/to/kamailio
```

The CMake commands have to be run after:

```
cd /path/to/kamailio
mkdir build
cd build
```

| Old-Makefiles  | CMake         | Description |
| :------------- | :------------ | :---------- |
| `make cfg`  | `cmake ..`  | Generate config files for the build system |
| `make PREFIX=/tmp/kamailio-dev cfg ` | `cmake -DCMAKE_INSTALL_PREFIX=/tmp/kamailio-dev ..` | Specify installation path prefix |
| `make include_modules="app_lua db_mysql" cfg` | `cmake -DINCLUDE_MODULES="app_lua db_mysql" ..` | Specify additional modules to be included in compilation |
| `make`      | `make kamailio` | Compile `kamailio` binary (the core) |
| `make all`  | `make` | Compile everything (core and modules) |
| `make modules modules=src/modules/acc` | `make acc` | Compile `acc` modules (substitute with any other module name) |
| `make Q=0` | `make VERBOSE=on` | Compile with verbose output (quiet off) |


