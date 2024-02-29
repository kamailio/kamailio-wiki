# User Authentication Using LDAP Backend

Content is specific for Kamailio v4.0.x and OpenLDAP on a Debian/Ubuntu
system.

## Prerequisites

- install OpenLDAP library (libldap) v2.1 or greater, libldap header
    files (libldap-dev) are needed for compilation
- read the documentation of auth module:
  - <http://kamailio.org/docs/modules/stable/modules/auth.html>
- read the documentation of ldap module:
  - <http://kamailio.org/docs/modules/stable/modules/ldap.html>

## LDAP Tree

You have to store user profile attributes in LDAP tree. It is up to you
to decide the structure, just have in mind that you have to store SIP
password as a dedicated field and its value has to be plain text or HA1
format.

In this tutorial the example is with plain text SIP password stored in
SIPPassword field. SIP username is stored in a dedicated field as well,
namely SIPUserName. The SIP profiles are grouped under
ou=sip,dc=example,dc=com.

Next is an example of LDAP tree storing profiles for SIP subscribers.

    - dc=example,dc=com
      |
      +- ou=users
      |  |
      |  +- cn=sip_proxy -- sn: sip_proxy
      |                  -- userPassword: proxypwd
      |
      +- ou=sip
         |
         +- cn=user1 -- SIPUserName: user1
         |           -- SIPPassword: pwd1
         |
         +- cn=user2 -- SIPUserName: user2
                     -- SIPPassword: pwd2

## LDAP Module Configuration File

It has to be stored in:

- /usr/local/etc/kamailio/ldap.cfg

<!-- -->

    [sipaccounts]
    ldap_server_url = "ldap://ldap.example.com"
    ldap_bind_dn = "cn=sip_proxy,ou=users,dc=example,dc=com"
    ldap_bind_password = "proxypwd"

## Kamailio Configuration File Snippet

Parts of the config file to plug in your kamailio.cfg. route\[LDAPAUTH\]
should replace route\[AUTH\] in default kamailio.cfg, but you may still
need to take some bits from route\[AUTH\] and merge them in
route\[LDAPAUTH\], up to what requirements you have for your routing
authentication.

``` c
...
loadmodule "ldap.so"
...
modparam("ldap", "config_file", "/usr/local/etc/kamailio/ldap.cfg")
...

route[LDAPAUTH] {
    if(!(is_present_hf("Authorization") || is_present_hf("Proxy-Authorization"))) {
        # no credentials header - send back challenge
        auth_challenge("$fd", "1");
        exit;
    }

    # do ldap search to fetch the password
    ldap_search("ldap://sipaccounts/ou=sip,dc=example,dc=com?SIPPassword?one?(cn=$fU)");
    $var(rc) = $rc;
    if ($var(rc)<0) {
        switch ($var(rc)) {
            case -1:
                # no LDAP entry found
                sl_send_reply("404", "User Not Found");
                exit;
            case -2:
                # internal error
                sl_send_reply("500", "Internal server error");
                exit;
            default:
                sl_send_reply("403", "Not allowed");
                exit;
        }
    }
    if(!ldap_result("SIPPassword/$avp(password)")) {
        sl_send_reply("404", "User Not Found");
        exit;
    }
    if (!pv_auth_check("$fd", "$avp(password)", "0", "1")) {
        auth_challenge("$fd", "1");
        exit;
    }
    # authentication ok - continue processing

}
```
