# Modules Functions

([A](#a)) ([B](#b)) ([C](#c)) ([D](#d)) ([E](#e)) ([F](#f)) ([G](#g))
([H](#h)) ([I](#i)) ([J](#j)) ([K](#k)) ([L](#l)) ([M](#m)) ([N](#n))
([O](#o)) ([P](#p)) ([Q](#q)) ([R](#r)) ([S](#s)) ([T](#t)) ([U](#u))
([V](#v)) ([W](#w)) ([X](#x)) ([Y](#y)) ([Z](#z))

## \[A\]

| Name                                                 | Module Path | Module Name                                                                            |
|------------------------------------------------------|-------------|----------------------------------------------------------------------------------------|
| **abort()**                                          | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)         |
| **acc_db_request(comment, table)**                   | *modules_k* | [acc](http://www.kamailio.org/docs/modules/3.3.x/modules_k/acc.html)                   |
| **acc_db_request(comment, table)**                   | *modules_s* | [acc_syslog](http://www.kamailio.org/docs/modules/3.3.x/modules_s/acc_syslog.html)     |
| **acc_diam_request(comment)**                        | *modules_k* | [acc](http://www.kamailio.org/docs/modules/3.3.x/modules_k/acc.html)                   |
| **acc_diam_request(comment)**                        | *modules_s* | [acc_syslog](http://www.kamailio.org/docs/modules/3.3.x/modules_s/acc_syslog.html)     |
| **acc_log_request(comment)**                         | *modules_k* | [acc](http://www.kamailio.org/docs/modules/3.3.x/modules_k/acc.html)                   |
| **acc_log_request(comment)**                         | *modules_s* | [acc_syslog](http://www.kamailio.org/docs/modules/3.3.x/modules_s/acc_syslog.html)     |
| **acc_rad_request(comment)**                         | *modules_k* | [acc](http://www.kamailio.org/docs/modules/3.3.x/modules_k/acc.html)                   |
| **acc_rad_request(comment)**                         | *modules_k* | [acc_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/acc_radius.html)     |
| **acc_rad_request(comment)**                         | *modules_s* | [acc_syslog](http://www.kamailio.org/docs/modules/3.3.x/modules_s/acc_syslog.html)     |
| **add_contact_alias()**                              | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html)       |
| **add_diversion(reason \[, uri\])**                  | *modules_k* | [diversion](http://www.kamailio.org/docs/modules/3.3.x/modules_k/diversion.html)       |
| **add_path()**                                       | *modules_k* | [path](http://www.kamailio.org/docs/modules/3.3.x/modules_k/path.html)                 |
| **add_path(user)**                                   | *modules_k* | [path](http://www.kamailio.org/docs/modules/3.3.x/modules_k/path.html)                 |
| **add_path_received()**                              | *modules_k* | [path](http://www.kamailio.org/docs/modules/3.3.x/modules_k/path.html)                 |
| **add_path_received(user)**                          | *modules_k* | [path](http://www.kamailio.org/docs/modules/3.3.x/modules_k/path.html)                 |
| **add_rcv_param()**                                  | *modules_s* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_s/nathelper.html)       |
| **add_rcv_param(\[flag\]),**                         | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html)       |
| **add_rr_param(param)**                              | *modules_k* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rr.html)                     |
| **add_sock_hdr(hdr_name)**                           | *modules_k* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_k/registrar.html)       |
| **add_uri_param(param)**                             | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)         |
| **alias_db_lookup(table_name)**                      | *modules_k* | [alias_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/alias_db.html)         |
| **allow_address(group_id, ip_addr_pvar, port_pvar)** | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_refer_to(allow_file, deny_file)**            | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html)   |
| **allow_refer_to(basename)**                         | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html)   |
| **allow_register(allow_file, deny_file)**            | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_register(allow_file, deny_file)**            | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html)   |
| **allow_register(basename)**                         | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_register(basename)**                         | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html)   |
| **allow_routing()**                                  | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_routing()**                                  | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html)   |
| **allow_routing(allow_file, deny_file)**             | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html)   |
| **allow_routing(allow_file,deny_file)**              | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_routing(basename)**                          | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_routing(basename)**                          | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html)   |
| **allow_source_address(\[group_id\])**               | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_source_address_group()**                     | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_trusted(\[src_ip_pvar, proto_pvar\])**       | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **allow_uri(basename, pvar)**                        | *modules_k* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_k/permissions.html)   |
| **append_attr_hf(header_name, $avp_name)**           | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **append_attr_hf(name)**                             | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **append_branch()**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)                       |
| **append_hf(hf)**                                    | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **append_hf(txt)**                                   | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **append_hf(txt, hdr)**                              | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **append_hf_value(hf, xl_value)**                    | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **append_rpid_hf()**                                 | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)         |
| **append_rpid_hf(prefix, suffix)**                   | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)         |
| **append_time()**                                    | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **append_time()**                                    | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **append_time_to_request()**                         | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **append_to_reply(txt)**                             | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **append_to_reply(txt)**                             | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **append_urihf(prefix, suffix)**                     | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **append_urihf(prefix, suffix)**                     | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **assign_hf_value(hf, xl_value)**                    | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **assign_hf_value2(hf, xl_value)**                   | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **async_route(routename, seconds)**                  | *modules*   | [async](http://www.kamailio.org/docs/modules/3.3.x/modules/async.html)                 |
| **async_sleep(seconds)**                             | *modules*   | [async](http://www.kamailio.org/docs/modules/3.3.x/modules/async.html)                 |
| **attr2uri($attribute\[,uri-part\])**                | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **attr_destination($avp_name)**                      | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **attr_equals(attribute, value)**                    | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **attr_equals_xl(attribute, xl_format)**             | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **attr_exists(attribute)**                           | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **attr_to_reply(header_name, $avp_name)**            | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **attr_to_reply(name)**                              | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **auth_add_identity()**                              | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/3.3.x/modules/auth_identity.html) |
| **auth_challenge(realm, flags)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/3.3.x/modules/auth.html)                   |
| **auth_check(realm, table, flags)**                  | *modules_k* | [auth_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_db.html)           |
| **auth_date_proc()**                                 | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/3.3.x/modules/auth_identity.html) |
| **auth_get_www_authenticate(realm, flags, pvdst)**   | *modules*   | [auth](http://www.kamailio.org/docs/modules/3.3.x/modules/auth.html)                   |
| **avp_check(name,op_value)**                         | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_copy(old_name,new_name)**                      | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_db_delete(source,name)**                       | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_db_load(source,name)**                         | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_db_query(query\[,dest\])**                     | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_db_store(source,name)**                        | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_delete(name)**                                 | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_load_radius(user)**                            | *modules_s* | [avp_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp_radius.html)     |
| **avp_op(name,op_value)**                            | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_print()**                                      | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_printf(dest, format)**                         | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_pushto(destination,name)**                     | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |
| **avp_subst(avps, subst)**                           | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)               |

## \[B\]

| Name                                 | Module Path | Module Name                                                                      |
|--------------------------------------|-------------|----------------------------------------------------------------------------------|
| **bla_handle_notify**                | *modules_k* | [pua_bla](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua_bla.html)     |
| **bla_set_flag**                     | *modules_k* | [pua_bla](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua_bla.html)     |
| **blst_add(\[timeout\])**            | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **blst_add_retry_after(min, max)**   | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **blst_clear_ignore(\[flags\])**     | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **blst_del()**                       | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **blst_is_blacklisted()**            | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **blst_rpl_clear_ignore(\[flags\])** | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **blst_rpl_set_ignore(\[flags\])**   | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **blst_set_ignore(\[flags\])**       | *modules*   | [blst](http://www.kamailio.org/docs/modules/3.3.x/modules/blst.html)             |
| **bm_log_timer(name)**               | *modules_k* | [benchmark](http://www.kamailio.org/docs/modules/3.3.x/modules_k/benchmark.html) |
| **bm_start_timer(name)**             | *modules_k* | [benchmark](http://www.kamailio.org/docs/modules/3.3.x/modules_k/benchmark.html) |

## \[C\]

| Name                                                                                          | Module Path | Module Name                                                                              |
|-----------------------------------------------------------------------------------------------|-------------|------------------------------------------------------------------------------------------|
| **call_control()**                                                                            | *modules_k* | [call_control](http://www.kamailio.org/docs/modules/3.3.x/modules_k/call_control.html)   |
| **change_reply_status(code, reason)**                                                         | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/3.3.x/modules/textopsx.html)             |
| **checkcallingtranslation()**                                                                 | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                     |
| **checkospheader()**                                                                          | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                     |
| **checkosproute()**                                                                           | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                     |
| **check_blacklist (\[string table\])**                                                        | *modules_k* | [userblacklist](http://www.kamailio.org/docs/modules/3.3.x/modules_k/userblacklist.html) |
| **check_from()**                                                                              | *modules_k* | [uri_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uri_db.html)               |
| **check_from()**                                                                              | *modules_s* | [uri_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uri_db.html)               |
| **check_route_param(re)**                                                                     | *modules_k* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rr.html)                       |
| **check_to()**                                                                                | *modules_k* | [uri_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uri_db.html)               |
| **check_to()**                                                                                | *modules_s* | [uri_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uri_db.html)               |
| **check_user_blacklist (string user, string domain, string number, string table)**            | *modules_k* | [userblacklist](http://www.kamailio.org/docs/modules/3.3.x/modules_k/userblacklist.html) |
| **check_user_whitelist (string user, string domain, string number, string table)**            | *modules_k* | [userblacklist](http://www.kamailio.org/docs/modules/3.3.x/modules_k/userblacklist.html) |
| **cmp_aor(str1, str2)**                                                                       | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)           |
| **cmp_istr(str1, str2)**                                                                      | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)             |
| **cmp_str(str1, str2)**                                                                       | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)             |
| **cmp_uri(str1, str2)**                                                                       | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)           |
| **cnt_add(\[group.\]name, number)**                                                           | *modules*   | [counters](http://www.kamailio.org/docs/modules/3.3.x/modules/counters.html)             |
| **cnt_inc(\[group.\]name)**                                                                   | *modules*   | [counters](http://www.kamailio.org/docs/modules/3.3.x/modules/counters.html)             |
| **cnt_reset(\[group.\]name)**                                                                 | *modules*   | [counters](http://www.kamailio.org/docs/modules/3.3.x/modules/counters.html)             |
| **compare_ips (ip1, ip2)**                                                                    | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)                   |
| **compare_pure_ips (ip1, ip2)**                                                               | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)                   |
| **consume_credentials()**                                                                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/3.3.x/modules/auth.html)                     |
| **core_hash(string1, string2, size)**                                                         | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)           |
| **cpl_process_register()**                                                                    | *modules_k* | [cpl-c](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cpl-c.html)                 |
| **cpl_process_register()**                                                                    | *modules_s* | [cpl-c](http://www.kamailio.org/docs/modules/3.3.x/modules_s/cpl-c.html)                 |
| **cpl_process_register_norpl()**                                                              | *modules_k* | [cpl-c](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cpl-c.html)                 |
| **cpl_run_script(type,mode)**                                                                 | *modules_k* | [cpl-c](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cpl-c.html)                 |
| **cpl_run_script(type,mode)**                                                                 | *modules_s* | [cpl-c](http://www.kamailio.org/docs/modules/3.3.x/modules_s/cpl-c.html)                 |
| **cr_next_domain(carrier, domain, prefix_matching, host, reply_code, dstavp)**                | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/3.3.x/modules/carrierroute.html)     |
| **cr_nofallback_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/3.3.x/modules/carrierroute.html)     |
| **cr_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)**            | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/3.3.x/modules/carrierroute.html)     |
| **cr_user_carrier(user, domain, dstavp)**                                                     | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/3.3.x/modules/carrierroute.html)     |

