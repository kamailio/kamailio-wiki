# libcurl integration

This page is a place to discuss the integration of libcurl into
Kamailio.

There are currently five modules that use the curl library:

- utils
- xcap_client
- auth_identity
- curl
- async_http (currently on a pull-request)

### Reason for integration

libcurl and some libraries that it uses (openSSL) can conflict if
initialised multiple times. If users wish to use more than one feature
that depends on libcurl, the conflict must be resolved. This is likely
to be achieved by having a single module that wrappers libcurl and is
responsible for global initialisation etc. The different ways it can be
called can be exported by APIs to other modules.

### Requirements

- Synchronous queries
- Asynchronous queries that suspend the transaction and resume on
    completion
- Asynchronous queries that call an event_route on completion
- Ability to configure 'named connections' with preset curl options
    (keys/certs, verify flags etc)
- query functions exported via a C API to other modules

Any more? See also
[TODO.txt](https://github.com/kamailio/kamailio/blob/master/modules/curl/todo.txt)
in the curl module

- Ability to pass a list of HTTP header to add
- Ability to retrieve response headers (e.g. header callback
    function) - required for xcap_client module

### Discussion

The curl module currently offers a synchronous query function which can
use named connections set up in modparams. Client certificates and
parameters can be configured globally or per connection and there is an
exported API. This uses the curl 'easy' interface without worker
processes.

The async_http module offers an asynchronous query function which can
optionally suspend the transaction. This uses the curl 'multi' interface
and creates worker processes.

The final solution will be a combination of these, however consensus
should be reached on the architecture. Should these be combined into a
single module, or should one depend on the other? It should of course be
easy to understand by the end user.

Items to discuss:

- Name of modules(s)
- Definition of API functions and parameters
- Use of worker pools

Names

- The curl module has been renamed to "Http_client"
- Need new name for the new module

Please add your own comments below (hpw)

- (gv) I think it was mentioned at the meeting in Brussels: it would
    be nice to have a separate configuration file with the
    "connections", which can be reloaded at run time (like
    <http://kamailio.org/docs/modules/stable/modules/tls.html#tls.r.tls.reload>).
- (oej) The "curl" prefix needs to go away from the functions,
    parameters and api in the http_client module. New names discussed on
    sr-dev
