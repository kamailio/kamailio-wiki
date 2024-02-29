There are a several of features missing from the presence implementation
on Kamailio. These are not required for all deployments, but are listed
here to provide a check-list showing what needs to be done before the
presence modules can be considered complete.

## Presence

- GEOPRIV
- External references in org.openmobilealliance.pres-rules documents
    (need to handle org.oma.pres-rules and pres-rules as different
    document types)
- Polled presence (out-of-dialog SUBSCRIBE with Expires: 0)
- Watcher filtering (XML in SUBSCRIBE body describing what parts of a
    presentity should be notified)
- Anonymous fetch
- Capabilities and user discovery
- Partial notification

## RLS

- External references in resource-list documents
- Polled presence (out-of-dialog SUBSCRIBE with Expires: 0)
- Watcher filtering (XML in SUBSCRIBE body describing what parts of a
    presentity should be notified)
- Anonymous fetch
- Capabilities and user discovery
- Partial notification

## XCAP Client

- does not use conditional requests (ETag:, If-Match:, If-Not-Match:)
- does not support xcap-diff (could be implemented using PUA)

## XCAP Server

- does not support xcap-diff
- does not support XQuery
- does not support many org.openmobilealliance auids
