# Modules Functions

([A](#a)) ([B](#b)) ([C](#c)) ([D](#d)) ([E](#e)) ([F](#f)) ([G](#g))
([H](#h)) ([I](#i)) ([J](#j)) ([K](#k)) ([L](#l)) ([M](#m)) ([N](#n))
([O](#o)) ([P](#p)) ([Q](#q)) ([R](#r)) ([S](#s)) ([T](#t)) ([U](#u))
([V](#v)) ([W](#w)) ([X](#x)) ([Y](#y)) ([Z](#z))

## \[A\]

| Name                                                 | Module Path | Module Name                                                                            |
|------------------------------------------------------|-------------|----------------------------------------------------------------------------------------|
| **abort()**                                          | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)           |
| **acc_db_request(comment, table)**                   | *modules*   | [acc](http://www.kamailio.org/docs/modules/4.0.x/modules/acc.html)                     |
| **acc_diam_request(comment)**                        | *modules*   | [acc](http://www.kamailio.org/docs/modules/4.0.x/modules/acc.html)                     |
| **acc_log_request(comment)**                         | *modules*   | [acc](http://www.kamailio.org/docs/modules/4.0.x/modules/acc.html)                     |
| **acc_rad_request(comment)**                         | *modules*   | [acc](http://www.kamailio.org/docs/modules/4.0.x/modules/acc.html)                     |
| **acc_rad_request(comment)**                         | *modules*   | [acc_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/acc_radius.html)       |
| **add_contact_alias(\[ip_addr, port, proto\])**      | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html)         |
| **add_diversion(reason \[, uri\])**                  | *modules*   | [diversion](http://www.kamailio.org/docs/modules/4.0.x/modules/diversion.html)         |
| **add_path()**                                       | *modules*   | [path](http://www.kamailio.org/docs/modules/4.0.x/modules/path.html)                   |
| **add_path(user)**                                   | *modules*   | [path](http://www.kamailio.org/docs/modules/4.0.x/modules/path.html)                   |
| **add_path_received()**                              | *modules*   | [path](http://www.kamailio.org/docs/modules/4.0.x/modules/path.html)                   |
| **add_path_received(user)**                          | *modules*   | [path](http://www.kamailio.org/docs/modules/4.0.x/modules/path.html)                   |
| **add_rcv_param(\[flag\]),**                         | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html)         |
| **add_rr_param(param)**                              | *modules*   | [rr](http://www.kamailio.org/docs/modules/4.0.x/modules/rr.html)                       |
| **add_sock_hdr(hdr_name)**                           | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)         |
| **add_uri_param(param)**                             | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)           |
| **alias_db_lookup(table_name)**                      | *modules*   | [alias_db](http://www.kamailio.org/docs/modules/4.0.x/modules/alias_db.html)           |
| **allow_address(group_id, ip_addr_pvar, port_pvar)** | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_address_group(addr, port)**                  | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_register(allow_file, deny_file)**            | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_register(basename)**                         | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_routing()**                                  | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_routing(allow_file,deny_file)**              | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_routing(basename)**                          | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_source_address(\[group_id\])**               | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_source_address_group()**                     | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_trusted(\[src_ip_pvar, proto_pvar\])**       | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **allow_uri(basename, pvar)**                        | *modules*   | [permissions](http://www.kamailio.org/docs/modules/4.0.x/modules/permissions.html)     |
| **append_attr_hf(header_name, $avp_name)**           | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **append_attr_hf(name)**                             | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **append_branch(\[ uri, \[ q \] \])**                | *modules*   | [corex](http://www.kamailio.org/docs/modules/4.0.x/modules/corex.html)                 |
| **append_hf(txt)**                                   | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **append_hf(txt, hdr)**                              | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **append_hf_value(hf, hvalue)**                      | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)           |
| **append_rpid_hf()**                                 | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)           |
| **append_rpid_hf(prefix, suffix)**                   | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)           |
| **append_time()**                                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **append_time_to_request()**                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **append_to_reply(txt)**                             | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **append_urihf(prefix, suffix)**                     | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **assign_hf_value(hf, hvalue)**                      | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)           |
| **assign_hf_value2(hf, hvalue)**                     | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)           |
| **async_route(routename, seconds)**                  | *modules*   | [async](http://www.kamailio.org/docs/modules/4.0.x/modules/async.html)                 |
| **async_sleep(seconds)**                             | *modules*   | [async](http://www.kamailio.org/docs/modules/4.0.x/modules/async.html)                 |
| **attr2uri($attribute\[,uri-part\])**                | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **attr_destination($avp_name)**                      | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **attr_equals(attribute, value)**                    | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **attr_equals_xl(attribute, xl_format)**             | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **attr_exists(attribute)**                           | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **attr_to_reply(header_name, $avp_name)**            | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **attr_to_reply(name)**                              | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **auth_add_identity()**                              | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_identity.html) |
| **auth_challenge(realm, flags)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)                   |
| **auth_check(realm, table, flags)**                  | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_db.html)             |
| **auth_date_proc()**                                 | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_identity.html) |
| **auth_get_www_authenticate(realm, flags, pvdest)**  | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)                   |
| **avp_check(name,op_value)**                         | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_copy(old_name,new_name)**                      | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_db_delete(source,name)**                       | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_db_load(source,name)**                         | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_db_query(query\[,dest\])**                     | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_db_store(source,name)**                        | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_delete(name)**                                 | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_op(name,op_value)**                            | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_print()**                                      | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_printf(dest, format)**                         | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_pushto(destination,name)**                     | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |
| **avp_subst(avps, subst)**                           | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)               |

## \[B\]

| Name                                 | Module Path | Module Name                                                                    |
|--------------------------------------|-------------|--------------------------------------------------------------------------------|
| **bla_handle_notify**                | *modules*   | [pua_bla](http://www.kamailio.org/docs/modules/4.0.x/modules/pua_bla.html)     |
| **bla_set_flag**                     | *modules*   | [pua_bla](http://www.kamailio.org/docs/modules/4.0.x/modules/pua_bla.html)     |
| **blst_add(\[timeout\])**            | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **blst_add_retry_after(min, max)**   | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **blst_clear_ignore(\[flags\])**     | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **blst_del()**                       | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **blst_is_blacklisted()**            | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **blst_rpl_clear_ignore(\[flags\])** | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **blst_rpl_set_ignore(\[flags\])**   | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **blst_set_ignore(\[flags\])**       | *modules*   | [blst](http://www.kamailio.org/docs/modules/4.0.x/modules/blst.html)           |
| **bm_log_timer(name)**               | *modules*   | [benchmark](http://www.kamailio.org/docs/modules/4.0.x/modules/benchmark.html) |
| **bm_start_timer(name)**             | *modules*   | [benchmark](http://www.kamailio.org/docs/modules/4.0.x/modules/benchmark.html) |

## \[C\]

| Name                                                                                          | Module Path | Module Name                                                                            |
|-----------------------------------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------------|
| **call_control()**                                                                            | *modules*   | [call_control](http://www.kamailio.org/docs/modules/4.0.x/modules/call_control.html)   |
| **change_reply_status(code, reason)**                                                         | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)           |
| **checkcallingtranslation()**                                                                 | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                     |
| **checkospheader()**                                                                          | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                     |
| **checkosproute()**                                                                           | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                     |
| **check_blacklist (\[string table\])**                                                        | *modules*   | [userblacklist](http://www.kamailio.org/docs/modules/4.0.x/modules/userblacklist.html) |
| **check_from()**                                                                              | *modules*   | [uid_uri_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_uri_db.html)       |
| **check_from()**                                                                              | *modules*   | [uri_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uri_db.html)               |
| **check_route_param(re)**                                                                     | *modules*   | [rr](http://www.kamailio.org/docs/modules/4.0.x/modules/rr.html)                       |
| **check_to()**                                                                                | *modules*   | [uid_uri_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_uri_db.html)       |
| **check_to()**                                                                                | *modules*   | [uri_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uri_db.html)               |
| **check_user_blacklist (string user, string domain, string number, string table)**            | *modules*   | [userblacklist](http://www.kamailio.org/docs/modules/4.0.x/modules/userblacklist.html) |
| **check_user_whitelist (string user, string domain, string number, string table)**            | *modules*   | [userblacklist](http://www.kamailio.org/docs/modules/4.0.x/modules/userblacklist.html) |
| **cmp_aor(str1, str2)**                                                                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)           |
| **cmp_istr(str1, str2)**                                                                      | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **cmp_str(str1, str2)**                                                                       | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)             |
| **cmp_uri(str1, str2)**                                                                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)           |
| **cnt_add(\[group.\]name, number)**                                                           | *modules*   | [counters](http://www.kamailio.org/docs/modules/4.0.x/modules/counters.html)           |
| **cnt_inc(\[group.\]name)**                                                                   | *modules*   | [counters](http://www.kamailio.org/docs/modules/4.0.x/modules/counters.html)           |
| **cnt_reset(\[group.\]name)**                                                                 | *modules*   | [counters](http://www.kamailio.org/docs/modules/4.0.x/modules/counters.html)           |
| **compare_ips (ip1, ip2)**                                                                    | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)                 |
| **compare_pure_ips (ip1, ip2)**                                                               | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)                 |
| **consume_credentials()**                                                                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)                   |
| **core_hash(string1, string2, size)**                                                         | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)           |
| **cpl_process_register()**                                                                    | *modules*   | [cpl-c](http://www.kamailio.org/docs/modules/4.0.x/modules/cpl-c.html)                 |
| **cpl_process_register_norpl()**                                                              | *modules*   | [cpl-c](http://www.kamailio.org/docs/modules/4.0.x/modules/cpl-c.html)                 |
| **cpl_run_script(type,mode, \[uri\])**                                                        | *modules*   | [cpl-c](http://www.kamailio.org/docs/modules/4.0.x/modules/cpl-c.html)                 |
| **cr_next_domain(carrier, domain, prefix_matching, host, reply_code, dstavp)**                | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/4.0.x/modules/carrierroute.html)   |
| **cr_nofallback_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/4.0.x/modules/carrierroute.html)   |
| **cr_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)**            | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/4.0.x/modules/carrierroute.html)   |
| **cr_user_carrier(user, domain, dstavp)**                                                     | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/4.0.x/modules/carrierroute.html)   |

## \[D\]

| Name                                                        | Module Path | Module Name                                                                            |
|-------------------------------------------------------------|-------------|----------------------------------------------------------------------------------------|
| **dbg_breakpoint(mode)**                                    | *modules*   | [debugger](http://www.kamailio.org/docs/modules/4.0.x/modules/debugger.html)           |
| **decode_contact()**                                        | *modules*   | [mangler](http://www.kamailio.org/docs/modules/4.0.x/modules/mangler.html)             |
| **decode_contact()**                                        | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)           |
| **decode_contact_header()**                                 | *modules*   | [mangler](http://www.kamailio.org/docs/modules/4.0.x/modules/mangler.html)             |
| **decode_contact_header()**                                 | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)           |
| **defunct_gw(period)**                                      | *modules*   | [lcr](http://www.kamailio.org/docs/modules/4.0.x/modules/lcr.html)                     |
| **del_attr($avp_name)**                                     | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |
| **diameter_is_user_in(who, group)**                         | *modules*   | [auth_diameter](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_diameter.html) |
| **diameter_proxy_authorize(realm)**                         | *modules*   | [auth_diameter](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_diameter.html) |
| **diameter_www_authorize(realm)**                           | *modules*   | [auth_diameter](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_diameter.html) |
| **dispatch_rpc()**                                          | *modules*   | [xmlrpc](http://www.kamailio.org/docs/modules/4.0.x/modules/xmlrpc.html)               |
| **dispatch_xhttp_pi()**                                     | *modules*   | [xhttp_pi](http://www.kamailio.org/docs/modules/4.0.x/modules/xhttp_pi.html)           |
| **dispatch_xhttp_rpc()**                                    | *modules*   | [xhttp_rpc](http://www.kamailio.org/docs/modules/4.0.x/modules/xhttp_rpc.html)         |
| **dlg_bridge(from, to, op)**                                | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_bridge(from, to, op)**                                | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **dlg_bye(side)**                                           | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_get(callid, ftag, ttag)**                             | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_get(callid, ftag, ttag)**                             | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **dlg_isflagset(flag)**                                     | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_isflagset(flag)**                                     | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **dlg_manage()**                                            | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_manage()**                                            | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **dlg_refer(side, address)**                                | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_refer(side, address)**                                | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **dlg_resetflag(flag)**                                     | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_resetflag(flag)**                                     | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **dlg_setflag(flag)**                                       | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_setflag(flag)**                                       | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **dlg_set_property(attr)**                                  | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_set_timeout(timeout \[, h_entry, h_id\])**            | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_set_timeout_by_profile(profile, \[value\], timeout)** | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)               |
| **dlg_terminate**                                           | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)         |
| **does_uri_exist()**                                        | *modules*   | [uid_uri_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_uri_db.html)       |
| **does_uri_exist()**                                        | *modules*   | [uri_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uri_db.html)               |
| **do_routing("\[groupID\]")**                               | *modules*   | [drouting](http://www.kamailio.org/docs/modules/4.0.x/modules/drouting.html)           |
| **dp_apply_policy()**                                       | *modules*   | [domainpolicy](http://www.kamailio.org/docs/modules/4.0.x/modules/domainpolicy.html)   |
| **dp_can_connect()**                                        | *modules*   | [domainpolicy](http://www.kamailio.org/docs/modules/4.0.x/modules/domainpolicy.html)   |
| **dp_translate(id, \[src\[/dest\]\])**                      | *modules*   | [dialplan](http://www.kamailio.org/docs/modules/4.0.x/modules/dialplan.html)           |
| **ds_is_from_list(\[groupid\])**                            | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **ds_load_unset()**                                         | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **ds_load_update()**                                        | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **ds_mark_dst(\[state\])**                                  | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **ds_next_domain()**                                        | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **ds_next_dst()**                                           | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **ds_select_domain(set, alg)**                              | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **ds_select_dst(set, alg)**                                 | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/4.0.x/modules/dispatcher.html)       |
| **dump_attrs()**                                            | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                     |

## \[E\]

| Name                                                 | Module Path | Module Name                                                                      |
|------------------------------------------------------|-------------|----------------------------------------------------------------------------------|
| **encode_contact(encoding_prefix)**                  | *modules*   | [mangler](http://www.kamailio.org/docs/modules/4.0.x/modules/mangler.html)       |
| **encode_contact(encoding_prefix,hostpart)**         | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)     |
| **end_media_session()**                              | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/mediaproxy.html) |
| **engage_media_proxy()**                             | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/mediaproxy.html) |
| **enum_pv_query("pvar"\[,"suffix"\[,"service"\]\])** | *modules*   | [enum](http://www.kamailio.org/docs/modules/4.0.x/modules/enum.html)             |
| **enum_query(\["suffix"\[,"service"\]\])**           | *modules*   | [enum](http://www.kamailio.org/docs/modules/4.0.x/modules/enum.html)             |
| **exclude_hf_value(hf, hvalue)**                     | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)     |
| **exec_avp(command \[, avplist\])**                  | *modules*   | [exec](http://www.kamailio.org/docs/modules/4.0.x/modules/exec.html)             |
| **exec_dset(command)**                               | *modules*   | [exec](http://www.kamailio.org/docs/modules/4.0.x/modules/exec.html)             |
| **exec_msg(command)**                                | *modules*   | [exec](http://www.kamailio.org/docs/modules/4.0.x/modules/exec.html)             |

## \[F\]

| Name                                      | Module Path | Module Name                                                                    |
|-------------------------------------------|-------------|--------------------------------------------------------------------------------|
| **filter_body(content_type)**             | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)     |
| **fix_nated_contact()**                   | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html) |
| **fix_nated_register()**                  | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html) |
| **fix_nated_sdp(flags \[, ip_address\])** | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html) |
| **flags2attr("$avp")**                    | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)             |
| **fnmatch(value, expr \[, flags\])**      | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)   |
| **from_any_gw(\[ip_addr, proto\])**       | *modules*   | [lcr](http://www.kamailio.org/docs/modules/4.0.x/modules/lcr.html)             |
| **from_gw(lcr_id\[, ip_addr, proto\])**   | *modules*   | [lcr](http://www.kamailio.org/docs/modules/4.0.x/modules/lcr.html)             |

## \[G\]

| Name                                         | Module Path | Module Name                                                                          |
|----------------------------------------------|-------------|--------------------------------------------------------------------------------------|
| **geoip_match(ipaddr, pvc)**                 | *modules*   | [geoip](http://www.kamailio.org/docs/modules/4.0.x/modules/geoip.html)               |
| **get_profile_size(profile,\[value\],size)** | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)             |
| **get_profile_size(profile,\[value\],size)** | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)       |
| **get_redirects(max)**                       | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/4.0.x/modules/uac_redirect.html) |
| **get_redirects(max,reason)**                | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/4.0.x/modules/uac_redirect.html) |
| **get_uri_param(name, var)**                 | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)         |
| **get_user_group(URI, AVP)**                 | *modules*   | [group](http://www.kamailio.org/docs/modules/4.0.x/modules/group.html)               |
| **goes_to_gw(\[type\])**                     | *modules*   | [drouting](http://www.kamailio.org/docs/modules/4.0.x/modules/drouting.html)         |

## \[H\]

| Name                                                                  | Module Path | Module Name                                                                    |
|-----------------------------------------------------------------------|-------------|--------------------------------------------------------------------------------|
| **h350_auth_lookup(auth_username, "username_avp_spec/pwd_avp_spec")** | *modules*   | [h350](http://www.kamailio.org/docs/modules/4.0.x/modules/h350.html)           |
| **h350_result_call_preferences(avp_name_prefix)**                     | *modules*   | [h350](http://www.kamailio.org/docs/modules/4.0.x/modules/h350.html)           |
| **h350_result_service_level(avp_name_prefix)**                        | *modules*   | [h350](http://www.kamailio.org/docs/modules/4.0.x/modules/h350.html)           |
| **h350_sipuri_lookup(sip_uri)**                                       | *modules*   | [h350](http://www.kamailio.org/docs/modules/4.0.x/modules/h350.html)           |
| **handle_publish(char\* sender_uri)**                                 | *modules*   | [presence](http://www.kamailio.org/docs/modules/4.0.x/modules/presence.html)   |
| **handle_ruri_alias()**                                               | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html) |
| **handle_subscribe(\[watcher_uri\])**                                 | *modules*   | [presence](http://www.kamailio.org/docs/modules/4.0.x/modules/presence.html)   |
| **has_body(), has_body(mime)**                                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)     |
| **has_credentials(realm)**                                            | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)           |
| **has_totag()**                                                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)   |
| **hdr_body2attrs(headername, prefix)**                                | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)             |
| **hdr_body2attrs2(headername, prefix)**                               | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)             |
| **hf_value_exists(hf, hvalue)**                                       | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)   |
| **http_query(url, result)**                                           | *modules*   | [utils](http://www.kamailio.org/docs/modules/4.0.x/modules/utils.html)         |

## \[I\]

| Name                                                                             | Module Path | Module Name                                                                        |
|----------------------------------------------------------------------------------|-------------|------------------------------------------------------------------------------------|
| **imc_manager()**                                                                | *modules*   | [imc](http://www.kamailio.org/docs/modules/4.0.x/modules/imc.html)                 |
| **ims_proxy_authenticate(realm, table)**                                         | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_auth.html)       |
| **ims_proxy_challenge(realm, table)**                                            | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_auth.html)       |
| **ims_www_authenticate(realm, table)**                                           | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_auth.html)       |
| **ims_www_authorize(realm, table)**                                              | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_auth.html)       |
| **ims_www_challenge(realm, table)**                                              | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_auth.html)       |
| **include_hf_value(hf, hvalue)**                                                 | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)       |
| **insert_attr_hf(header_name, $avp_name)**                                       | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                 |
| **insert_attr_hf(name)**                                                         | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                 |
| **insert_hf(txt)**                                                               | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **insert_hf(txt, hdr)**                                                          | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **insert_hf_value(hf, hvalue)**                                                  | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)       |
| **in_list(subject, list, separator)**                                            | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **iptrtpproxy_adjust_timeout(gate_a\_to_b, session_ids)**                        | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_alloc(gate_a\_to_b \[, existing_sess_ids\])**                      | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_authorize_media()**                                                | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_delete(session_ids)**                                              | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_set_param("(aggregation/switchboard)\_by_sip_ip\_(a/b)", sip_ip)** | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_set_param("codec_set", value)**                                    | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_set_param("o_addr", value)**                                       | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_set_param("o_name", value)**                                       | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_set_param("protected_session_ids", sess_ids)**                     | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_set_param("remove_codec_mask", value)**                            | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_set_param(param, value)**                                          | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **iptrtpproxy_update(gate_a\_to_b, session_ids)**                                | *modules*   | [iptrtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/iptrtpproxy.html) |
| **ip_type (ip)**                                                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **isbflagset(flag \[, branch\])**                                                | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **isc_from_as(direction)**                                                       | *modules*   | [ims_isc](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_isc.html)         |
| **isc_match_filter(direction,domain)**                                           | *modules*   | [ims_isc](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_isc.html)         |
| **isc_match_filter_reg(reg_state,domain)**                                       | *modules*   | [ims_isc](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_isc.html)         |
| **isdsturiset()**                                                                | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **issflagset(flag)**                                                             | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **is_audio_on_hold()**                                                           | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **is_avp_set(name)**                                                             | *modules*   | [avpops](http://www.kamailio.org/docs/modules/4.0.x/modules/avpops.html)           |
| **is_direction(dir)**                                                            | *modules*   | [rr](http://www.kamailio.org/docs/modules/4.0.x/modules/rr.html)                   |
| **is_domain_local(pseudo_variable)**                                             | *modules*   | [domain](http://www.kamailio.org/docs/modules/4.0.x/modules/domain.html)           |
| **is_e164(pseudo-variable)**                                                     | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_from_gw( type, \[flag\])**                                                  | *modules*   | [drouting](http://www.kamailio.org/docs/modules/4.0.x/modules/drouting.html)       |
| **is_from_gw(\[type\])**                                                         | *modules*   | [drouting](http://www.kamailio.org/docs/modules/4.0.x/modules/drouting.html)       |
| **is_from_local()**                                                              | *modules*   | [domain](http://www.kamailio.org/docs/modules/4.0.x/modules/domain.html)           |
| **is_from_user_enum()**                                                          | *modules*   | [enum](http://www.kamailio.org/docs/modules/4.0.x/modules/enum.html)               |
| **is_gflag(flag)**                                                               | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)       |
| **is_gruu(\[uri\])**                                                             | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_int(pvar)**                                                                 | *modules*   | [pv](http://www.kamailio.org/docs/modules/4.0.x/modules/pv.html)                   |
| **is_in_profile(profile,\[value\])**                                             | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)           |
| **is_in_profile(profile,\[value\])**                                             | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)     |
| **is_in_subnet (ip, subnet)**                                                    | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **is_ip (ip)**                                                                   | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **is_ipv4 (ip)**                                                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **is_ipv6 (ip)**                                                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **is_ipv6_reference (ip)**                                                       | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **is_ip_rfc1918 (ip)**                                                           | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **is_known_dlg()**                                                               | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)           |
| **is_known_dlg()**                                                               | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)     |
| **is_leap_year(\[year\])**                                                       | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/4.0.x/modules/tmrec.html)             |
| **is_local(domain)**                                                             | *modules*   | [uid_domain](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_domain.html)   |
| **is_maxfwd_lt(max_value)**                                                      | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/4.0.x/modules/maxfwd.html)           |
| **is_method(name)**                                                              | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **is_myself(uri)**                                                               | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **is_peer_verified()**                                                           | *modules*   | [tls](http://www.kamailio.org/docs/modules/4.0.x/modules/tls.html)                 |
| **is_present_hf(hf_name)**                                                       | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **is_present_hf_re(hf_name_re)**                                                 | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **is_privacy(privacy_type)**                                                     | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **is_pure_ip (ip)**                                                              | *modules*   | [ipops](http://www.kamailio.org/docs/modules/4.0.x/modules/ipops.html)             |
| **is_reply()**                                                                   | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_request()**                                                                 | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_rfc1918(ip_address)**                                                       | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html)     |
| **is_rpid_user_e164()**                                                          | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_rpid_user_e164()**                                                          | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_subscriber(uri, dbtable, flags)**                                           | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_db.html)         |
| **is_ugflag(flag_num)**                                                          | *modules*   | [uid_gflags](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_gflags.html)   |
| **is_uri_host_local()**                                                          | *modules*   | [domain](http://www.kamailio.org/docs/modules/4.0.x/modules/domain.html)           |
| **is_uri_user_e164(pseudo-variable)**                                            | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_user(username)**                                                            | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **is_user_in(URI, group)**                                                       | *modules*   | [group](http://www.kamailio.org/docs/modules/4.0.x/modules/group.html)             |
| **i_enum_query(\["suffix"\[,"service"\]\])**                                     | *modules*   | [enum](http://www.kamailio.org/docs/modules/4.0.x/modules/enum.html)               |
| **I_perform_location_information_request()**                                     | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_icscf.html)     |
| **I_perform_user_authorization_request(capabalities)**                           | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_icscf.html)     |
| **I_scscf_drop()**                                                               | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_icscf.html)     |
| **I_scscf_select(initial)**                                                      | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_icscf.html)     |

## \[J\]

| Name                                                                           | Module Path | Module Name                                                                    |
|--------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------------------|
| **jsonrpc_notification(method, parameters)**                                   | *modules*   | [jsonrpc-c](http://www.kamailio.org/docs/modules/4.0.x/modules/jsonrpc-c.html) |
| **jsonrpc_request(method, parameters, return_route, error_route, result_var)** | *modules*   | [jsonrpc-c](http://www.kamailio.org/docs/modules/4.0.x/modules/jsonrpc-c.html) |
| **json_get_field(json_string, field_name, destination)**                       | *modules*   | [json](http://www.kamailio.org/docs/modules/4.0.x/modules/json.html)           |

## \[K\]

| Name                          | Module Path | Module Name                                                                  |
|-------------------------------|-------------|------------------------------------------------------------------------------|
| **keep_hf(regexp)**           | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html) |
| **km_append_branch(\[uri\])** | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)           |

## \[L\]

| Name                                                                      | Module Path | Module Name                                                                      |
|---------------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------|
| **ldap_filter_url_encode(string, avp_spec)**                              | *modules*   | [ldap](http://www.kamailio.org/docs/modules/4.0.x/modules/ldap.html)             |
| **ldap_result("ldap_attr_name/avp_spec\[/avp_type\]" \[, regex_subst\])** | *modules*   | [ldap](http://www.kamailio.org/docs/modules/4.0.x/modules/ldap.html)             |
| **ldap_result_check("ldap_attr_name/string_to_match" \[, regex_subst\])** | *modules*   | [ldap](http://www.kamailio.org/docs/modules/4.0.x/modules/ldap.html)             |
| **ldap_result_next()**                                                    | *modules*   | [ldap](http://www.kamailio.org/docs/modules/4.0.x/modules/ldap.html)             |
| **ldap_search(ldap_url)**                                                 | *modules*   | [ldap](http://www.kamailio.org/docs/modules/4.0.x/modules/ldap.html)             |
| **load_attrs (track, id)**                                                | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_avp_db.html) |
| **load_extra_attrs (group_id, id)**                                       | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_avp_db.html) |
| **load_gws(lcr_id\[, uri_user\[, caller_uri\]\])**                        | *modules*   | [lcr](http://www.kamailio.org/docs/modules/4.0.x/modules/lcr.html)               |
| **lock(key)**                                                             | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)     |
| **lock_extra_attrs (group_id, id)**                                       | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_avp_db.html) |
| **lookup(domain \[, uri\])**                                              | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)   |
| **lookup_branches(domain)**                                               | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)   |
| **lookup_domain(attr_group, domain)**                                     | *modules*   | [uid_domain](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_domain.html) |
| **lookup_domain(domain\[, prefix\])**                                     | *modules*   | [domain](http://www.kamailio.org/docs/modules/4.0.x/modules/domain.html)         |
| **loose_route()**                                                         | *modules*   | [rr](http://www.kamailio.org/docs/modules/4.0.x/modules/rr.html)                 |
| **lua_dofile(path)**                                                      | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/4.0.x/modules/app_lua.html)       |
| **lua_dostring(script)**                                                  | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/4.0.x/modules/app_lua.html)       |
| **lua_run(function, params)**                                             | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/4.0.x/modules/app_lua.html)       |
| **lua_runstring(script)**                                                 | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/4.0.x/modules/app_lua.html)       |

## \[M\]

| Name                                                    | Module Path | Module Name                                                                        |
|---------------------------------------------------------|-------------|------------------------------------------------------------------------------------|
| **matrix (string first, string second, string dstavp)** | *modules*   | [matrix](http://www.kamailio.org/docs/modules/4.0.x/modules/matrix.html)           |
| **maxfwd_at_least(max_value)**                          | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/4.0.x/modules/maxfwd.html)           |
| **maxfwd_process(max_value)**                           | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/4.0.x/modules/maxfwd.html)           |
| **mf_lowlimit(max_value)**                              | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/4.0.x/modules/maxfwd.html)           |
| **mf_process_maxfwd_header(max_value)**                 | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/4.0.x/modules/maxfwd.html)           |
| **mono_exec(path \[, param\])**                         | *modules*   | [app_mono](http://www.kamailio.org/docs/modules/4.0.x/modules/app_mono.html)       |
| **mono_run(\[param\])**                                 | *modules*   | [app_mono](http://www.kamailio.org/docs/modules/4.0.x/modules/app_mono.html)       |
| **mq_add(queue, key, value)**                           | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/4.0.x/modules/mqueue.html)           |
| **mq_fetch(queue)**                                     | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/4.0.x/modules/mqueue.html)           |
| **mq_pv_free(queue)**                                   | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/4.0.x/modules/mqueue.html)           |
| **mq_size(queue)**                                      | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/4.0.x/modules/mqueue.html)           |
| **msg_apply_changes()**                                 | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)       |
| **msrp_cmap_lookup()**                                  | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_cmap_save()**                                    | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_is_reply()**                                     | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_is_request()**                                   | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_relay()**                                        | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_relay_flags(flags)**                             | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_reply(code, text \[, hdrs\])**                   | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_reply_flags(flags)**                             | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **msrp_set_dst(addr, sock)**                            | *modules*   | [msrp](http://www.kamailio.org/docs/modules/4.0.x/modules/msrp.html)               |
| **mt_match(mtree, pv, mode)**                           | *modules*   | [mtree](http://www.kamailio.org/docs/modules/4.0.x/modules/mtree.html)             |
| **mt_mem_alloc(size)**                                  | *modules*   | [malloc_test](http://www.kamailio.org/docs/modules/4.0.x/modules/malloc_test.html) |
| **mt_mem_free()**                                       | *modules*   | [malloc_test](http://www.kamailio.org/docs/modules/4.0.x/modules/malloc_test.html) |
| **m_dump(\[owner\])**                                   | *modules*   | [msilo](http://www.kamailio.org/docs/modules/4.0.x/modules/msilo.html)             |
| **m_store(\[owner\])**                                  | *modules*   | [msilo](http://www.kamailio.org/docs/modules/4.0.x/modules/msilo.html)             |

## \[N\]

| Name                    | Module Path | Module Name                                                                    |
|-------------------------|-------------|--------------------------------------------------------------------------------|
| **nat_uac_test(flags)** | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/4.0.x/modules/nathelper.html) |
| **next_gw()**           | *modules*   | [lcr](http://www.kamailio.org/docs/modules/4.0.x/modules/lcr.html)             |
| **not_empty(pvar)**     | *modules*   | [pv](http://www.kamailio.org/docs/modules/4.0.x/modules/pv.html)               |

## \[O\]

| Name                | Module Path | Module Name                                                                  |
|---------------------|-------------|------------------------------------------------------------------------------|
| **options_reply()** | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html) |

## \[P\]

| Name                                                                | Module Path | Module Name                                                                          |
|---------------------------------------------------------------------|-------------|--------------------------------------------------------------------------------------|
| **pcre_match (string, pcre_regex)**                                 | *modules*   | [regex](http://www.kamailio.org/docs/modules/4.0.x/modules/regex.html)               |
| **pcre_match_group (string \[, group\])**                           | *modules*   | [regex](http://www.kamailio.org/docs/modules/4.0.x/modules/regex.html)               |
| **pdb_query (string query, string dstavp)**                         | *modules*   | [pdb](http://www.kamailio.org/docs/modules/4.0.x/modules/pdb.html)                   |
| **pd_translate(sdomain, rewrite_mode)**                             | *modules*   | [pdt](http://www.kamailio.org/docs/modules/4.0.x/modules/pdt.html)                   |
| **perl_exec(func, \[param\])**                                      | *modules*   | [app_perl](http://www.kamailio.org/docs/modules/4.0.x/modules/app_perl.html)         |
| **perl_exec_simple(func, \[param\])**                               | *modules*   | [app_perl](http://www.kamailio.org/docs/modules/4.0.x/modules/app_perl.html)         |
| **pike_check_req()**                                                | *modules*   | [pike](http://www.kamailio.org/docs/modules/4.0.x/modules/pike.html)                 |
| **pkg_status()**                                                    | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)         |
| **pkg_summary()**                                                   | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)         |
| **pl_check(name)**                                                  | *modules*   | [pipelimit](http://www.kamailio.org/docs/modules/4.0.x/modules/pipelimit.html)       |
| **pl_drop(\[ \[min \], max \])**                                    | *modules*   | [pipelimit](http://www.kamailio.org/docs/modules/4.0.x/modules/pipelimit.html)       |
| **prefix2domain()**                                                 | *modules*   | [pdt](http://www.kamailio.org/docs/modules/4.0.x/modules/pdt.html)                   |
| **prefix2domain(rewrite_mode)**                                     | *modules*   | [pdt](http://www.kamailio.org/docs/modules/4.0.x/modules/pdt.html)                   |
| **prefix2domain(rewrite_mode, multidomain_mode)**                   | *modules*   | [pdt](http://www.kamailio.org/docs/modules/4.0.x/modules/pdt.html)                   |
| **prefix_route(\[user\])**                                          | *modules*   | [prefix_route](http://www.kamailio.org/docs/modules/4.0.x/modules/prefix_route.html) |
| **prepareallosproute()**                                            | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                   |
| **prepareosproute()**                                               | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                   |
| **pres_auth_status(watcher_uri, presentity_uri)**                   | *modules*   | [presence](http://www.kamailio.org/docs/modules/4.0.x/modules/presence.html)         |
| **pres_check_activities(presentity_uri, activity)**                 | *modules*   | [presence_xml](http://www.kamailio.org/docs/modules/4.0.x/modules/presence_xml.html) |
| **pres_check_basic(presentity_uri, status)**                        | *modules*   | [presence_xml](http://www.kamailio.org/docs/modules/4.0.x/modules/presence_xml.html) |
| **pres_refresh_watchers(uri, event, type\[, file_uri, filename\])** | *modules*   | [presence](http://www.kamailio.org/docs/modules/4.0.x/modules/presence.html)         |
| **pres_update_watchers(uri, event)**                                | *modules*   | [presence](http://www.kamailio.org/docs/modules/4.0.x/modules/presence.html)         |
| **print(txt)**                                                      | *modules*   | [print](http://www.kamailio.org/docs/modules/4.0.x/modules/print.html)               |
| **print_attr($attribute)**                                          | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                   |
| **print_stderr(txt)**                                               | *modules*   | [print_lib](http://www.kamailio.org/docs/modules/4.0.x/modules/print_lib.html)       |
| **process_maxfwd(max_value)**                                       | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/4.0.x/modules/maxfwd.html)             |
| **proxy_authenticate(realm, table)**                                | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_db.html)           |
| **proxy_authorize(realm, table)**                                   | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_db.html)           |
| **proxy_authorize(realm, table)**                                   | *modules*   | [uid_auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_auth_db.html)   |
| **proxy_challenge(realm, flags)**                                   | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)                 |
| **pua_set_publish()**                                               | *modules*   | [pua_usrloc](http://www.kamailio.org/docs/modules/4.0.x/modules/pua_usrloc.html)     |
| **pua_update_contact()**                                            | *modules*   | [pua](http://www.kamailio.org/docs/modules/4.0.x/modules/pua.html)                   |
| **pua_xmpp_notify()**                                               | *modules*   | [pua_xmpp](http://www.kamailio.org/docs/modules/4.0.x/modules/pua_xmpp.html)         |
| **pua_xmpp_req_winfo(request_uri, expires)**                        | *modules*   | [pua_xmpp](http://www.kamailio.org/docs/modules/4.0.x/modules/pua_xmpp.html)         |
| **purple_handle_publish()**                                         | *modules*   | [purple](http://www.kamailio.org/docs/modules/4.0.x/modules/purple.html)             |
| **purple_handle_subscribe()**                                       | *modules*   | [purple](http://www.kamailio.org/docs/modules/4.0.x/modules/purple.html)             |
| **purple_send_message()**                                           | *modules*   | [purple](http://www.kamailio.org/docs/modules/4.0.x/modules/purple.html)             |
| **pv_auth_check(realm, passwd, flags, checks)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)                 |
| **pv_isset(pvar)**                                                  | *modules*   | [pv](http://www.kamailio.org/docs/modules/4.0.x/modules/pv.html)                     |
| **pv_printf(var, str)**                                             | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                   |
| **pv_proxy_authenticate(realm, passwd, flags)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)                 |
| **pv_unset(pvar)**                                                  | *modules*   | [pv](http://www.kamailio.org/docs/modules/4.0.x/modules/pv.html)                     |
| **pv_www_authenticate(realm, passwd, flags \[, method\])**          | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)                 |
| **python_exec(method \[, mystr\])**                                 | *modules*   | [app_python](http://www.kamailio.org/docs/modules/4.0.x/modules/app_python.html)     |

## \[Q\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[R\]

| Name                                             | Module Path | Module Name                                                                        |
|--------------------------------------------------|-------------|------------------------------------------------------------------------------------|
| **radius_does_uri_exist(\[uri\])**               | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/misc_radius.html) |
| **radius_does_uri_user_exist(\[user\])**         | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/misc_radius.html) |
| **radius_is_user_in(user, group)**               | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/misc_radius.html) |
| **radius_load_callee_avps(callee)**              | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/misc_radius.html) |
| **radius_load_caller_avps(caller)**              | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/misc_radius.html) |
| **radius_proxy_authorize(realm \[, uri_user\])** | *modules*   | [auth_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_radius.html) |
| **radius_www_authorize(realm \[, uri_user\])**   | *modules*   | [auth_radius](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_radius.html) |
| **rand_event()**                                 | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)       |
| **rand_get_prob()**                              | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)       |
| **rand_reset_prob()**                            | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)       |
| **rand_set_prob(probabiltiy)**                   | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)       |
| **record_route() and record_route(string)**      | *modules*   | [rr](http://www.kamailio.org/docs/modules/4.0.x/modules/rr.html)                   |
| **record_route_advertised_address(address)**     | *modules*   | [rr](http://www.kamailio.org/docs/modules/4.0.x/modules/rr.html)                   |
| **record_route_preset(string \[,string2\])**     | *modules*   | [rr](http://www.kamailio.org/docs/modules/4.0.x/modules/rr.html)                   |
| **redis_cmd(srvname, command, ..., replyid)**    | *modules*   | [ndb_redis](http://www.kamailio.org/docs/modules/4.0.x/modules/ndb_redis.html)     |
| **redis_free(replyid)**                          | *modules*   | [ndb_redis](http://www.kamailio.org/docs/modules/4.0.x/modules/ndb_redis.html)     |
| **reginfo_handle_notify**                        | *modules*   | [pua_reginfo](http://www.kamailio.org/docs/modules/4.0.x/modules/pua_reginfo.html) |
| **reginfo_subscribe(uri\[, expires\])**          | *modules*   | [pua_reginfo](http://www.kamailio.org/docs/modules/4.0.x/modules/pua_reginfo.html) |
| **registered(domain \[, uri\])**                 | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)     |
| **reg_fetch_contacts(domain, uri, profile)**     | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)     |
| **reg_free_contacts(profile)**                   | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)     |
| **remove_body()**                                | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)       |
| **remove_extra_attrs (group_id, id)**            | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_avp_db.html)   |
| **remove_hf(hname)**                             | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **remove_hf_re(re)**                             | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **remove_hf_value(hf_par)**                      | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)       |
| **remove_hf_value2(hf_par)**                     | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)       |
| **replace(re, txt)**                             | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **replace_all(re, txt)**                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **replace_attr_hf(header_name, $avp_name)**      | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                 |
| **replace_attr_hf(name)**                        | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                 |
| **replace_body(re, txt)**                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **replace_body_all(re, txt)**                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **replace_body_atonce(re, txt)**                 | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)         |
| **reportospusage()**                             | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                 |
| **requestosprouting()**                          | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                 |
| **resetbflag(flag \[, branch\])**                | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **resetdebug()**                                 | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **resetdsturi()**                                | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **resetsflag(flag)**                             | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                 |
| **reset_gflag(flag)**                            | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)       |
| **reset_stat(variable)**                         | *modules*   | [statistics](http://www.kamailio.org/docs/modules/4.0.x/modules/statistics.html)   |
| **reset_ugflag(flag_num)**                       | *modules*   | [uid_gflags](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_gflags.html)   |
| **ring_insert_callid()**                         | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)       |
| **rls_handle_notify()**                          | *modules*   | [rls](http://www.kamailio.org/docs/modules/4.0.x/modules/rls.html)                 |
| **rls_handle_subscribe(\[watcher_uri\])**        | *modules*   | [rls](http://www.kamailio.org/docs/modules/4.0.x/modules/rls.html)                 |
| **rls_update_subs(uri, event)**                  | *modules*   | [rls](http://www.kamailio.org/docs/modules/4.0.x/modules/rls.html)                 |
| **rl_check(\[pvar\])**                           | *modules*   | [ratelimit](http://www.kamailio.org/docs/modules/4.0.x/modules/ratelimit.html)     |
| **rl_check_pipe(\[pipe_no\])**                   | *modules*   | [ratelimit](http://www.kamailio.org/docs/modules/4.0.x/modules/ratelimit.html)     |
| **rtpproxy_answer(\[flags \[, ip_address\]\])**  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **rtpproxy_destroy(\[flags\])**                  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **rtpproxy_manage(\[flags \[, ip_address\]\])**  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **rtpproxy_offer(\[flags \[, ip_address\]\])**   | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **rtpproxy_stop_stream2uac(),**                  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **rtpproxy_stop_stream2uas(prompt_name, count)** | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **rtpproxy_stream2uac(prompt_name, count),**     | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **rtpproxy_stream2uas(prompt_name, count)**      | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)       |
| **Rx_AAR(domain)**                               | *modules*   | [ims_qos](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_qos.html)         |
| **Rx_AAR_Register(domain)**                      | *modules*   | [ims_qos](http://www.kamailio.org/docs/modules/4.0.x/modules/ims_qos.html)         |

## \[S\]

| Name                                              | Module Path | Module Name                                                                          |
|---------------------------------------------------|-------------|--------------------------------------------------------------------------------------|
| **sanity_check(\[msg_checks \[, uri_checks\]\])** | *modules*   | [sanity](http://www.kamailio.org/docs/modules/4.0.x/modules/sanity.html)             |
| **save(domain, \[, flags \[, uri\]\])**           | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)       |
| **save_extra_attrs (group_id, id)**               | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_avp_db.html)     |
| **sca_call_info_update()**                        | *modules*   | [sca](http://www.kamailio.org/docs/modules/4.0.x/modules/sca.html)                   |
| **sca_handle_subscribe()**                        | *modules*   | [sca](http://www.kamailio.org/docs/modules/4.0.x/modules/sca.html)                   |
| **sdp_content()**                                 | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_get(avpvar)**                               | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_keep_codecs_by_id(list \[, mtype\])**       | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_keep_codecs_by_name(list \[, mtype\])**     | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_mangle_ip(pattern, newip)**                 | *modules*   | [mangler](http://www.kamailio.org/docs/modules/4.0.x/modules/mangler.html)           |
| **sdp_mangle_port(offset)**                       | *modules*   | [mangler](http://www.kamailio.org/docs/modules/4.0.x/modules/mangler.html)           |
| **sdp_print(level)**                              | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_remove_codecs_by_id(list)**                 | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_remove_codecs_by_name(list)**               | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_remove_line_by_prefix(string)**             | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_remove_media(type)**                        | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_with_codecs_by_id(list)**                   | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_with_codecs_by_name(list)**                 | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sdp_with_media(type)**                          | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/4.0.x/modules/sdpops.html)             |
| **sd_lookup(table \[, owner\])**                  | *modules*   | [speeddial](http://www.kamailio.org/docs/modules/4.0.x/modules/speeddial.html)       |
| **search(re)**                                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **search_append(re, txt)**                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **search_append_body(re, txt)**                   | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **search_body(re)**                               | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **search_hf(hf, re, flags)**                      | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **Selects**                                       | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/4.0.x/modules/textopsx.html)         |
| **send(\[ host \[ :port \] \])**                  | *modules*   | [corex](http://www.kamailio.org/docs/modules/4.0.x/modules/corex.html)               |
| **send_reply(code, reason)**                      | *modules*   | [sl](http://www.kamailio.org/docs/modules/4.0.x/modules/sl.html)                     |
| **send_tcp(\[ host \[ :port \] \])**              | *modules*   | [corex](http://www.kamailio.org/docs/modules/4.0.x/modules/corex.html)               |
| **setbflag(flag \[, branch\])**                   | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                   |
| **setdebug(level)**                               | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                   |
| **setdsturi(uri)**                                | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                   |
| **setsflag(flag)**                                | *modules*   | [kex](http://www.kamailio.org/docs/modules/4.0.x/modules/kex.html)                   |
| **set_accept_filter(filter,flags)**               | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/4.0.x/modules/uac_redirect.html) |
| **set_body(txt,content_type)**                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **set_deny_filter(filter,flags)**                 | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/4.0.x/modules/uac_redirect.html) |
| **set_dlg_profile(profile,\[value\])**            | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)             |
| **set_dlg_profile(profile,\[value\])**            | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)       |
| **set_gflag(flag)**                               | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)         |
| **set_gflag(flag_num)**                           | *modules*   | [uid_gflags](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_gflags.html)     |
| **set_iattr(attribute,value)**                    | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                   |
| **set_reply_body(txt,content_type)**              | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **set_rtp_proxy_set(setid)**                      | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)         |
| **set_sattr(attribute,value)**                    | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                   |
| **set_uri_host(uri, host)**                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)         |
| **set_uri_user(uri, user)**                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)         |
| **shm_status()**                                  | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)         |
| **shm_summary()**                                 | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)         |
| **sht_print()**                                   | *modules*   | [htable](http://www.kamailio.org/docs/modules/4.0.x/modules/htable.html)             |
| **sht_rm_name_re(htable=>regexp)**                | *modules*   | [htable](http://www.kamailio.org/docs/modules/4.0.x/modules/htable.html)             |
| **sht_rm_value_re(htable=>regexp)**               | *modules*   | [htable](http://www.kamailio.org/docs/modules/4.0.x/modules/htable.html)             |
| **sip_trace()**                                   | *modules*   | [siptrace](http://www.kamailio.org/docs/modules/4.0.x/modules/siptrace.html)         |
| **sleep(time)**                                   | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)         |
| **sl_forward \_reply(\[ code, \[ reason \] \])**  | *modules*   | [sl](http://www.kamailio.org/docs/modules/4.0.x/modules/sl.html)                     |
| **sl_reply_error()**                              | *modules*   | [sl](http://www.kamailio.org/docs/modules/4.0.x/modules/sl.html)                     |
| **sl_send_reply(code, reason)**                   | *modules*   | [sl](http://www.kamailio.org/docs/modules/4.0.x/modules/sl.html)                     |
| **sms_send_msg()**                                | *modules*   | [sms](http://www.kamailio.org/docs/modules/4.0.x/modules/sms.html)                   |
| **sms_send_msg_to_net(network_name)**             | *modules*   | [sms](http://www.kamailio.org/docs/modules/4.0.x/modules/sms.html)                   |
| **sql_pvquery(connection, query, result)**        | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/4.0.x/modules/sqlops.html)             |
| **sql_query(connection, query\[, result\])**      | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/4.0.x/modules/sqlops.html)             |
| **sql_result_free(result)**                       | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/4.0.x/modules/sqlops.html)             |
| **sql_xquery(connection, query, result)**         | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/4.0.x/modules/sqlops.html)             |
| **sstCheckMin(send_reply_flag)**                  | *modules*   | [sst](http://www.kamailio.org/docs/modules/4.0.x/modules/sst.html)                   |
| **starts_with(str1, str2)**                       | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **start_recording()**                             | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)         |
| **subst('/re/repl/flags')**                       | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **subst_attr($avp_name, subst_re)**               | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                   |
| **subst_body('/re/repl/flags')**                  | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **subst_hf(hf, subexp, flags)**                   | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **subst_uri('/re/repl/flags')**                   | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |
| **subst_user('/re/repl/flags')**                  | *modules*   | [textops](http://www.kamailio.org/docs/modules/4.0.x/modules/textops.html)           |

## \[T\]

| Name                                                  | Module Path | Module Name                                                                  |
|-------------------------------------------------------|-------------|------------------------------------------------------------------------------|
| **tel2sip(uri, hostpart, result)**                    | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html) |
| **time_period_match(period \[, timestamp\])**         | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/4.0.x/modules/tmrec.html)       |
| **tmrec_match(timerec \[, timestamp\])**              | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/4.0.x/modules/tmrec.html)       |
| **to_any_gw(\[ip_addr, proto\])**                     | *modules*   | [lcr](http://www.kamailio.org/docs/modules/4.0.x/modules/lcr.html)           |
| **to_gw(lcr_id\[, ip_addr, proto\])**                 | *modules*   | [lcr](http://www.kamailio.org/docs/modules/4.0.x/modules/lcr.html)           |
| **typeof(pvar, vtype)**                               | *modules*   | [pv](http://www.kamailio.org/docs/modules/4.0.x/modules/pv.html)             |
| **t_any_replied()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_any_timeout()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_branch_replied()**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_branch_timeout()**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_cancel_branches(which)**                          | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_cancel_callid(callid, cseq, flag)**               | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_check_trans()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_continue(tindex, tlabel, rtname)**                | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_drop_replies(\[mode\])**                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_flush_flags()**                                   | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_forward_nonack(\[ip, port\])**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_forward_nonack_sctp(ip, port)**                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_forward_nonack_tcp(ip, port)**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_forward_nonack_tls(ip, port)**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_forward_nonack_udp(ip, port)**                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_grep_status("code")**                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_is_branch_route()**                               | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_is_canceled()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_is_expired()**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_is_failure_route()**                              | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_is_reply_route()**                                | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_is_set(target)**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_load_contacts()**                                 | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_lookup_cancel(\[1\])**                            | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_lookup_request()**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_newtran()**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_next_contacts()**                                 | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_next_contact_flows()**                            | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_on_branch(branch_route)**                         | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_on_failure(failure_route)**                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_on_reply(onreply_route)**                         | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_relay(\[host, port\])**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_relay_cancel()**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_relay_to(proxy, flags)**                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_relay_to_sctp(\[ip, port\])**                     | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_relay_to_tcp(\[ip, port\])**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_relay_to_tls(\[ip, port\])**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_relay_to_udp(\[ip, port\])**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_release()**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_replicate(params)**                               | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_reply(code, reason_phrase)**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_reply_callid(callid, cseq, code, reason)**        | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |
| **t_reset_fr()**                                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_reset_max_lifetime()**                            | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_reset_retr()**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_retransmit_reply()**                              | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_save_lumps()**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_set_auto_inv_100(0\|1)**                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_set_disable_6xx(0\|1)**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_set_disable_failover(0\|1)**                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_set_fr(fr_inv_timeout \[, fr_timeout\])**         | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_set_max_lifetime(inv_lifetime, noninv_lifetime)** | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_set_no_e2e_cancel_reason(0\|1)**                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_set_retr(retr_t1_interval, retr_t2_interval)**    | *modules*   | [tm](http://www.kamailio.org/docs/modules/4.0.x/modules/tm.html)             |
| **t_suspend()**                                       | *modules*   | [tmx](http://www.kamailio.org/docs/modules/4.0.x/modules/tmx.html)           |

## \[U\]

| Name                                     | Module Path | Module Name                                                                      |
|------------------------------------------|-------------|----------------------------------------------------------------------------------|
| **uac_auth()**                           | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_reg_lookup(uuid, dst)**            | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_reg_request_to(user, mode)**       | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_replace_from(display,uri)**        | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_replace_from(uri)**                | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_replace_to(display,uri)**          | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_replace_to(uri)**                  | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_req_send()**                       | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_restore_from()**                   | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **uac_restore_to()**                     | *modules*   | [uac](http://www.kamailio.org/docs/modules/4.0.x/modules/uac.html)               |
| **unforce_rtp_proxy()**                  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/rtpproxy.html)     |
| **unlock(key)**                          | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)     |
| **unlock_extra_attrs (group_id, id)**    | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_avp_db.html) |
| **unregister(domain, uri)**              | *modules*   | [registrar](http://www.kamailio.org/docs/modules/4.0.x/modules/registrar.html)   |
| **unset_dlg_profile(profile,\[value\])** | *modules*   | [dialog](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog.html)         |
| **unset_dlg_profile(profile,\[value\])** | *modules*   | [dialog_ng](http://www.kamailio.org/docs/modules/4.0.x/modules/dialog_ng.html)   |
| **update_stat(variable,value)**          | *modules*   | [statistics](http://www.kamailio.org/docs/modules/4.0.x/modules/statistics.html) |
| **uri_param(param)**                     | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)     |
| **uri_param(param,value)**               | *modules*   | [siputils](http://www.kamailio.org/docs/modules/4.0.x/modules/siputils.html)     |
| **use_media_proxy()**                    | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/4.0.x/modules/mediaproxy.html) |
| **use_next_gw()/next_routing()**         | *modules*   | [drouting](http://www.kamailio.org/docs/modules/4.0.x/modules/drouting.html)     |
| **usleep(time)**                         | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/4.0.x/modules/cfgutils.html)     |

## \[V\]

| Name                         | Module Path | Module Name                                                                            |
|------------------------------|-------------|----------------------------------------------------------------------------------------|
| **validateospheader()**      | *modules*   | [osp](http://www.kamailio.org/docs/modules/4.0.x/modules/osp.html)                     |
| **verify_destination()**     | *modules*   | [peering](http://www.kamailio.org/docs/modules/4.0.x/modules/peering.html)             |
| **verify_source()**          | *modules*   | [peering](http://www.kamailio.org/docs/modules/4.0.x/modules/peering.html)             |
| **vrfy_check_callid()**      | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_identity.html) |
| **vrfy_check_certificate()** | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_identity.html) |
| **vrfy_check_date()**        | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_identity.html) |
| **vrfy_check_msgvalidity()** | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_identity.html) |
| **vrfy_get_certificate()**   | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_identity.html) |

## \[W\]

| Name                                            | Module Path | Module Name                                                                        |
|-------------------------------------------------|-------------|------------------------------------------------------------------------------------|
| **ws_handle_handshake()**                       | *modules*   | [websocket](http://www.kamailio.org/docs/modules/4.0.x/modules/websocket.html)     |
| **www_authenticate(realm, table \[, method\])** | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_db.html)         |
| **www_authorize(realm, table)**                 | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/auth_db.html)         |
| **www_authorize(realm, table)**                 | *modules*   | [uid_auth_db](http://www.kamailio.org/docs/modules/4.0.x/modules/uid_auth_db.html) |
| **www_challenge(realm, flags)**                 | *modules*   | [auth](http://www.kamailio.org/docs/modules/4.0.x/modules/auth.html)               |

## \[X\]

| Name                                              | Module Path | Module Name                                                                        |
|---------------------------------------------------|-------------|------------------------------------------------------------------------------------|
| **xcaps_del(uri, path)**                          | *modules*   | [xcap_server](http://www.kamailio.org/docs/modules/4.0.x/modules/xcap_server.html) |
| **xcaps_get(uri, path)**                          | *modules*   | [xcap_server](http://www.kamailio.org/docs/modules/4.0.x/modules/xcap_server.html) |
| **xcaps_put(uri, path, doc)**                     | *modules*   | [xcap_server](http://www.kamailio.org/docs/modules/4.0.x/modules/xcap_server.html) |
| **xcap_auth_status(watcher_uri, presentity_uri)** | *modules*   | [utils](http://www.kamailio.org/docs/modules/4.0.x/modules/utils.html)             |
| **xdbg(format)**                                  | *modules*   | [xlog](http://www.kamailio.org/docs/modules/4.0.x/modules/xlog.html)               |
| **xdbgl(format)**                                 | *modules*   | [xlog](http://www.kamailio.org/docs/modules/4.0.x/modules/xlog.html)               |
| **xhttp_reply(code, reason, ctype, body)**        | *modules*   | [xhttp](http://www.kamailio.org/docs/modules/4.0.x/modules/xhttp.html)             |
| **xlfix_attr($attribute)**                        | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                 |
| **xlog(\[ \[facility,\] level,\] format)**        | *modules*   | [xlog](http://www.kamailio.org/docs/modules/4.0.x/modules/xlog.html)               |
| **xlogl(\[ \[facility,\] level,\] format)**       | *modules*   | [xlog](http://www.kamailio.org/docs/modules/4.0.x/modules/xlog.html)               |
| **xlset_attr($attribute, xl_format)**             | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                 |
| **xlset_destination(xl_format)**                  | *modules*   | [avp](http://www.kamailio.org/docs/modules/4.0.x/modules/avp.html)                 |
| **xmlrpc_reply(code, reason)**                    | *modules*   | [xmlrpc](http://www.kamailio.org/docs/modules/4.0.x/modules/xmlrpc.html)           |
| **xmpp_send_message()**                           | *modules*   | [xmpp](http://www.kamailio.org/docs/modules/4.0.x/modules/xmpp.html)               |
| **xpdbg(format)**                                 | *modules*   | [xprint](http://www.kamailio.org/docs/modules/4.0.x/modules/xprint.html)           |
| **xplog(level, format)**                          | *modules*   | [xprint](http://www.kamailio.org/docs/modules/4.0.x/modules/xprint.html)           |

## \[Y\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[Z\]

| Name | Module Path | Module Name |
|------|-------------|-------------|
