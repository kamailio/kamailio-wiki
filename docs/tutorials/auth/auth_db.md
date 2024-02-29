**Note: This document is work in progress and yet unfinished!**

written by Emmanuel Schmidbauer (<eschmidbauer@gmail.com>)

This guide is designed to illustrate how to setup auth_db and usrloc to
do digest authentication using a database backend. I will be using a
postgresql database in this example.

The following modules are required: usrloc, registrar, auth, auth_db

# General preparations

You'll probably want to setup your database and add a few users. I will
briefly go over how to setup the tables using the schema provided with
kamailio.

# Modules: auth, auth_db, usrloc, registrar

    loadmodule "auth.so"
    loadmodule "auth_db.so"
    loadmodule "usrloc.so"
    loadmodule "registrar.so"

    modparam("auth_db|usrloc", "db_url", DB_URL)
    modparam("auth_db", "use_domain", 1)
    modparam("auth_db", "calculate_ha1", 1)
    modparam("usrloc", "db_mode", 3 )
    modparam("usrloc", "desc_time_order", 1 )
    modparam("usrloc", "nat_bflag", 1 )
    modparam("usrloc", "timer_interval", 5 )
    modparam("usrloc", "use_domain", 1)
    modparam("nathelper|registrar", "received_avp", "$avp(s:rcv)")

    # -------------------------  request routing logic -------------------
    # main routing logic

    route {
            # per request initial checks
            route(SANITY_CHECK);

            # CANCEL processing
            if (is_method("CANCEL")) {
                    if (t_check_trans()) {
                            t_relay();
                    }
                    exit;
            }

            route(CHECK_SOURCE_IP);

            ##################################
            ### HANDLE SEQUENTIAL REQUESTS ###
            route(WITHINDLG);

            ###############################
            ### HANDLE INITIAL REQUESTS ###
            t_check_trans();

            route(REGISTER);

            route(INVITE);

            route(RELAY);
    }

    route[REGISTER]
    {
            if (is_method("REGISTER")) {
                    # auth user/pass
                    if(!www_authenticate("$fd", "user_extension")) {
                            www_challenge("$fd", "1");
                    }

                    if (!save("sip_registration")) {
                            sl_reply_error();
                    }
                    exit;
            }

    }

    # Handle INVITE + REFER
    route[INVITE]
    {
            # record routing for dialog forming requests (in case they are routed)
            # remove preloaded route headers
            remove_hf("Route");
            if (is_method("INVITE|REFER")) {
                    record_route();
                   # auth user/pass
                    if (!proxy_authenticate("$fd", "user_extension")) {
                            proxy_challenge("$fd", "1");
                            exit;
                    }
            }
    }
