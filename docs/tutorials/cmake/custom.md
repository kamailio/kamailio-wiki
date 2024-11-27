# Customizing the Build with CMake Options

When building Kamailio from source using CMake, you can customize the build process by passing various configuration options. These options allow you to tailor the build to your specific needs, such as specifying the installation prefix, including or excluding modules, and enabling or disabling features.

**NOTE: We assume that our current working directory is the root of the Kamailio source tree and therefore we use `-S . -B build` in the examples below.**

*The alternative is to change directory to the `build` directory and use `cmake .. [all the options]`.*

## Configure the Build

### Select generator (Optional, You can omit this step)

Default is platform dependant (`make` for UNIX)

We can use generators that produces build instructions for `make`, `ninja` or other [supported](https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html#manual:cmake-generators(7)) generators.

This should be provided as a parameter to the `cmake` command:

```bash
cmake -S . -B build -G "Unix Makefiles"
#or
# cmake -S . -B build -G "Ninja"
```

### CMAKE_INSTALL_PREFIX

The `CMAKE_INSTALL_PREFIX` option specifies the directory where Kamailio will be installed. By default, Kamailio is installed in `/usr/local`. To change the installation prefix, use the following command:

```bash
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/path/to/installation/directory
```

Replace `/path/to/installation/directory` with the desired installation directory.

### INCLUDE_MODULES and EXCLUDE_MODULES

Kamailio has a wide range of modules that can be included or excluded from the build. The `INCLUDE_MODULES` and `EXCLUDE_MODULES` options allow you to specify which modules to include or exclude.

To include specific modules, use the following command:

```bash
cmake -S . -B build -DINCLUDE_MODULES="module1 module2 module3"
```

Replace `module1,module2,module3` with the names of the modules you want to include, **separated by space**.

**Note:** If you specify both `INCLUDE_MODULES` and `EXCLUDE_MODULES`, the `EXCLUDE_MODULES` option takes precedence. This means that if a module is listed in both options, it will be excluded from the build, **even if it is also listed in the `INCLUDE_MODULES` option**.

To exclude specific modules, use the following command:

```bash
cmake -S . -B build -DEXCLUDE_MODULES="module4 module5 module6"
```

Replace `module4 module5 module6` with the names of the modules you want to exclude, **separated by space**.

### MODULE_GROUP_NAME

The `MODULE_GROUP_NAME` option allows you to specify a custom module group name. This is useful for organizing modules into logical groups. To set a custom module group name, use the following command:

```bash
cmake -S . -B build -DMODULE_GROUP_NAME="GROUP"
```

Replace `GROUP` with the desired module group name. By default, the module group name is set to `DEFAULT`. You can see the available group names in the `groups.cmake` file and cmake will print if you provide and invalid group name.

### BUILD_DOC

The `BUILD_DOC` option controls whether documentation is built or not. To enable documentation building, use the following command:

```bash
cmake -S . -B build -DBUILD_DOC=ON
```

To disable documentation building, use the following command:

```bash
cmake -S . -B build -DBUILD_DOC=OFF
```

### VERBOSE

The `VERBOSE` option controls the verbosity of the build process. To enable verbose output, use the following command:

```bash
cmake -S . -B build -DVERBOSE=ON
```

To disable verbose output, use the following command:

```bash
cmake -S . -B build -DVERBOSE=OFF
```

### USE_TLS

The `USE_TLS` option controls whether TLS support is enabled or not. To enable TLS support, use the following command:

```bash
cmake -S . -B build -DUSE_TLS=ON
```

To disable TLS support, use the following command:

```bash
cmake -S . -B build -DUSE_TLS=OFF
```

### Other Feature Options

Kamailio offers various feature options that can be enabled or disabled during the build process. Some examples (but not limited) include:

* `USE_MCAST`: Enables or disables Multicast.
* `USE_DNS_CACHE`: Enables or disables DNS cache.
* `USE_DNS_FAILOVER`: Enables or disables DNS failover.
* `LUAJIT`: Enable LuaJIT (for app_lua modules).

To see the full list of feature options (this will include some variables pointing to found libraries and also CMAKE configureable variables like `CMAKE_BUILD_TYPE:STRING=`),

```bash
cmake . -LAH  # Remove A if you do not want to see Advanced Variables (order is important)
```

or if you prefer there is a `ccmake` terminal-GUI tool that can be used to configure the build.

```bash
    sudo apts install cmake-curses-gui
    ccmake .. # from the build directory
    # Use arrow keys to navigate, Enter to select.
    # Press 't' to toggle advancded variables like external packages location.
    # Press 'c' to configure (this will run cmake configuration step).
    # Press 'g' to generate Makerfiles or whatever build system you use.
```

To enable or disable these features, use the following format:

```bash
cmake -S . -B build -DFEATURE_OPTION=ON/OFF
```

Replace `FEATURE_OPTION` with the name of the feature you want to enable or disable, and `ON/OFF` with the desired state.

### Example Command

Here's an example command that includes specific modules, excludes others, sets a custom module group name, enables documentation building, and enables TLS support:

```bash
cmake -S . -B build -DINCLUDE_MODULES="tls async" -DEXCLUDE_MODULES="db_oracle dnssec jwt microhttpd tls" -DMODULE_GROUP_NAME=DEFAULT -DBUILD_DOC=ON -DUSE_TLS=ON
```

**Remember to replace the module names and the custom module group name with your desired values.**

## Building the Project

After configuring the project with the desired options, you can build it using the following command: (This will use whatever generator you have configured in your system and configured the project to use see `CMAKE_GENERATOR` [variable](https://cmake.org/cmake/help/latest/variable/CMAKE_GENERATOR.html))

### Build everything configured

See `cmake --build` [docs](https://cmake.org/cmake/help/latest/manual/cmake.1.html#build-a-project) for more options

```bash
cmake --build build -j8
```

which is equivalent to (if you are using a `CMAKE_GENERATOR=Unix Makefiles`)

```bash
cd build
make -j8
```

`make all` is the same as `make` and `-j8` will use 8 threads to build the project.

### Build a specific target

The following command will be only the target kamailio which
is the core of the project.

```bash
cmake --build build --target kamailio
```

Every module (each folder inside `src/modules/`) is a target and you can build it individually by using it's name as the target.

Mind that some modules depending on external libraries will error if their dependencies are not found and prompt you to provide the path to the include folders and library files or install the development package for that library.

For example:

`tls` will error if `openssl` is not found: You should either install the `openssl` development package or provide the path to the `openssl` include folders and library using the `OPENSSL_INCLUDE_DIR` and `OPENSSL_SSL_LIBRARY` variables (See Feature Options with Advanced Variables section above).

Similar variables exist for other libraries.

To build a specific module, use the following command:

```bash
#cmake --build build --target <module_name>
cmake --build build --target tls
cmake --build build --target async
```

or equivalently

```bash
cd build # if you are not already in the build directory
make tls
make async
```

### Clean the Project

To clean the project, use the following command:

```bash
cmake --build build --target clean
```

or equivalently

```bash
cd build # if you are not already in the build directory
make clean
```

This will remove all the generated files and directories, leaving the source code intact.

## Reconfigure the Project

To reconfigure the project, you can simply run the configuration command again:

**Note: It's recommended to delete the contents of build directory and create a new one to avoid any potential issues. See next note.**

**Note: If you have a recent enough version of CMake (>3.24), you can use the `--fresh` option. This removes any existing CMakeCache.txt file and associated CMakeFiles/ directory, and recreates them from scratch**

You can also use a new build directory to avoid any potential issues and apply different compile options for different builds.

```bash
cmake -S . -B build_no_tls -DCMAKE_INSTALL_PREFIX=/opt/kamailio-no-tls -DUSE_TLS=OFF [-Dother_option=value [...]]
```

## Install the Project

After building the project, you can install it using the following command:

```bash
cmake --install build
```

or equivalently

```bash
cd build # if you are not already in the build directory
make install # you may need sudo if install in system paths
```

This will install the project to the `CMAKE_INSTALL_PREFIX` if provided or the default `/usr/local` if not provided.

### Uninstall the Project

To uninstall the project, use the following command:

```bash
cmake --build build --target uninstall
```

or equivalently

```bash
cd build # if you are not already in the build directory
make uninstall # you may need sudo if install in system paths
```

This will uninstall the project from the `CMAKE_INSTALL_PREFIX`.

## Using Kamailio

After installing Kamailio, you can use it by running the `kamailio` command.

The rest of the steps should be the same as [Step 6: What and where was installed](<https://www.kamailio.org/wikidocs/install/devel/git/#6-what-and-where-was-installed>).

For more information on using Kamailio, see the [Kamailio documentation](https://www.kamailio.org/w/documentation/).

## Troubleshooting

If you encounter any issues during the build process, please check the output for error messages.

If you are unable to resolve the issue, you can seek help on the [Kamailio mailing list](https://lists.kamailio.org/mailman3/hyperkitty/list/sr-users@lists.kamailio.org/) or [open an issue](https://github.com/kamailio/kamailio/issues) on the Kamailio GitHub repository.

## Additional Resources

* [CMake documentation](https://cmake.org/documentation/)
* [Kamailio documentation](https://www.kamailio.org/w/documentation/)
* [Kamailio mailing list](https://www.kamailio.org/w/mailing-lists/)
* [Kamailio GitHub repository](https://github.com/kamailio/kamailio)
