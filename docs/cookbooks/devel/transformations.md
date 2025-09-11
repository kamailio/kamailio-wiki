# Transformations

Version: Kamailio SIP Server v6.1.x (devel)

    Main author:
       Daniel-Constantin Mierla <miconda (at) gmail.com>

**Transformation** is basically a function that is applied to a
pseudo-variable (PV) to get a property of it. The value of PV is not
affected at all.

Transformations are implemented by various modules, most of them being
in **pv** module.

The transformations are intended to facilitate access to different
attributes of PV (like strlen of value, parts of value, substrings) or
complete different value of PV (encoded in hexa, md5 value,
escape/unescape PV value for DB operations...).

A transformation is represented in between **'{'** and **'}'** and
follows the name of a PV. When using transformations, the PV name and
transformations **must** be enclosed in between **'('** and **')'**,
following the **$** sign.

    # the length of From URI ($fu is PV for From URI)

    $(fu{s.len})

Many transformations can be applied in the same time to a PV.

    # the length of escaped 'Test' header body

    $(hdr(Test){s.escape.common}{s.len})

The transformations can be used anywhere, being considered parts of PV
-- in xlog, avpops or other modules' functions and parameters, in right
side assignment expressions or in comparisons.

## String Transformations

The name of these transformation starts with 's.'. They are intended to
apply string operations to PV.

Available transformations in this class:

### {s.len}

Return strlen of PV value

    $var(x) = "abc";
    if($(var(x){s.len}) == 3)
    {
       ...
    }

### {s.int}

Return integer value of a string-represented number

    $var(x) = "1234";
    if($(var(x){s.int})==1234) {
      ...
    }

### {s.md5}

Return md5 over PV value

    xlog("md5 over From username: $(fU{s.md5})");

### {s.sha1}

Return sha1 over PV value

    xlog("sha1 over From username: $(fU{s.sha1})");

### {s.sha256}

Return sha 256 over PV value

    xlog("sha 256 over From username: $(fU{s.sha256})");

### {s.sha384}

Return sha 384 over PV value

    xlog("sha 384 over From username: $(fU{s.sha384})");

### {s.sha512}

Return sha 512 over PV value

    xlog("sha 512 over From username: $(fU{s.sha512})");

### {s.substr,offset,length}

Return substring starting at offset having size of 'length'. If offset
is negative, then it is counted from the end of PV value, -1 being the
last char. In case of positive value, 0 is first char. Length must be
positive, in case of 0, substring to the end of PV value is returned.
offset and length can be PV as well.

Example:

    $var(x) = "abcd";
    $(var(x){s.substr,1,0}); => "bcd"

### {s.select,index,separator}

Return a field from PV value. The field is selected based on separator
and index.

Index must be an integer value or a PV. If index is negative, the
count of fields starts from end of PV value, -1 being last field. If
index is positive, 0 is the first field.

The separator must be a character used to identify the fields. It can also be
an escaped character: `\\`, `\t`, `\n`, `\r`, `\w` (the whitespace ` `) or
`\s` (all whitespaces).

Example:

``` c
    $var(x) = "12,34,56";
    $(var(x){s.select,1,,}) => "34" ;

    $var(x) = "12,34,56";
    $(var(x){s.select,-2,,}) => "34"
```

### {s.selectws,index}

Return a field from PV value. The field is selected based on any-whitespace as
a separator and the index parameter.

Example:

``` c
    $var(x) = "12 34\t56";
    $(var(x){s.selectws,1}) => "34" ;
    $(var(x){s.selectws,2}) => "56" ;
```

### {s.encode.7bit}

Return encoding in 7Bit of PV value

### {s.decode.7bit}

Return decoding of PV value in 7Bit

### {s.encode.hexa}

Return encoding in hexa of PV value

### {s.decode.hexa}

Return decoding from hexa of PV value

### {s.encode.base58}

Return base58 encoding of PV value.

The set of base58 digits is:

    123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz

### {s.decode.base58}

