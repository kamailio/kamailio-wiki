# Howto switch to OpenSSL 1.0 for TLS Connections

## Debian and Ubuntu

First of all you need to make and install OpenSSL 1.0.2r from source.

    sudo apt install build-essential checkinstall zlib1g-dev -y

    cd /usr/src

    wget https://www.openssl.org/source/openssl-1.0.2r.tar.gz

    tar -xvzf openssl-1.0.2r.tar.gz

    cd openssl-1.0.2r

    ./config -d --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib

    make
    make test

    make install

    nano /etc/ld.so.conf.d/openssl-1.0.2r.conf

Add this line and save:

    /usr/local/ssl/lib

    sudo ldconfig -v

    mv /usr/bin/c_rehash /usr/bin/c_rehash.BEKUP
    mv /usr/bin/openssl /usr/bin/openssl.BEKUP

    export PATH=$PATH:/usr/local/ssl/bin

Link binaries to path:

    sudo ln -s /usr/local/ssl/bin/c_rehash /usr/bin/c_rehash
    sudo ln -s /usr/local/ssl/bin/openssl /usr/bin/openssl

Restart.

    sudo shutdown -r now

Check OpenSSL path, should return '/usr/bin/openssl'.

    which openssl

Check OpenSSL version, should return 'OpenSSL 1.0.2r 26 Feb 2019'.

    openssl version

Modify '/usr/src/kamailio/src/modules/tls/makefile'.

Change this:

    ifneq ($(SSL_BUILDER),)
        DEFS += $(shell $(SSL_BUILDER) --cflags)
        LIBS += $(shell $(SSL_BUILDER) --libs)
    else
        DEFS += -I$(LOCALBASE)/ssl/include
        LIBS += -L$(LOCALBASE)/lib -L$(LOCALBASE)/ssl/lib \
                -L$(LOCALBASE)/lib64 -L$(LOCALBASE)/ssl/lib64 \
                -lssl -lcrypto
        # NOTE: depending on the way in which libssl was compiled you might
        #       have to add -lz -lkrb5   (zlib and kerberos5).
        #       E.g.: make TLS_HOOKS=1 TLS_EXTRA_LIBS="-lz -lkrb5"
    endif

To this:

    DEFS+=  -I/usr/local/ssl/include
    LIBS+=  -L/usr/local/ssl/lib \
            -lssl -lcrypto

Make clean, make and make install:

    cd /usr/src/kamailio/src/modules/tls
    make clean
    make
    make install
