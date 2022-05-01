# Call Forwarding

## Setup

    loadmodule "avpops.so"
    modparam("avpops","db_url","mysql://openser:openserrw@localhost/kamailio")
    modparam("avpops","avp_table","usr_preferences")

## Enable CF

\*33 to enable:

      if ($rU=~"^\*33.*") {
          strip(3);
          avp_printf("$avp(s:fwd_blind)","$ruri");
          .......
          avp_db_delete("$from/username","$avp(s:fwd_blind)");
          avp_db_store("$from/username","$avp(s:fwd_blind)");
          sl_send_reply("404","CFWD Set");
          ....}

## Disable CF

\*32 to disable:

      if ($rU=~"^\*32") {
          avp_db_delete("$from/username","$avp(s:fwd_blind)");
          sl_send_reply("404","CFWD UnSet");
           ......  }

## Forwarding

    if (avp_db_load("$ruri/username", "$avp(s:fwd_blind)")) {
       $from=$ruri;
       avp_pushto("$ruri", "$avp(s:fwd_blind)");
       ...
       route(RELAY);
       ....