Return base58 decoding of PV value.

### {s.encode.base64}

Return base64 encoding of PV value

### {s.decode.base64}

Decode base64 encoded PV and return value

### {s.encode.base64t}

Return base64 encoding of PV value without trailing padding
characters('=').

### {s.decode.base64t}

Decode base64 encoded PV, handling missing trailing padding characters,
and return value.

### {s.encode.base64url}

Return base64-url encoding of PV value

### {s.decode.base64url}

Decode base64-url encoded PV and return value

### {s.encode.base64urlt}

Return base64-url encoding of PV value without trailing padding
characters('=').

### {s.decode.base64urlt}

Decode base64-url encoded PV, handling missing trailing padding
characters, and return value.

### {s.escape.common}

Return escaped string of PV value. Characters escaped are ', ", \\ and
0. Useful when doing DB queries (care should be taken for non Latin
character set).

### {s.unescape.common}

Return unescaped string of PV value. Reverse of above transformation.

### {s.escape.user}

Return escaped string of PV value, changing to '%hexa' the characters
that are not allowed in user part of SIP URI following RFC requirements.

### {s.unescape.user}

Return unescaped string of PV value, changing '%hexa' to character code.
Reverse of above transformation.

### {s.escape.param}

Return escaped string of PV value, changing to '%hexa' the characters
that are not allowed in the param part of SIP URI following RFC
requirements.

### {s.unescape.param}

Return unescaped string of PV value, changing '%hexa' to character code.
Reverse of above transformation.

### {s.escape.csv}

Escapes a string to use as a CSV field, as specified in RFC4180:

     * enclose string in double quotes
     * escape double quotes with a second double quote

Example:

``` c
$var(x) = 'foo,bar"baz';
$(var(x){s.escape.csv}); # contains '"foo,bar""baz"'
```

### {s.numeric}

Removes all non-numeric parts of string.

Example:

    $var(x) = "(040)1234/567-89";
    $(var(x){s.numeric}) => "040123456789" ;

### {s.tolower}

Return string with lower case ASCII letters.

### {s.toupper}

Return string with upper case ASCII letters.

### {s.strip,len}

Return string after removing starting 'len' characters. Parameter 'len'
can be positive integer or pseudo-variable holding a positive integer.

Example:

``` c
$var(x) = "1234";
$var(y) = $(var(x){s.strip,2}); # resulted value is "34"
```

### {s.striptail,len}

Return string after removing ending 'len' characters. Parameter 'len'
can be positive integer or pseudo-variable holding a positive integer.

### {s.prefixes\[,len\]}

Return series of comma separated prefixes of the pv. Parameter 'len' is
optional and will limit the maximum prefix length.

Example:

``` c
$var(x) = "123456";
$(var(x){s.prefixes}) => 1,12,123,1234,12345,123456
$(var(x){s.prefixes,4} => 1,12,123,1234
```

### {s.prefixes.quoted\[,len\]}

Return series of comma separated quoted prefixes of the pv. Parameter
'len' is optional and will limit the maximum prefix length.

Example:

``` c
$var(x) = "123456";
$(var(x){s.prefixes.quoted} => '1','12','123','1234','12345','123456'
$(var(x){s.prefixes.quoted,4} => '1','12','123','1234'
```

### {s.replace,match,repl}

Replace all occurrences of **match** with **repl**. The parameters can
be pseudo-variables.

Example:

``` c
$var(x) = "abababa";
$(var(x){s.replace,a,c}) => "cbcbcbc"
```

### {s.ftime,format}

Format the epoch in the pv according to the parameter. The parameter has
to be strftime formatting string.

``` c
$(TS{s.ftime,%Y-%m-%d %H:%M:%S})
```

### {s.trim}

Remove left and right whitespaces (' ', '\\t', '\\r', '\\n') around PV
value.

``` c
$(var(x){s.trim})
```

### {s.rtrim}

Remove right whitespaces (' ', '\\t', '\\r', '\\n') around PV value.

