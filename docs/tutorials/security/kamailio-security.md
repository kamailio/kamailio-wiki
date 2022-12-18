# Overview of Security related config snippets

    Author of initial tutorial:
    Davy Van De Moere
      <davy.van.de.moere@gmail.com>

    Added info of the secfilter module:
    Jose Luis Verdeguer
      <pepeluxx@gmail.com>

Being responsible for VoIP infrastructure means you will have to
co-exist with Hackers. This page is an attempt to list (all) config
snippets you can use in Kamailio to have more fun and success in your
eternal battle!

## Security by Obscurity

### Topoh module

Albeit being a bad principle, obscuring your networks insecurities as a
part of a wider scheme is a good way to keep malicious people away from
your network.

In Kamailio there is a great module called topoh, read Daniels post
[here](http://by-miconda.blogspot.be/2010/01/best-of-new-in-kamailio-300-10-topology.html).

It helps you to hide details, typical use cases being:

-   protect the addresses of your PSTN gateways - will protect you
    against people trying to attack them to get free calls
-   protect your internal network topology - when having a big platform
    with many servers, you do not disclose their addresses
-   interconnection provider - to keep the details of connected parties
    secret to the other, to prevent a bypass of its service in the
    future

(bluntly
[copied](http://by-miconda.blogspot.be/2010/01/best-of-new-in-kamailio-300-10-topology.html))

    loadmodule "/usr/local/lib64/kamailio/modules/topoh.so"
    modparam("topoh", "mask_key", "YouDoHaveToChangeThisKey")
    modparam("topoh", "mask_ip", "10.0.0.1")
    modparam("topoh", "mask_callid", 1)

To further protect the topology of your network, add RTPProxy to your
config, this makes sure your Asterisk/FreeSwitch/... boxes can be fully
hidden.

### Firewalling

Portscans are inevitable, but we can fight back by making sure the
portscan takes very long and gives random results, consider an iptables
setup like the one below, it needs for sure some tweaking to work for
you, but it will make an nmap to your box slow and close to fully
useless

    *filter
    :INPUT DROP [0:0]
    :FORWARD DROP [0:0]
    :OUTPUT DROP [0:0]
    :CHECK_TCP - [0:0]
    :ICMP - [0:0]
    :PRIVATE - [0:0]
    :PSD - [0:0]
    :SERVICES - [0:0]
    -A INPUT -i lo -j ACCEPT 
    -A INPUT -i eth0 -p ipv6 -j ACCEPT 
    -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT 
    -A INPUT -j SERVICES 
    -A OUTPUT -o lo -j ACCEPT 
    -A OUTPUT -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT 
    -A CHECK_TCP -p tcp -m tcp ! --tcp-flags SYN,RST,ACK SYN -m state --state NEW -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,ACK -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,PSH,URG -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,ACK FIN -m state --state INVALID,NEW,RELATED -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,SYN FIN,SYN -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags SYN,RST SYN,RST -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,RST FIN,RST -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags PSH,ACK PSH -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags ACK,URG URG -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-option 64 -j DROP 
    -A CHECK_TCP -p tcp -m tcp --tcp-option 128 -j DROP 
    -A ICMP -p icmp -m icmp --icmp-type 11/1 -m limit --limit 5/sec -m state --state NEW -j ACCEPT 
    -A ICMP -p icmp -m icmp --icmp-type 11/0 -m limit --limit 5/sec -m state --state NEW -j ACCEPT 
    -A ICMP -p icmp -m icmp --icmp-type 3 -m limit --limit 10/sec -m state --state NEW -j ACCEPT 
    -A ICMP -p icmp -m icmp --icmp-type 8 -m limit --limit 10/sec --limit-burst 10 -m state --state NEW -j ACCEPT 
    -A ICMP -p icmp -j DROP 
    -A PRIVATE -d 192.168.0.0/16 -j DROP 
    -A PRIVATE -d 172.16.0.0/12 -j DROP 
    -A PRIVATE -d 10.0.0.0/8 -j DROP 
    -A PRIVATE -j RETURN 
    -A PSD -p tcp -m statistic --mode random --probability 0.050000 -j REJECT --reject-with icmp-port-unreachable 
    -A PSD -p tcp -m statistic --mode random --probability 0.050000 -j TARPIT  --reset 
    -A PSD -p tcp -m statistic --mode random --probability 0.500000 -j TARPIT  --tarpit 
    -A PSD -p udp -m statistic --mode random --probability 0.050000 -j REJECT --reject-with icmp-port-unreachable 
    -A PSD -m statistic --mode random --probability 0.050000 -j REJECT --reject-with icmp-host-unreachable  
    -A SERVICES -p icmp -m state --state INVALID -j DROP 
    -A SERVICES -p icmp -j ICMP 
    -A SERVICES -p tcp -j CHECK_TCP 
    -A SERVICES -p udp -m udp --dport 123 -m state --state NEW -j ACCEPT 
    -A SERVICES -p udp -m udp --dport 53 -m state --state NEW -j ACCEPT 
    -A SERVICES -p tcp -m tcp --dport 53 -m state --state NEW -j ACCEPT 
    -A SERVICES -p tcp -m udp -m multiport --dports 5060 -m state --state NEW -j ACCEPT 
    -A SERVICES -p tcp -m udp -m multiport --dports 5061 -m state --state NEW -j ACCEPT 
    -A SERVICES -i eth0 -j PSD 
    COMMIT

### Change the server and user agent header

When Kamailio sends you a packet back, it will be friendly enough to
tell you which version of Kamailio is running. This informs the attacker
which types of attacks might make sense.

You can change this by adding the below line in your config (somewhere
above the loadmodules), you can use this to obscure which version you're
running.

    server_header="Server: MS Lync"

Or you can just tell Kamailio to not put a server header:

    server_signature=no

In the same category you have the sip_warning parameter, which is by
default enabled. This setting exposes a lot of information about your
infrastructure. In production it is advisable to just disable:

    sip_warning=0

To change the user agent header (e.g. used from the dispatcher module to
send out OPTIONS requests) use this parameter:

    user_agent_header="User-Agent: My SIP Server"

## Anti-Flood

The moment you put a machine on the Internet, it will be scanned. And it
won't take long until a \<i>Friendly-Scanner\</i> floods your machine.

Three types of attacks are to be recognized:

1/ bruteforcing username/password:

Your Kamailio setup can process thousands of SIP packets per second, and
at those rates it is worthwhile for attackers to guess credentials which
allow them to call out. When users are allowed to create their own
passwords, there will be weak passwords.

2/ bruteforcing prefixes:

A typical configuration error is to take shortcuts in your config. In
SS7 a typical method to arrange routing, is by adding prefixes to URI's.
Attackers know this, and attempt to guess prefixes which behave
differently.

3/ Denial of Service:

Whenever you have a packet arriving on your Kamailio machine, it will
require a bit of time of your CPU. For some packets there is additional
processing done, e.g. whenever credentials are checked you can have a
query being executed.

When debugging your setup, it can be very annoying when you see
thousands of packets passing over your screen. (stealing content from
[asipto](http://kb.asipto.com/kamailio:usage:k31-sip-scanning-attack))

### Pike

The pike module tracks the number of SIP messages per source IP address,
per period. Pike is very easy to add to your config:

    loadmodule "pike.so"
     
    ...
     
    # ----- pike params -----
    modparam("pike", "sampling_time_unit", 2)
    modparam("pike", "reqs_density_per_unit", 20)
    modparam("pike", "remove_latency", 4)
     
    ...
     
    route {
      if (!pike_check_req()) {
        xlog("L_ALERT","ALERT: pike block $rm from $fu (IP:$si:$sp)\n");
        exit;
      }
      ...
    }

In recent sample configs you can just enable #!define WITH_ANTIFLOOD in
your config to have this done.

### Banning for a period of time

You can add htable module with a special hash table that can store the
list of banned IPs and forbid traffic from it for a period of time. Here
is an example blocking the IP 5 minutes (autoexpires value in seconds
for htable definition):

    loadmodule "htable.so"
    ...
    modparam("htable", "htable", "ipban=>size=8;autoexpire=300;")
     
    ...
     
    route {
      if($sht(ipban=>$si)!=$null)
      {
         # ip is already blocked - keep the node warm
         pike_check_req();
         xdbg("request from blocked IP - $rm from $fu (IP:$si:$sp)\n");
         exit;
      }
      if (!pike_check_req()) {
         $sht(ipban=>$si) = 1;
         xlog("L_ALERT","ALERT: pike block $rm from $fu (IP:$si:$sp)\n");
         exit;
      }
    ...
    }

So, even if the attacker lowers the rate, it is still banned for 5
minutes. This approach has the benefit of printing the PIKE alert every
5 minutes, being easier to sport in syslog file the IP addresses that
persist in flooding. By configuration, htable module will delete the
entry automatically after 300sec.

Also, you can print the list of banned IP addresses using Siremis (via
MI Commands panel) or kamctl:

kamctl fifo sht_dump ipban

### Fail2Ban

Fail2ban can scan syslog files for specific messages based on regular
expressions and act upon matching by banning IP addresses.

Therefore you can print such message to syslog using xlog(). Fail2ban
will match it and ban the traffic coming from the IP address you mention
in the message.

Create /etc/fail2ban/filter.d/kamailio.conf with following content:

    [Definition]
    # filter for kamailio messages
    failregex = Blocking traffic from <HOST>

Edit /etc/fail2ban/jail.conf and add:

    findtime  = 600

    [kamailio-iptables]
    enabled  = true
    filter   = kamailio
    action   = iptables-allports[name=KAMAILIO, protocol=all]
    logpath  = /var/log/kamailio.log # update it with your kamailio log path
    maxretry = 10
    bantime  = 1800

In Kamailio configuration, use next line whenever you want to ban an IP
for half an hour:

    xlog("Blocking traffic from $si\n");

Note: $si is a config file variable that expands at runtime to source IP
address. In the syslog you will get messages like:

... Blocking traffic from 1.2.3.4 For example, plugging it in the above
Kamailio snippets:

    ...
        $var(exp) = $Ts - 900;
            if($sht(a=>$au::last_auth) > $var(exp))
            {
                sl_send_reply("403", "Try later");
                xlog("Blocking traffic from $si\n");
                exit;
            } else {
                $sht(a=>$au::auth_count) = 0;
            }
    ...

Now, with this logic, if a user fails to authenticate 3 times in a row
during 15 minutes, then the IP address of last registration attempt is
blocked in firewall for half an hour by fail2ban.

You can do something similar for pike alerts.

## Active detection and monitoring

### Accept their traffic

Give them false positives. Even if the above techniques quickly block
off every scanning attempt, and even have iptables firewall them away
from your Kamailio, when you have a tshark or ngrep running, their
futile attempts are just really really annoying.

Hence, one of the things I personally like doing is instead of blocking
them off after the 3 wrong authentication errors, is just having all
their traffic forwarded to a different kamailio, which is setup to just
accept whatever they are sending. A fun variation is, I have a phone (a
good old Snom360) on my desk which receives all the Invites coming to my
honeypot kamailio.

The end result is, the automated scanners will get false positives and
will typically stop. And even more fun, typically the attackers will
manually check if the route they have found actually work, so they will
actually call you, and then you can have a fun conversation with them
:-p

### Detect and block malicious attempts

The Homer project has a few methods to detect common attacks. It makes
sense to add this to you config, as these attacks should just not be
given any attention.

Config is based on the [work of the Homer team](https://code.google.com/p/homer/source/browse/configs/kamailio.cfg?r=e10bad0893cb56dc8f63c52947601e4c9981d254)

    #!define WITH_HOMER_SECURITY_CHECKS

    ...

    route[HOMER_SECURITY_CHECKS] {
    #!ifdef WITH_HOMER_SECURITY_CHECKS
      if (is_method("INVITE|REGISTER")) {

                    if($ua =~ "(friendly-scanner|sipvicious)") {
                       xlog("L_INFO","On more scriptkiddie, coming from $si, blocking");
                       exit;
                    }

                    #hostname in contact
                    if($sel(contact.uri.host) =~ "^(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})$") {
                       xlog("L_INFO","Someone coming form $si using IP addressess instead of DNS ? blocking");
                       exit;
                    }


                    if($au =~ "(\=)|(\-\-)|(')|(\#)|(\%27)|(\%24)" and $au != $null) {
                       xlog("L_INFO","Someone from $si is doing an sql injection attack, blocking!");
                       exit;
                    }

                    if($(hdr(Record-Route)[0]{nameaddr.uri}) != $si and $(hdr(Record-Route)[0]{nameaddr.uri}) != $null) {
                       xlog("L_INFO","Spoofing attack detected from $si, blocking");
                       exit;
                    }
      }
    #!endif
    }

### Secfilter module

Secfilter is a module that has been designed to offer an additional
layer of security over our communications. To achieve this, the
following features are available:

-   Blacklist to block user agents, IP addresses, countries, domains and
    users.
-   Whitelist to allow user agents, IP addresses, countries, domains and
    users.
-   Blacklist of destinations where the called number is not allowed.
-   SQL injection attacks prevention.

For example, to block IP addresses we have to use a database because it
is very common to update the blacklist, since every day we receive many
attacks from different places. The goal of this module is to avoid
unnecessary queries to the database, so all the data will be in the
memory.

We can use RPC commands to update blacklists and whitelists. And also to
see some statistics of blocked messages.

Example of use:

    loadmodule    "geoip2.so"
    loadmodule    "secfilter.so"

    ...

    modparam("secfilter", "db_url", DBURL)
    modparam("secfilter", "dst_exact_match", 0)

    ...

    route[SECURITY_CHECKS] {
            if (geoip2_match("$si", "src")) {
                    secf_check_country($gip2(src=>cc));
                    # return values ...
                    #  2 = whitelisted
                    #  1 = not found
                    # -1 = error
                    # -2 = blacklisted
                    if ($? == -2) {
                            xalert("$rm from $si blocked because Country '$gip2(src=>cc)' is blacklisted");
                            exit;
                    }
            }

            secf_check_ip();
            if ($? == -2) {
                    xalert("$rm from $si blocked because IP address is blacklisted");
                    exit;
            }

            secf_check_sqli_all();

            secf_check_ua();
            if ($? == -2) {
                    xalert("$rm from $si blocked because UserAgent '$ua' is blacklisted");
                    exit;
            }
     
            secf_check_from_hdr();
            # return values ...
            #  4 = name whitelisted
            #  3 = domain whitelisted
            #  2 = user whitelisted
            #  1 = not found
            # -1 = error
            # -2 = user blacklisted
            # -3 = domain blacklisted
            # -4 = name blacklisted
            switch ($?) {
                    case -2:
                            xalert("$rm to $si blocked because From user '$fU' is blacklisted");
                            exit;
                    case -3:
                            xalert("$rm to $si blocked because From domain '$fd' is blacklisted");

                    case -4:
                            xalert("$rm to $si blocked because From name '$fn' is blacklisted");
                            exit;
            };

            secf_check_to_hdr();
            switch ($?) {
                    case -2:
                            xalert("$rm to $si blocked because To user '$tU' is blacklisted");
                            exit;
                    case -3:
                            xalert("$rm to $si blocked because To domain '$td' is blacklisted");
                            exit;
                    case -4:
                            xalert("$rm to $si blocked because To name '$tn' is blacklisted");
                            exit;
            };

            secf_check_contact_hdr();
            switch ($?) {
                    case -2:
                            xalert("$rm to $si blocked because Contact user '$ct' is blacklisted");
                            exit;
                    case -3:
                            xalert("$rm to $si blocked because Contact domain '$ct' is blacklisted");
                            exit;
            };

            if (is_method("INVITE")) {
                    secf_check_dst($rU);
                    if ($? == -2) {
                            xalert("$rm from $si blocked because destination $rU is blacklisted");
                            exit;
                    }
            }
    }

Some RPC commands:

    $ kamcmd secfilter.print ua

    User-agent
    ==========
    [+] Blacklisted
        -----------
        0001 -> friendly-scanner
        0002 -> pplsip
        0003 -> sipcli
        0004 -> sundayddr
        0005 -> iWar
        0006 -> sipsak
        0007 -> VaxSIPUserAgent
        0008 -> SimpleSIP
        0009 -> SIP Call
        0010 -> Ozeki
        0011 -> VoIPSec
        0012 -> SIPScan
        0013 -> Conaito
        0014 -> UsaAirport
        0015 -> PortSIP VoIP SDK
        0016 -> zxcvfdf11
        0017 -> fdgddfg546df4g8d5f

    [+] Whitelisted
        -----------
        0001 -> my custom ua

    $ kamcmd secfilter.stats

    Blocked messages (blacklist)
    ============================
    [+] By user-agent    : 1256
    [+] By country       : 45
    [+] By from domain   : 0
    [+] By to domain     : 0
    [+] By contact domain: 1
    [+] By IP address    : 2552
    [+] By from name     : 0
    [+] By to name       : 0
    [+] By contact name  : 0
    [+] By from user     : 316
    [+] By to user       : 134
    [+] By contact user  : 0

    Allowed messages (whitelist)
    ============================
    [+] By user-agent    : 0
    [+] By country       : 478
    [+] By from domain   : 0
    [+] By to domain     : 0
    [+] By contact domain: 0
    [+] By IP address    : 0
    [+] By from name     : 0
    [+] By to name       : 0
    [+] By contact name  : 0
    [+] By from user     : 0
    [+] By to user       : 0
    [+] By contact user  : 0

    Other blocked messages
    ======================
    [+] Destinations   : 0
    [+] SQL injection  : 213

## Digest authentication

### What is a digest

Just in case the reader wouldn't know what a digest is (and yes you
should read more on the topic), a digest is a simple cryptographic
function, which is based on symmetrical encryption.

As a very simplified example, assume having two parties Alice and Bob.

Bob and Alice agree a 'secret' which only they know, for ease of the
calculation we take e.g. the number 5.

When Bob contacts Alice, Alice 'challenges' Bob, giving him a question
which he has to answer with the secret. E.g. Bob, what is 13 minus the
secret. As Bob only knows the secret (5), him giving the correct answer
(8), is a guarantee it was Bob giving the 'response'.

Offcourse, the math needs to be a bit more complex, and in SIP it's
generally based on MD5 ;)

A SIP digest looks like:

    Authorization: Digest username="replayuser", realm="mslync.com", nonce="Uu+v01LvrXvRLxDlRFmj8f+x1sDLIA2ERmialM3+jEm2cBJ0R33hCxp8zyeA", 
    uri="sip:lync.com", response="c9295a60ag08554d26a7e17b7aac780b"

Nonce == the challenge the server sends Response == the Nonce + a
cryptographic function + the secret as a variable.

### The secret being too simple

One of the inherit weaknesses of MD5 is that the calculation goes really
fast. Which means if one is able to intercept a sip digest, the secret
can be bruteforced.

Being the Nonce, the Response & the algoritm is known, the only unknown
is the secret. So one can start guessing which secret it is. Today a
password between 1 and 6 characters can be cracked on a normal PC in
about an hour. To make matters worse, over Amazon EC2, it is claimed a
password of 10 characters can be cracked for less then $100. There are
even online services offering this, e.g.
[Cloudcracker](https://www.cloudcracker.com/)

As such, it is advisable to have your secrets be autogenerated, to be
long (e.g. 14 characters) and to have a very wide character set.

Also, it is advisable to always use TLS to exchange SIP messages. Do
note that it is up to the client to verify the correct certificate is
used (otherwise a man in the middle attack is not that difficult)

### Replay attack

It is not sufficient for the server to check if the digest is correct.
The server should also check if that digest has not been used already!
Otherwise an attacker could at infinitum re-use the digest to make
calls.

Kamailio has stock already a few mechanisms to combat this, but it can
be tweaked to be better. By default a digest can be replayed for 300
seconds, but Kamailio can do better. If you want to test, ngrep an
INVITE which has a digest, and follow this [quick and (very) dirty way to replay a SIP packet](http://www.applit.be/?page_id=102).

You can improve this by adding the following. This will break the
possibility to do a replay attack from a different machine, and will
reduce the timeframe in which a replay attack can be done.

    modparam("auth_db", "db_url", DBURL)
    modparam("auth_db", "calculate_ha1", yes)
    modparam("auth_db", "password_column", "password")
    modparam("auth_db", "load_credentials", "")
    modparam("auth_db", "use_domain", MULTIDOMAIN)

    modparam("auth", "nonce_count", 1) # enable nonce_count support
    modparam("auth", "qop", "auth")    # enable qop=auth
    modparam("auth", "nonce_expire", 60)
    modparam("auth", "nonce_auth_max_drift", 2)

    # For REGISTER requests we hash the Request-URI, Call-ID, and source IP of the
    # request into the nonce string. This ensures that the generated credentials
    # cannot be used with another registrar, user agent with another source IP
    # address or Call-ID. Note that user agents that change Call-ID with every
    # REGISTER message will not be able to register if you enable this.
    modparam("auth", "auth_checks_register", 11)

    # For dialog-establishing requests (such as the original INVITE, OPTIONS, etc)
    # we hash the Request-URI and source IP. Hashing Call-ID and From tags takes
    # some extra precaution, because these checks could render some UA unusable.
    modparam("auth", "auth_checks_no_dlg", 9)

    # For mid-dialog requests, such as re-INVITE, we can hash source IP and
    # Request-URI just like in the previous case. In addition to that we can hash
    # Call-ID and From tag because these are fixed within a dialog and are
    # guaranteed not to change. This settings effectively restrict the usage of
    # generated credentials to a single user agent within a single dialog.
    modparam("auth", "auth_checks_in_dlg", 15)
