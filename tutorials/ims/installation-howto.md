\*\*Note: This document is now (2021) outdated, as the IMS packages have
been integrated into the common Kamailio repository \*\*

**Note: This document is work in progress and yet unfinished!**

This is a short installation howto for Debian Wheezy (stable).

This installation howto has been derived from here:
<http://uctimsclient.berlios.de/openimscore_on_ubuntu_howto.html>

# General preparations

We recommend, you install all components into a dedicated virtual
machine. In our lab we use OpenVz-Containers, but you can also use any
other virtual environment.

If you are not familiar with OpenVz or any other, please try
[Proxmox](http://www.proxmox.com/) or similar.

## Installation of the DNS-Server

**Important note:** A properly configured DNS-Server is mandatory for
IMS, just adding according entries in your /etc/hosts/ will not be
enough!

If you are running the DNS on your own machine then edit the file
/etc/dhcp3/dhclient.conf and uncomment this line:

    prepend domain_name_servers 127.0.0.1;

Copy the open-ims-DNS file to the bind folder and add these lines to
/etc/bind/named.conf.local:

    zone "kamailio-ims.org" {
                type master;
                file "/etc/bind/kamailio-ims.org.dnszone";
    };

**You can find a very basic dnszone-file in
"examples/ims_dnszone"-folder of the Kamailio repository**

*You will need to restart bind for these changes to take effect.*

    /etc/init.d/bind9 restart

Check that this all works. Try a ping and see if you get a response:

    ping pcscf.kamailio-ims.org

If you can not ping by DNS address, try:

    host pcscf.kamailio-ims.org

If the DNS address resolved to IP address currectly. You may need to
update your "/etc/nsswitch.conf" file according to [this question on
SO.](https://askubuntu.com/questions/81797/nslookup-finds-ip-but-ping-doesnt).
After that modification you should be able to ping by DNS address.

# Installation of the Kamailio-IMS-Packages

## Configuration of the repository (All nodes)

First, install the Key for our repository:

    wget -O - http://repository.ng-voice.com/PublicKey | apt-key add -

Then add the repository to your "/etc/apt/sources.list":

    echo "deb http://repository.ng-voice.com jessie ims rtpproxy" >> /etc/apt/sources.list

NOTE:

-   The repository is 64 Bit only
-   we do have packages for Debian 7, Debian 8 (jessie) and Ubuntu LTS
    (trusty)
-   the packages are updated regularly from trunk

And update the available packets:

    apt-get update

## Installation of Proxy-/Interrogating-/Serving-CSCF Binary packages

Install the modules:

    apt-get install kamailio kamailio-ims-modules kamailio-presence-modules kamailio-tls-modules kamailio-xml-modules kamailio-xmlrpc-modules

If you want to have an RTP-Proxy/RTP-Relay, you find the "mediaproxy-ng"
from [Sipwise](http://www.sipwise.com) in that repository as well,

    apt-get install ngcp-mediaproxy-ng

For I-CSCF you will also need a database structure:

    mysql -uroot -p < icscf.sql

(on the database server)

## Configuration of the network entities

You find the according configs in the examples folder of Kamailio
(Trunk). For the Proxy-CSCF, use the configurations in examples/pcscf,
for the Interrogating-CSCF in examples/icscf/, for the Serving-CSCF in
examples/scscf/.

The configuration for each server consists of minimum two files:

-   kamailio.cfg - the main configuration-file (general for each entity)
-   pcscf.cfg / icscf.cfg / scscf.cfg - inidividual configurations for
    the P-/I-/S-CSCF (everything, that's individual per server)
-   pcscf.xml / icscf.xml / scscf.xml - Diameter configurations

Copy the required config files to your /etc/kamailio/-folder, adapt the
config in the pcscf.cfg/pcscf.xml to your needs (change "ng-voice.com"
and the IP to your domain/IP, please remember also the escaped versions
of the domain and the IP, e.g. "pcscf\\.ng-voice\\.com). For components
with Diameter-Interface (e.g. I-/S-CSCF) you will need to modify the
according XML-files, e.g. "pcscf.xml").

Finally, you should edit the "/etc/default/kamailio"-File, in order to
run the component.

Now the Component should be able to start:

    pcscf:/# /etc/init.d/kamailio start
    Starting kamailio: kamailioloading modules under /usr/lib/kamailio/modules:/usr/lib/kamailio/modules_s:/usr/lib/kamailio/modules_k
    Listening on
             udp: 109.239.50.67:5060
             tcp: 109.239.50.67:5060
    Aliases:
             tcp: pcscf:5060
             udp: pcscf:5060
             *: pcscf.ng-voice.com:5060
             *

And voila: Your component is running!

# Installation of the Fraunhofer HSS

The Fraunhofer HSS (FHoSS) requires the original Java from Oracle/Sun.
Using OpenJDK won't work.

## Install Sun Java (on Lenny)

Note: You will need to add the “non-free” packages to your repository:

    deb http://ftp.de.debian.org/debian lenny main non-free
    deb http://security.debian.org/ lenny/updates main non-free

## Install Oracle Java (on Squeeze)

Oracle Java is no longer available in the official repository. However,
there are several ways to install Oracle Java, here is one possible way:

\*
<http://www.webupd8.org/2012/06/how-to-install-oracle-java-7-in-debian.html>

## Install the FHoSS-Packages

Add our repository to your "/etc/apt/sources.list":

    echo "deb http://repository.ng-voice.com wheezy fhoss" >> /etc/apt/sources.list

Install the FHoSS from our repository:

    apt-get install openimscore-fhoss

Create the data in the database:

    mysql -uroot -p < /etc/fhoss/sql_files/hssdb.sql

Add some sample data, if you like:

    mysql -uroot -p < /etc/fhoss/sql_files/userdata.sql

The Webinterface should be reachable on port “8080″.

The following config files (/etc/fhoss) may be of interest:

-   DiameterPeerHSS.xml: The Diameter Interconnects and listening IP
    definition
-   hss.properties: The listening IP definition for the Web-Interface
-   hibernate.properties: The database interconnection for the HSS
-   conf/tomcat-users.xml: Usernames and Passwords for the Web-User
    (default Username is: “hssAdmin” and password “hss”)
-   Note: You will need to restart the FHoSS
    (“/etc/init.d/openimscore-fhoss restart”) in order to apply changes.
