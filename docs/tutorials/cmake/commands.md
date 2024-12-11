
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

Legend for the table:

  - `OM` - Old-Makefiles
  - `CM` - CMake

| Type   | Description / Command |
| :---   | :--- |
| `---`  | Generate config files for the build system |
| `OM`   | `make cfg` |
| `CM`   | `cmake ..` |
| `---`  | Specify installation path prefix |
| `OM`   | `make PREFIX=/tmp/kamailio-dev cfg` |
| `CM`   | `cmake -DCMAKE_INSTALL_PREFIX=/tmp/kamailio-dev ..` |
| `---`  | Specify additional modules to be included in compilation |
| `OM`   | `make include_modules="app_lua db_mysql" cfg` |
| `CM`   | `cmake -DINCLUDE_MODULES="app_lua db_mysql" ..` |
| `---`  | Specify modules to be excluded from compilation |
| `OM`   | `make exclude_modules="app_lua db_mysql" cfg` |
| `CM`   | `cmake -DEXCLUDE_MODULES="app_lua db_mysql" ..` |
| `---`  | Compile `kamailio` binary (the core) |
| `OM`   | `make` |
| `CM`   | `make kamailio` |
| `---`  | Compile everything (core and modules) |
| `OM`   | `make all` |
| `CM`   | `make` |
| `---`  | Compile `acc` modules (substitute with any other module name) |
| `OM`   | `make modules modules=src/modules/acc` |
| `CM`   | `make acc` |
| `---`  | Compile with verbose output (quiet off) |
| `OM`   | `make Q=0` |
| `CM`   | `make VERBOSE=on` |
| `---`  | Specify the compiler (example with `clang`) |
| `OM`   | `make CC=clang` |
| `CM`   | `cmake -DCMAKE_C_COMPILER="clang" ..` |