## \[D\]

| Name                                             | Module Path | Module Name                                                                              |
|--------------------------------------------------|-------------|------------------------------------------------------------------------------------------|
| **dbg_breakpoint(mode)**                         | *modules*   | [debugger](http://www.kamailio.org/docs/modules/3.3.x/modules/debugger.html)             |
| **decode_contact()**                             | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)           |
| **decode_contact()**                             | *modules_s* | [mangler](http://www.kamailio.org/docs/modules/3.3.x/modules_s/mangler.html)             |
| **decode_contact_header()**                      | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)           |
| **decode_contact_header()**                      | *modules_s* | [mangler](http://www.kamailio.org/docs/modules/3.3.x/modules_s/mangler.html)             |
| **defunct_gw(period)**                           | *modules*   | [lcr](http://www.kamailio.org/docs/modules/3.3.x/modules/lcr.html)                       |
| **del_attr($avp_name)**                          | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                     |
| **diameter_is_user_in(who, group)**              | *modules_k* | [auth_diameter](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_diameter.html) |
| **diameter_proxy_authorize(realm)**              | *modules_k* | [auth_diameter](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_diameter.html) |
| **diameter_www_authorize(realm)**                | *modules_k* | [auth_diameter](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_diameter.html) |
| **dispatch_rpc()**                               | *modules*   | [xmlrpc](http://www.kamailio.org/docs/modules/3.3.x/modules/xmlrpc.html)                 |
| **dispatch_xhttp_rpc()**                         | *modules*   | [xhttp_rpc](http://www.kamailio.org/docs/modules/3.3.x/modules/xhttp_rpc.html)           |
| **dlg_bridge(from, to, op)**                     | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_bye(side)**                                | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_get(callid, ftag, ttag)**                  | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_isflagset(flag)**                          | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_manage()**                                 | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_refer(side, address)**                     | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_resetflag(flag)**                          | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_setflag(flag)**                            | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_set_property(attr)**                       | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **dlg_set_timeout(timeout \[, h_entry, h_id\])** | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)               |
| **does_uri_exist()**                             | *modules_k* | [uri_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uri_db.html)               |
| **does_uri_exist()**                             | *modules_s* | [uri_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uri_db.html)               |
| **do_routing("\[groupID\]")**                    | *modules_k* | [drouting](http://www.kamailio.org/docs/modules/3.3.x/modules_k/drouting.html)           |
| **dp_apply_policy()**                            | *modules_k* | [domainpolicy](http://www.kamailio.org/docs/modules/3.3.x/modules_k/domainpolicy.html)   |
| **dp_can_connect()**                             | *modules_k* | [domainpolicy](http://www.kamailio.org/docs/modules/3.3.x/modules_k/domainpolicy.html)   |
| **dp_translate(id, \[src\[/dest\]\])**           | *modules*   | [dialplan](http://www.kamailio.org/docs/modules/3.3.x/modules/dialplan.html)             |
| **ds_is_from_list(\[groupid\])**                 | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_load_unset()**                              | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_load_update()**                             | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_mark_dst(\[state\])**                       | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_next_domain()**                             | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_next_dst()**                                | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_select_domain(set, alg)**                   | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_select_dst(set, alg)**                      | *modules_k* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dispatcher.html)       |
| **ds_select_dst(set, alg)**                      | *modules_s* | [dispatcher](http://www.kamailio.org/docs/modules/3.3.x/modules_s/dispatcher.html)       |
| **dump_attrs()**                                 | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                     |

## \[E\]

| Name                                                 | Module Path | Module Name                                                                      |
|------------------------------------------------------|-------------|----------------------------------------------------------------------------------|
| **encode_contact(encoding_prefix)**                  | *modules_s* | [mangler](http://www.kamailio.org/docs/modules/3.3.x/modules_s/mangler.html)     |
| **encode_contact(encoding_prefix,hostpart)**         | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)   |
| **end_media_session()**                              | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/mediaproxy.html) |
| **engage_media_proxy()**                             | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/mediaproxy.html) |
| **enum_pv_query("pvar"\[,"suffix"\[,"service"\]\])** | *modules*   | [enum](http://www.kamailio.org/docs/modules/3.3.x/modules/enum.html)             |
| **enum_query(\["suffix"\[,"service"\]\])**           | *modules*   | [enum](http://www.kamailio.org/docs/modules/3.3.x/modules/enum.html)             |
| **exclude_hf_value(hf, xl_value)**                   | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)     |
| **exec_avp(command \[, avplist\])**                  | *modules_k* | [exec](http://www.kamailio.org/docs/modules/3.3.x/modules_k/exec.html)           |
| **exec_dset(command)**                               | *modules_k* | [exec](http://www.kamailio.org/docs/modules/3.3.x/modules_k/exec.html)           |
| **exec_dset(command)**                               | *modules_s* | [exec](http://www.kamailio.org/docs/modules/3.3.x/modules_s/exec.html)           |
| **exec_msg(command)**                                | *modules_k* | [exec](http://www.kamailio.org/docs/modules/3.3.x/modules_k/exec.html)           |
| **exec_msg(command)**                                | *modules_s* | [exec](http://www.kamailio.org/docs/modules/3.3.x/modules_s/exec.html)           |

## \[F\]

| Name                                      | Module Path | Module Name                                                                      |
|-------------------------------------------|-------------|----------------------------------------------------------------------------------|
| **filter_body(content_type)**             | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)     |
| **fix_nated_contact()**                   | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html) |
| **fix_nated_contact()**                   | *modules_s* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_s/nathelper.html) |
| **fix_nated_register()**                  | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html) |
| **fix_nated_register()**                  | *modules_s* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_s/nathelper.html) |
| **fix_nated_sdp(flags \[, ip_address\])** | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html) |
| **fix_nated_sdp(mode)**                   | *modules_s* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_s/nathelper.html) |
| **flags2attr("$avp")**                    | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)             |
| **fnmatch(value, expr \[, flags\])**      | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/3.3.x/modules/textopsx.html)     |
| **from_any_gw(\[ip_addr, proto\])**       | *modules*   | [lcr](http://www.kamailio.org/docs/modules/3.3.x/modules/lcr.html)               |
| **from_gw(lcr_id\[, ip_addr, proto\])**   | *modules*   | [lcr](http://www.kamailio.org/docs/modules/3.3.x/modules/lcr.html)               |

## \[G\]

| Name                                         | Module Path | Module Name                                                                            |
|----------------------------------------------|-------------|----------------------------------------------------------------------------------------|
| **geoip_match(ipaddr, pvc)**                 | *modules*   | [geoip](http://www.kamailio.org/docs/modules/3.3.x/modules/geoip.html)                 |
| **get_profile_size(profile,\[value\],size)** | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)             |
| **get_redirects(max)**                       | *modules_k* | [uac_redirect](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac_redirect.html) |
| **get_redirects(max,reason)**                | *modules_k* | [uac_redirect](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac_redirect.html) |
| **get_user_group(URI, AVP)**                 | *modules_k* | [group](http://www.kamailio.org/docs/modules/3.3.x/modules_k/group.html)               |
| **goes_to_gw(\[type\])**                     | *modules_k* | [drouting](http://www.kamailio.org/docs/modules/3.3.x/modules_k/drouting.html)         |

## \[H\]

| Name                                                                  | Module Path | Module Name                                                                      |
|-----------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------|
| **h350_auth_lookup(auth_username, "username_avp_spec/pwd_avp_spec")** | *modules_k* | [h350](http://www.kamailio.org/docs/modules/3.3.x/modules_k/h350.html)           |
| **h350_result_call_preferences(avp_name_prefix)**                     | *modules_k* | [h350](http://www.kamailio.org/docs/modules/3.3.x/modules_k/h350.html)           |
| **h350_result_service_level(avp_name_prefix)**                        | *modules_k* | [h350](http://www.kamailio.org/docs/modules/3.3.x/modules_k/h350.html)           |
| **h350_sipuri_lookup(sip_uri)**                                       | *modules_k* | [h350](http://www.kamailio.org/docs/modules/3.3.x/modules_k/h350.html)           |
| **handle_publish(char\* sender_uri)**                                 | *modules_k* | [presence](http://www.kamailio.org/docs/modules/3.3.x/modules_k/presence.html)   |
| **handle_ruri_alias()**                                               | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html) |
| **handle_subscribe(\[watcher_uri\])**                                 | *modules_k* | [presence](http://www.kamailio.org/docs/modules/3.3.x/modules_k/presence.html)   |
| **has_body(), has_body(mime)**                                        | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)     |
| **has_totag()**                                                       | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)   |
| **has_totag()**                                                       | *modules_s* | [uri](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uri.html)             |
| **hdr_body2attrs(headername, prefix)**                                | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)             |
| **hdr_body2attrs2(headername, prefix)**                               | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)             |
| **hf_value_exists(hf, xl_value)**                                     | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)     |
| **http_query(url, result)**                                           | *modules*   | [utils](http://www.kamailio.org/docs/modules/3.3.x/modules/utils.html)           |

## \[I\]

| Name                                                                             | Module Path | Module Name                                                                          |
|----------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------------------------|
| **imc_manager()**                                                                | *modules_k* | [imc](http://www.kamailio.org/docs/modules/3.3.x/modules_k/imc.html)                 |
| **include_hf_value(hf, xl_value)**                                               | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **insert_attr_hf(header_name, $avp_name)**                                       | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                 |
| **insert_attr_hf(name)**                                                         | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                 |
| **insert_hf(txt)**                                                               | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **insert_hf(txt, hdr)**                                                          | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **insert_hf_value(hf, xl_value)**                                                | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **in_list(subject, list, separator)**                                            | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **ipmatch (string/AVP/select, \[avp\])**                                         | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html) |
| **ipmatch_filter (unsigned int)**                                                | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html) |
| **ipmatch_onsend (string)**                                                      | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html) |
| **iptrtpproxy_adjust_timeout(gate_a\_to_b, session_ids)**                        | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_alloc(gate_a\_to_b \[, existing_sess_ids\])**                      | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_authorize_media()**                                                | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_delete(session_ids)**                                              | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_set_param("(aggregation/switchboard)\_by_sip_ip\_(a/b)", sip_ip)** | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_set_param("codec_set", value)**                                    | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_set_param("o_addr", value)**                                       | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_set_param("o_name", value)**                                       | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_set_param("protected_session_ids", sess_ids)**                     | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_set_param("remove_codec_mask", value)**                            | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_set_param(param, value)**                                          | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **iptrtpproxy_update(gate_a\_to_b, session_ids)**                                | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/iptrtpproxy.html)   |
| **ip_is_trusted(ip_set, ip)**                                                    | *modules_s* | [permissions](http://www.kamailio.org/docs/modules/3.3.x/modules_s/permissions.html) |
| **ip_type (ip)**                                                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)               |
| **isbflagset(flag \[, branch\])**                                                | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **isdsturiset()**                                                                | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **issflagset(flag)**                                                             | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **is_audio_on_hold()**                                                           | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **is_avp_set(name)**                                                             | *modules*   | [avpops](http://www.kamailio.org/docs/modules/3.3.x/modules/avpops.html)             |
| **is_direction(dir)**                                                            | *modules_k* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rr.html)                   |
| **is_domain_local(pseudo_variable)**                                             | *modules_k* | [domain](http://www.kamailio.org/docs/modules/3.3.x/modules_k/domain.html)           |
| **is_e164(pseudo-variable)**                                                     | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_from_gw( type, \[flag\])**                                                  | *modules_k* | [drouting](http://www.kamailio.org/docs/modules/3.3.x/modules_k/drouting.html)       |
| **is_from_gw(\[type\])**                                                         | *modules_k* | [drouting](http://www.kamailio.org/docs/modules/3.3.x/modules_k/drouting.html)       |
| **is_from_local()**                                                              | *modules_k* | [domain](http://www.kamailio.org/docs/modules/3.3.x/modules_k/domain.html)           |
| **is_from_user_enum()**                                                          | *modules*   | [enum](http://www.kamailio.org/docs/modules/3.3.x/modules/enum.html)                 |
| **is_gflag(flag)**                                                               | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)       |
| **is_gflag(flag_num)**                                                           | *modules_s* | [gflags](http://www.kamailio.org/docs/modules/3.3.x/modules_s/gflags.html)           |
| **is_gruu(\[uri\])**                                                             | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_int(pvar)**                                                                 | *modules_k* | [pv](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pv.html)                   |
| **is_in_profile(profile,\[value\])**                                             | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)           |
| **is_ip (ip)**                                                                   | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)               |
| **is_ipv4 (ip)**                                                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)               |
| **is_ipv6 (ip)**                                                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)               |
| **is_ipv6_reference (ip)**                                                       | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)               |
| **is_ip_rfc1918 (ip)**                                                           | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)               |
| **is_known_dlg()**                                                               | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)           |
| **is_leap_year(\[year\])**                                                       | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/3.3.x/modules/tmrec.html)               |
| **is_local(domain)**                                                             | *modules_s* | [domain](http://www.kamailio.org/docs/modules/3.3.x/modules_s/domain.html)           |
| **is_maxfwd_lt(max_value)**                                                      | *modules_k* | [maxfwd](http://www.kamailio.org/docs/modules/3.3.x/modules_k/maxfwd.html)           |
| **is_method(name)**                                                              | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **is_myself(uri)**                                                               | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **is_peer_verified()**                                                           | *modules*   | [tls](http://www.kamailio.org/docs/modules/3.3.x/modules/tls.html)                   |
| **is_present_hf(hf_name)**                                                       | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **is_present_hf(hf_name)**                                                       | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **is_present_hf_re(hf_name_re)**                                                 | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **is_privacy(privacy_type)**                                                     | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **is_pure_ip (ip)**                                                              | *modules*   | [ipops](http://www.kamailio.org/docs/modules/3.3.x/modules/ipops.html)               |
| **is_reply()**                                                                   | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_request()**                                                                 | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_rfc1918(ip_address)**                                                       | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html)     |
| **is_rpid_user_e164()**                                                          | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_rpid_user_e164()**                                                          | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_uri_host_local()**                                                          | *modules_k* | [domain](http://www.kamailio.org/docs/modules/3.3.x/modules_k/domain.html)           |
| **is_uri_user_e164(pseudo-variable)**                                            | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_user(username)**                                                            | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **is_user(username)**                                                            | *modules_s* | [uri](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uri.html)                 |
| **is_user_in(URI, group)**                                                       | *modules_k* | [group](http://www.kamailio.org/docs/modules/3.3.x/modules_k/group.html)             |
| **i_enum_query(\["suffix"\[,"service"\]\])**                                     | *modules*   | [enum](http://www.kamailio.org/docs/modules/3.3.x/modules/enum.html)                 |

## \[J\]

| Name                                                                           | Module Path | Module Name                                                                    |
|--------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------------------|
| **jsonrpc_notification(method, parameters)**                                   | *modules*   | [jsonrpc-c](http://www.kamailio.org/docs/modules/3.3.x/modules/jsonrpc-c.html) |
| **jsonrpc_request(method, parameters, return_route, error_route, result_var)** | *modules*   | [jsonrpc-c](http://www.kamailio.org/docs/modules/3.3.x/modules/jsonrpc-c.html) |
| **json_get_field(json_string, field_name, destination)**                       | *modules*   | [json](http://www.kamailio.org/docs/modules/3.3.x/modules/json.html)           |

## \[K\]

| Name                          | Module Path | Module Name                                                                  |
|-------------------------------|-------------|------------------------------------------------------------------------------|
| **keep_hf(regexp)**           | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/3.3.x/modules/textopsx.html) |
| **km_append_branch(\[uri\])** | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)         |

## \[L\]

| Name                                                                      | Module Path | Module Name                                                                      |
|---------------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------|
| **ldap_filter_url_encode(string, avp_spec)**                              | *modules_k* | [ldap](http://www.kamailio.org/docs/modules/3.3.x/modules_k/ldap.html)           |
| **ldap_result("ldap_attr_name/avp_spec\[/avp_type\]" \[, regex_subst\])** | *modules_k* | [ldap](http://www.kamailio.org/docs/modules/3.3.x/modules_k/ldap.html)           |
| **ldap_result_check("ldap_attr_name/string_to_match" \[, regex_subst\])** | *modules_k* | [ldap](http://www.kamailio.org/docs/modules/3.3.x/modules_k/ldap.html)           |
| **ldap_result_next()**                                                    | *modules_k* | [ldap](http://www.kamailio.org/docs/modules/3.3.x/modules_k/ldap.html)           |
| **ldap_search(ldap_url)**                                                 | *modules_k* | [ldap](http://www.kamailio.org/docs/modules/3.3.x/modules_k/ldap.html)           |
| **load_attrs (track, id)**                                                | *modules_s* | [avp_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp_db.html)       |
| **load_extra_attrs (group_id, id)**                                       | *modules_s* | [avp_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp_db.html)       |
| **load_gws(lcr_id\[, uri_user\[, caller_uri\]\])**                        | *modules*   | [lcr](http://www.kamailio.org/docs/modules/3.3.x/modules/lcr.html)               |
| **lock(key)**                                                             | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)   |
| **lock_extra_attrs (group_id, id)**                                       | *modules_s* | [avp_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp_db.html)       |
| **lookup(domain \[, uri\])**                                              | *modules_k* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_k/registrar.html) |
| **lookup(domain)**                                                        | *modules_s* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_s/registrar.html) |
| **lookup_domain(attr_group, domain)**                                     | *modules_s* | [domain](http://www.kamailio.org/docs/modules/3.3.x/modules_s/domain.html)       |
| **lookup_domain(domain\[, prefix\])**                                     | *modules_k* | [domain](http://www.kamailio.org/docs/modules/3.3.x/modules_k/domain.html)       |
| **loose_route()**                                                         | *modules_k* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rr.html)               |
| **loose_route()**                                                         | *modules_s* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_s/rr.html)               |
| **lua_dofile(path)**                                                      | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/3.3.x/modules/app_lua.html)       |
| **lua_dostring(script)**                                                  | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/3.3.x/modules/app_lua.html)       |
| **lua_run(function, params)**                                             | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/3.3.x/modules/app_lua.html)       |
| **lua_runstring(script)**                                                 | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/3.3.x/modules/app_lua.html)       |

## \[M\]

| Name                                                    | Module Path | Module Name                                                                        |
|---------------------------------------------------------|-------------|------------------------------------------------------------------------------------|
| **matrix (string first, string second, string dstavp)** | *modules*   | [matrix](http://www.kamailio.org/docs/modules/3.3.x/modules/matrix.html)           |
| **maxfwd_at_least(min_value)**                          | *modules_s* | [maxfwd](http://www.kamailio.org/docs/modules/3.3.x/modules_s/maxfwd.html)         |
| **maxfwd_process(max_value)**                           | *modules_s* | [maxfwd](http://www.kamailio.org/docs/modules/3.3.x/modules_s/maxfwd.html)         |
| **mf_process_maxfwd_header(max_value)**                 | *modules_k* | [maxfwd](http://www.kamailio.org/docs/modules/3.3.x/modules_k/maxfwd.html)         |
| **mono_exec(path \[, param\])**                         | *modules*   | [app_mono](http://www.kamailio.org/docs/modules/3.3.x/modules/app_mono.html)       |
| **mono_run(\[param\])**                                 | *modules*   | [app_mono](http://www.kamailio.org/docs/modules/3.3.x/modules/app_mono.html)       |
| **mq_add(queue, key, value)**                           | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/3.3.x/modules/mqueue.html)           |
| **mq_fetch(queue)**                                     | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/3.3.x/modules/mqueue.html)           |
| **mq_pv_free(queue)**                                   | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/3.3.x/modules/mqueue.html)           |
| **msg_apply_changes()**                                 | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/3.3.x/modules/textopsx.html)       |
| **msrp_is_reply()**                                     | *modules*   | [msrp](http://www.kamailio.org/docs/modules/3.3.x/modules/msrp.html)               |
| **msrp_is_request()**                                   | *modules*   | [msrp](http://www.kamailio.org/docs/modules/3.3.x/modules/msrp.html)               |
| **msrp_relay()**                                        | *modules*   | [msrp](http://www.kamailio.org/docs/modules/3.3.x/modules/msrp.html)               |
| **msrp_relay_flags(flags)**                             | *modules*   | [msrp](http://www.kamailio.org/docs/modules/3.3.x/modules/msrp.html)               |
| **msrp_reply(code, text \[, hdrs\])**                   | *modules*   | [msrp](http://www.kamailio.org/docs/modules/3.3.x/modules/msrp.html)               |
| **msrp_reply_flags(flags)**                             | *modules*   | [msrp](http://www.kamailio.org/docs/modules/3.3.x/modules/msrp.html)               |
| **msrp_set_dst(addr, sock)**                            | *modules*   | [msrp](http://www.kamailio.org/docs/modules/3.3.x/modules/msrp.html)               |
| **mt_match(mtree, pv, mode)**                           | *modules*   | [mtree](http://www.kamailio.org/docs/modules/3.3.x/modules/mtree.html)             |
| **mt_mem_alloc(size)**                                  | *modules*   | [malloc_test](http://www.kamailio.org/docs/modules/3.3.x/modules/malloc_test.html) |
| **mt_mem_free()**                                       | *modules*   | [malloc_test](http://www.kamailio.org/docs/modules/3.3.x/modules/malloc_test.html) |
| **m_dump(next_hop)**                                    | *modules_s* | [msilo](http://www.kamailio.org/docs/modules/3.3.x/modules_s/msilo.html)           |
| **m_dump(\[owner\])**                                   | *modules_k* | [msilo](http://www.kamailio.org/docs/modules/3.3.x/modules_k/msilo.html)           |
| **m_store(mode, next_hop)**                             | *modules_s* | [msilo](http://www.kamailio.org/docs/modules/3.3.x/modules_s/msilo.html)           |
| **m_store(\[owner\])**                                  | *modules_k* | [msilo](http://www.kamailio.org/docs/modules/3.3.x/modules_k/msilo.html)           |

## \[N\]

| Name                    | Module Path | Module Name                                                                      |
|-------------------------|-------------|----------------------------------------------------------------------------------|
| **nat_uac_test(flags)** | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html) |
| **nat_uac_test(mode)**  | *modules_s* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_s/nathelper.html) |
| **next_gw()**           | *modules*   | [lcr](http://www.kamailio.org/docs/modules/3.3.x/modules/lcr.html)               |

## \[O\]

| Name                | Module Path | Module Name                                                                    |
|---------------------|-------------|--------------------------------------------------------------------------------|
| **options_reply()** | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html) |
| **options_reply()** | *modules_s* | [options](http://www.kamailio.org/docs/modules/3.3.x/modules_s/options.html)   |

## \[P\]

| Name                                                                | Module Path | Module Name                                                                            |
|---------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------------|
| **pcre_match (string, pcre_regex)**                                 | *modules_k* | [regex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/regex.html)               |
| **pcre_match_group (string \[, group\])**                           | *modules_k* | [regex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/regex.html)               |
| **pdb_query (string query, string dstavp)**                         | *modules*   | [pdb](http://www.kamailio.org/docs/modules/3.3.x/modules/pdb.html)                     |
| **pd_translate(sdomain, rewrite_mode)**                             | *modules_k* | [pdt](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pdt.html)                   |
| **perl_exec(func, \[param\])**                                      | *modules_k* | [perl](http://www.kamailio.org/docs/modules/3.3.x/modules_k/perl.html)                 |
| **perl_exec_simple(func, \[param\])**                               | *modules_k* | [perl](http://www.kamailio.org/docs/modules/3.3.x/modules_k/perl.html)                 |
| **pike_check_req()**                                                | *modules_k* | [pike](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pike.html)                 |
| **pike_check_req()**                                                | *modules_s* | [pike](http://www.kamailio.org/docs/modules/3.3.x/modules_s/pike.html)                 |
| **ping_contact(contact)**                                           | *modules_s* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_s/nathelper.html)       |
| **pkg_status()**                                                    | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)         |
| **pkg_summary()**                                                   | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)         |
| **pl_check(name)**                                                  | *modules*   | [pipelimit](http://www.kamailio.org/docs/modules/3.3.x/modules/pipelimit.html)         |
| **pl_drop(\[ \[min \], max \])**                                    | *modules*   | [pipelimit](http://www.kamailio.org/docs/modules/3.3.x/modules/pipelimit.html)         |
| **prefix2domain()**                                                 | *modules_k* | [pdt](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pdt.html)                   |
| **prefix2domain(mode)**                                             | *modules_s* | [pdt](http://www.kamailio.org/docs/modules/3.3.x/modules_s/pdt.html)                   |
| **prefix2domain(rewrite_mode)**                                     | *modules_k* | [pdt](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pdt.html)                   |
| **prefix2domain(rewrite_mode, multidomain_mode)**                   | *modules_k* | [pdt](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pdt.html)                   |
| **prefix_route()**                                                  | *modules*   | [prefix_route](http://www.kamailio.org/docs/modules/3.3.x/modules/prefix_route.html)   |
| **prepareallosproute()**                                            | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                   |
| **prepareosproute()**                                               | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                   |
| **pres_auth_status(watcher_uri, presentity_uri)**                   | *modules_k* | [presence](http://www.kamailio.org/docs/modules/3.3.x/modules_k/presence.html)         |
| **pres_check_activities(presentity_uri, activity)**                 | *modules_k* | [presence_xml](http://www.kamailio.org/docs/modules/3.3.x/modules_k/presence_xml.html) |
| **pres_check_basic(presentity_uri, status)**                        | *modules_k* | [presence_xml](http://www.kamailio.org/docs/modules/3.3.x/modules_k/presence_xml.html) |
| **pres_refresh_watchers(uri, event, type\[, file_uri, filename\])** | *modules_k* | [presence](http://www.kamailio.org/docs/modules/3.3.x/modules_k/presence.html)         |
| **pres_update_watchers(uri, event)**                                | *modules_k* | [presence](http://www.kamailio.org/docs/modules/3.3.x/modules_k/presence.html)         |
| **print(txt)**                                                      | *modules_s* | [print](http://www.kamailio.org/docs/modules/3.3.x/modules_s/print.html)               |
| **print_attr($attribute)**                                          | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **proxy_authenticate(realm, table)**                                | *modules_k* | [auth_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_db.html)           |
| **proxy_authorize(realm, table)**                                   | *modules_k* | [auth_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_db.html)           |
| **proxy_authorize(realm, table)**                                   | *modules_s* | [auth_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/auth_db.html)           |
| **proxy_challenge(realm, flags)**                                   | *modules*   | [auth](http://www.kamailio.org/docs/modules/3.3.x/modules/auth.html)                   |
| **pua_set_publish()**                                               | *modules_k* | [pua_usrloc](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua_usrloc.html)     |
| **pua_update_contact()**                                            | *modules_k* | [pua](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua.html)                   |
| **pua_xmpp_notify()**                                               | *modules_k* | [pua_xmpp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua_xmpp.html)         |
| **pua_xmpp_req_winfo(request_uri, expires)**                        | *modules_k* | [pua_xmpp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua_xmpp.html)         |
| **purple_handle_publish()**                                         | *modules_k* | [purple](http://www.kamailio.org/docs/modules/3.3.x/modules_k/purple.html)             |
| **purple_handle_subscribe()**                                       | *modules_k* | [purple](http://www.kamailio.org/docs/modules/3.3.x/modules_k/purple.html)             |
| **purple_send_message()**                                           | *modules_k* | [purple](http://www.kamailio.org/docs/modules/3.3.x/modules_k/purple.html)             |
| **pv_isset(pvar)**                                                  | *modules_k* | [pv](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pv.html)                     |
| **pv_printf(var, str)**                                             | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                   |
| **pv_proxy_authenticate(realm, passwd, flags)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/3.3.x/modules/auth.html)                   |
| **pv_unset(pvar)**                                                  | *modules_k* | [pv](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pv.html)                     |
| **pv_www_authenticate(realm, passwd, flags)**                       | *modules*   | [auth](http://www.kamailio.org/docs/modules/3.3.x/modules/auth.html)                   |
| **python_exec(method \[, mystr\])**                                 | *modules*   | [app_python](http://www.kamailio.org/docs/modules/3.3.x/modules/app_python.html)       |

## \[Q\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[R\]

| Name                                             | Module Path | Module Name                                                                          |
|--------------------------------------------------|-------------|--------------------------------------------------------------------------------------|
| **radius_does_uri_exist()**                      | *modules_s* | [uri_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uri_radius.html)   |
| **radius_does_uri_exist(\[uri\])**               | *modules_k* | [misc_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/misc_radius.html) |
| **radius_does_uri_user_exist(\[user\])**         | *modules_k* | [misc_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/misc_radius.html) |
| **radius_is_user_in(user, group)**               | *modules_k* | [misc_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/misc_radius.html) |
| **radius_load_callee_avps(callee)**              | *modules_k* | [misc_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/misc_radius.html) |
| **radius_load_caller_avps(caller)**              | *modules_k* | [misc_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/misc_radius.html) |
| **radius_proxy_authorize(realm \[, uri_user\])** | *modules_k* | [auth_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_radius.html) |
| **radius_proxy_authorize(realm)**                | *modules_s* | [auth_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_s/auth_radius.html) |
| **radius_www_authorize(realm \[, uri_user\])**   | *modules_k* | [auth_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_radius.html) |
| **radius_www_authorize(realm)**                  | *modules_s* | [auth_radius](http://www.kamailio.org/docs/modules/3.3.x/modules_s/auth_radius.html) |
| **rand_event()**                                 | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)       |
| **rand_get_prob()**                              | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)       |
| **rand_reset_prob()**                            | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)       |
| **rand_set_prob(probabiltiy)**                   | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)       |
| **record_route() and record_route(string)**      | *modules_k* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rr.html)                   |
| **record_route()**                               | *modules_s* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_s/rr.html)                   |
| **record_route_advertised_address(address)**     | *modules_k* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rr.html)                   |
| **record_route_preset(string \[,string2\])**     | *modules_k* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rr.html)                   |
| **record_route_preset(string)**                  | *modules_s* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_s/rr.html)                   |
| **redis_cmd(srvname, command, replyid)**         | *modules*   | [ndb_redis](http://www.kamailio.org/docs/modules/3.3.x/modules/ndb_redis.html)       |
| **reginfo_handle_notify**                        | *modules_k* | [pua_reginfo](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua_reginfo.html) |
| **reginfo_subscribe(uri\[, expires\])**          | *modules_k* | [pua_reginfo](http://www.kamailio.org/docs/modules/3.3.x/modules_k/pua_reginfo.html) |
| **registered(domain \[, uri\])**                 | *modules_k* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_k/registrar.html)     |
| **registered(domain)**                           | *modules_s* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_s/registrar.html)     |
| **reg_fetch_contacts(domain, uri, profile)**     | *modules_k* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_k/registrar.html)     |
| **reg_free_contacts(profile)**                   | *modules_k* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_k/registrar.html)     |
| **remove_body()**                                | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/3.3.x/modules/textopsx.html)         |
| **remove_extra_attrs (group_id, id)**            | *modules_s* | [avp_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp_db.html)           |
| **remove_hf(hf_name)**                           | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **remove_hf(hname)**                             | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **remove_hf_re(re)**                             | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **remove_hf_re(reg_exp)**                        | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **remove_hf_value(hf_par)**                      | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **remove_hf_value2(hf_par)**                     | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **replace(re, txt)**                             | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **replace(re, txt)**                             | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)         |
| **replace_all(re, txt)**                         | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **replace_attr_hf(header_name, $avp_name)**      | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                 |
| **replace_attr_hf(name)**                        | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                 |
| **replace_body(re, txt)**                        | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **replace_body_all(re, txt)**                    | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **replace_body_atonce(re, txt)**                 | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)         |
| **reportospusage()**                             | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                 |
| **requestosprouting()**                          | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                 |
| **resetdebug()**                                 | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **resetdsturi()**                                | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **resetsflag(flag \[, branch\])**                | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **resetsflag(flag)**                             | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                 |
| **reset_gflag(flag)**                            | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)       |
| **reset_gflag(flag_num)**                        | *modules_s* | [gflags](http://www.kamailio.org/docs/modules/3.3.x/modules_s/gflags.html)           |
| **reset_stat(variable)**                         | *modules_k* | [statistics](http://www.kamailio.org/docs/modules/3.3.x/modules_k/statistics.html)   |
| **ring_insert_callid()**                         | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)       |
| **rls_handle_notify()**                          | *modules_k* | [rls](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rls.html)                 |
| **rls_handle_subscribe(\[watcher_uri\])**        | *modules_k* | [rls](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rls.html)                 |
| **rls_update_subs(uri, event)**                  | *modules_k* | [rls](http://www.kamailio.org/docs/modules/3.3.x/modules_k/rls.html)                 |
| **rl_check(\[pvar\])**                           | *modules*   | [ratelimit](http://www.kamailio.org/docs/modules/3.3.x/modules/ratelimit.html)       |
| **rl_check_pipe(\[pipe_no\])**                   | *modules*   | [ratelimit](http://www.kamailio.org/docs/modules/3.3.x/modules/ratelimit.html)       |
| **rtpproxy_answer(\[flags \[, ip_address\]\])**  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |
| **rtpproxy_destroy(\[flags\])**                  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |
| **rtpproxy_manage(\[flags \[, ip_address\]\])**  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |
| **rtpproxy_offer(\[flags \[, ip_address\]\])**   | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |
| **rtpproxy_stop_stream2uac(),**                  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |
| **rtpproxy_stop_stream2uas(prompt_name, count)** | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |
| **rtpproxy_stream2uac(prompt_name, count),**     | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |
| **rtpproxy_stream2uas(prompt_name, count)**      | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)         |

## \[S\]

| Name                                              | Module Path | Module Name                                                                            |
|---------------------------------------------------|-------------|----------------------------------------------------------------------------------------|
| **sanity_check(\[msg_checks \[, uri_checks\]\])** | *modules*   | [sanity](http://www.kamailio.org/docs/modules/3.3.x/modules/sanity.html)               |
| **save(domain)**                                  | *modules_s* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_s/registrar.html)       |
| **save(domain, \[, flags \[, uri\]\])**           | *modules_k* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_k/registrar.html)       |
| **save_extra_attrs (group_id, id)**               | *modules_s* | [avp_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp_db.html)             |
| **save_noreply(domain)**                          | *modules_s* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_s/registrar.html)       |
| **sdp_get(avpvar)**                               | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_keep_codecs_by_id(list \[, mtype\])**       | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_keep_codecs_by_name(list \[, mtype\])**     | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_mangle_ip(pattern, newip)**                 | *modules_s* | [mangler](http://www.kamailio.org/docs/modules/3.3.x/modules_s/mangler.html)           |
| **sdp_mangle_port(offset)**                       | *modules_s* | [mangler](http://www.kamailio.org/docs/modules/3.3.x/modules_s/mangler.html)           |
| **sdp_print(level)**                              | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_remove_codecs_by_id(list)**                 | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_remove_codecs_by_name(list)**               | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_remove_media(type)**                        | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_with_codecs_by_id(list)**                   | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_with_codecs_by_name(list)**                 | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sdp_with_media(type)**                          | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/3.3.x/modules/sdpops.html)               |
| **sd_lookup(table \[, owner\])**                  | *modules_k* | [speeddial](http://www.kamailio.org/docs/modules/3.3.x/modules_k/speeddial.html)       |
| **sd_lookup(table)**                              | *modules_s* | [speeddial](http://www.kamailio.org/docs/modules/3.3.x/modules_s/speeddial.html)       |
| **search(re)**                                    | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **search(re)**                                    | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **search_append(re, txt)**                        | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **search_append(re, txt)**                        | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **search_append_body(re, txt)**                   | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **search_body(re)**                               | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **search_hf(hf, re, flags)**                      | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **send_reply(code, reason)**                      | *modules*   | [sl](http://www.kamailio.org/docs/modules/3.3.x/modules/sl.html)                       |
| **setbflag(flag \[, branch\])**                   | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                   |
| **setdebug(level)**                               | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                   |
| **setdsturi(uri)**                                | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                   |
| **setsflag(flag)**                                | *modules_k* | [kex](http://www.kamailio.org/docs/modules/3.3.x/modules_k/kex.html)                   |
| **set_accept_filter(filter,flags)**               | *modules_k* | [uac_redirect](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac_redirect.html) |
| **set_body(txt,content_type)**                    | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **set_deny_filter(filter,flags)**                 | *modules_k* | [uac_redirect](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac_redirect.html) |
| **set_dlg_profile(profile,\[value\])**            | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)             |
| **set_gflag(flag)**                               | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)         |
| **set_gflag(flag_num)**                           | *modules_s* | [gflags](http://www.kamailio.org/docs/modules/3.3.x/modules_s/gflags.html)             |
| **set_iattr(attribute,value)**                    | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **set_reply_body(txt,content_type)**              | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **set_rtp_proxy_set()**                           | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)           |
| **set_rtp_proxy_set()**                           | *modules_k* | [nathelper](http://www.kamailio.org/docs/modules/3.3.x/modules_k/nathelper.html)       |
| **set_sattr(attribute,value)**                    | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **set_uri_host(uri, host)**                       | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)         |
| **set_uri_user(uri, user)**                       | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)         |
| **shm_status()**                                  | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)         |
| **shm_summary()**                                 | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)         |
| **sht_print()**                                   | *modules_k* | [htable](http://www.kamailio.org/docs/modules/3.3.x/modules_k/htable.html)             |
| **sht_rm_name_re(htable=>regexp)**                | *modules_k* | [htable](http://www.kamailio.org/docs/modules/3.3.x/modules_k/htable.html)             |
| **sht_rm_value_re(htable=>regexp)**               | *modules_k* | [htable](http://www.kamailio.org/docs/modules/3.3.x/modules_k/htable.html)             |
| **sip_trace()**                                   | *modules_k* | [siptrace](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siptrace.html)         |
| **sleep(time)**                                   | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)         |
| **sl_reply_error()**                              | *modules*   | [sl](http://www.kamailio.org/docs/modules/3.3.x/modules/sl.html)                       |
| **sl_send_reply(code, reason)**                   | *modules*   | [sl](http://www.kamailio.org/docs/modules/3.3.x/modules/sl.html)                       |
| **sms_send_msg()**                                | *modules*   | [sms](http://www.kamailio.org/docs/modules/3.3.x/modules/sms.html)                     |
| **sms_send_msg_to_net(network_name)**             | *modules*   | [sms](http://www.kamailio.org/docs/modules/3.3.x/modules/sms.html)                     |
| **sql_pvquery(connection, query, result)**        | *modules_k* | [sqlops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/sqlops.html)             |
| **sql_query(connection, query\[, result\])**      | *modules_k* | [sqlops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/sqlops.html)             |
| **sql_result_free(result)**                       | *modules_k* | [sqlops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/sqlops.html)             |
| **sql_xquery(connection, query, result)**         | *modules_k* | [sqlops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/sqlops.html)             |
| **sstCheckMin(send_reply_flag)**                  | *modules_k* | [sst](http://www.kamailio.org/docs/modules/3.3.x/modules_k/sst.html)                   |
| **starts_with(str1, str2)**                       | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **start_recording()**                             | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)           |
| **strict_route() -- deprecated**                  | *modules_s* | [rr](http://www.kamailio.org/docs/modules/3.3.x/modules_s/rr.html)                     |
| **subst('/re/repl/flags')**                       | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **subst('/re/repl/flags')**                       | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **subst_attr($avp_name, subst_re)**               | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                   |
| **subst_body('/re/repl/flags')**                  | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **subst_hf(hf, subexp, flags)**                   | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **subst_uri('/re/repl/flags')**                   | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **subst_uri('/re/repl/flags')**                   | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |
| **subst_user('/re/repl/flags')**                  | *modules_k* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_k/textops.html)           |
| **subst_user('/re/repl/flags')**                  | *modules_s* | [textops](http://www.kamailio.org/docs/modules/3.3.x/modules_s/textops.html)           |

## \[T\]

| Name                                                  | Module Path | Module Name                                                                    |
|-------------------------------------------------------|-------------|--------------------------------------------------------------------------------|
| **tel2sip(uri, hostpart, result)**                    | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html) |
| **time_period_match(period \[, timestamp\])**         | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/3.3.x/modules/tmrec.html)         |
| **tmrec_match(timerec \[, timestamp\])**              | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/3.3.x/modules/tmrec.html)         |
| **to_any_gw(\[ip_addr, proto\])**                     | *modules*   | [lcr](http://www.kamailio.org/docs/modules/3.3.x/modules/lcr.html)             |
| **to_gw(lcr_id\[, ip_addr, proto\])**                 | *modules*   | [lcr](http://www.kamailio.org/docs/modules/3.3.x/modules/lcr.html)             |
| **t_any_replied()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_any_timeout()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_branch_replied()**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_branch_timeout()**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_cancel_branches(which)**                          | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |
| **t_cancel_callid(callid, cseq, flag)**               | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |
| **t_check_trans()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_continue(tindex, tlabel, rtname)**                | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |
| **t_drop_replies(\[mode\])**                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_flush_flags()**                                   | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |
| **t_forward_nonack(\[ip, port\])**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_forward_nonack_sctp(ip, port)**                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_forward_nonack_tcp(ip, port)**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_forward_nonack_tls(ip, port)**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_forward_nonack_udp(ip, port)**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_grep_status("code")**                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_is_branch_route()**                               | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |
| **t_is_canceled()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_is_expired()**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_is_failure_route()**                              | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |
| **t_load_contacts()**                                 | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_lookup_cancel(\[1\])**                            | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_lookup_request()**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_newtran()**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_next_contacts()**                                 | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_on_branch(branch_route)**                         | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_on_failure(failure_route)**                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_on_reply(onreply_route)**                         | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_relay(\[host, port\])**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_relay_cancel()**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_relay_to(proxy, flags)**                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_relay_to_sctp(\[ip, port\])**                     | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_relay_to_tcp(\[ip, port\])**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_relay_to_tls(\[ip, port\])**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_relay_to_udp(\[ip, port\])**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_release()**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_replicate(params)**                               | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_reply(code, reason_phrase)**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_reply_callid(callid, cseq, code, reason)**        | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |
| **t_reset_fr()**                                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_reset_max_lifetime()**                            | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_reset_retr()**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_retransmit_reply()**                              | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_save_lumps()**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_set_auto_inv_100(0\|1)**                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_set_disable_6xx(0\|1)**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_set_disable_failover(0\|1)**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_set_fr(fr_inv_timeout \[, fr_timeout\])**         | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_set_max_lifetime(inv_lifetime, noninv_lifetime)** | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_set_no_e2e_cancel_reason(0\|1)**                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_set_retr(retr_t1_interval, retr_t2_interval)**    | *modules*   | [tm](http://www.kamailio.org/docs/modules/3.3.x/modules/tm.html)               |
| **t_suspend()**                                       | *modules_k* | [tmx](http://www.kamailio.org/docs/modules/3.3.x/modules_k/tmx.html)           |

## \[U\]

| Name                                     | Module Path | Module Name                                                                        |
|------------------------------------------|-------------|------------------------------------------------------------------------------------|
| **uac_auth()**                           | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_auth()**                           | *modules_s* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uac.html)               |
| **uac_reg_lookup(uuid, dst)**            | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_reg_request_to(user, mode)**       | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_replace_from(display,uri)**        | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_replace_from(display,uri)**        | *modules_s* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uac.html)               |
| **uac_replace_from(uri)**                | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_replace_from(uri)**                | *modules_s* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uac.html)               |
| **uac_replace_to(display,uri)**          | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_replace_to(uri)**                  | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_req_send()**                       | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_restore_from()**                   | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **uac_restore_from()**                   | *modules_s* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_s/uac.html)               |
| **uac_restore_to()**                     | *modules_k* | [uac](http://www.kamailio.org/docs/modules/3.3.x/modules_k/uac.html)               |
| **unforce_rtp_proxy()**                  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/rtpproxy.html)       |
| **unlock(key)**                          | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)     |
| **unlock_extra_attrs (group_id, id)**    | *modules_s* | [avp_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp_db.html)         |
| **unregister(domain, uri)**              | *modules_k* | [registrar](http://www.kamailio.org/docs/modules/3.3.x/modules_k/registrar.html)   |
| **unset_dlg_profile(profile,\[value\])** | *modules_k* | [dialog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/dialog.html)         |
| **update_stat(variable,value)**          | *modules_k* | [statistics](http://www.kamailio.org/docs/modules/3.3.x/modules_k/statistics.html) |
| **uri_param(param)**                     | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)     |
| **uri_param(param,value)**               | *modules_k* | [siputils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/siputils.html)     |
| **use_media_proxy()**                    | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/3.3.x/modules/mediaproxy.html)   |
| **use_next_gw()/next_routing()**         | *modules_k* | [drouting](http://www.kamailio.org/docs/modules/3.3.x/modules_k/drouting.html)     |
| **usleep(time)**                         | *modules_k* | [cfgutils](http://www.kamailio.org/docs/modules/3.3.x/modules_k/cfgutils.html)     |

## \[V\]

| Name                         | Module Path | Module Name                                                                            |
|------------------------------|-------------|----------------------------------------------------------------------------------------|
| **validateospheader()**      | *modules_k* | [osp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/osp.html)                   |
| **verify_destination()**     | *modules*   | [peering](http://www.kamailio.org/docs/modules/3.3.x/modules/peering.html)             |
| **verify_source()**          | *modules*   | [peering](http://www.kamailio.org/docs/modules/3.3.x/modules/peering.html)             |
| **vrfy_check_callid()**      | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/3.3.x/modules/auth_identity.html) |
| **vrfy_check_certificate()** | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/3.3.x/modules/auth_identity.html) |
| **vrfy_check_date()**        | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/3.3.x/modules/auth_identity.html) |
| **vrfy_check_msgvalidity()** | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/3.3.x/modules/auth_identity.html) |
| **vrfy_get_certificate()**   | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/3.3.x/modules/auth_identity.html) |

## \[W\]

| Name                               | Module Path | Module Name                                                                  |
|------------------------------------|-------------|------------------------------------------------------------------------------|
| **www_authenticate(realm, table)** | *modules_k* | [auth_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_db.html) |
| **www_authorize(realm, table)**    | *modules_k* | [auth_db](http://www.kamailio.org/docs/modules/3.3.x/modules_k/auth_db.html) |
| **www_authorize(realm, table)**    | *modules_s* | [auth_db](http://www.kamailio.org/docs/modules/3.3.x/modules_s/auth_db.html) |
| **www_challenge(realm, flags)**    | *modules*   | [auth](http://www.kamailio.org/docs/modules/3.3.x/modules/auth.html)         |

## \[X\]

| Name                                              | Module Path | Module Name                                                                          |
|---------------------------------------------------|-------------|--------------------------------------------------------------------------------------|
| **xcaps_del(uri, path)**                          | *modules_k* | [xcap_server](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xcap_server.html) |
| **xcaps_get(uri, path)**                          | *modules_k* | [xcap_server](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xcap_server.html) |
| **xcaps_put(uri, path, doc)**                     | *modules_k* | [xcap_server](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xcap_server.html) |
| **xcap_auth_status(watcher_uri, presentity_uri)** | *modules*   | [utils](http://www.kamailio.org/docs/modules/3.3.x/modules/utils.html)               |
| **xdbg(format)**                                  | *modules_k* | [xlog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xlog.html)               |
| **xdbg(format)**                                  | *modules_s* | [xlog](http://www.kamailio.org/docs/modules/3.3.x/modules_s/xlog.html)               |
| **xdbgl(format)**                                 | *modules_k* | [xlog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xlog.html)               |
| **xhttp_reply(code, reason, ctype, body)**        | *modules*   | [xhttp](http://www.kamailio.org/docs/modules/3.3.x/modules/xhttp.html)               |
| **xlfix_attr($attribute)**                        | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                 |
| **xlog(level, format)**                           | *modules_s* | [xlog](http://www.kamailio.org/docs/modules/3.3.x/modules_s/xlog.html)               |
| **xlog(\[ \[facility,\] level,\] format)**        | *modules_k* | [xlog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xlog.html)               |
| **xlogl(\[ \[facility,\] level,\] format)**       | *modules_k* | [xlog](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xlog.html)               |
| **xlset_attr($attribute, xl_format)**             | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                 |
| **xlset_destination(xl_format)**                  | *modules_s* | [avp](http://www.kamailio.org/docs/modules/3.3.x/modules_s/avp.html)                 |
| **xmlrpc_reply(code, reason)**                    | *modules*   | [xmlrpc](http://www.kamailio.org/docs/modules/3.3.x/modules/xmlrpc.html)             |
| **xmpp_send_message()**                           | *modules_k* | [xmpp](http://www.kamailio.org/docs/modules/3.3.x/modules_k/xmpp.html)               |

## \[Y\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[Z\]

| Name | Module Path | Module Name |
|------|-------------|-------------|
