# Howto make Debian packages for Kamailio 4.0.x

This Howto was tested with Kamailio 4.0.0. Nevertheless it should work
also with newer versions.

The build process for Debian packages generates all Kamailio packages
(also mysql, postgres, radius ...). Thus, on the PC used for compiling
the Debian packages, all required libraries must be installed, even if
you do not install all packages afterwards.

Thus, you need the client and development libraries for the database
backends (mysql and postgres), openssl, xmpp and the radiusclient-ng
libraries. These libraries are all included in Debian and can be easily
installed using apt-get. (Try 'make deb' as described below, and if you
get errors due to missing dependencies just install the respective
packages.)

Step 1-6 can be executed with normal user privileges, root privileges
are only required for stop 7.

## 1. Get the Kamailio source code

Either download a tar-ball or checkout the respective Kamilio branch
from git.

## 2. Configure the build process

Before building the Debian packages with the command "make deb", the
build configuration has to be created. Since version 4.0, sip-router by
default uses the "kamailio" flavor. Therefore, since 4.0 it is
sufficient to generate the config without any special settings.

Execute (Note: Do not specify other build options here. You can specify
them in the next step in the Debian rules file.):

    make cfg

This instructs the build process to use pkg/kamailio/deb/debian/rules
for creating the Debian packages.

## 3. Choose the Debian version

Some new modules require libraries which are not in all Debian version.
For example libjson0-dev is not available for Debian Lenny (5.0). In
this case you either have to backport the required libraries to your
Debian version or use the respective packaging files. In the second
case, the respective modules will automatically disabled.

For example if you want to build for Debian Squeeze and do not need the
troublesome modules:

    cd pkg/kamailio/deb
    mv debian debian-orig
    ln -s squeeze debian
    cd ../../..

## 4. (optional) Add build options to the rules file

If you want to activate certain build features, you can specify them in
the Debian rules file.

edit pkg/kamailio/deb/debian/rules:

    configure-stamp:
            dh_testdir
            # Add here commands to configure the package.
            $(MAKE) STUN=1 FLAVOUR=kamailio cfg prefix=/usr cfg_prefix=$(CURDIR)/debian/kamailio

For example in above example the custom build parameter "STUN=1" was
added.

## 5. (optional) Tag your Debian package

If you want to mark you self-built Debian package, add an entry on top
of pkg/kamailio/deb/debian/changelog.

## 6. Build the packages

    make deb

If the build process fails due to missing dependencies install them via
"apt-get install ....." and try "make deb" again.

If the build succeeds, the packages are located in `../`

## 7. Install Kamailio

Install Kamailio and the relevant Kamailio modules. For example to
install Kamailio for MySQL and often needed modules:

    cd ..
    sudo dpkg -i kamailio_4.0.0_i386.deb kamailio-mysql-modules_4.0.0_i386.deb kamailio-tls-modules_4.0.0_i386.deb kamailio-utils-modules_4.0.0_i386.deb kamailio-xml-modules_4.0.0_i386.deb kamailio-xmlrpc-modules_4.0.0_i386.deb
