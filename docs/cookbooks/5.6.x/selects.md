# Selects Variables

Version: Kamailio SIP Server v5.6.x (stable)

The **select** is a READ-ONLY "function", that helps to get direct
access to some parts of SIP message within the script (like @to,
@cseg.method, @msg\["P-anyheader-youwant"\]), but generally it could be
seen as a function with a certain number of parameters that returns a
string.

Selects are available via pseudo-variable $sel(...), respectively
**@name** corresponds to **$sel(name)**.

Each module can extend the syntax the select framework understands by
registering its own select table. Look at the TLS module or db_ops as
good samples.

For a more detailed overview check [The Select Framework](http://sip-router.org/wiki/ref_manual/selects).

## Select Classes

### contact

Select handling Contact headers.

### from

Select handling From header

### msg

Select handling SIP message.

### ruri

Select handling R-URI.

Syntax:

``` c
@ruri
```

Return the value of request URI (R-URI).

### tls

Select handling TLS environment.

### to

Select handling To header.

### sys

Select handling system values

### via

Select handling Via header.

Syntax:

``` c
@via
@via[index]
@via[index].param
...
```

Return entire or parts of Via header.

Example:

-   return the IP of top most Via header

``` c
@via[1].host
```

### xmlrpc

Select handling XMLRPC requests via XMLRPC module.

## Complete Select List

**For a list with all the selects defined in the devel version (the
master branch) see the auto-generated
<http://sip-router.org/docbook/sip-router/branch/master/select_list/select_list.html>.**

The list presented on this page is **obsolete**.

This part is auto-generated from ser_objdump CSV output. If you want to
add description, examples, comments, etc., please add entries above.

    awk -F, '{print $3 " " $1;}' selects.csv | sort | awk '{print "==== " $1 " ====\n\nExported by: " $2 "\n\n";}'

### @authorization\[%s\]

Exported by: core

### @authorization\[%s\].algorithm

Exported by: core

### @authorization\[%s\].cnonce

Exported by: core

### @authorization\[%s\].nc

Exported by: core

### @authorization\[%s\].nonce

Exported by: core

### @authorization\[%s\].opaque

Exported by: core

### @authorization\[%s\].qop

Exported by: core

### @authorization\[%s\].realm

Exported by: core

### @authorization\[%s\].response

Exported by: core

### @authorization\[%s\].uri

Exported by: core

### @authorization\[%s\].username

Exported by: core

### @authorization\[%s\].username.domain

Exported by: core

### @authorization\[%s\].username.user

Exported by: core

### @contact

Exported by: core

### @contact.expires

Exported by: core

### @contact.instance

Exported by: core

### @contact.method

Exported by: core

### @contact.name

Exported by: core

### @contact.params\[%s\]

Exported by: core

### @contact.q

Exported by: core

### @contact.received

Exported by: core

### @contact.uri

Exported by: core

### @contact.uri.host

Exported by: core

### @contact.uri.hostport

Exported by: core

### @contact.uri.params

Exported by: core

### @contact.uri.params\[%s\]

Exported by: core

### @contact.uri.port

Exported by: core

### @contact.uri.pwd

Exported by: core

### @contact.uri.type

Exported by: core

### @contact.uri.user

Exported by: core

### @cseq

Exported by: core

### @cseq.method

Exported by: core

### @cseq.num

Exported by: core

### @db.fetch\[%i\]

Exported by: db_ops

### @db.fetch\[%i\].count

Exported by: db_ops

### @db.fetch\[%i\].field\[%i\]

Exported by: db_ops

### @db.fetch\[%i\].field\[%i\].nameaddr

Exported by: db_ops

### @db.fetch\[%i\].field\[%i\].uri

Exported by: db_ops

### @db.fetch\[%i\].nameaddr

Exported by: db_ops

### @db.fetch\[%i\].row\[%i\]

Exported by: db_ops

### @db.fetch\[%i\].row\[%i\].field\[%i\]

Exported by: db_ops

### @db.fetch\[%i\].row\[%i\].field\[%i\].nameaddr

Exported by: db_ops

### @db.fetch\[%i\].row\[%i\].field\[%i\].uri

Exported by: db_ops

### @db.fetch\[%i\].row_no

Exported by: db_ops

### @db.fetch\[%i\].uri

Exported by: db_ops

### @db.query\[%i\]

Exported by: db_ops

### @db.query\[%i\].count

Exported by: db_ops

### @db.query\[%i\].field\[%i\]

Exported by: db_ops

### @db.query\[%i\].field\[%i\].nameaddr

Exported by: db_ops

### @db.query\[%i\].field\[%i\].uri

Exported by: db_ops

### @db.query\[%i\].nameaddr

Exported by: db_ops

### @db.query\[%i\].row\[%i\]

Exported by: db_ops

### @db.query\[%i\].row\[%i\].field\[%i\]

Exported by: db_ops

### @db.query\[%i\].row\[%i\].field\[%i\].nameaddr

Exported by: db_ops

### @db.query\[%i\].row\[%i\].field\[%i\].uri

Exported by: db_ops

### @db.query\[%i\].uri

Exported by: db_ops

### @dst.ip

Exported by: core

### @dst.ip_port

Exported by: core

### @dst.port

Exported by: core

### @dst_uri

Exported by: core

### @dst_uri.host

Exported by: core

### @dst_uri.hostport

Exported by: core

### @dst_uri.params

Exported by: core

### @dst_uri.params\[%s\]

Exported by: core

### @dst_uri.port

Exported by: core

### @dst_uri.pwd

Exported by: core

### @dst_uri.type

Exported by: core

### @dst_uri.user

Exported by: core

### @eval.get\[%i\]

Exported by: eval

### @eval.get\[%i\].nameaddr

Exported by: eval

### @eval.get\[%i\].uri

Exported by: eval

### @eval.pop\[%i\]

Exported by: eval

### @eval.reg\[%s\]

Exported by: eval

### @eval.reg\[%s\].nameaddr

Exported by: eval

### @eval.reg\[%s\].uri

Exported by: eval

### @eval.uuid

Exported by: eval

### @event

Exported by: core

### @f

Exported by: core

### @f.name

Exported by: core

### @f.params\[%s\]

Exported by: core

### @f.tag

Exported by: core

### @f.uri

Exported by: core

### @f.uri.host

Exported by: core

### @f.uri.hostport

Exported by: core

### @f.uri.params

Exported by: core

### @f.uri.params\[%s\]

Exported by: core

### @f.uri.port

Exported by: core

### @f.uri.pwd

Exported by: core

### @f.uri.type

Exported by: core

### @f.uri.user

Exported by: core

### @from

Exported by: core

### @from.name

Exported by: core

### @from.params\[%s\]

Exported by: core

### @from.tag

Exported by: core

### @from.uri

Exported by: core

### @from.uri.host

Exported by: core

### @from.uri.hostport

Exported by: core

### @from.uri.params

Exported by: core

### @from.uri.params\[%s\]

Exported by: core

### @from.uri.port

Exported by: core

### @from.uri.pwd

Exported by: core

### @from.uri.type

Exported by: core

### @from.uri.user

Exported by: core

### @hf_value.%s

Exported by: textops

### @hf_value.%s.%s

Exported by: textops

### @hf_value.%s.name

Exported by: textops

### @hf_value.%s.nameaddr

Exported by: textops

### @hf_value.%s.p\[%s\]

Exported by: textops

### @hf_value.%s.param\[%s\]

Exported by: textops

### @hf_value.%s.uri

Exported by: textops

### @hf_value.%s.uri

Exported by: textops

### @hf_value.%s\[%i\]

Exported by: textops

### @hf_value.%s\[%i\].%s

Exported by: textops

### @hf_value.%s\[%i\].name

Exported by: textops

### @hf_value.%s\[%i\].nameaddr

Exported by: textops

### @hf_value.%s\[%i\].p\[%s\]

Exported by: textops

### @hf_value.%s\[%i\].param\[%s\]

Exported by: textops

### @hf_value.%s\[%i\].uri

Exported by: textops

### @hf_value.%s\[%i\].uri

Exported by: textops

### @hf_value2.%s

Exported by: textops

### @hf_value2.%s.%s

Exported by: textops

### @hf_value2.%s.%s

Exported by: textops

### @hf_value2.%s.%s

Exported by: textops

### @hf_value2.%s\[%i\]

Exported by: textops

### @hf_value2.%s\[%i\].%s

Exported by: textops

### @hf_value2.%s\[%i\].%s

Exported by: textops

### @hf_value2.%s\[%i\].%s

Exported by: textops

### @hf_value_exists\[%s\].%s

Exported by: textops

### @m

Exported by: core

### @m.expires

Exported by: core

### @m.instance

Exported by: core

### @m.method

Exported by: core

### @m.name

Exported by: core

### @m.params\[%s\]

Exported by: core

### @m.q

Exported by: core

### @m.received

Exported by: core

### @m.uri

Exported by: core

### @m.uri.host

Exported by: core

### @m.uri.hostport

Exported by: core

### @m.uri.params

Exported by: core

### @m.uri.params\[%s\]

Exported by: core

### @m.uri.port

Exported by: core

### @m.uri.pwd

Exported by: core

### @m.uri.type

Exported by: core

### @m.uri.user

Exported by: core

### @method

Exported by: core

### @msg.%s

Exported by: core

### @msg.%s.nameaddr

Exported by: core

### @msg.%s.nameaddr.name

Exported by: core

### @msg.%s.nameaddr.params

Exported by: core

### @msg.%s.nameaddr.params\[%s\]

Exported by: core

### @msg.%s.nameaddr.uri

Exported by: core

### @msg.%s.nameaddr.uri.host

Exported by: core

### @msg.%s.nameaddr.uri.hostport

Exported by: core

### @msg.%s.nameaddr.uri.params

Exported by: core

### @msg.%s.nameaddr.uri.params\[%s\]

Exported by: core

### @msg.%s.nameaddr.uri.port

Exported by: core

### @msg.%s.nameaddr.uri.pwd

Exported by: core

### @msg.%s.nameaddr.uri.type

Exported by: core

### @msg.%s.nameaddr.uri.user

Exported by: core

### @msg.%s.params\[%s\]

Exported by: core

### @msg.%s\[%i\]

Exported by: core

### @msg.%s\[%i\].nameaddr

Exported by: core

### @msg.%s\[%i\].nameaddr.name

Exported by: core

### @msg.%s\[%i\].nameaddr.params

Exported by: core

### @msg.%s\[%i\].nameaddr.params\[%s\]

Exported by: core

### @msg.%s\[%i\].nameaddr.uri

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.host

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.hostport

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.params

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.params\[%s\]

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.port

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.pwd

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.type

Exported by: core

### @msg.%s\[%i\].nameaddr.uri.user

Exported by: core

### @msg.%s\[%i\].params\[%s\]

Exported by: core

### @nathelper.rewrite_contact\[%i\]

Exported by: nathelper

### @nathelper.rewrite_contact\[%i\].nameaddr

Exported by: nathelper

### @next_hop

Exported by: core

### @next_hop.host

Exported by: core

### @next_hop.hostport

Exported by: core

### @next_hop.params

Exported by: core

### @next_hop.params\[%s\]

Exported by: core

### @next_hop.port

Exported by: core

### @next_hop.pwd

Exported by: core

### @next_hop.type

Exported by: core

### @next_hop.user

Exported by: core

### @proxy_authorization\[%s\]

Exported by: core

### @proxy_authorization\[%s\].algorithm

Exported by: core

### @proxy_authorization\[%s\].cnonce

Exported by: core

### @proxy_authorization\[%s\].nc

Exported by: core

### @proxy_authorization\[%s\].nonce

Exported by: core

### @proxy_authorization\[%s\].opaque

Exported by: core

### @proxy_authorization\[%s\].qop

Exported by: core

### @proxy_authorization\[%s\].realm

Exported by: core

### @proxy_authorization\[%s\].response

Exported by: core

### @proxy_authorization\[%s\].uri

Exported by: core

### @proxy_authorization\[%s\].username

Exported by: core

### @proxy_authorization\[%s\].username.domain

Exported by: core

### @proxy_authorization\[%s\].username.user

Exported by: core

### @received.ip

Exported by: core

### @received.ip_port

Exported by: core

### @received.port

Exported by: core

### @received.proto

Exported by: core

### @received.proto_ip_port

Exported by: core

### @record_route

Exported by: core

### @record_route.name

Exported by: core

### @record_route.params\[%s\]

Exported by: core

### @record_route.uri

Exported by: core

### @record_route.uri.host

Exported by: core

### @record_route.uri.hostport

Exported by: core

### @record_route.uri.params

Exported by: core

### @record_route.uri.params\[%s\]

Exported by: core

### @record_route.uri.port

Exported by: core

### @record_route.uri.pwd

Exported by: core

### @record_route.uri.type

Exported by: core

### @record_route.uri.user

Exported by: core

### @rr

Exported by: core

### @rr.dialog_cookie

Exported by: rr

### @rr.name

Exported by: core

### @rr.params\[%s\]

Exported by: core

### @rr.uri

Exported by: core

### @rr.uri.host

Exported by: core

### @rr.uri.hostport

Exported by: core

### @rr.uri.params

Exported by: core

### @rr.uri.params\[%s\]

Exported by: core

### @rr.uri.port

Exported by: core

### @rr.uri.pwd

Exported by: core

### @rr.uri.type

Exported by: core

### @rr.uri.user

Exported by: core

### @ruri

Exported by: core

### @ruri.host

Exported by: core

### @ruri.hostport

Exported by: core

### @ruri.params

Exported by: core

### @ruri.params\[%s\]

Exported by: core

### @ruri.port

Exported by: core

### @ruri.pwd

Exported by: core

### @ruri.type

Exported by: core

### @ruri.user

Exported by: core

### @src.ip

Exported by: core

### @src.ip_port

Exported by: core

### @src.port

Exported by: core

### @t

Exported by: core

### @t.name

Exported by: core

### @t.params\[%s\]

Exported by: core

### @t.tag

Exported by: core

### @t.uri

Exported by: core

### @t.uri.host

Exported by: core

### @t.uri.hostport

Exported by: core

### @t.uri.params

Exported by: core

### @t.uri.params\[%s\]

Exported by: core

### @t.uri.port

Exported by: core

### @t.uri.pwd

Exported by: core

### @t.uri.type

Exported by: core

### @t.uri.user

Exported by: core

### @timer\[%i\].enabled

Exported by: timer

### @tls

Exported by: tls

### @tls.cipher

Exported by: tls

### @tls.cipher.bits

Exported by: tls

### @tls.desc

Exported by: tls

### @tls.description

Exported by: tls

### @tls.me

Exported by: tls

### @tls.me.IPAddress

Exported by: tls

### @tls.me.dns

Exported by: tls

### @tls.me.email

Exported by: tls

### @tls.me.emailAddress

Exported by: tls

### @tls.me.email_address

Exported by: tls

### @tls.me.expired

Exported by: tls

### @tls.me.host

Exported by: tls

### @tls.me.hostname

Exported by: tls

### @tls.me.ip

Exported by: tls

### @tls.me.ip_address

Exported by: tls

### @tls.me.issuer

Exported by: tls

### @tls.me.issuer.c

Exported by: tls

### @tls.me.issuer.cn

Exported by: tls

### @tls.me.issuer.commonName

Exported by: tls

### @tls.me.issuer.common_name

Exported by: tls

### @tls.me.issuer.country

Exported by: tls

### @tls.me.issuer.countryName

Exported by: tls

### @tls.me.issuer.country_name

Exported by: tls

### @tls.me.issuer.l

Exported by: tls

### @tls.me.issuer.locality

Exported by: tls

### @tls.me.issuer.localityName

Exported by: tls

### @tls.me.issuer.locality_name

Exported by: tls

### @tls.me.issuer.name

Exported by: tls

### @tls.me.issuer.o

Exported by: tls

### @tls.me.issuer.organization

Exported by: tls

### @tls.me.issuer.organizationName

Exported by: tls

### @tls.me.issuer.organization_name

Exported by: tls

### @tls.me.issuer.organizationalUnitName

Exported by: tls

### @tls.me.issuer.organizational_unit_name

Exported by: tls

### @tls.me.issuer.ou

Exported by: tls

### @tls.me.issuer.st

Exported by: tls

### @tls.me.issuer.state

Exported by: tls

### @tls.me.issuer.stateOrProvinceName

Exported by: tls

### @tls.me.issuer.state_or_province_name

Exported by: tls

### @tls.me.issuer.unit

Exported by: tls

### @tls.me.notAfter

Exported by: tls

### @tls.me.notBefore

Exported by: tls

### @tls.me.not_after

Exported by: tls

### @tls.me.not_before

Exported by: tls

### @tls.me.revoked

Exported by: tls

### @tls.me.self_signed

Exported by: tls

### @tls.me.serialNumber

Exported by: tls

### @tls.me.serial_number

Exported by: tls

### @tls.me.sn

Exported by: tls

### @tls.me.subj

Exported by: tls

### @tls.me.subj.c

Exported by: tls

### @tls.me.subj.cn

Exported by: tls

### @tls.me.subj.commonName

Exported by: tls

### @tls.me.subj.common_name

Exported by: tls

### @tls.me.subj.country

Exported by: tls

### @tls.me.subj.countryName

Exported by: tls

### @tls.me.subj.country_name

Exported by: tls

### @tls.me.subj.l

Exported by: tls

### @tls.me.subj.locality

Exported by: tls

### @tls.me.subj.localityName

Exported by: tls

### @tls.me.subj.locality_name

Exported by: tls

### @tls.me.subj.name

Exported by: tls

### @tls.me.subj.o

Exported by: tls

### @tls.me.subj.organization

Exported by: tls

### @tls.me.subj.organizationName

Exported by: tls

### @tls.me.subj.organization_name

Exported by: tls

### @tls.me.subj.organizationalUnitName

Exported by: tls

### @tls.me.subj.organizational_unit_name

Exported by: tls

### @tls.me.subj.ou

Exported by: tls

### @tls.me.subj.st

Exported by: tls

### @tls.me.subj.state

Exported by: tls

### @tls.me.subj.stateOrProvinceName

Exported by: tls

### @tls.me.subj.state_or_province_name

Exported by: tls

### @tls.me.subj.unit

Exported by: tls

### @tls.me.subject

Exported by: tls

### @tls.me.subject.c

Exported by: tls

### @tls.me.subject.cn

Exported by: tls

### @tls.me.subject.commonName

Exported by: tls

### @tls.me.subject.common_name

Exported by: tls

### @tls.me.subject.country

Exported by: tls

### @tls.me.subject.countryName

Exported by: tls

### @tls.me.subject.country_name

Exported by: tls

### @tls.me.subject.l

Exported by: tls

### @tls.me.subject.locality

Exported by: tls

### @tls.me.subject.localityName

Exported by: tls

### @tls.me.subject.locality_name

Exported by: tls

### @tls.me.subject.name

Exported by: tls

### @tls.me.subject.o

Exported by: tls

### @tls.me.subject.organization

Exported by: tls

### @tls.me.subject.organizationName

Exported by: tls

### @tls.me.subject.organization_name

Exported by: tls

### @tls.me.subject.organizationalUnitName

Exported by: tls

### @tls.me.subject.organizational_unit_name

Exported by: tls

### @tls.me.subject.ou

Exported by: tls

### @tls.me.subject.st

Exported by: tls

### @tls.me.subject.state

Exported by: tls

### @tls.me.subject.stateOrProvinceName

Exported by: tls

### @tls.me.subject.state_or_province_name

Exported by: tls

### @tls.me.subject.unit

Exported by: tls

### @tls.me.uri

Exported by: tls

### @tls.me.url

Exported by: tls

### @tls.me.urn

Exported by: tls

### @tls.me.verified

Exported by: tls

### @tls.me.version

Exported by: tls

### @tls.my

Exported by: tls

### @tls.my.IPAddress

Exported by: tls

### @tls.my.dns

Exported by: tls

### @tls.my.email

Exported by: tls

### @tls.my.emailAddress

Exported by: tls

### @tls.my.email_address

Exported by: tls

### @tls.my.expired

Exported by: tls

### @tls.my.host

Exported by: tls

### @tls.my.hostname

Exported by: tls

### @tls.my.ip

Exported by: tls

### @tls.my.ip_address

Exported by: tls

### @tls.my.issuer

Exported by: tls

### @tls.my.issuer.c

Exported by: tls

### @tls.my.issuer.cn

Exported by: tls

### @tls.my.issuer.commonName

Exported by: tls

### @tls.my.issuer.common_name

Exported by: tls

### @tls.my.issuer.country

Exported by: tls

### @tls.my.issuer.countryName

Exported by: tls

### @tls.my.issuer.country_name

Exported by: tls

### @tls.my.issuer.l

Exported by: tls

### @tls.my.issuer.locality

Exported by: tls

### @tls.my.issuer.localityName

Exported by: tls

### @tls.my.issuer.locality_name

Exported by: tls

### @tls.my.issuer.name

Exported by: tls

### @tls.my.issuer.o

Exported by: tls

### @tls.my.issuer.organization

Exported by: tls

### @tls.my.issuer.organizationName

Exported by: tls

### @tls.my.issuer.organization_name

Exported by: tls

### @tls.my.issuer.organizationalUnitName

Exported by: tls

### @tls.my.issuer.organizational_unit_name

Exported by: tls

### @tls.my.issuer.ou

Exported by: tls

### @tls.my.issuer.st

Exported by: tls

### @tls.my.issuer.state

Exported by: tls

### @tls.my.issuer.stateOrProvinceName

Exported by: tls

### @tls.my.issuer.state_or_province_name

Exported by: tls

### @tls.my.issuer.unit

Exported by: tls

### @tls.my.notAfter

Exported by: tls

### @tls.my.notBefore

Exported by: tls

### @tls.my.not_after

Exported by: tls

### @tls.my.not_before

Exported by: tls

### @tls.my.revoked

Exported by: tls

### @tls.my.self_signed

Exported by: tls

### @tls.my.serialNumber

Exported by: tls

### @tls.my.serial_number

Exported by: tls

### @tls.my.sn

Exported by: tls

### @tls.my.subj

Exported by: tls

### @tls.my.subj.c

Exported by: tls

### @tls.my.subj.cn

Exported by: tls

### @tls.my.subj.commonName

Exported by: tls

### @tls.my.subj.common_name

Exported by: tls

### @tls.my.subj.country

Exported by: tls

### @tls.my.subj.countryName

Exported by: tls

### @tls.my.subj.country_name

Exported by: tls

### @tls.my.subj.l

Exported by: tls

### @tls.my.subj.locality

Exported by: tls

### @tls.my.subj.localityName

Exported by: tls

### @tls.my.subj.locality_name

Exported by: tls

### @tls.my.subj.name

Exported by: tls

### @tls.my.subj.o

Exported by: tls

### @tls.my.subj.organization

Exported by: tls

### @tls.my.subj.organizationName

Exported by: tls

### @tls.my.subj.organization_name

Exported by: tls

### @tls.my.subj.organizationalUnitName

Exported by: tls

### @tls.my.subj.organizational_unit_name

Exported by: tls

### @tls.my.subj.ou

Exported by: tls

### @tls.my.subj.st

Exported by: tls

### @tls.my.subj.state

Exported by: tls

### @tls.my.subj.stateOrProvinceName

Exported by: tls

### @tls.my.subj.state_or_province_name

Exported by: tls

### @tls.my.subj.unit

Exported by: tls

### @tls.my.subject

Exported by: tls

### @tls.my.subject.c

Exported by: tls

### @tls.my.subject.cn

Exported by: tls

### @tls.my.subject.commonName

Exported by: tls

### @tls.my.subject.common_name

Exported by: tls

### @tls.my.subject.country

Exported by: tls

### @tls.my.subject.countryName

Exported by: tls

### @tls.my.subject.country_name

Exported by: tls

### @tls.my.subject.l

Exported by: tls

### @tls.my.subject.locality

Exported by: tls

### @tls.my.subject.localityName

Exported by: tls

### @tls.my.subject.locality_name

Exported by: tls

### @tls.my.subject.name

Exported by: tls

### @tls.my.subject.o

Exported by: tls

### @tls.my.subject.organization

Exported by: tls

### @tls.my.subject.organizationName

Exported by: tls

### @tls.my.subject.organization_name

Exported by: tls

### @tls.my.subject.organizationalUnitName

Exported by: tls

### @tls.my.subject.organizational_unit_name

Exported by: tls

### @tls.my.subject.ou

Exported by: tls

### @tls.my.subject.st

Exported by: tls

### @tls.my.subject.state

Exported by: tls

### @tls.my.subject.stateOrProvinceName

Exported by: tls

### @tls.my.subject.state_or_province_name

Exported by: tls

### @tls.my.subject.unit

Exported by: tls

### @tls.my.subject.uid

Exported by: tls

### @tls.my.subject.uniqueIdentifier

Exported by: tls

### @tls.my.subject.unique_identifier

Exported by: tls

### @tls.my.uri

Exported by: tls

### @tls.my.url

Exported by: tls

### @tls.my.urn

Exported by: tls

### @tls.my.verified

Exported by: tls

### @tls.my.version

Exported by: tls

### @tls.myself

Exported by: tls

### @tls.myself.IPAddress

Exported by: tls

### @tls.myself.dns

Exported by: tls

### @tls.myself.email

Exported by: tls

### @tls.myself.emailAddress

Exported by: tls

### @tls.myself.email_address

Exported by: tls

### @tls.myself.expired

Exported by: tls

### @tls.myself.host

Exported by: tls

### @tls.myself.hostname

Exported by: tls

### @tls.myself.ip

Exported by: tls

### @tls.myself.ip_address

Exported by: tls

### @tls.myself.issuer

Exported by: tls

### @tls.myself.issuer.c

Exported by: tls

### @tls.myself.issuer.cn

Exported by: tls

### @tls.myself.issuer.commonName

Exported by: tls

### @tls.myself.issuer.common_name

Exported by: tls

### @tls.myself.issuer.country

Exported by: tls

### @tls.myself.issuer.countryName

Exported by: tls

### @tls.myself.issuer.country_name

Exported by: tls

### @tls.myself.issuer.l

Exported by: tls

### @tls.myself.issuer.locality

Exported by: tls

### @tls.myself.issuer.localityName

Exported by: tls

### @tls.myself.issuer.locality_name

Exported by: tls

### @tls.myself.issuer.name

Exported by: tls

### @tls.myself.issuer.o

Exported by: tls

### @tls.myself.issuer.organization

Exported by: tls

### @tls.myself.issuer.organizationName

Exported by: tls

### @tls.myself.issuer.organization_name

Exported by: tls

### @tls.myself.issuer.organizationalUnitName

Exported by: tls

### @tls.myself.issuer.organizational_unit_name

Exported by: tls

### @tls.myself.issuer.ou

Exported by: tls

### @tls.myself.issuer.st

Exported by: tls

### @tls.myself.issuer.state

Exported by: tls

### @tls.myself.issuer.stateOrProvinceName

Exported by: tls

### @tls.myself.issuer.state_or_province_name

Exported by: tls

### @tls.myself.issuer.unit

Exported by: tls

### @tls.myself.notAfter

Exported by: tls

### @tls.myself.notBefore

Exported by: tls

### @tls.myself.not_after

Exported by: tls

### @tls.myself.not_before

Exported by: tls

### @tls.myself.revoked

Exported by: tls

### @tls.myself.self_signed

Exported by: tls

### @tls.myself.serialNumber

Exported by: tls

### @tls.myself.serial_number

Exported by: tls

### @tls.myself.sn

Exported by: tls

### @tls.myself.subj

Exported by: tls

### @tls.myself.subj.c

Exported by: tls

### @tls.myself.subj.cn

Exported by: tls

### @tls.myself.subj.commonName

Exported by: tls

### @tls.myself.subj.common_name

Exported by: tls

### @tls.myself.subj.country

Exported by: tls

### @tls.myself.subj.countryName

Exported by: tls

### @tls.myself.subj.country_name

Exported by: tls

### @tls.myself.subj.l

Exported by: tls

### @tls.myself.subj.locality

Exported by: tls

### @tls.myself.subj.localityName

Exported by: tls

### @tls.myself.subj.locality_name

Exported by: tls

### @tls.myself.subj.name

Exported by: tls

### @tls.myself.subj.o

Exported by: tls

### @tls.myself.subj.organization

Exported by: tls

### @tls.myself.subj.organizationName

Exported by: tls

### @tls.myself.subj.organization_name

Exported by: tls

### @tls.myself.subj.organizationalUnitName

Exported by: tls

### @tls.myself.subj.organizational_unit_name

Exported by: tls

### @tls.myself.subj.ou

Exported by: tls

### @tls.myself.subj.st

Exported by: tls

### @tls.myself.subj.state

Exported by: tls

### @tls.myself.subj.stateOrProvinceName

Exported by: tls

### @tls.myself.subj.state_or_province_name

Exported by: tls

### @tls.myself.subj.unit

Exported by: tls

### @tls.myself.subject

Exported by: tls

### @tls.myself.subject.c

Exported by: tls

### @tls.myself.subject.cn

Exported by: tls

### @tls.myself.subject.commonName

Exported by: tls

### @tls.myself.subject.common_name

Exported by: tls

### @tls.myself.subject.country

Exported by: tls

### @tls.myself.subject.countryName

Exported by: tls

### @tls.myself.subject.country_name

Exported by: tls

### @tls.myself.subject.l

Exported by: tls

### @tls.myself.subject.locality

Exported by: tls

### @tls.myself.subject.localityName

Exported by: tls

### @tls.myself.subject.locality_name

Exported by: tls

### @tls.myself.subject.name

Exported by: tls

### @tls.myself.subject.o

Exported by: tls

### @tls.myself.subject.organization

Exported by: tls

### @tls.myself.subject.organizationName

Exported by: tls

### @tls.myself.subject.organization_name

Exported by: tls

### @tls.myself.subject.organizationalUnitName

Exported by: tls

### @tls.myself.subject.organizational_unit_name

Exported by: tls

### @tls.myself.subject.ou

Exported by: tls

### @tls.myself.subject.st

Exported by: tls

### @tls.myself.subject.state

Exported by: tls

### @tls.myself.subject.stateOrProvinceName

Exported by: tls

### @tls.myself.subject.state_or_province_name

Exported by: tls

### @tls.myself.subject.unit

Exported by: tls

### @tls.myself.uri

Exported by: tls

### @tls.myself.url

Exported by: tls

### @tls.myself.urn

Exported by: tls

### @tls.myself.verified

Exported by: tls

### @tls.myself.version

Exported by: tls

### @tls.peer

Exported by: tls

### @tls.peer.IPAddress

Exported by: tls

### @tls.peer.dns

Exported by: tls

### @tls.peer.email

Exported by: tls

### @tls.peer.emailAddress

Exported by: tls

### @tls.peer.email_address

Exported by: tls

### @tls.peer.expired

Exported by: tls

### @tls.peer.host

Exported by: tls

### @tls.peer.hostname

Exported by: tls

### @tls.peer.ip

Exported by: tls

### @tls.peer.ip_address

Exported by: tls

### @tls.peer.issuer

Exported by: tls

### @tls.peer.issuer.c

Exported by: tls

### @tls.peer.issuer.cn

Exported by: tls

### @tls.peer.issuer.commonName

Exported by: tls

### @tls.peer.issuer.common_name

Exported by: tls

### @tls.peer.issuer.country

Exported by: tls

### @tls.peer.issuer.countryName

Exported by: tls

### @tls.peer.issuer.country_name

Exported by: tls

### @tls.peer.issuer.l

Exported by: tls

### @tls.peer.issuer.locality

Exported by: tls

### @tls.peer.issuer.localityName

Exported by: tls

### @tls.peer.issuer.locality_name

Exported by: tls

### @tls.peer.issuer.name

Exported by: tls

### @tls.peer.issuer.o

Exported by: tls

### @tls.peer.issuer.organization

Exported by: tls

### @tls.peer.issuer.organizationName

Exported by: tls

### @tls.peer.issuer.organization_name

Exported by: tls

### @tls.peer.issuer.organizationalUnitName

Exported by: tls

### @tls.peer.issuer.organizational_unit_name

Exported by: tls

### @tls.peer.issuer.ou

Exported by: tls

### @tls.peer.issuer.st

Exported by: tls

### @tls.peer.issuer.state

Exported by: tls

### @tls.peer.issuer.stateOrProvinceName

Exported by: tls

### @tls.peer.issuer.state_or_province_name

Exported by: tls

### @tls.peer.issuer.unit

Exported by: tls

### @tls.peer.notAfter

Exported by: tls

### @tls.peer.notBefore

Exported by: tls

### @tls.peer.not_after

Exported by: tls

### @tls.peer.not_before

Exported by: tls

### @tls.peer.revoked

Exported by: tls

### @tls.peer.self_signed

Exported by: tls

### @tls.peer.serialNumber

Exported by: tls

### @tls.peer.serial_number

Exported by: tls

### @tls.peer.sn

Exported by: tls

### @tls.peer.subj

Exported by: tls

### @tls.peer.subj.c

Exported by: tls

### @tls.peer.subj.cn

Exported by: tls

### @tls.peer.subj.commonName

Exported by: tls

### @tls.peer.subj.common_name

Exported by: tls

### @tls.peer.subj.country

Exported by: tls

### @tls.peer.subj.countryName

Exported by: tls

### @tls.peer.subj.country_name

Exported by: tls

### @tls.peer.subj.l

Exported by: tls

### @tls.peer.subj.locality

Exported by: tls

### @tls.peer.subj.localityName

Exported by: tls

### @tls.peer.subj.locality_name

Exported by: tls

### @tls.peer.subj.name

Exported by: tls

### @tls.peer.subj.o

Exported by: tls

### @tls.peer.subj.organization

Exported by: tls

### @tls.peer.subj.organizationName

Exported by: tls

### @tls.peer.subj.organization_name

Exported by: tls

### @tls.peer.subj.organizationalUnitName

Exported by: tls

### @tls.peer.subj.organizational_unit_name

Exported by: tls

### @tls.peer.subj.ou

Exported by: tls

### @tls.peer.subj.st

Exported by: tls

### @tls.peer.subj.state

Exported by: tls

### @tls.peer.subj.stateOrProvinceName

Exported by: tls

### @tls.peer.subj.state_or_province_name

Exported by: tls

### @tls.peer.subj.unit

Exported by: tls

### @tls.peer.subject

Exported by: tls

### @tls.peer.subject.c

Exported by: tls

### @tls.peer.subject.cn

Exported by: tls

### @tls.peer.subject.commonName

Exported by: tls

### @tls.peer.subject.common_name

Exported by: tls

### @tls.peer.subject.country

Exported by: tls

### @tls.peer.subject.countryName

Exported by: tls

### @tls.peer.subject.country_name

Exported by: tls

### @tls.peer.subject.l

Exported by: tls

### @tls.peer.subject.locality

Exported by: tls

### @tls.peer.subject.localityName

Exported by: tls

### @tls.peer.subject.locality_name

Exported by: tls

### @tls.peer.subject.name

Exported by: tls

### @tls.peer.subject.o

Exported by: tls

### @tls.peer.subject.organization

Exported by: tls

### @tls.peer.subject.organizationName

Exported by: tls

### @tls.peer.subject.organization_name

Exported by: tls

### @tls.peer.subject.organizationalUnitName

Exported by: tls

### @tls.peer.subject.organizational_unit_name

Exported by: tls

### @tls.peer.subject.ou

Exported by: tls

### @tls.peer.subject.st

Exported by: tls

### @tls.peer.subject.state

Exported by: tls

### @tls.peer.subject.stateOrProvinceName

Exported by: tls

### @tls.peer.subject.state_or_province_name

Exported by: tls

### @tls.peer.subject.unit

Exported by: tls

### @tls.peer.subject.uid

Exported by: tls

### @tls.peer.subject.uniqueIdentifier

Exported by: tls

### @tls.peer.subject.unique_identifier

Exported by: tls

### @tls.peer.uri

Exported by: tls

### @tls.peer.url

Exported by: tls

### @tls.peer.urn

Exported by: tls

### @tls.peer.verified

Exported by: tls

### @tls.peer.version

Exported by: tls

### @tls.version

Exported by: tls

### @to

Exported by: core

### @to.name

Exported by: core

### @to.params\[%s\]

Exported by: core

### @to.tag

Exported by: core

### @to.uri

Exported by: core

### @to.uri.host

Exported by: core

### @to.uri.hostport

Exported by: core

### @to.uri.params

Exported by: core

### @to.uri.params\[%s\]

Exported by: core

### @to.uri.port

Exported by: core

### @to.uri.pwd

Exported by: core

### @to.uri.type

Exported by: core

### @to.uri.user

Exported by: core

### @sys.now

Exported by: core

### @sys.pid

Exported by: core

### @sys.unique

Exported by: core

### @sys.now.utc

Exported by: core

### @sys.now.gmt

Exported by: core

### @sys.now.local

Exported by: core

### @v

Exported by: core

### @v.alias

Exported by: core

### @v.branch

Exported by: core

### @v.comment

Exported by: core

### @v.host

Exported by: core

### @v.i

Exported by: core

### @v.name

Exported by: core

### @v.params\[%s\]

Exported by: core

### @v.port

Exported by: core

### @v.received

Exported by: core

### @v.rport

Exported by: core

### @v.transport

Exported by: core

### @v.version

Exported by: core

### @v\[%i\]

Exported by: core

### @v\[%i\].alias

Exported by: core

### @v\[%i\].branch

Exported by: core

### @v\[%i\].comment

Exported by: core

### @v\[%i\].host

Exported by: core

### @v\[%i\].i

Exported by: core

### @v\[%i\].name

Exported by: core

### @v\[%i\].params\[%s\]

Exported by: core

### @v\[%i\].port

Exported by: core

### @v\[%i\].received

Exported by: core

### @v\[%i\].rport

Exported by: core

### @v\[%i\].transport

Exported by: core

### @v\[%i\].version

Exported by: core

### @via

Exported by: core

### @via.alias

Exported by: core

### @via.branch

Exported by: core

### @via.comment

Exported by: core

### @via.host

Exported by: core

### @via.i

Exported by: core

### @via.name

Exported by: core

### @via.params\[%s\]

Exported by: core

### @via.port

Exported by: core

### @via.received

Exported by: core

### @via.rport

Exported by: core

### @via.transport

Exported by: core

### @via.version

Exported by: core

### @via\[%i\]

Exported by: core

### @via\[%i\].alias

Exported by: core

### @via\[%i\].branch

Exported by: core

### @via\[%i\].comment

Exported by: core

### @via\[%i\].host

Exported by: core

### @via\[%i\].i

Exported by: core

### @via\[%i\].name

Exported by: core

### @via\[%i\].params\[%s\]

Exported by: core

### @via\[%i\].port

Exported by: core

### @via\[%i\].received

Exported by: core

### @via\[%i\].rport

Exported by: core

### @via\[%i\].transport

Exported by: core

### @via\[%i\].version

Exported by: core

### @xmlrpc.method

Exported by: xmlrpc
