# The Basics Of Building Kamailio From Source Using CMake

[Building Kamailio From Source Using CMake - ToC](index.md)

This guide will walk you through the process of building Kamailio from source using CMake.

## Prerequisites

Before you begin, ensure you have the following installed:

For building core Kamailio:

- Git
- CMake (version 3.10 or higher)
- GCC (GNU Compiler Collection)
- Bison and Flex (for parsing)

For additional features (CMake will error or warn if a library is not found):

- MySQL or PostgreSQL (for database support) (optional)
- OpenSSL (for TLS support) (optional)
- libxml2 (for XML support) (optional)
- many more (check each module's documentation for specific requirements)

## Building Kamailio

1. Clone the Kamailio repository from GitHub:

   ```bash
   git clone https://github.com/kamailio/kamailio.git
   ```

2. Navigate to the Kamailio directory:

   ```bash
   cd kamailio
   ```

### Using CMake commands

3. Create the build directory if it doesn't exist and cofigure the project:

    ```bash
    cmake -S . -B build # `-S .` where is the CMakeLists.txt file, `-B build` where to put the build files
    ```

4. Build the project:

   ```bash
   cmake --build build
   ```

5. Install the project:

   ```bash
   sudo cmake --install build
   ```

### Or using make commands

3. Create a build directory (you can name it whatever you want) and navigate to it:

   ```bash
   mkdir build
   cd build
   ```

4. Run CMake to generate the build files:

   ```bash
   cmake ..
   ```

5. Build the project:

   ```bash
   make
   ```

6. Install the project:

   ```bash
   sudo make install
   ```

Kamailio should now be installed on your system (default path is `/usr/local/sbin/kamailio`).

You can start it using the following command: (you may need to use `sudo` if you installed it in a system directory and use system files)

   ```bash
   kamailio -f /usr/local/etc/kamailio/kamailio.cfg
   ```

Congratulations! You have successfully built and installed Kamailio from source using CMake.
