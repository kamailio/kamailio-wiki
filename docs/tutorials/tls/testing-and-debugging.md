# Testing and Debugging TLS Connections

## Test TLS Connections with a Web Browser

Testing TLS connections is sometimes a bit tricky. You have to find a
SIP client which supports TLS, and then if there are problems, you often
do not know if the problem is caused by the SIP client or the SIP
server.

When using Kamailio as SIP proxy it is very easy to test TLS connections
by using a web browser and configure Kamailio to accept HTTP(S)
connections too. Just add the following config snippets to kamailio.cfg
and restart Kamailio:

    # to allow HTTP requests
    tcp_accept_no_cl=yes

    .
    .
    .

    # load web server module
    loadmodule "xhttp.so"

    .
    .
    .

    # xhttp event route
    event_route[xhttp:request] {
      xhttp_reply("200", "OK", "text/html","<html><body>Received HTTP request to $hu from [$si:$sp] with protocol $proto</body></html>");
    }

Then point your browser to Kamailio and check if the configuration
works:

1. Try plain TCP (HTTP) connections:
    <http://ip.address.ofyour.sipproxy:5060/>
2. If TCP works, try TLS (HTTPS) connections:
    <https://ip.address.ofyour.sipproxy:5061/>

If the browser complains about invalid certificates, but after accepting
the invalid certificate you receive the response from Kamailio, then TLS
works technically, but you have problems with the certificate validation
(e.g. Kamailio's certificate was not signed by a well known CA and you
have to import the CA into the browser's certificate store).

## Test TLS Connections with OpenSSL

This command is useful to connect to the TLS server without any
certificate validation.

    openssl s_client -connect 83.136.32.159:5061 -no_ssl2 -bugs

For full debugging and inspection of all server certificates use
"-showcerts" and "-debug":

    openssl s_client -showcerts -debug -connect 83.136.32.159:5061 -no_ssl2 -bugs

## Debugging TLS Connections

On the server side you can use the "ssldump" utility to see the TLS
handshake, e.g. "ssldump port 5061". This will show you which party
closes the TLS connection (e.g. sends "Alert" message) and maybe also
the cause (e.g. "unknown CA"). Note: ssldump is quite old and sometimes
fails to decode some TLS protocol elements.

For example this is the ssldump trace from a failing handshake between
Kamailio 3.3 and Eyebeam 1.5:

    New TCP connection #1: pc177.example.com(51642) <-> sip.example.com(5061)
    1 1  0.0009 (0.0009)  C>S  Handshake
          ClientHello
            Version 3.1
            cipher suites
            TLS_DHE_RSA_WITH_AES_256_CBC_SHA
            TLS_RSA_WITH_AES_256_CBC_SHA
            TLS_DHE_DSS_WITH_AES_256_CBC_SHA
            compression methods
                      NULL
    1 2  0.0022 (0.0012)  S>C  Handshake
          ServerHello
            Version 3.1
            session_id[0]=

            cipherSuite         TLS_RSA_WITH_AES_256_CBC_SHA
            compressionMethod                   NULL
    1 3  0.0022 (0.0000)  S>C  Handshake
          Certificate
    1 4  0.0022 (0.0000)  S>C  Handshake
          ServerHelloDone
    1 5  0.0038 (0.0016)  C>S  Alert
        level           fatal
        value           unknown_ca
    1    0.0044 (0.0005)  C>S  TCP RST

Above trace clearly shows that the client closes the TLS/TCP connection
due to "unknown_ca". This usually means that the client is configured to
perform certificate validation but the validation failed. Either the
signing CA is unknown to the client, or the intermediate certificates
are missing. After adding the intermediate certificates to Kamailio's
TLS configuration ("ca_list" parameter) Eyebeam accepted the certificate
and the correct trace is:

    New TCP connection #1: pc177.example.com(51733) <-> sip.example.com(5061)
    1 1  0.0009 (0.0009)  C>S  Handshake
          ClientHello
            Version 3.1
            cipher suites
            TLS_DHE_RSA_WITH_AES_256_CBC_SHA
            TLS_RSA_WITH_AES_256_CBC_SHA
            TLS_DHE_DSS_WITH_AES_256_CBC_SHA
            compression methods
                      NULL
    1 2  0.0024 (0.0015)  S>C  Handshake
          ServerHello
            Version 3.1
            session_id[0]=

            cipherSuite         TLS_RSA_WITH_AES_256_CBC_SHA
            compressionMethod                   NULL
    1 3  0.0024 (0.0000)  S>C  Handshake
          Certificate
    1 4  0.0024 (0.0000)  S>C  Handshake
          ServerHelloDone
    1 5  0.0118 (0.0093)  C>S  Handshake
          ClientKeyExchange
    1 6  0.0118 (0.0000)  C>S  ChangeCipherSpec
    1 7  0.0118 (0.0000)  C>S  Handshake
    1 8  0.0311 (0.0193)  S>C  ChangeCipherSpec
    1 9  0.0311 (0.0000)  S>C  Handshake
    1 10 0.0433 (0.0121)  C>S  application_data
    1 11 0.0433 (0.0000)  C>S  application_data
    1 12 0.1175 (0.0741)  S>C  application_data
    1 13 0.1185 (0.0010)  S>C  application_data

On the client side it is handy to use Wireshark to capture the SIPS
traffic via connections attempts. Then verify the handshake to find out
which party closes the connection. Wireshark is also handy to inspect
the certificates exchanged in the TLS handshake, e.g. if the server also
provided the proper server certificate and intermediate certificates.

## Decoding of TLS Connections with Wireshark

Wireshark can be used to decode SSL/TLS sessions. To decode SSL/TLS
connections, the following requirements must be fulfilled:

- The private key of the TLS server is known (maybe both keys are
    needed if mutual TLS (=client certificate) is used?)
- The TLS connections does not use a Diffie-Hellman cipher
- Wireshark captures the TLS session from the beginning (including the
    TLS handshake)

To decode TLS connections configure Wireshark and Kamailio:

- Copy the server's private key to the PC running Wireshark. Then
    configure Wireshark to use this key:
  - Edit → Preferences → Protocols → SSL → RSA Keys List: e.g.:
        *ip.address.of.server,5061,sip,c:\\key.pem*
- If the server uses Diffie-Hellman (DH) Ciphers (depends on default
    compile time settings of libssl) you have to configure Kamailio to
    use other ciphers. See:
  - <http://kamailio.org/docs/modules/3.3.x/modules/tls.html#cipher_list>
        and
  - <http://www.openssl.org/docs/apps/ciphers.html>
- To make sure you capture the TLS handshake
  - Close the SIP client
  - Start Wireshark and start capturing
  - Start the SIP client.

If you have problems decoding the TLS session you should enable
debugging in Wireshark: Edit -> Preferences -> Protocols -> SSL -> SSL
Debug File

## Unencrypted TLS (NULL cipher)

TLS allows unencrypted usage when using the NULL cipher. This is very
useful for debugging TLS connection, as you immediately see the SIP
traffic.

The NULL cipher is usually disabled, thus it must be explicitly enabled.
In Kamailio this can be done by configuring the TLS module:

    modparam("tls", "cipher_list", "NULL")

Of course also the SIP client must be configured to use the NULL cipher.
Unfortunately this is hardly supported by SIP clients.

## TLS Clients

Following a list of TLS clients and the certificate store they use
(please extend):

- Eyebeam Windows: Windows certificate store
- QjSimple: select CA file in configuration dialog
- Internet Explorer: Windows certificate store
- Chrome: Windows certificate store
- Firefox: Dedicated Firefox certificate store
- Asterisk: Configured in sip.conf

## SIP Clients with TLS Client Certificate Support

Following a list of SIP clients that support TLS user certificates
(needed for incoming TLS connections, of if the TLS server requires
mutual TLS (MTLS))

- QjSimple: select private key and certificate file in configuration
    dialog
- Jitis: Settings -> Advanced -> TLS

### Trunking with Microsoft Lync

For Microsoft Lync it is very important that the CN in the Kamailio
server (and client) certificate use the name configured in the Topology
as the PSTN trunk. Other names may be in the SubjectAltName fields. Lync
by default asks for a TLS client certificate when connecting to it using
TLS. MS calls this MTLS - Mutual TLS.

- Microsoft: TLS and MTLS in Lync
    <http://technet.microsoft.com/en-us/library/gg195752(v=ocs.14>).aspx