``` c
$(var(x){s.rtrim})
```

### {s.ltrim}

Remove left whitespaces (' ', '\\t', '\\r', '\\n') around PV value.

``` c
$(var(x){s.ltrim})
```

### {s.rm,match}

Remove occurrences of 'match' from PV. 'match' can be static string or
variable.

``` c
$(var(x){s.rm,test})
```

### {s.rmhdws}

Remove header-like duplicated whitespaces (i.e., end of line followed
by whitespaces or tabs are replaced by a single whitespace).

``` c
$(var(x){s.rmhdws})
```

### {s.rmhlws}

Remove header line split white spaces (i.e., remove end of lines and following
white spaces or tabls, like in a multi-line header value to make it single line).

``` c
$(var(x){s.rmhlws})
```

### {s.rmws}

Remove occurrences of whitespace characters (' ', '\\t, '\\r', '\\n').

``` c
$(var(x){s.rmws})
```

### {s.corehash,n}

Return the hash id computed with Kamailio's core hashing function. The
parameter n is optional, it has to be a number of a pv holding a number.
If n is provided, the value returned is **(hashid)&(n-1)**. If n is
power of two, the result is the modulo operation between hashid and n
(hash id % n).

Note: the value is returned as string.

``` c
$(var(x){s.corehash})
```

### {s.unquote}

Return the value without surrounding single (') or double quotes (").

``` c
$var(x) = "\"alice\"";
$var(alice) = $(var(x){s.unquote});
```

### {s.unbracket}

Return the value without surrounding (), \[\], {} or \<\>.

``` c
$var(x) = "<sip:alice@test.sip>";
$var(uri) = $(var(x){s.unbracket});
```

### {s.count,c}

Count how many times c appears in the pv value.

``` c
"abababa"{s.count,a}
# will return 4
```

### {s.after,x}

Return the part of the string after the character **x** searched from
the start of the value. If the character **x** is not found, it returns
empty string.

``` c
"abcdef"{s.after,c}
# will return "def"
```

### {s.rafter,x}

Return the part of the string after the character **x** searched from
the end of the value. If the character **x** is not found, it returns
empty string.

``` c
"abcdefcgh"{s.rafter,c}
# will return "gh"
```

### {s.before,x}

Return the part of the string before the character **x** searched from
the start of the value. If the character **x** is not found, it returns
the entire input string.

``` c
"abcdef"{s.before,c}
# will return "ab"
```

### {s.rbefore,x}

Return the part of the string before the character **x** searched from
the end of the value. If the character **x** is not found, it returns
the entire input string.

``` c
"abcdefcgh"{s.rbefore,c}
# will return "abcdef"
```

### {s.fmtlines,n,m}

Format the value in lines of n characters, adding m spaces to the start
of each new line (not to first line). Each line is ended with "\\r\\n"
apart of last line.

``` c
"abcdefgh"{s.fmtlines,4,2}
```

### {s.fmtlinet,n,m}

Format the value in lines of n characters, adding m tabs to the start of
each new line (not to first line). Each line is ended with "\\r\\n"
apart of last line.

``` c
"abcdefgh"{s.fmtlinet,4,2}
```

### {s.urlencode.param}

Encode the value for URL param format.

### {s.urldecode.param}

Decode the value from URL param format.

## URI Transformations

The name of transformation starts with 'uri.'. The PV value is
considered to be a SIP URI. This transformation returns parts of SIP URI
(see struct sip_uri). If that part is missing, the returned value is an
empty string.

Available transformations in this class:

### {uri.user}

Return the user part

### {uri.host}

(same as **{uri.domain}**)

Return the domain part

### {uri.passwd}

Return the password

### {uri.port}

Return the port

### {uri.params}

Return the URI parameters in a string

### {uri.param,name}

Return the value of parameter with name 'name'

### {uri.rmparam,name}

Remove the parameter with name 'name'

### {uri.headers}

Return URI headers

### {uri.transport}

Return the value of transport parameter

### {uri.ttl}

Return the value of ttl parameter

### {uri.uparam}

Return the value of user parameter

### {uri.maddr}

Return the value of maddr parameter

### {uri.method}

Return the value of method parameter

### {uri.lr}

Return the value of lr parameter

### {uri.r2}

Return the value of r2 parameter

### {uri.scheme}

Return the string value of URI scheme.

### {uri.tosocket}

Return the string value corresponding to socket address matching proto,
address and port from the URI. In other words, converts from a format
like **<sip:address:port;transport=proto>** to **proto:address:port**.

Example:

    "sip:test@127.0.0.1:5060;transport=udp"{uri.tosocket} => "udp:127.0.0.1:5060"

### {uri.duri}

Return the destination URI for routing, keeping only schema, host, port
and transport parameter. If port and transport are not in the original
value, they are also not in the returned value.

Example:

``` c
$var(ouri) = "sip:alice@server.com:5060;nat=yes;transport=tcp;line=xyz";
$var(duri) = $(var(ouri){uri.duri}); # => "sip:server.com:5060;transport=tcp"
```

### {uri.saor}

Return the SIP AoR, keeping only schema, user and host. If user is not
in the original value, it is also not in the returned value.

Example:

``` c
$var(ouri) = "sip:alice@server.com:5060;nat=yes;transport=tcp;line=xyz";
$var(suri) = $(var(ouri){uri.saor}); # => "sip:alice@server.com"
```

### {uri.suri}

Return the simple URI for routing, keeping only schema, user, host, port
and transport parameter. If user, port and transport are not in the
original value, they are also not in the returned value.

Example:

``` c
$var(ouri) = "sip:alice@server.com:5060;nat=yes;transport=tcp;line=xyz";
$var(suri) = $(var(ouri){uri.suri}); # => "sip:alice@server.com:5060;transport=tcp"
```

## Parameters List Transformations

The name of the transformation starts with 'param.'. The PV value is
considered to be a string like name1=value1;name2=value2;...". The
transformations returns the value for a specific parameter, or the name
of a parameter at a specific index.

Available transformations in this class are presented in the next
sections.

**Important Note:** the delimiter cannot be comma (,), because this
transformation is using SIP header/URI parameters parser and the comma
is a delimiter between serialized SIP header/URI bodies. The workaround
is to use the subst transformation to replace the comma with another
character that is used then as separator.

### {param.value,name\[, delimiter\]}

Return the value of parameter 'name'

Example:

    "a=1;b=2;c=3"{param.value,c} = "3"

'name' can be a pseudo-variable

'delimiter' allows you to specify a single character to use as the
parameter delimiter. For example, when parsing HTTP URL query strings
use '&'.

### {param.in,name\[,delimiter\]}

Return 1 if the parameter 'name' is found in parameters list, 0 if not
found.

Example:

    "a=1;b=2;c=3"{param.in,c} = 1

'name' can be a pseudo-variable

'delimiter' allows you to specify a single character to use as the
parameter delimiter. For example, when parsing HTTP URL query strings
use '&'.

### {param.valueat,index\[, delimiter\]}

Return the value of parameter at position given by 'index' (0-based
index)

Example:

    "a=1;b=2;c=3"{param.valueat,1} = "2"

'index' can be a pseudo-variable

'delimiter' allows you to specify a single character to use as the
parameter delimiter. For example, when parsing HTTP URL query strings
use '&'.

### {param.name,index\[, delimiter\]}

Return the name of parameter at position 'index'.

Example:

    "a=1;b=2;c=3"{param.name,1} = "b"

'delimiter' allows you to specify a single character to use as the
parameter delimiter. For example, when parsing HTTP URL query strings
use '&'.

### {param.count\[, delimiter\]}

Return the number of parameters in the list.

Example:

    "a=1;b=2;c=3"{param.count} = 3

'delimiter' allows you to specify a single character to use as the
parameter delimiter. For example, when parsing HTTP URL query strings
use '&'.

## Name-address Transformations

The name of the transformation starts with 'nameaddr.'. The PV value is
considered to be a string like '\[display_name\] uri'. The
transformations returns the value for a specific field.

Available transformations in this class:

### {nameaddr.name}

Return the value of display name

Example:

    '"test" <sip:test@kamailio.net>' {nameaddr.name} = "test"

### {nameaddr.uri}

Return the value of URI

Example:

    '"test" <sip:test@kamailio.net>' {nameaddr.uri} = sip:test@kamailio.net

### {nameaddr.len}

Return the length of the entire name-addr part from the value.

## To-Body Transformations

🔥**IMPORTANT**: This transformation class is exported by **pv**
module.

Access parts of a ToBody-like structure.

### {tobody.uri}

\* return URI from To body

### {tobody.display}

\* return Display name from To body

### {tobody.tag}

\* return Tag parameter from To body

### {tobody.user}

\* return URI User from To body

### {tobody.host}

\* return URI Host from To body

### {tobody.params}

\* return parameters part from To body

## Line Transformations

Line-based operations on text values.

### {line.count}

Return the number of lines.

Example:

``` c
$(var(x){line.count})
```

### {line.at,pos}

Return the line at position 'pos'. The index start from 0. Negative
position can be used to count from last line (which is -1). The pos can
be also a variable holding the index value.

Example:

``` c
$(var(x){line.at,2})
```

### {line.sw,match}

Return the line starting with **match**.

Example:

``` c
$(var(x){line.sw,mytext})
```

## MSRP Transformations

🔥**IMPORTANT**: This transformation class is exported by **msrp**
module.

### {msrpuri.user}

User part of a MSRP URI.

### {msrpuri.host}

Host part of a MSRP URI.

### {msrpuri.port}

Port part of a MSRP URI.

### {msrpuri.session}

Session ID part of a MSRP URI.

### {msrpuri.proto}

Transport layer part of a MSRP URI.

### {msrpuri.params}

Parameters part of a MSRP URI.

### {msrpuri.userinfo}

User-Info part of a MSRP URI. This is the same as user part, when there
are no user parameters or password fields. Otherwise, it include the
whole part after scheme and before '@' in front of host.

## Regular Expression Transformations

🔥**IMPORTANT**: This transformation class is exported by **textops**
module.

### {re.subst,expression}

Perform POSIX regex substitutions on string value pseudo-variables.

``` c
# Assign Request-URI user to PV
$var(user) = $(ru{re.subst,/^sip:(.*)@(.*)/\1/});
```

``` c
# Assign Request-URI user to PV, where every 'A' has been replaced by 'a'
$var(user) = $(rU{re.subst,/A/a/g});
```

The prototype is:

``` c
{re.subst,/match_expression/replacement_expression/flags}
```

- match_expression - Posix regular expression
- replacement_expression - substitution expression with back
    references to matched tokes: \\1, \\2, ..., \\9
- flags:
  + i - match ignore case
  + s - match within multi-lines strings
  + g - replace all matches

## SQL Transformations

🔥**IMPORTANT**: The transformations in this class are exported by the
**sqlops** module.

### {sql.val}

This transformation outputs valid SQL values for various PV values:

- \<null> values are output as NULL
- integers are output as integers
- everything else is output as quoted and escaped string

``` c
    $var(null) = $null;
    $avp(null) = $null;
    $avp(str) = "String with \ illegal \\characters";
    $avp(nr) = 12345;
    $avp(strnr) = "12345";

    xlog("$$rm = $rm = $(rm{sql.val})");
    xlog("$$var(null) = $var(null) = $(var(null){sql.val})");
    xlog("$$avp(null) = $avp(null) = $(avp(null){sql.val})");
    xlog("$$avp(str) = $avp(str) = $(avp(str){sql.val})");
    xlog("$$avp(nr) = $avp(nr) = $(avp(nr){sql.val})");
    xlog("$$avp(strnr) = $avp(strnr) = $(avp(strnr){sql.val})");

  Output:
    $rm = ACK = 'ACK'
    $var(null) = 0 = 0
    $avp(null) = <null> = NULL
    $avp(str) = String with \ illegal \characters = 'String with \\ illegal \\characters'
    $avp(nr) = 12345 = 12345
    $avp(strnr) = 12345 = '12345'
```

### {sql.val.int}

Like sql.val, but output number 0 for null values.

### {sql.val.str}

Like sql.val, but output string '' for null values.

## Examples

Within a PV, many transformation can be applied, being executed from
left to right.

\* The length of the value of parameter at postion 1 (remember 0 is
first position, 1 is second position)

    $var(x) = "a=1;b=22;c=333";
    $(var(x){param.value,$(var(x){param.name,1})}{s.len}) = 2

\* Test if whether is un-registration or not

    if(is_method("REGISTER") && is_present_hf("Expires") && $(hdr(Expires){s.int})==0)
        xlog("This is an un-registration\n");

## HTTP URL Transformations

🔥**IMPORTANT**: This transformation class is exported by **xhttp**
module.

### {url.path}

Path part of an HTTP URL.

For example,

    # When the first line of HTTP request is
    # "GET /path/to/file/?this=is&the=querystring"

    $(hu{url.path}) => "/path/to/file/"

### {url.querystring}

Query string part of an HTTP URL. For example,

    # When the first line of HTTP request is
    # "GET /path/to/file/?this=is&the=querystring"

    $(hu{url.querystring}) => "this=is&the=querystring"

## JSON Transformations

🔥**IMPORTANT**: This transformation class is exported by **json**
module.

### {json.parse}

You can use the transformation to extract values from the json
structured pseudo-variables

    $var(Custom-Data) = $(rb{json.parse,Custom-Data});

## Socket Address Transformations

Transformations related to socket address values (**proto:host:port**).

### {sock.host}

Return the host part.

### {sock.port}

Return the port part.

### {sock.proto}

Return the proto part.

### {sock.touri}

Return the socket address converted to SIP URI:
**<sip:host:port;transport=proto>**.

## URI Alias Transformations

Transformations related to URI alias values (**addr\~port\~protoid**).

### {urialias.encode}

Encode SIP URI to alias value.

``` c
"sip:127.0.0.1:5060;transport=udp"{urialias.encode} => "127.0.0.1~5060~1"
```

### {urialias.decode}

Decode from alias value to SIP URI.

``` c
"127.0.0.1~5060~1"{urialias.decode} => "sip:127.0.0.1:5060;transport=udp"
```

## Value Transformations

Exported by **pv** module.

### {val.json}

If value is $null, return empty string; if value is string, then it is
escaped for use as json value (without surrounding quotes.

``` c
$var(x) = '"name" <sip:name@a.com>';
$(var(x){val.json}) => \"name\" <sip:name@a.com>
```

### {val.n0}

Return integer 0 for values that are $null.

``` c
$sht(a=>x) = $null;
$(sht(a=>x){val.n0}) => 0
```

### {val.ne}

Return empty string for values that are $null.

``` c
$sht(a=>x) = $null;
# $(sht(a=>x){val.ne});
```

### {val.jsonqe}

If value is $null, return quoted empty string; if value is string, then
it is escaped for use as json value already with surrounding quotes; if
the value is int, then it is preserved as it is.

``` c
$var(x) = '"name" <sip:name@a.com>';
$(var(x){val.jsonqe}) => "\"name\" <sip:name@a.com>"
```

## Number Transformations

Exported by **pv** module.

### {num.fdigit}

Return the first digit of the number. In case of a string or $null value, `0` is
returned.

``` c
$var(x) = 1234;
# $(var(x){num.fdigit}) -> 1
```

### {num.ldigit}

Return the last digit of the number. In case of a string or $null value, `0` is
returned.

``` c
$var(x) = 1234;
# $(var(x){num.ldigit}) -> 4
```
