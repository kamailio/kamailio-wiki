# Creating a New Kamailio Module with CMake

This guide will walk you through the steps to create a new module for Kamailio using its CMake-based build system.

## 1. Prepare Your Environment

- Ensure you have a working Kamailio source tree with CMake support.
- Install required build tools: `cmake`, `gcc`/`clang`, `make`, etc.

## 2. Create the Module Directory

Navigate to the `src/modules` directory and create a new folder for your module, e.g., `my_module`:

```sh
cd src/modules
mkdir my_module
cd my_module
```

## 3. Add Source Files

Create your module source files, typically at least:

- `my_module.c` — main module code
- `my_module.h` — (optional) header for shared declarations

You can start with a minimal `my_module.c`:

```c
#include "../../core/mod_fix.h"
#include "../../core/sr_module.h"
// any other includes you need

static int mod_init(void) {
    LM_INFO("my_module: mod_init called\n");
    return 0;
}

static int child_init(int rank) {
    LM_INFO("my_module: child_init called\n");
    return 0;
}

static void mod_destroy(void) {
    LM_INFO("my_module: mod_destroy called\n");
}

struct module_exports exports = {
    "my_module",    /* module name */
    DEFAULT_DLFLAGS,/* dlopen flags */
    0,              /* load order */
    mod_init,       /* module init function */
    child_init,     /* per-child init function */
    mod_destroy,    /* destroy function */
    0,              /* oncancel function */
    NULL,           /* cmd exports */
    NULL,           /* param exports */
    NULL,           /* RPC exports */
    NULL,           /* pseudo-variables exports */
    NULL,           /* response function */
    NULL,           /* event routes */
    NULL            /* extra */
};
```

## 4. Add a CMakeLists.txt

Create a `CMakeLists.txt` in your module directory:

```cmake
# src/modules/my_module/CMakeLists.txt

set(MODULE_SOURCES my_module.c anotherfile.c)
# Alternative globing any .c residing in the same directory
# file(GLOB MODULE_SOURCES "*.c")

# module_name is defined in the parent CMakeLists.txt
# and is equal to the name of the directory
# Built as shared library
add_library(${module_name} SHARED ${MODULE_SOURCES})

# Introduce any module related options if appropriate
option(MY_MODULE_OPTION "Enable my module option" OFF)
set(MY_MODULE_OPTION_VALUE "default_value" CACHE STRING "My module option description")

# Add dependencies if needed
find_package(ZLIB REQUIRED)
find_package(Threads REQUIRED)

# Add include directories
# target_include_directories(${module_name} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
# Add compile definitions
target_compile_definitions(${module_name} PRIVATE MY_MODULE_OPTION=${MY_MODULE_OPTION_VALUE})

# Link dependencies
target_link_libraries(${module_name} PRIVATE ZLIB::ZLIB Threads::Threads)

# Add any other cmake command for custom targets or install rules
```

## 5. Integrate with the Build

Add it to one of the available groups in `groups.cmake` if it's appropriate.

Your module will be automatically included in the build process if it's placed in the `src/modules` directory and it contains a `CMakeLists.txt` file.

## 6. Build the Module

From the source directory:

```sh
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/path/to/install -DMODULE_GROUP_NAME="DEFAULT my_group" -DMY_MODULE_OPTION=ON -DINCULDE_MODULES="my_module"
cmake --build build --target my_module
cmake --install build
```

Replace `/path/to/install` with your desired installation path.

Your module (`my_module.so`) will be built and placed in the appropriate modules directory.

## 7. Test Your Module

- Add `loadmodule "my_module.so"` to your Kamailio configuration file.
- Start Kamailio and check the logs for your module's messages.

---

**Tips:**

- Use existing modules as references for more advanced features (parameters, commands, etc.).
- For more details, see the Kamailio developer documentation and the CMake files in other modules.
