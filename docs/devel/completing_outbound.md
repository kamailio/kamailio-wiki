# outbound

This page contains some notes describing the work to fully complete
outbound (RFC 5626) support on Kamailio. It is believed that the current
Kamailio feature set is sufficient to provide separate Edge Proxy and
Registrar servers supporting outbound.

## Single-server (combined edge proxy and registrar)

- registrar module
  - Update lookup() so that (in single-server mode) Path: header
        from location table is added as a Record-Route:. If parallel
        forking is in use each branch must have a different
        Record-Route: added. lookup() must also set $du based on the
        flow-token from the Record-Route: header it adds for that
        branch.
- tm module
  - Update t\_\*\_contacts() functions so they will work with the
        new lookup() behaviour in single-server mode.
- rr module
  - Update loose_route() to cope with the double-RR that the new
        lookup() behaviour causes. The first Record-Route: added to a
        dialog forming request will have been added when the request
        arrived on the server and contains a flow-token pointing to the
        originator of the request. The second Record-Route: added is the
        one created by lookup() and contains a flow-token pointing to
        the destination of the branch.
- nathelper module
  - Move nat_uac_test() to another module (perhaps siputils?)
        enabling Kamailio users to choose between the two different NAT
        traversal mechanisms cleanly by loading either the nathelper
        module or the outbound module.

## Other work to be considered

- Within dialog flow fail-over
  - Is this even possible?
