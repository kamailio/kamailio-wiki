# Mono - C# API for Kamailio v4.0.x

Kamailio can execute managed code assemblies via **app_mono** module:

-   <http://kamailio.org/docs/modules/4.0.x/modules/app_mono.html>

The C# API exported by Kamailio to the embedded Mono interpreter is
defined in **SR.cs** file located in source tree
**modules/app_mono/lib/SR.cs**.

To compile **SR.cs** to a library, use:

    gmcs -t:library SR.cs

This will generate the file **SR.dll**. To link your C# file to it, use:

    $ gmcs -r:SR.dll MyFile.cs

The API is stored in a **namespace**, named **SR**. The several classes
offer access to internal Kamailio functionalities via public static
functions.

## Class Core

### APIVersion

``` c
public extern static string APIVersion();
```

Return API version string.

### Log

``` c
public extern static void Log(int level, string text);
```

Write a message via Kamailio logging system to specified log level.

### Err

``` c
public extern static void Err(string text);
```

Write a message via Kamailio logging system to error log level.

### Dbg

``` c
public extern static void Dbg(string text);
```

Write a message via Kamailio logging system to debug log level.

### ModF

``` c
public extern static int ModF(string text);
```

Execute the function named by the value of parameter 'text' exported by
a Kamailio module. It has to be a function with no parameters.

## Class PV

### GetS

``` c
public extern static string GetS(string pvn);
```

Get the string value of a pseudo-variable.

### GetI

``` c
public extern static int GetI(string pvn);
```

Get the integer value of a pseudo-variable.

### SetS

``` c
public extern static int SetS(string pvn, string val);
```

Set the pseudo-variable to a string value.

### SetI

``` c
public extern static int SetI(string pvn, int val);
```

Set the pseudo-variable to an integer value.

### Unset

``` c
public extern static int Unset(string pvn);
```

Unset the pseudo-variable (like assigning $null in kamailio.cfg).

### IsNull

``` c
public extern static int IsNull(string pvn);
```

Return true if the pseudo-variable is null.

## Class HDR

### Append

``` c
public extern static int Append(string hv);
```

Add a header to the end of the headers list. The parameter must be full
header, including name, body header and ending '\\r\\n'.

### Remove

``` c
public extern static int Remove(string name);
```

Remove all headers matching the name.

### Insert

``` c
public extern static int Insert(string hv);
```

Add a header to the beginning of the headers list. The parameter must be
full header, including name, body header and ending '\\r\\n'.

### AppendToReply

``` c
public extern static int AppendToReply(string hv);
```

Add a header to the headers list for local reply. The parameter must be
full header, including name, body header and ending '\\r\\n'.

## Example

A basic example of C# application using SR API:

``` c
using SR;

namespace MySRTest {
        class Test {
                static int Main(string[] args) {
                        SR.Core.Log(1, "Kamailio API Version: " + SR.Core.APIVersion() + "\n");
                        if (args.Length == 1) {
                                SR.Core.Log(1, "Parameter from Kamailio config:"
                                        + args[0] + "\n");
                        }
                        SR.Core.Dbg("Request URI is: " + SR.PV.GetS("$ru") + "\n");
                        SR.PV.SetS("$rU", "123");
                        SR.HDR.AppendToReply("My-Mono-Hdr: ok\r\n");
                        SR.Core.ModF("sl_reply_error");
                        return 1;
                }
        }
}
```
