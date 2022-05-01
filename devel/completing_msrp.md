There are a couple of features missing from the MSRP relay
implementation on Kamailio. These are required for any
large-scale/real-world deployment.

## REPORT generation

RFC 4976 section 6.4.1 paragraph 3 states:

       If the Failure-Report header is "yes" or "partial", and if there is a
       problem processing the SEND request or if an error response is
       received for that SEND request, then the relay MUST respond with an
       appropriate error response in a REPORT back to the original source of
       the message.

This means that when a SEND request that contains a Failure-Report:
header with value of "yes" or "partial" is relayed by Kamailio we need
to maintain some state so that when the TCP send fails (immediately or
timeout) or we receive a failure response from the next hop, Kamailio
can generate and send a REPORT back to the sender.

## SEND chunking

An MSRP relay has the option of splitting large MSRP messages (including
those that are already chunked) into smaller chunks. The reason is that
there is no maximum size for an MSRP chunk, so it is entirely possible
for a client to attempt to send a large file in a single, very-large,
MSRP message. In this case it becomes important to pull the message from
the receive buffer in small pieces (instead of waiting for a complete
message to arrive and over-flowing the receive buffer) and relaying it
in smaller chunks.

Also, the flow control for MSRP is based around TCP windowing, so if you
want to limit the rate that someone is sending you MSRP messages (for
example during the transfer of a large file) you do so by pulling from
the TCP buffer at a lower rate. One way of avoiding overloading an MSRP
relay is to have fairly small TCP receive buffers thereby limiting the
rate at which clients and relays can send data. However, if the TCP
buffers are small the chances of a client sending a message or chunk
that is too large (and needs to be chunked by the relay) increases
further.

Of course, to do this the MSRP module will need to be able to remember
the (From\|To)-Path, transaction ID, and so on from the start of the
MSRP message so that it can use these (along with calculated Byte-Range)
in each additional chunk.

I was thinking a new parameter indicating the maximum MSRP send chunk
size is required. If an MSRP message in the receive buffer reaches that
number then it has to be pulled from the buffer in parts and relayed as
multiple chunks. This maximum send chunk size should be set to be much
smaller than the TCP receive buffer size.
