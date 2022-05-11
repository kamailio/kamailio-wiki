# Modules Functions

([A](#A)) ([B](#B)) ([C](#C)) ([D](#D)) ([E](#E)) ([F](#F)) ([G](#g))
([H](#H)) ([I](#I)) ([J](#J)) ([K](#K)) ([L](#L)) ([M](#M)) ([N](#n))
([O](#O)) ([P](#P)) ([Q](#Q)) ([R](#R)) ([S](#S)) ([T](#T)) ([U](#u))
([V](#V)) ([W](#W)) ([X](#X)) ([Y](#Y)) ([Z](#z))

## \[A\]

| Name                                                            | Module Path   | Module Name                                                                                                                     |
|-----------------------------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------|
| **abort()**                                                     | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.abort)                               |
| **acc_db_request(comment, table)**                              | *src/modules* | [acc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/acc.html#acc.f.acc_db_request)                                     |
| **acc_diam_request(comment)**                                   | *src/modules* | [acc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/acc.html#acc.f.acc_diam_request)                                   |
| **acc_log_request(comment)**                                    | *src/modules* | [acc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/acc.html#acc.f.acc_log_request)                                    |
| **acc_rad_request(comment)**                                    | *src/modules* | [acc_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/acc_radius.html#acc_radius.f.acc_rad_request)               |
| **add_contact_alias(\[ip_addr, port, proto\])**                 | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.add_contact_alias)                |
| **add_diversion(reason \[, uri\])**                             | *src/modules* | [diversion](http://www.kamailio.org/docs/modules/5.0.x/src/modules/diversion.html#diversion.f.add_diversion)                    |
| **add_path()**                                                  | *src/modules* | [path](http://www.kamailio.org/docs/modules/5.0.x/src/modules/path.html#path.f.add_path)                                        |
| **add_path(user)**                                              | *src/modules* | [path](http://www.kamailio.org/docs/modules/5.0.x/src/modules/path.html#path.f.add_path_u)                                      |
| **add_path(user, parameters)**                                  | *src/modules* | [path](http://www.kamailio.org/docs/modules/5.0.x/src/modules/path.html#path.f.add_path_up)                                     |
| **add_path_received()**                                         | *src/modules* | [path](http://www.kamailio.org/docs/modules/5.0.x/src/modules/path.html#path.f.add_path_rcv)                                    |
| **add_path_received(user)**                                     | *src/modules* | [path](http://www.kamailio.org/docs/modules/5.0.x/src/modules/path.html#path.f.add_path_rcv_u)                                  |
| **add_path_received(user, parameters)**                         | *src/modules* | [path](http://www.kamailio.org/docs/modules/5.0.x/src/modules/path.html#path.f.add_path_rcv_up)                                 |
| **add_rcv_param(\[flag\]),**                                    | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.add_rcv_param)                    |
| **add_rr_param(param)**                                         | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html#add-rr-param-id)                                            |
| **add_sock_hdr(hdr_name)**                                      | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.add_sock_hdr)                     |
| **add_uri_param(param)**                                        | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.add_uri_param)                       |
| **alias_db_find( table_name , input, output \[,flags\] )**      | *src/modules* | [alias_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/alias_db.html)                                                |
| **alias_db_lookup(table_name \[,flags\])**                      | *src/modules* | [alias_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/alias_db.html)                                                |
| **allow_address(group_id, ip_addr_pvar, port_pvar)**            | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_address)              |
| **allow_address_group(addr, port)**                             | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_address_group)        |
| **allow_register(allow_file, deny_file)**                       | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_register_fileargs)    |
| **allow_register(basename)**                                    | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_register)             |
| **allow_routing()**                                             | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_routing)              |
| **allow_routing(allow_file,deny_file)**                         | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_routing_fileargs)     |
| **allow_routing(basename)**                                     | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_routing_basename)     |
| **allow_source_address(\[group_id\])**                          | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_source_address)       |
| **allow_source_address_group()**                                | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_source_address_group) |
| **allow_trusted(\[src_ip_pvar, proto_pvar\])**                  | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_trusted)              |
| **allow_uri(basename, pvar)**                                   | *src/modules* | [permissions](http://www.kamailio.org/docs/modules/5.0.x/src/modules/permissions.html#permissions.f.allow_uri)                  |
| **append_attr_hf(header_name, $avp_name)**                      | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.append_attr_hf_2)                                   |
| **append_attr_hf(name)**                                        | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.append_attr_hf_1)                                   |
| **append_body_part(txt,content_type\[, content_disposition\])** | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.append_body_part)                       |
| **append_branch(\[ uri, \[ q \] \])**                           | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.append_branch)                                |
| **append_hf(txt\[, hdr\])**                                     | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.append_hf)                              |
| **append_hf_value(hf, hvalue)**                                 | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.append_hf_value)                     |
| **append_rpid_hf()**                                            | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.append_rpid_hf)                      |
| **append_rpid_hf(prefix, suffix)**                              | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.append_rpid_hf_params)               |
| **append_time()**                                               | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.append_time)                            |
| **append_time_to_request()**                                    | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.append_time_to_request)                 |
| **append_to_reply(txt)**                                        | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.append_to_reply)                        |
| **append_urihf(prefix, suffix)**                                | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.append_urihf)                           |
| **assign_hf_value(hf, hvalue)**                                 | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.assign_hf_value)                     |
| **assign_hf_value2(hf, hvalue)**                                | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.assign_hf_value2)                    |
| **assign_server_unreg(aysnc_reply_route, domain, direction)**   | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                          |
| **async_route(routename, seconds)**                             | *src/modules* | [async](http://www.kamailio.org/docs/modules/5.0.x/src/modules/async.html#async.f.async_route)                                  |
| **async_sleep(seconds)**                                        | *src/modules* | [async](http://www.kamailio.org/docs/modules/5.0.x/src/modules/async.html#async.f.async_sleep)                                  |
| **async_task_route(routename)**                                 | *src/modules* | [async](http://www.kamailio.org/docs/modules/5.0.x/src/modules/async.html#async.f.async_task_route)                             |
| **attr2uri($attribute\[,uri-part\])**                           | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.attr2uri)                                           |
| **attr_destination($avp_name)**                                 | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.attr_destination)                                   |
| **attr_equals(attribute, value)**                               | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.attr_equals)                                        |
| **attr_equals_xl(attribute, xl_format)**                        | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.attr_equals_xl)                                     |
| **attr_exists(attribute)**                                      | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.attr_exists)                                        |
| **attr_to_reply(header_name, $avp_name)**                       | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.attr_to_reply_2)                                    |
| **attr_to_reply(name)**                                         | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.attr_to_reply_1)                                    |
| **autheph_authenticate(username, password)**                    | *src/modules* | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_ephemeral.html#auth_eph.f.autheph_authenticate)    |
| **autheph_check(realm)**                                        | *src/modules* | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_ephemeral.html#auth_eph.f.autheph_check)           |
| **autheph_check_from(\[username\])**                            | *src/modules* | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_ephemeral.html#auth_eph.f.autheph_check_from)      |
| **autheph_check_timestamp(username)**                           | *src/modules* | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_ephemeral.html#auth_eph.f.autheph_check_timestamp) |
| **autheph_check_to(\[username\])**                              | *src/modules* | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_ephemeral.html#auth_eph.f.autheph_check_to)        |
| **autheph_proxy(realm)**                                        | *src/modules* | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_ephemeral.html#auth_eph.f.autheph_proxy)           |
| **autheph_www(realm\[, method\])**                              | *src/modules* | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_ephemeral.html#auth_eph.f.autheph_www)             |
| **auth_add_identity()**                                         | *src/modules* | [auth_identity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_identity.html)                                      |
| **auth_challenge(realm, flags)**                                | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.auth_challenge)                                  |
| **auth_check(realm, table, flags)**                             | *src/modules* | [auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_db.html#auth_db.f.auth_check)                             |
| **auth_date_proc()**                                            | *src/modules* | [auth_identity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_identity.html)                                      |
| **auth_get_www_authenticate(realm, flags, pvdest)**             | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.auth_get_www_authenticate)                       |
| **auth_xkeys_add(hdr, kid, alg, data)**                         | *src/modules* | [auth_xkeys](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_add)                |
| **auth_xkeys_check(hdr, kid, alg, data)**                       | *src/modules* | [auth_xkeys](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_check)              |
| **avp_check(name,op_value)**                                    | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_check)                                 |
| **avp_copy(old_name,new_name)**                                 | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_copy)                                  |
| **avp_db_delete(source,name)**                                  | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_db_delete)                             |
| **avp_db_load(source,name)**                                    | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_db_load)                               |
| **avp_db_query(query\[,dest\])**                                | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_db_query)                              |
| **avp_db_store(source,name)**                                   | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_db_store)                              |
| **avp_delete(name)**                                            | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_delete)                                |
| **avp_op(name,op_value)**                                       | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_op)                                    |
| **avp_print()**                                                 | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_print)                                 |
| **avp_printf(dest, format)**                                    | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_printf)                                |
| **avp_pushto(destination,name)**                                | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_pushto)                                |
| **avp_subst(avps, subst)**                                      | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.avp_subst)                                 |

## \[B\]

| Name                                 | Module Path   | Module Name                                                                                                   |
|--------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------|
| **bla_handle_notify**                | *src/modules* | [pua_bla](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua_bla.html)                                |
| **bla_set_flag**                     | *src/modules* | [pua_bla](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua_bla.html)                                |
| **blst_add(\[timeout\])**            | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_add)                             |
| **blst_add_retry_after(min, max)**   | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_add_retry_after)                 |
| **blst_clear_ignore(\[flags\])**     | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_clear_ignore)                    |
| **blst_del()**                       | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_del)                             |
| **blst_is_blacklisted()**            | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_is_blacklisted)                  |
| **blst_rpl_clear_ignore(\[flags\])** | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_rpl_clear_ignore)                |
| **blst_rpl_set_ignore(\[flags\])**   | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_rpl_set_ignore)                  |
| **blst_set_ignore(\[flags\])**       | *src/modules* | [blst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/blst.html#blst_set_ignore)                      |
| **bm_log_timer(name)**               | *src/modules* | [benchmark](http://www.kamailio.org/docs/modules/5.0.x/src/modules/benchmark.html#benchmark.f.bm_log_timer)   |
| **bm_start_timer(name)**             | *src/modules* | [benchmark](http://www.kamailio.org/docs/modules/5.0.x/src/modules/benchmark.html#benchmark.f.bm_start_timer) |

## \[C\]

| Name                                                                                          | Module Path   | Module Name                                                                                                                     |
|-----------------------------------------------------------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------|
| **call_control()**                                                                            | *src/modules* | [call_control](http://www.kamailio.org/docs/modules/5.0.x/src/modules/call_control.html#call_control.f.call_control)            |
| **can_publish_reg(domain)**                                                                   | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                          |
| **can_subscribe_to_reg(domain)**                                                              | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                          |
| **cass_insert(keyspace, column_family, key, column, value)**                                  | *src/modules* | [ndb_cassandra](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_cassandra.html)                                      |
| **cass_retrieve(keyspace, column_family, key, column, value)**                                | *src/modules* | [ndb_cassandra](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_cassandra.html)                                      |
| **cdp_check_peer(fqdn)**                                                                      | *src/modules* | [cdp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cdp.html#cdp.f.cdp_check_peer)                                     |
| **cdp_has_app(\[vendorid, \]application)**                                                    | *src/modules* | [cdp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cdp.html#cdp.f.cdp_has_app)                                        |
| **change_reply_status(code, reason)**                                                         | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.change_reply_status)                 |
| **checkcallingtranslation()**                                                                 | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                                          |
| **checkospheader()**                                                                          | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                                          |
| **checkosproute()**                                                                           | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                                          |
| **check_blacklist (\[string table\])**                                                        | *src/modules* | [userblacklist](http://www.kamailio.org/docs/modules/5.0.x/src/modules/userblacklist.html#userblacklist.f.check_blacklist)      |
| **check_from()**                                                                              | *src/modules* | [uid_uri_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_uri_db.html#check_from)                                 |
| **check_from()**                                                                              | *src/modules* | [uri_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uri_db.html#uri_db.f.check_from)                                |
| **check_route_exists(route)**                                                                 | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.check_route_exists)                  |
| **check_route_param(re)**                                                                     | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html#check-route-param-id)                                       |
| **check_to()**                                                                                | *src/modules* | [uid_uri_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_uri_db.html#check_to)                                   |
| **check_to()**                                                                                | *src/modules* | [uri_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uri_db.html#uri_db.f.check_to)                                  |
| **check_uri(uri)**                                                                            | *src/modules* | [uri_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uri_db.html#uri_db.f.check_uri)                                 |
| **check_user_blacklist (string user, string domain, string number, string table)**            | *src/modules* | [userblacklist](http://www.kamailio.org/docs/modules/5.0.x/src/modules/userblacklist.html#userblacklist.f.check_user_blacklist) |
| **check_user_whitelist (string user, string domain, string number, string table)**            | *src/modules* | [userblacklist](http://www.kamailio.org/docs/modules/5.0.x/src/modules/userblacklist.html#userblacklist.f.check_user_whitelist) |
| **check_whitelist (string table)**                                                            | *src/modules* | [userblacklist](http://www.kamailio.org/docs/modules/5.0.x/src/modules/userblacklist.html#userblacklist.f.check_whitelist)      |
| **cmp_aor(str1, str2)**                                                                       | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.cmp_aor)                             |
| **cmp_istr(str1, str2)**                                                                      | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.cmp_istr)                               |
| **cmp_str(str1, str2)**                                                                       | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.cmp_str)                                |
| **cmp_uri(str1, str2)**                                                                       | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.cmp_uri)                             |
| **cnt_add(\[group.\]name, number)**                                                           | *src/modules* | [counters](http://www.kamailio.org/docs/modules/5.0.x/src/modules/counters.html#cnt_add)                                        |
| **cnt_inc(\[group.\]name)**                                                                   | *src/modules* | [counters](http://www.kamailio.org/docs/modules/5.0.x/src/modules/counters.html#cnt_inc)                                        |
| **cnt_reset(\[group.\]name)**                                                                 | *src/modules* | [counters](http://www.kamailio.org/docs/modules/5.0.x/src/modules/counters.html#cnt_reset)                                      |
| **cnxcc_set_max_channel()**                                                                   | *src/modules* | [cnxcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cnxcc.html)                                                      |
| **cnxcc_set_max_credit()**                                                                    | *src/modules* | [cnxcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cnxcc.html)                                                      |
| **cnxcc_set_max_time()**                                                                      | *src/modules* | [cnxcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cnxcc.html)                                                      |
| **cnxcc_terminate_all()**                                                                     | *src/modules* | [cnxcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cnxcc.html)                                                      |
| **cnxcc_update_max_time()**                                                                   | *src/modules* | [cnxcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cnxcc.html)                                                      |
| **Common requirements**                                                                       | *src/modules* | [app_java](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_java.html)                                                |
| **compare_ips (ip1, ip2)**                                                                    | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.compare_ips)                                  |
| **compare_pure_ips (ip1, ip2)**                                                               | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.compare_pure_ips)                             |
| **consume_credentials()**                                                                     | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.consume_credentials)                             |
| **core_hash(string1, string2, size)**                                                         | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.core_hash)                           |
| **cpl_process_register()**                                                                    | *src/modules* | [cplc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cplc.html)                                                        |
| **cpl_process_register_norpl()**                                                              | *src/modules* | [cplc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cplc.html)                                                        |
| **cpl_run_script(type,mode, \[uri\])**                                                        | *src/modules* | [cplc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cplc.html)                                                        |
| **crypto_aes_decrypt(text, key, res)**                                                        | *src/modules* | [crypto](http://www.kamailio.org/docs/modules/5.0.x/src/modules/crypto.html#async.f.crypto_aes_decrypt)                         |
| **crypto_aes_encrypt(text, key, res)**                                                        | *src/modules* | [crypto](http://www.kamailio.org/docs/modules/5.0.x/src/modules/crypto.html#async.f.crypto_aes_encrypt)                         |
| **cr_next_domain(carrier, domain, prefix_matching, host, reply_code, dstavp)**                | *src/modules* | [carrierroute](http://www.kamailio.org/docs/modules/5.0.x/src/modules/carrierroute.html)                                        |
| **cr_nofallback_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | *src/modules* | [carrierroute](http://www.kamailio.org/docs/modules/5.0.x/src/modules/carrierroute.html)                                        |
| **cr_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)**            | *src/modules* | [carrierroute](http://www.kamailio.org/docs/modules/5.0.x/src/modules/carrierroute.html)                                        |
| **cr_user_carrier(user, domain, dstavp)**                                                     | *src/modules* | [carrierroute](http://www.kamailio.org/docs/modules/5.0.x/src/modules/carrierroute.html)                                        |

## \[D\]

| Name                                                        | Module Path   | Module Name                                                                                                        |
|-------------------------------------------------------------|---------------|--------------------------------------------------------------------------------------------------------------------|
| **dbg_breakpoint(mode)**                                    | *src/modules* | [debugger](http://www.kamailio.org/docs/modules/5.0.x/src/modules/debugger.html#dbg.f.db_breakpoint)               |
| **dbg_pv_dump(\[mask\] \[, level\])**                       | *src/modules* | [debugger](http://www.kamailio.org/docs/modules/5.0.x/src/modules/debugger.html#dbg.f.dbg_pv_dump)                 |
| **dbg_sip_msg(\[log_level\], \[facility\])**                | *src/modules* | [debugger](http://www.kamailio.org/docs/modules/5.0.x/src/modules/debugger.html#dbg.f.dbg_sip_msg)                 |
| **decode_contact()**                                        | *src/modules* | [mangler](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mangler.html#mangler.f.decode_contact)            |
| **decode_contact()**                                        | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.decode_contact)         |
| **decode_contact_header()**                                 | *src/modules* | [mangler](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mangler.html#mangler.f.decode_contact_header)     |
| **decode_contact_header()**                                 | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.decode_contact_header)  |
| **defunct_gw(period)**                                      | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                             |
| **del_attr($avp_name)**                                     | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.del_attr)                              |
| **detailed_ipv4_type (ip, result)**                         | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.detailed_ipv4_type)              |
| **detailed_ipv6_type (ip, result)**                         | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.detailed_ipv6_type)              |
| **detailed_ip_type (ip, result)**                           | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.detailed_ip_type)                |
| **diameter_is_user_in(who, group)**                         | *src/modules* | [auth_diameter](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_diameter.html)                         |
| **diameter_proxy_authorize(realm)**                         | *src/modules* | [auth_diameter](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_diameter.html)                         |
| **diameter_www_authorize(realm)**                           | *src/modules* | [auth_diameter](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_diameter.html)                         |
| **dispatch_rpc()**                                          | *src/modules* | [xmlrpc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xmlrpc.html#xmlrpc.dispatch_rpc)                   |
| **dispatch_xhttp_pi()**                                     | *src/modules* | [xhttp_pi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xhttp_pi.html)                                   |
| **dispatch_xhttp_rpc()**                                    | *src/modules* | [xhttp_rpc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xhttp_rpc.html)                                 |
| **dlg_bridge(from, to, op)**                                | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_bridge)                   |
| **dlg_bridge(from, to, op)**                                | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dlg_bye(side)**                                           | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_bye)                      |
| **dlg_get(callid, ftag, ttag)**                             | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_get)                      |
| **dlg_get(callid, ftag, ttag)**                             | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dlg_isflagset(flag)**                                     | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_isflagset)                |
| **dlg_isflagset(flag)**                                     | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dlg_manage()**                                            | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_manage)                   |
| **dlg_manage()**                                            | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dlg_refer(side, address)**                                | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_refer)                    |
| **dlg_refer(side, address)**                                | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dlg_remote_profile(cmd, profile, value, uid, expires)**   | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_remote_profile)           |
| **dlg_resetflag(flag)**                                     | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_resetflag)                |
| **dlg_resetflag(flag)**                                     | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dlg_setflag(flag)**                                       | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_setflag)                  |
| **dlg_setflag(flag)**                                       | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dlg_set_property(attr)**                                  | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_set_property)             |
| **dlg_set_timeout(timeout \[, h_entry, h_id\])**            | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_set_timeout)              |
| **dlg_set_timeout_by_profile(profile, \[value\], timeout)** | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.dlg_set_timeout_by_profile)   |
| **dlg_terminate**                                           | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                               |
| **dmq_bcast_message(peer, body, content_type)**             | *src/modules* | [dmq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dmq.html#dmq.f.dmq_bcast_message)                     |
| **dmq_handle_message()**                                    | *src/modules* | [dmq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dmq.html#dmq.f.dmq_handle_message)                    |
| **dmq_is_from_node()**                                      | *src/modules* | [dmq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dmq.html#dmq.f.dmq_is_from_node)                      |
| **dmq_send_message(peer, node, body, content_type)**        | *src/modules* | [dmq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dmq.html#dmq.f.dmq_send_message)                      |
| **dmq_t\_replicate(\[skip_loop_test\])**                    | *src/modules* | [dmq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dmq.html#dmq.f.dmq_t_replicate)                       |
| **dns_int_match_ip(hostname, ipaddr)**                      | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.dns_int_match_ip)                |
| **dns_query(hostname, pvid)**                               | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.dns_query)                       |
| **dns_sys_match_ip(hostname, ipaddr)**                      | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.dns_sys_match_ip)                |
| **does_uri_exist()**                                        | *src/modules* | [uid_uri_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_uri_db.html#does_uri_exist)                |
| **does_uri_exist()**                                        | *src/modules* | [uri_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uri_db.html#uri_db.f.does_uri_exist)               |
| **do_routing("\[groupID\]")**                               | *src/modules* | [drouting](http://www.kamailio.org/docs/modules/5.0.x/src/modules/drouting.html)                                   |
| **dp_apply_policy()**                                       | *src/modules* | [domainpolicy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/domainpolicy.html)                           |
| **dp_can_connect()**                                        | *src/modules* | [domainpolicy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/domainpolicy.html)                           |
| **dp_reload()**                                             | *src/modules* | [dialplan](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialplan.html#dispatcher.f.dp_reload)            |
| **dp_translate(id, \[src\[/dest\]\])**                      | *src/modules* | [dialplan](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialplan.html#dialplan.p.dp_translate)           |
| **ds_is_from_list(\[groupid \[, mode \[, uri\] \] \])**     | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_is_from_list)  |
| **ds_list_exist(groupid)**                                  | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_list_exist)    |
| **ds_load_unset()**                                         | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html)                               |
| **ds_load_update()**                                        | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_load_update)   |
| **ds_mark_dst(\[state\])**                                  | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_mark_dst)      |
| **ds_next_domain()**                                        | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html)                               |
| **ds_next_dst()**                                           | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html)                               |
| **ds_reload()**                                             | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_reload)        |
| **ds_select(set, alg \[, limit\])**                         | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_select)        |
| **ds_select_domain(set, alg\[, limit\])**                   | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_select_domain) |
| **ds_select_dst(set, alg\[, limit\])**                      | *src/modules* | [dispatcher](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dispatcher.html#dispatcher.f.ds_select_dst)    |
| **dump_attrs()**                                            | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.dump_attrs)                            |

## \[E\]

| Name                                                 | Module Path   | Module Name                                                                                                  |
|------------------------------------------------------|---------------|--------------------------------------------------------------------------------------------------------------|
| **encode_contact(encoding_prefix)**                  | *src/modules* | [mangler](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mangler.html#mangler.f.encode_contact)      |
| **encode_contact(encoding_prefix,hostpart)**         | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.encode_contact)   |
| **end_media_session()**                              | *src/modules* | [mediaproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mediaproxy.html)                         |
| **engage_media_proxy()**                             | *src/modules* | [mediaproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mediaproxy.html)                         |
| **enum_pv_query("pvar"\[,"suffix"\[,"service"\]\])** | *src/modules* | [enum](http://www.kamailio.org/docs/modules/5.0.x/src/modules/enum.html#enum.f.enum_pv_query)                |
| **enum_query(\["suffix"\[,"service"\]\])**           | *src/modules* | [enum](http://www.kamailio.org/docs/modules/5.0.x/src/modules/enum.html#enum.f.enum_query)                   |
| **erl_reg_send(server,msg)**                         | *src/modules* | [erlang](http://www.kamailio.org/docs/modules/5.0.x/src/modules/erlang.html#erlang.f.erl_reg_send)           |
| **erl_reply(msg)**                                   | *src/modules* | [erlang](http://www.kamailio.org/docs/modules/5.0.x/src/modules/erlang.html#erlang.f.erl_reply)              |
| **erl_rpc(mod,fun,args,reply)**                      | *src/modules* | [erlang](http://www.kamailio.org/docs/modules/5.0.x/src/modules/erlang.html#erlang.f.erl_rpc)                |
| **erl_send(pid,msg)**                                | *src/modules* | [erlang](http://www.kamailio.org/docs/modules/5.0.x/src/modules/erlang.html#erlang.f.erl_send)               |
| **evapi_async_multicast(evdata, etag)**              | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_async_multicast)     |
| **evapi_async_relay(evdata)**                        | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_async_relay)         |
| **evapi_async_unicast(evdata, etag)**                | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_async_unicast)       |
| **evapi_close()**                                    | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_close)               |
| **evapi_multicast(evdata, etag)**                    | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_multicast)           |
| **evapi_relay(evdata)**                              | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_relay)               |
| **evapi_set_tag(tname)**                             | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_set_tag)             |
| **evapi_unicast(evdata, etag)**                      | *src/modules* | [evapi](http://www.kamailio.org/docs/modules/5.0.x/src/modules/evapi.html#evapi.f.evapi_unicast)             |
| **exclude_hf_value(hf, hvalue)**                     | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.exclude_hf_value) |
| **exec_avp(command \[, avplist\])**                  | *src/modules* | [exec](http://www.kamailio.org/docs/modules/5.0.x/src/modules/exec.html#exec.f.exec_avp)                     |
| **exec_dset(command)**                               | *src/modules* | [exec](http://www.kamailio.org/docs/modules/5.0.x/src/modules/exec.html#exec.f.exec_dset)                    |
| **exec_msg(command)**                                | *src/modules* | [exec](http://www.kamailio.org/docs/modules/5.0.x/src/modules/exec.html#exec.f.exec_msg)                     |

## \[F\]

| Name                                      | Module Path   | Module Name                                                                                                       |
|-------------------------------------------|---------------|-------------------------------------------------------------------------------------------------------------------|
| **file_read(fpath, var)**                 | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.file_read)                      |
| **file_write(fpath, content)**            | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.file_write)                     |
| **filter_body(content_type)**             | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.filter_body)              |
| **fix_nated_contact()**                   | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.fix_nated_contact)  |
| **fix_nated_register()**                  | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.fix_nated_register) |
| **fix_nated_sdp(flags \[, ip_address\])** | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.fix_nated_sdp)      |
| **flags2attr("$avp")**                    | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.flags2attr)                           |
| **fnmatch(value, expr \[, flags\])**      | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.fnmatch)               |
| **from_any_gw(\[ip_addr, proto\])**       | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                            |
| **from_gw(lcr_id\[, ip_addr, proto\])**   | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                            |

## \[G\]

| Name                                         | Module Path   | Module Name                                                                                                |
|----------------------------------------------|---------------|------------------------------------------------------------------------------------------------------------|
| **geoip2_match(ipaddr, pvc)**                | *src/modules* | [geoip2](http://www.kamailio.org/docs/modules/5.0.x/src/modules/geoip2.html)                               |
| **geoip_match(ipaddr, pvc)**                 | *src/modules* | [geoip](http://www.kamailio.org/docs/modules/5.0.x/src/modules/geoip.html)                                 |
| **get_body_part(content_type, opv)**         | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.get_body_part)     |
| **get_body_part_raw(content_type, opv)**     | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.get_body_part_raw) |
| **get_profile_size(profile,\[value\],size)** | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.get_profile_size)     |
| **get_profile_size(profile,\[value\],size)** | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                       |
| **get_redirects(max)**                       | *src/modules* | [uac_redirect](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac_redirect.html)                   |
| **get_redirects(max,reason)**                | *src/modules* | [uac_redirect](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac_redirect.html)                   |
| **get_uri_param(name, var)**                 | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.get_uri_param)  |
| **get_user_group(URI, AVP)**                 | *src/modules* | [group](http://www.kamailio.org/docs/modules/5.0.x/src/modules/group.html#group.f.get_user_group)          |
| **goes_to_gw(\[type\])**                     | *src/modules* | [drouting](http://www.kamailio.org/docs/modules/5.0.x/src/modules/drouting.html)                           |

## \[H\]

| Name                                                                  | Module Path   | Module Name                                                                                                                             |
|-----------------------------------------------------------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| **h350_auth_lookup(auth_username, "username_avp_spec/pwd_avp_spec")** | *src/modules* | [h350](http://www.kamailio.org/docs/modules/5.0.x/src/modules/h350.html)                                                                |
| **h350_result_call_preferences(avp_name_prefix)**                     | *src/modules* | [h350](http://www.kamailio.org/docs/modules/5.0.x/src/modules/h350.html)                                                                |
| **h350_result_service_level(avp_name_prefix)**                        | *src/modules* | [h350](http://www.kamailio.org/docs/modules/5.0.x/src/modules/h350.html)                                                                |
| **h350_sipuri_lookup(sip_uri)**                                       | *src/modules* | [h350](http://www.kamailio.org/docs/modules/5.0.x/src/modules/h350.html)                                                                |
| **handle_publish(\[sender_uri\])**                                    | *src/modules* | [presence](http://www.kamailio.org/docs/modules/5.0.x/src/modules/presence.html#presence.f.handle_publish)                              |
| **handle_ruri_alias()**                                               | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.handle_ruri_alias)                        |
| **handle_subscribe(\[watcher_uri\])**                                 | *src/modules* | [presence](http://www.kamailio.org/docs/modules/5.0.x/src/modules/presence.html#presence.f.handle_subscribe)                            |
| **has_body(), has_body(mime)**                                        | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.has_body)                                       |
| **has_credentials(realm)**                                            | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.has_credentials)                                         |
| **has_totag()**                                                       | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.has_totag())                                 |
| **hdr_body2attrs(headername, prefix)**                                | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.hdr_body2attrs)                                             |
| **hdr_body2attrs2(headername, prefix)**                               | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.hdr_body2attrs2)                                            |
| **hf_value_exists(hf, hvalue)**                                       | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.hf_value_exists)                             |
| **http_async_query(url, route_name)**                                 | *src/modules* | [http_async_client](http://www.kamailio.org/docs/modules/5.0.x/src/modules/http_async_client.html#http_async_client.f.http_async_query) |
| **http_client_query(url, \[post-data\], result)**                     | *src/modules* | [http_client](http://www.kamailio.org/docs/modules/5.0.x/src/modules/http_client.html#http_client.f.curl_http_query)                    |
| **http_connect(connection, url, \[content_type, data,\] result)**     | *src/modules* | [http_client](http://www.kamailio.org/docs/modules/5.0.x/src/modules/http_client.html#http_client.f.http_connect)                       |
| **http_get_redirect(connection, result)**                             | *src/modules* | [http_client](http://www.kamailio.org/docs/modules/5.0.x/src/modules/http_client.html#http_client.f.http_get_redirect)                  |

## \[I\]

| Name                                                                | Module Path   | Module Name                                                                                                  |
|---------------------------------------------------------------------|---------------|--------------------------------------------------------------------------------------------------------------|
| **imc_manager()**                                                   | *src/modules* | [imc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/imc.html)                                       |
| **impu_registered(domain)**                                         | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)       |
| **ims_proxy_authenticate(realm, table)**                            | *src/modules* | [ims_auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_auth.html)                             |
| **ims_proxy_challenge(route_block, realm, table)**                  | *src/modules* | [ims_auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_auth.html)                             |
| **ims_www_authenticate(realm)**                                     | *src/modules* | [ims_auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_auth.html)                             |
| **ims_www_authorize(realm, table)**                                 | *src/modules* | [ims_auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_auth.html)                             |
| **ims_www_challenge(route_block, realm)**                           | *src/modules* | [ims_auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_auth.html)                             |
| **ims_www_challenge(route_block, realm, algorithm)**                | *src/modules* | [ims_auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_auth.html)                             |
| **inactivate_gw()**                                                 | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                       |
| **include_hf_value(hf, hvalue)**                                    | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.include_hf_value) |
| **insert_attr_hf(header_name, $avp_name)**                          | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.insert_attr_hf_2)                |
| **insert_attr_hf(name)**                                            | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.insert_attr_hf_1)                |
| **insert_hf(txt\[, hdr\])**                                         | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.insert_hf)           |
| **insert_hf_value(hf, hvalue)**                                     | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.insert_hf_value)  |
| **in_list(subject, list, separator)**                               | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.in_list)             |
| **ip_type (ip)**                                                    | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_ip_type)                |
| **isbflagset(flag \[, branch\])**                                   | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.isbflagset)                      |
| **isc_from_as(direction)**                                          | *src/modules* | [ims_isc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_isc.html)                               |
| **isc_match_filter(direction,domain)**                              | *src/modules* | [ims_isc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_isc.html)                               |
| **isc_match_filter_reg(reg_state,domain)**                          | *src/modules* | [ims_isc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_isc.html)                               |
| **isdsturiset()**                                                   | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.isdsturiset)                     |
| **isRPDATA()**                                                      | *src/modules* | [smsops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/smsops.html#smsops.f.isrpdata)               |
| **issflagset(flag)**                                                | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.issflagset)                      |
| **isup_to_json**                                                    | *src/modules* | [ss7ops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ss7ops.html#ss7ops.f.isup_to_json)           |
| **is_audio_on_hold()**                                              | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.is_audio_on_hold)    |
| **is_avp_set(name)**                                                | *src/modules* | [avpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avpops.html#avpops.f.is_avp_set)             |
| **is_direction(dir)**                                               | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html)                                         |
| **is_domain_local(pseudo_variable)**                                | *src/modules* | [domain](http://www.kamailio.org/docs/modules/5.0.x/src/modules/domain.html)                                 |
| **is_e164(pseudo-variable)**                                        | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_e164)          |
| **is_first_hop()**                                                  | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_first_hop)     |
| **is_from_gw( type, \[flag\])**                                     | *src/modules* | [drouting](http://www.kamailio.org/docs/modules/5.0.x/src/modules/drouting.html)                             |
| **is_from_gw(\[type\])**                                            | *src/modules* | [drouting](http://www.kamailio.org/docs/modules/5.0.x/src/modules/drouting.html)                             |
| **is_from_local()**                                                 | *src/modules* | [domain](http://www.kamailio.org/docs/modules/5.0.x/src/modules/domain.html)                                 |
| **is_from_user_enum()**                                             | *src/modules* | [enum](http://www.kamailio.org/docs/modules/5.0.x/src/modules/enum.html#enum.f.is_from_user_enum)            |
| **is_gflag(flag)**                                                  | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.is_gflag)         |
| **is_gruu(\[uri\])**                                                | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_gruu)          |
| **is_incoming()**                                                   | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.is_incoming)               |
| **is_int(pvar)**                                                    | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html)                                         |
| **is_in_profile(profile,\[value\])**                                | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.is_in_profile)          |
| **is_in_profile(profile,\[value\])**                                | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                         |
| **is_in_subnet (ip, subnets_list)**                                 | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_in_subnet)              |
| **is_ip (ip)**                                                      | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_ip)                     |
| **is_ipv4 (ip)**                                                    | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_ipv4)                   |
| **is_ipv6 (ip)**                                                    | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_ipv6)                   |
| **is_ipv6_reference (ip)**                                          | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_ipv6_reference)         |
| **is_ip_rfc1918 (ip)**                                              | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_ip_rfc1918)             |
| **is_known_dlg()**                                                  | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.is_known_dlg)           |
| **is_known_dlg()**                                                  | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                         |
| **is_leap_year(\[year\])**                                          | *src/modules* | [tmrec](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmrec.html#tmrec.f.is_leap_year)              |
| **is_local(domain)**                                                | *src/modules* | [uid_domain](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_domain.html#is_local)                |
| **is_maxfwd_lt(max_value)**                                         | *src/modules* | [maxfwd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/maxfwd.html#maxfwd.f.is_maxfwd_lt)           |
| **is_method(name)**                                                 | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.is_method)           |
| **is_myself(uri)**                                                  | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.is_myself)                       |
| **is_numeric(tval)**                                                | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_numeric)       |
| **is_peer_verified()**                                              | *src/modules* | [tls](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tls.html#tls.f.is_peer_verfied)                 |
| **is_present_hf(hf_name)**                                          | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.is_present_hf)       |
| **is_present_hf_re(hf_name_re)**                                    | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.is_present_hf_re)    |
| **is_privacy(privacy_type)**                                        | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.is_privacy)          |
| **is_pure_ip (ip)**                                                 | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.is_pur_ip)                 |
| **is_reply()**                                                      | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_reply)         |
| **is_request()**                                                    | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_request)       |
| **is_rfc1918(ip_address)**                                          | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.is_rfc1918)    |
| **is_rpid_user_e164()**                                             | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html)                             |
| **is_subscriber(uri, dbtable, flags)**                              | *src/modules* | [auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_db.html)                               |
| **is_supported(option)**                                            | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_supported)     |
| **is_tel_number(tval)**                                             | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_tel_number)    |
| **is_ugflag(flag_num)**                                             | *src/modules* | [uid_gflags](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_gflags.html#is_ugflag)               |
| **is_uri_host_local()**                                             | *src/modules* | [domain](http://www.kamailio.org/docs/modules/5.0.x/src/modules/domain.html)                                 |
| **is_uri_user_e164(pseudo-variable)**                               | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_uri_user_e164) |
| **is_user(username)**                                               | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.is_user)          |
| **is_user_in(URI, group)**                                          | *src/modules* | [group](http://www.kamailio.org/docs/modules/5.0.x/src/modules/group.html#group.f.is_user_in)                |
| **i_enum_query(\["suffix"\[,"service"\]\])**                        | *src/modules* | [enum](http://www.kamailio.org/docs/modules/5.0.x/src/modules/enum.html#enum.f.i_enum_query)                 |
| **I_perform_location_information_request(route_block)**             | *src/modules* | [ims_icscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_icscf.html)                           |
| **I_perform_user_authorization_request(route_block, capabalities)** | *src/modules* | [ims_icscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_icscf.html)                           |
| **I_scscf_drop()**                                                  | *src/modules* | [ims_icscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_icscf.html)                           |
| **I_scscf_select(initial)**                                         | *src/modules* | [ims_icscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_icscf.html)                           |

## \[J\]

| Name                                                                                     | Module Path   | Module Name                                                                                                          |
|------------------------------------------------------------------------------------------|---------------|----------------------------------------------------------------------------------------------------------------------|
| **janssonrpc_notification(conn, method, parameters)**                                    | *src/modules* | [janssonrpcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/janssonrpcc.html)                               |
| **janssonrpc_request(conn, method, params\[, options\]\])**                              | *src/modules* | [janssonrpcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/janssonrpcc.html)                               |
| **jansson_append(type, key/path, value, result)**                                        | *src/modules* | [jansson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jansson.html#jansson.f.jansson_append)              |
| **jansson_array_size(key/path, src, dst)**                                               | *src/modules* | [jansson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jansson.html#jansson.f.jansson_array_size)          |
| **jansson_get(key/path, src, dst)**                                                      | *src/modules* | [jansson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jansson.html#jansson.f.jansson_get)                 |
| **jansson_get_field(src, field_name, dst)**                                              | *src/modules* | [jansson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jansson.html#jansson.f.jansson_get_field)           |
| **jansson_set(type, key/path, value, result)**                                           | *src/modules* | [jansson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jansson.html#jansson.f.jansson_set)                 |
| **java_method_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])**          | *src/modules* | [app_java](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_java.html#app_java.f.java_method_exec)         |
| **java_staticmethod_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])**    | *src/modules* | [app_java](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_java.html#app_java.f.java_staticmethod_exec)   |
| **java_s\_method_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])**       | *src/modules* | [app_java](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_java.html#app_java.f.java_s_method_exec)       |
| **java_s\_staticmethod_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])** | *src/modules* | [app_java](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_java.html#app_java.f.java_s_staticmethod_exec) |
| **jsdt_dofile(path)**                                                                    | *src/modules* | [app_jsdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_jsdt.html#app_jsdt.f.jsdt_dofile)              |
| **jsdt_dostring(script)**                                                                | *src/modules* | [app_jsdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_jsdt.html#app_jsdt.f.jsdt_dostring)            |
| **jsdt_run(function, params)**                                                           | *src/modules* | [app_jsdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_jsdt.html#app_jsdt.f.jsdt_run)                 |
| **jsdt_runstring(script)**                                                               | *src/modules* | [app_jsdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_jsdt.html#app_jsdt.f.jsdt_runstring)           |
| **jsonrpc_dispatch()**                                                                   | *src/modules* | [jsonrpcs](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_dispatch)         |
| **jsonrpc_exec(cmd)**                                                                    | *src/modules* | [jsonrpcs](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_exec)             |
| **jsonrpc_notification(method, parameters)**                                             | *src/modules* | [jsonrpcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jsonrpcc.html)                                     |
| **jsonrpc_request(method, parameters, return_route, error_route, result_var)**           | *src/modules* | [jsonrpcc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/jsonrpcc.html)                                     |
| **json_get_field(json_string, field_name, destination)**                                 | *src/modules* | [json](http://www.kamailio.org/docs/modules/5.0.x/src/modules/json.html#json.f.json_get_field)                       |

## \[K\]

| Name                                                                  | Module Path   | Module Name                                                                                         |
|-----------------------------------------------------------------------|---------------|-----------------------------------------------------------------------------------------------------|
| **kazoo_encode(to_encode, target_var)**                               | *src/modules* | [kazoo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kazoo.html)                          |
| **kazoo_json(json_payload, field, target_var)**                       | *src/modules* | [kazoo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kazoo.html)                          |
| **kazoo_pua_publish(json_payload)**                                   | *src/modules* | [kazoo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kazoo.html)                          |
| **kazoo_publish(exchange, routing_key, json_payload)**                | *src/modules* | [kazoo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kazoo.html)                          |
| **kazoo_query(exchange, routing_key, json_payload \[, target_var\])** | *src/modules* | [kazoo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kazoo.html)                          |
| **kazoo_subscribe(exchange, exchange_type, queue, routing_key)**      | *src/modules* | [kazoo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kazoo.html)                          |
| **kazoo_subscribe(json_description)**                                 | *src/modules* | [kazoo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kazoo.html)                          |
| **keep_hf(\[regexp\])**                                               | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.keep_hf) |
| **km_append_branch(\[uri\])**                                         | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.km_append_branch)       |

## \[L\]

| Name                                                                      | Module Path   | Module Name                                                                                                    |
|---------------------------------------------------------------------------|---------------|----------------------------------------------------------------------------------------------------------------|
| **ldap_filter_url_encode(string, avp_spec)**                              | *src/modules* | [ldap](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ldap.html#ldap-filter-url-encode-fn)             |
| **ldap_result("ldap_attr_name/avp_spec\[/avp_type\]" \[, regex_subst\])** | *src/modules* | [ldap](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ldap.html#ldap-result-fn)                        |
| **ldap_result_check("ldap_attr_name/string_to_match" \[, regex_subst\])** | *src/modules* | [ldap](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ldap.html#ldap-result-check-fn)                  |
| **ldap_result_next()**                                                    | *src/modules* | [ldap](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ldap.html#ldap-result-next-fn)                   |
| **ldap_search(ldap_url)**                                                 | *src/modules* | [ldap](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ldap.html#ldap-search-fn)                        |
| **load_attrs (track, id)**                                                | *src/modules* | [uid_avp_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_avp_db.html)                           |
| **load_extra_attrs (group_id, id)**                                       | *src/modules* | [uid_avp_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_avp_db.html)                           |
| **load_gws(lcr_id\[, uri_user\[, caller_uri\]\])**                        | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                         |
| **lock(key)**                                                             | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.lock)               |
| **lock_extra_attrs (group_id, id)**                                       | *src/modules* | [uid_avp_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_avp_db.html)                           |
| **log_udp(text)**                                                         | *src/modules* | [log_custom](http://www.kamailio.org/docs/modules/5.0.x/src/modules/log_custom.html#log_custom.f.log_udp)      |
| **lookup(domain \[, uri\])**                                              | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.lookup)          |
| **lookup(domain)**                                                        | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)         |
| **lookup_branches(domain)**                                               | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.lookup_branches) |
| **lookup_domain(attr_group, domain)**                                     | *src/modules* | [uid_domain](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_domain.html#lookup_domain)             |
| **lookup_domain(domain\[, prefix\])**                                     | *src/modules* | [domain](http://www.kamailio.org/docs/modules/5.0.x/src/modules/domain.html)                                   |
| **lookup_path_to_contact(uri)**                                           | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)         |
| **loose_route()**                                                         | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html#loose-route-id)                            |
| **lua_dofile(path)**                                                      | *src/modules* | [app_lua](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_lua.html#app_lua.f.lua_dotfile)           |
| **lua_dostring(script)**                                                  | *src/modules* | [app_lua](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_lua.html#app_lua.f.lua_dostring)          |
| **lua_run(function, params)**                                             | *src/modules* | [app_lua](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_lua.html#app_lua.f.lua_run)               |
| **lua_runstring(script)**                                                 | *src/modules* | [app_lua](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_lua.html#app_lua.f.lua_runstring)         |

## \[M\]

| Name                                                             | Module Path   | Module Name                                                                                                             |
|------------------------------------------------------------------|---------------|-------------------------------------------------------------------------------------------------------------------------|
| **matrix (string first, string second, string dstavp)**          | *src/modules* | [matrix](http://www.kamailio.org/docs/modules/5.0.x/src/modules/matrix.html#matrix.f.matrix)                            |
| **maxfwd_at_least(max_value)**                                   | *src/modules* | [maxfwd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/maxfwd.html#maxfwd.f.maxfwd_at_least)                   |
| **maxfwd_process(max_value)**                                    | *src/modules* | [maxfwd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/maxfwd.html)                                            |
| **mf_lowlimit(max_value)**                                       | *src/modules* | [maxfwd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/maxfwd.html#maxfwd.f.mf_lowlimit)                       |
| **mf_process_maxfwd_header(max_value)**                          | *src/modules* | [maxfwd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/maxfwd.html#maxfwd.f.mf_process_maxfwd_header)          |
| **mohq_count (queue_name, pvar)**                                | *src/modules* | [mohqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mohqueue.html#count.func)                             |
| **mohq_process ()**                                              | *src/modules* | [mohqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mohqueue.html#proc.func)                              |
| **mohq_retrieve (queue_name, URI)**                              | *src/modules* | [mohqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mohqueue.html#retrieve.func)                          |
| **mohq_send (queue_name)**                                       | *src/modules* | [mohqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mohqueue.html#send.func)                              |
| **mongodb_cmd(srvname, dbname, cname, command, replyid)**        | *src/modules* | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmd)        |
| **mongodb_cmd_simple(srvname, dbname, cname, command, replyid)** | *src/modules* | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmd_simple) |
| **mongodb_find(srvname, dbname, cname, command, replyid)**       | *src/modules* | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_find)       |
| **mongodb_find_one(srvname, dbname, cname, command, replyid)**   | *src/modules* | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_find_one)   |
| **mongodb_free(replyid)**                                        | *src/modules* | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_free)       |
| **mongodb_next(replyid)**                                        | *src/modules* | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_next)       |
| **mono_exec(path \[, param\])**                                  | *src/modules* | [app_mono](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_mono.html)                                        |
| **mono_run(\[param\])**                                          | *src/modules* | [app_mono](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_mono.html)                                        |
| **mq_add(queue, key, value)**                                    | *src/modules* | [mqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mqueue.html#mqueue.f.mq_add)                            |
| **mq_fetch(queue)**                                              | *src/modules* | [mqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mqueue.html#mqueue.f.mq_fetch)                          |
| **mq_pv_free(queue)**                                            | *src/modules* | [mqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mqueue.html#mqueue.f.mq_pv_free)                        |
| **mq_size(queue)**                                               | *src/modules* | [mqueue](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mqueue.html#mqueue.f.mq_size)                           |
| **msg_apply_changes()**                                          | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.msg_apply_changes)           |
| **msg_iflag_is_set(flagname)**                                   | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.msg_iflag_is_set)                     |
| **msg_iflag_reset(flagname)**                                    | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.msg_iflag_reset)                      |
| **msg_iflag_set(flagname)**                                      | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.msg_iflag_set)                        |
| **msrp_cmap_lookup()**                                           | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_cmap_lookup)                        |
| **msrp_cmap_save()**                                             | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_cmap_save)                          |
| **msrp_is_reply()**                                              | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_is_reply)                           |
| **msrp_is_request()**                                            | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_is_request)                         |
| **msrp_relay()**                                                 | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_relay)                              |
| **msrp_relay_flags(flags)**                                      | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_relay_flags)                        |
| **msrp_reply(code, text \[, hdrs\])**                            | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_reply)                              |
| **msrp_reply_flags(flags)**                                      | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_reply_flags)                        |
| **msrp_set_dst(addr, sock)**                                     | *src/modules* | [msrp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msrp.html#msrp.f.msrp_set_dst)                            |
| **mt_match(mtree, pv, mode)**                                    | *src/modules* | [mtree](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mtree.html)                                              |
| **mt_mem_alloc(size)**                                           | *src/modules* | [malloc_test](http://www.kamailio.org/docs/modules/5.0.x/src/modules/malloc_test.html#malloc_test.mt_mem_alloc)         |
| **mt_mem_free()**                                                | *src/modules* | [malloc_test](http://www.kamailio.org/docs/modules/5.0.x/src/modules/malloc_test.html#malloc_test.mt_mem_free)          |
| **m_dump(\[owner\])**                                            | *src/modules* | [msilo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msilo.html#msilo.f.m_dump)                               |
| **m_store(\[owner\])**                                           | *src/modules* | [msilo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/msilo.html#msilo.f.m_store)                              |

## \[N\]

| Name                              | Module Path   | Module Name                                                                                                 |
|-----------------------------------|---------------|-------------------------------------------------------------------------------------------------------------|
| **nat_uac_test(flags)**           | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.f.nat_uac_test) |
| **next_gw()**                     | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                      |
| **not_empty(pvar)**               | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html)                                        |
| **nsq_pua_publish(json_payload)** | *src/modules* | [nsq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nsq.html)                                      |

## \[O\]

| Name                | Module Path   | Module Name                                                                                               |
|---------------------|---------------|-----------------------------------------------------------------------------------------------------------|
| **options_reply()** | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.options_reply) |

## \[P\]

| Name                                                                | Module Path   | Module Name                                                                                                                   |
|---------------------------------------------------------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------|
| **pcre_match (string, pcre_regex)**                                 | *src/modules* | [regex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/regex.html#regex.p.pcre_match)                                 |
| **pcre_match_group (string \[, group\])**                           | *src/modules* | [regex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/regex.html#regex.p.pcre_match_group)                           |
| **pcscf_follows_service_routes(domain)**                            | *src/modules* | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_pcscf.html)                        |
| **pcscf_force_service_routes(domain)**                              | *src/modules* | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_pcscf.html)                        |
| **pcscf_is_registered(domain)**                                     | *src/modules* | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_pcscf.html)                        |
| **pcscf_save(domain)**                                              | *src/modules* | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_pcscf.html)                        |
| **pcscf_save_pending(domain)**                                      | *src/modules* | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_pcscf.html)                        |
| **pdb_query (string query, string dstavp)**                         | *src/modules* | [pdb](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pdb.html)                                                        |
| **pd_translate(sdomain, rewrite_mode)**                             | *src/modules* | [pdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pdt.html)                                                        |
| **perl_exec(func, \[param\])**                                      | *src/modules* | [app_perl](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_perl.html#app_perl.f.perl_exec)                         |
| **perl_exec_simple(func, \[param\])**                               | *src/modules* | [app_perl](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_perl.html#app_perl.f.perl_exec_simple)                  |
| **pike_check_req()**                                                | *src/modules* | [pike](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pike.html#pike.f.pike_check_req)                                |
| **pkg_status()**                                                    | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.pkg_status)                        |
| **pkg_summary()**                                                   | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.pkg_summary)                       |
| **pl_check(name \[, algorithm, limit\])**                           | *src/modules* | [pipelimit](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pipelimit.html#pipelimit.f.pl_check)                       |
| **pl_drop(\[ \[min \], max \])**                                    | *src/modules* | [pipelimit](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pipelimit.html#pipelimit.f.pl_drop)                        |
| **prefix2domain()**                                                 | *src/modules* | [pdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pdt.html)                                                        |
| **prefix2domain(rewrite_mode)**                                     | *src/modules* | [pdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pdt.html)                                                        |
| **prefix2domain(rewrite_mode, multidomain_mode)**                   | *src/modules* | [pdt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pdt.html)                                                        |
| **prefix_route(\[user\])**                                          | *src/modules* | [prefix_route](http://www.kamailio.org/docs/modules/5.0.x/src/modules/prefix_route.html#prefixroute.prefix_route)             |
| **prepareallosproute()**                                            | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                                        |
| **prepareosproute()**                                               | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                                        |
| **pres_auth_status(watcher_uri, presentity_uri)**                   | *src/modules* | [presence](http://www.kamailio.org/docs/modules/5.0.x/src/modules/presence.html#presence.f.pres_auth_status)                  |
| **pres_check_activities(presentity_uri, activity)**                 | *src/modules* | [presence_xml](http://www.kamailio.org/docs/modules/5.0.x/src/modules/presence_xml.html#presence_xml.f.pres_check_activities) |
| **pres_check_basic(presentity_uri, status)**                        | *src/modules* | [presence_xml](http://www.kamailio.org/docs/modules/5.0.x/src/modules/presence_xml.html#presence_xml.f.pres_check_basic)      |
| **pres_refresh_watchers(uri, event, type\[, file_uri, filename\])** | *src/modules* | [presence](http://www.kamailio.org/docs/modules/5.0.x/src/modules/presence.html#presence.f.pres_refresh_watchers)             |
| **pres_update_watchers(uri, event)**                                | *src/modules* | [presence](http://www.kamailio.org/docs/modules/5.0.x/src/modules/presence.html#presence.f.pres_update_whatchers)             |
| **print(txt)**                                                      | *src/modules* | [print](http://www.kamailio.org/docs/modules/5.0.x/src/modules/print.html#print.print)                                        |
| **print_attr($attribute)**                                          | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.print_aattr)                                      |
| **print_stderr(txt)**                                               | *src/modules* | [print_lib](http://www.kamailio.org/docs/modules/5.0.x/src/modules/print_lib.html#print_lib.print)                            |
| **process_maxfwd(max_value)**                                       | *src/modules* | [maxfwd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/maxfwd.html)                                                  |
| **proxy_authenticate(realm, table)**                                | *src/modules* | [auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_db.html#auth_db.f.proxy_authenticate)                   |
| **proxy_authorize(realm, table)**                                   | *src/modules* | [auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_db.html#auth_db.f.proxy_authorize)                      |
| **proxy_authorize(realm, table)**                                   | *src/modules* | [uid_auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_auth_db.html#proxy_authorize)                        |
| **proxy_challenge(realm, flags)**                                   | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.proxy_challenge)                               |
| **pua_set_publish()**                                               | *src/modules* | [pua_usrloc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua_usrloc.html)                                          |
| **pua_update_contact()**                                            | *src/modules* | [pua](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua.html)                                                        |
| **pua_xmpp_notify()**                                               | *src/modules* | [pua_xmpp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_notify)                   |
| **pua_xmpp_req_winfo(request_uri, expires)**                        | *src/modules* | [pua_xmpp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_req_winfo)                |
| **publish_reg(domain)**                                             | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                        |
| **pv_auth_check(realm, passwd, flags, checks)**                     | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.pv_auth_check)                                 |
| **pv_evalx(dst, fmt)**                                              | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.pv_evalx)                                            |
| **pv_isset(pvar)**                                                  | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html)                                                          |
| **pv_printf(var, str)**                                             | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.pv_printf)                                        |
| **pv_proxy_authenticate(realm, passwd, flags)**                     | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.pv_proxy_authenticate)                         |
| **pv_unset(pvar)**                                                  | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html)                                                          |
| **pv_var_to_xavp(varname, xname)**                                  | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.pv_var_to_xavp)                                      |
| **pv_www_authenticate(realm, passwd, flags \[, method\])**          | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.pv_www_authenticate)                           |
| **pv_xavp_print()**                                                 | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.pv_xavp_print)                                       |
| **pv_xavp_to_var(xname)**                                           | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.pv_xavp_to_var)                                      |
| **python_exec(method \[, args\])**                                  | *src/modules* | [app_python](http://www.kamailio.org/docs/modules/5.0.x/src/modules/app_python.html)                                          |

## \[Q\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[R\]

| Name                                                                                              | Module Path   | Module Name                                                                                                                |
|---------------------------------------------------------------------------------------------------|---------------|----------------------------------------------------------------------------------------------------------------------------|
| **rabbitmq_publish(exchange, routing_key, content_type, messagebody)**                            | *src/modules* | [rabbitmq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publish)               |
| **rabbitmq_publish_consume(exchange, routing_key, content_type, messagebody, reply)**             | *src/modules* | [rabbitmq](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publish_consume)       |
| **radius_does_uri_exist(\[uri\])**                                                                | *src/modules* | [misc_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/misc_radius.html)                                     |
| **radius_does_uri_user_exist(\[user\])**                                                          | *src/modules* | [misc_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/misc_radius.html)                                     |
| **radius_is_user_in(user, group)**                                                                | *src/modules* | [misc_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/misc_radius.html)                                     |
| **radius_load_callee_avps(callee)**                                                               | *src/modules* | [misc_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/misc_radius.html)                                     |
| **radius_load_caller_avps(caller)**                                                               | *src/modules* | [misc_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/misc_radius.html)                                     |
| **radius_proxy_authorize(realm \[, uri_user\])**                                                  | *src/modules* | [auth_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_radius.html)                                     |
| **radius_www_authorize(realm \[, uri_user\])**                                                    | *src/modules* | [auth_radius](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_radius.html)                                     |
| **rand_event()**                                                                                  | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.rand_event)                     |
| **rand_get_prob()**                                                                               | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.rand_get_prob)                  |
| **rand_reset_prob()**                                                                             | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.rand_reset_prob)                |
| **rand_set_prob(probabiltiy)**                                                                    | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.rand_set_prob)                  |
| **record_route() and record_route(string)**                                                       | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html#record-route-id)                                       |
| **record_route_advertised_address(address)**                                                      | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html#record-route-adv-addr-id)                              |
| **record_route_preset(string \[,string2\])**                                                      | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html)                                                       |
| **redis_cmd(srvname, command, ..., replyid)**                                                     | *src/modules* | [ndb_redis](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_redis.html#ndb_redis.f.redis_cmd)                   |
| **redis_free(replyid)**                                                                           | *src/modules* | [ndb_redis](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ndb_redis.html#ndb_redis.f.redis_free)                  |
| **reginfo_handle_notify(uldomain)**                                                               | *src/modules* | [pua_reginfo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua_reginfo.html#pua_reginfo.f.reginfo_handle_notify) |
| **reginfo_subscribe(uri\[, expires\])**                                                           | *src/modules* | [pua_reginfo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pua_reginfo.html)                                     |
| **registered(domain \[, uri \[, match_option \[, match_action\]\]\])**                            | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.registered)                  |
| **reg_fetch_contacts(domain, uri, profile)**                                                      | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                     |
| **reg_fetch_contacts(domain, uri, profile)**                                                      | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.reg_fetch_contacts)          |
| **reg_free_contacts(profile)**                                                                    | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                     |
| **reg_free_contacts(profile)**                                                                    | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.reg_free_contacts)           |
| **remove_body()**                                                                                 | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.remove_body)                    |
| **remove_body_part(content_type)**                                                                | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.remove_body_part)                  |
| **remove_extra_attrs (group_id, id)**                                                             | *src/modules* | [uid_avp_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_avp_db.html)                                       |
| **remove_hf(hname)**                                                                              | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.remove_hf)                         |
| **remove_hf_re(re)**                                                                              | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.remove_hf_re)                      |
| **remove_hf_value(hf_par)**                                                                       | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.remove_hf_value)                |
| **remove_hf_value2(hf_par)**                                                                      | *src/modules* | [textopsx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textopsx.html#textopsx.f.remove_hf_value2)               |
| **remove_record_route()**                                                                         | *src/modules* | [rr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rr.html#remove-record-route-id)                                |
| **replace(re, txt)**                                                                              | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.replace)                           |
| **replace_all(re, txt)**                                                                          | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.replace_all)                       |
| **replace_attr_hf(header_name, $avp_name)**                                                       | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.replace_attr_hf_2)                             |
| **replace_attr_hf(name)**                                                                         | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.replace_attr_hf_1)                             |
| **replace_body(re, txt)**                                                                         | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.replace_body)                      |
| **replace_body_all(re, txt)**                                                                     | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.replace_body_all)                  |
| **replace_body_atonce(re, txt)**                                                                  | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.replace_body_atonce)               |
| **reportospusage()**                                                                              | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                                     |
| **report_capture(\[table\],\[data\])**                                                            | *src/modules* | [sipcapture](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sipcapture.html#sipcapture.f.report_capture)           |
| **requestosprouting()**                                                                           | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                                     |
| **resetbflag(flag \[, branch\])**                                                                 | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.resetbflag)                                    |
| **resetdebug()**                                                                                  | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.resetdebug)                                    |
| **resetdsturi()**                                                                                 | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.resetdsturi)                                   |
| **resetsflag(flag)**                                                                              | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.resetsflag)                                    |
| **reset_gflag(flag)**                                                                             | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.reset_gflag)                    |
| **reset_stat(variable)**                                                                          | *src/modules* | [statistics](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statistics.html#statistics.f.reset_stat)               |
| **reset_ugflag(flag_num)**                                                                        | *src/modules* | [uid_gflags](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_gflags.html#reset_ugflag)                          |
| **ring_insert_callid()**                                                                          | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.ring_insert_callid)             |
| **rls_handle_notify()**                                                                           | *src/modules* | [rls](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rls.html)                                                     |
| **rls_handle_subscribe(\[watcher_uri\])**                                                         | *src/modules* | [rls](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rls.html)                                                     |
| **rls_update_subs(uri, event)**                                                                   | *src/modules* | [rls](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rls.html)                                                     |
| **rl_check(\[pvar\])**                                                                            | *src/modules* | [ratelimit](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ratelimit.html)                                         |
| **rl_check_pipe(\[pipe_no\])**                                                                    | *src/modules* | [ratelimit](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ratelimit.html)                                         |
| **route_if_exists(route)**                                                                        | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.route_if_exists)                |
| **Ro_CCR(route_name, direction, reservation_units, domain, incoming_trunk_id, outgoing_trunk_id** | *src/modules* | [ims_charging](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_charging.html)                                   |
| **Ro_set_session_id_avp()**                                                                       | *src/modules* | [ims_charging](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_charging.html)                                   |
| **rtjson_init_routes(rtdoc)**                                                                     | *src/modules* | [rtjson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtjson.html#rtjson.f.rtjson_init_routes)                   |
| **rtjson_next_route()**                                                                           | *src/modules* | [rtjson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtjson.html#rtjson.f.rtjson_next_route)                    |
| **rtjson_push_routes()**                                                                          | *src/modules* | [rtjson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtjson.html#rtjson.f.rtjson_push_routes)                   |
| **rtjson_update_branch()**                                                                        | *src/modules* | [rtjson](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtjson.html#rtjson.f.rtjson_update_branch)                 |
| **rtpengine_answer(\[flags\])**                                                                   | *src/modules* | [rtpengine](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpengine.html#rtpengine.f.rtpengine_answer)            |
| **rtpengine_delete(\[flags\])**                                                                   | *src/modules* | [rtpengine](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpengine.html#rtpengine.f.rtpengine_delete)            |
| **rtpengine_manage(\[flags\])**                                                                   | *src/modules* | [rtpengine](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpengine.html#rtpengine.f.rtpengine_manage)            |
| **rtpengine_offer(\[flags\])**                                                                    | *src/modules* | [rtpengine](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpengine.html#rtpengine.f.rtpengine_offer)             |
| **rtpproxy_answer(\[flags \[, ip_address\]\])**                                                   | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_answer)                |
| **rtpproxy_destroy(\[flags\])**                                                                   | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_destroy)               |
| **rtpproxy_manage(\[flags \[, ip_address\]\])**                                                   | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_manage)                |
| **rtpproxy_offer(\[flags \[, ip_address\]\])**                                                    | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_ofrer)                 |
| **rtpproxy_stop_stream2uac(),**                                                                   | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uac)       |
| **rtpproxy_stop_stream2uas(prompt_name, count)**                                                  | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uas)       |
| **rtpproxy_stream2uac(prompt_name, count),**                                                      | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uac)            |
| **rtpproxy_stream2uas(prompt_name, count)**                                                       | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uas)            |
| **Rx_AAR(route_block, direction, subscription_id, subscription_id_type)**                         | *src/modules* | [ims_qos](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_qos.html)                                             |
| **Rx_AAR_Register(route_block, domain)**                                                          | *src/modules* | [ims_qos](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_qos.html)                                             |

## \[S\]

| Name                                                                                | Module Path   | Module Name                                                                                                               |
|-------------------------------------------------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------------|
| **sanity_check(\[msg_checks \[, uri_checks\]\])**                                   | *src/modules* | [sanity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sanity.html#sanity.f.sanity_check)                        |
| **save(async_reply_route, domain)**                                                 | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                    |
| **save(domain, \[, flags \[, uri\]\])**                                             | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.save)                       |
| **save_extra_attrs (group_id, id)**                                                 | *src/modules* | [uid_avp_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_avp_db.html)                                      |
| **sbranch_append()**                                                                | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.sbranch_append)                                  |
| **sbranch_reset()**                                                                 | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.sbranch_reset)                                   |
| **sbranch_set_ruri()**                                                              | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.sbranch_set_ruri)                                |
| **sca_call_info_update(\[mask, to, from\])**                                        | *src/modules* | [sca](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sca.html#sca.f.sca_call_info_update)                         |
| **sca_handle_subscribe()**                                                          | *src/modules* | [sca](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sca.html#sca.f.sca_handle_subscribe)                         |
| **sdp_content(\[sloppy\])**                                                         | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_content)                         |
| **sdp_get(avpvar)**                                                                 | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_get)                             |
| **sdp_get_line_startswith(avpvar, string)**                                         | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_get_line_startswith)             |
| **sdp_keep_codecs_by_id(list \[, mtype\])**                                         | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.keep_codecs_by_id)                   |
| **sdp_keep_codecs_by_name(list \[, mtype\])**                                       | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.keep_codecs_by_name)                 |
| **sdp_mangle_ip(pattern, newip)**                                                   | *src/modules* | [mangler](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mangler.html#mangler.f.sdp_mangle_ip)                    |
| **sdp_mangle_port(offset)**                                                         | *src/modules* | [mangler](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mangler.html#mangler.f.sdp_mangle_port)                  |
| **sdp_print(level)**                                                                | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_print)                           |
| **sdp_remove_codecs_by_id(list \[, mtype\])**                                       | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.remove_codecs_by_id)                 |
| **sdp_remove_codecs_by_name(list \[, mtype\])**                                     | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.remove_codecs_by_name)               |
| **sdp_remove_line_by_prefix(string \[, mtype\])**                                   | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.remove_line_by_prefix)               |
| **sdp_remove_media(type)**                                                          | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_remove_media)                    |
| **sdp_remove_transport(type)**                                                      | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_remove_transport)                |
| **sdp_transport(pv)**                                                               | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_transport)                       |
| **sdp_with_active_media(type)**                                                     | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_with_active_media)               |
| **sdp_with_codecs_by_id(list)**                                                     | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_with_codecs_by_id)               |
| **sdp_with_codecs_by_name(list)**                                                   | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdspops.f.sdp.with_codecs_by_name)            |
| **sdp_with_ice()**                                                                  | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_with_ice)                        |
| **sdp_with_media(type)**                                                            | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_with_media)                      |
| **sdp_with_transport(type)**                                                        | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_with_transport)                  |
| **sdp_with_transport_like(string)**                                                 | *src/modules* | [sdpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sdpops.html#sdpops.f.sdp_with_transport_like)             |
| **sd_journal_print(level, text)**                                                   | *src/modules* | [log_systemd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/log_systemd.html#log_systemd.f.sd_journal_print)     |
| **sd_journal_send_xavp(name)**                                                      | *src/modules* | [log_systemd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/log_systemd.html#log_systemd.f.sd_journal_send_xavp) |
| **sd_lookup(table \[, owner\])**                                                    | *src/modules* | [speeddial](http://www.kamailio.org/docs/modules/5.0.x/src/modules/speeddial.html)                                        |
| **search(re)**                                                                      | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.search)                           |
| **search_append(re, txt)**                                                          | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.search_append)                    |
| **search_append_body(re, txt)**                                                     | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.search_append_body)               |
| **search_body(re)**                                                                 | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.search_body)                      |
| **search_hf(hf, re, flags)**                                                        | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.search_hf)                        |
| **send(\[ host \[ :port \] \])**                                                    | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.send)                                   |
| **send_data(uri, data)**                                                            | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.send_data)                              |
| **send_reply(code, reason)**                                                        | *src/modules* | [sl](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sl.html#send_reply)                                           |
| **send_tcp(\[ host \[ :port \] \])**                                                | *src/modules* | [corex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/corex.html#corex.f.send_tcp)                               |
| **setbflag(flag \[, branch\])**                                                     | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.setbflag)                                     |
| **setdebug(level)**                                                                 | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.setdebug)                                     |
| **setdsturi(uri)**                                                                  | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.setdsturi)                                    |
| **setsflag(flag)**                                                                  | *src/modules* | [kex](http://www.kamailio.org/docs/modules/5.0.x/src/modules/kex.html#kex.f.setsflag)                                     |
| **set_accept_filter(filter,flags)**                                                 | *src/modules* | [uac_redirect](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac_redirect.html)                                  |
| **set_body(txt,content_type)**                                                      | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.set_body)                         |
| **set_body_multipart(\[txt,content_type\]\[,boundary\])**                           | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.set_body_multipart)               |
| **set_contact_alias()**                                                             | *src/modules* | [nathelper](http://www.kamailio.org/docs/modules/5.0.x/src/modules/nathelper.html#nathelper.set_contact_alias)            |
| **set_deny_filter(filter,flags)**                                                   | *src/modules* | [uac_redirect](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac_redirect.html)                                  |
| **set_dlg_profile(profile,\[value\])**                                              | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.set_dlg_profile)                     |
| **set_dlg_profile(profile,\[value\])**                                              | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                                      |
| **set_gflag(flag)**                                                                 | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.set_gflag)                     |
| **set_gflag(flag_num)**                                                             | *src/modules* | [uid_gflags](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_gflags.html#set_ugflag)                           |
| **set_iattr(attribute,value)**                                                      | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.set_iattr)                                    |
| **set_reply_body(txt,content_type)**                                                | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.set_reply_body)                   |
| **set_rtpengine_set(setid\[, setid\])**                                             | *src/modules* | [rtpengine](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpengine.html#rtpengine.f.set_rtpengine_set)          |
| **set_rtp_proxy_set(setid)**                                                        | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.set_rtp_proxy_set)             |
| **set_sattr(attribute,value)**                                                      | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.set_sattr)                                    |
| **set_uri_host(uri, host)**                                                         | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.set_uri_host)                  |
| **set_uri_user(uri, user)**                                                         | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.set_uri_user)                  |
| **shm_status()**                                                                    | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.shm_status)                    |
| **shm_summary()**                                                                   | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.shm_summary)                   |
| **sht_iterator_end(iname)**                                                         | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_iterator_end)                    |
| **sht_iterator_next(iname)**                                                        | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_iterator_next)                   |
| **sht_iterator_start(iname, hname)**                                                | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_iterator_start)                  |
| **sht_lock(htable=>key)**                                                           | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_lock)                            |
| **sht_print()**                                                                     | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_print)                           |
| **sht_reset(htable)**                                                               | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_reset)                           |
| **sht_rm_name_re(htable=>regexp)**                                                  | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_rm_name_re)                      |
| **sht_rm_value_re(htable=>regexp)**                                                 | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_rm_value_re)                     |
| **sht_unlock(htable=>key)**                                                         | *src/modules* | [htable](http://www.kamailio.org/docs/modules/5.0.x/src/modules/htable.html#htable.f.sht_unlock)                          |
| **sipt_destination(destination, hops, nai)**                                        | *src/modules* | [sipt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sipt.html#sipt.f.sipt_destination)                          |
| **sipt_set_bci_1(charge_indicator, called_status, called_category, e2e_indicator)** | *src/modules* | [sipt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sipt.html#sipt.f.sipt_set_bci_1)                            |
| **sipt_set_calling(origin, nai, presentation, screening)**                          | *src/modules* | [sipt](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sipt.html#sipt.f.sipt_set_calling)                          |
| **sip_capture(\[table\])**                                                          | *src/modules* | [sipcapture](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sipcapture.html#sipcapture.f.sip_capture)             |
| **sip_p\_charging_vector(flags)**                                                   | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.sip_p_charging_vector)         |
| **sip_trace(\[address\]\[, correlation_id\])**                                      | *src/modules* | [siptrace](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siptrace.html#siptrace.f.sip_trace)                     |
| **sleep(time)**                                                                     | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.sleep)                         |
| **sl_forward \_reply(\[ code, \[ reason \] \])**                                    | *src/modules* | [sl](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sl.html#sl_forward_reply)                                     |
| **sl_reply_error()**                                                                | *src/modules* | [sl](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sl.html#sl_reply_error)                                       |
| **sl_send_reply(code, reason)**                                                     | *src/modules* | [sl](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sl.html#sl_send_reply)                                        |
| **smsdump()**                                                                       | *src/modules* | [smsops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/smsops.html#smsops.f.smsdump)                             |
| **sms_send_msg()**                                                                  | *src/modules* | [sms](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sms.html#sms_send_msg)                                       |
| **sms_send_msg_to_net(network_name)**                                               | *src/modules* | [sms](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sms.html#sms_send_msg_to_net)                                |
| **sql_pvquery(connection, query, result)**                                          | *src/modules* | [sqlops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sqlops.html)                                              |
| **sql_query(connection, query\[, result\])**                                        | *src/modules* | [sqlops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sqlops.html)                                              |
| **sql_query_async(connection, query)**                                              | *src/modules* | [sqlops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sqlops.html#sqlops.f.sql_query_async)                     |
| **sql_result_free(result)**                                                         | *src/modules* | [sqlops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sqlops.html)                                              |
| **sql_xquery(connection, query, result)**                                           | *src/modules* | [sqlops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sqlops.html)                                              |
| **srv_query(srvcname, pvid)**                                                       | *src/modules* | [ipops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ipops.html#ipops.f.srv_query)                              |
| **sstCheckMin(send_reply_flag)**                                                    | *src/modules* | [sst](http://www.kamailio.org/docs/modules/5.0.x/src/modules/sst.html#sst.f.sstcheckmin)                                  |
| **starts_with(str1, str2)**                                                         | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.starts_with)                      |
| **start_recording()**                                                               | *src/modules* | [rtpengine](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpengine.html#rtpengine.f.start_recording)            |
| **start_recording()**                                                               | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.start_recording)               |
| **statsd_decr(key)**                                                                | *src/modules* | [statsd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statsd.html#statsd.f.statsd_decr)                         |
| **statsd_gauge(key, value)**                                                        | *src/modules* | [statsd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statsd.html#statsd.f.statsd_gauge)                        |
| **statsd_incr(key)**                                                                | *src/modules* | [statsd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statsd.html#statsd.f.statsd_incr)                         |
| **statsd_set(key, value)**                                                          | *src/modules* | [statsd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statsd.html#statsd.f.statsd_set)                          |
| **statsd_start(key)**                                                               | *src/modules* | [statsd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statsd.html#statsd.f.statsd_start)                        |
| **statsd_stop(key)**                                                                | *src/modules* | [statsd](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statsd.html#statsd.f.statsd_stop)                         |
| **subscribe_to_reg(domain)**                                                        | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)                    |
| **subst('/re/repl/flags')**                                                         | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.subst)                            |
| **subst_attr($avp_name, subst_re)**                                                 | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.subst_attr)                                   |
| **subst_body('/re/repl/flags')**                                                    | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.subst_body)                       |
| **subst_hf(hf, subexp, flags)**                                                     | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.subst_hf)                         |
| **subst_uri('/re/repl/flags')**                                                     | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.subst_uri)                        |
| **subst_user('/re/repl/flags')**                                                    | *src/modules* | [textops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/textops.html#textops.f.subst_user)                       |

## \[T\]

| Name                                                         | Module Path   | Module Name                                                                                                       |
|--------------------------------------------------------------|---------------|-------------------------------------------------------------------------------------------------------------------|
| **tcp_conid_alive(conid)**                                   | *src/modules* | [tcpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tcpops.html#tcpops.f.tcp_conid_alive)             |
| **tcp_conid_state(conid)**                                   | *src/modules* | [tcpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tcpops.html#tcpops.f.tcp_conid_state)             |
| **tcp_enable_closed_event(\[conid\])**                       | *src/modules* | [tcpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tcpops.html#tcpops.f.tcp_enable_closed_event)     |
| **tcp_keepalive_disable(\[conid\])**                         | *src/modules* | [tcpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tcpops.html#tcpops.f.tcp_keepalive_disable)       |
| **tcp_keepalive_enable(\[conid\], idle, count, interval)**   | *src/modules* | [tcpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tcpops.html#tcpops.f.tcp_keepalive_enable)        |
| **tcp_set_connection_lifetime(\[conid\], lifetime)**         | *src/modules* | [tcpops](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tcpops.html#tcpops.f.tcp_set_connection_lifetime) |
| **tel2sip(uri, hostpart, result)**                           | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.tel2sip)               |
| **term_impu_registered(domain)**                             | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)            |
| **time_period_match(period \[, timestamp\])**                | *src/modules* | [tmrec](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmrec.html#tmrec.f.time_period_match)              |
| **tmrec_match(timerec \[, timestamp\])**                     | *src/modules* | [tmrec](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmrec.html#tmrec.f.tmrec_match)                    |
| **to_any_gw(\[ip_addr, proto\])**                            | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                            |
| **to_gw(lcr_id\[, ip_addr, proto\])**                        | *src/modules* | [lcr](http://www.kamailio.org/docs/modules/5.0.x/src/modules/lcr.html)                                            |
| **trylock(key)**                                             | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.trylock)               |
| **ts_append(domain, ruri)**                                  | *src/modules* | [tsilo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tsilo.html)                                        |
| **ts_append_to(tindex, tlabel, domain, \[uri\])**            | *src/modules* | [tsilo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tsilo.html)                                        |
| **ts_store(\[uri\])**                                        | *src/modules* | [tsilo](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tsilo.html)                                        |
| **typeof(pvar, vtype)**                                      | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html)                                              |
| **t_any_replied()**                                          | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_any_replied)                           |
| **t_any_timeout()**                                          | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_any_timeout)                           |
| **t_branch_replied()**                                       | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_branch_replied)                        |
| **t_branch_timeout()**                                       | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_branch_timeout)                        |
| **t_cancel_branches(which)**                                 | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_cancel_branches)                    |
| **t_cancel_callid(callid, cseq, flag \[, rcode\])**          | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_cancel_callid)                      |
| **t_check_status(re)**                                       | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_check_status)                          |
| **t_check_trans()**                                          | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_check_trans)                           |
| **t_continue(tindex, tlabel, rtname)**                       | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_continue)                           |
| **t_drop_replies(\[mode\])**                                 | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_drop_replies)                          |
| **t_flush_flags()**                                          | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_flush_flags)                        |
| **t_forward_nonack(\[ip, port\])**                           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_forward_nonack)                        |
| **t_forward_nonack_sctp(ip, port)**                          | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_forward_nonack_sctp)                   |
| **t_forward_nonack_tcp(ip, port)**                           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_forward_nonack_tcp)                    |
| **t_forward_nonack_tls(ip, port)**                           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_forward_nonack_tls)                    |
| **t_forward_nonack_udp(ip, port)**                           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_forward_nonack_udp)                    |
| **t_grep_status("code")**                                    | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_grep_status)                           |
| **t_is_branch_route()**                                      | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_is_branch_route)                    |
| **t_is_canceled()**                                          | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_is_canceled)                           |
| **t_is_expired()**                                           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_is_expired)                            |
| **t_is_failure_route()**                                     | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_is_failure_route)                   |
| **t_is_reply_route()**                                       | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_is_reply_route)                     |
| **t_is_request_route()**                                     | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_is_request_route)                   |
| **t_is_retr_async_reply()**                                  | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_is_retr_async_reply)                   |
| **t_is_set(target)**                                         | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_is_set)                                |
| **t_load_contacts()**                                        | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_load_contacts)                         |
| **t_lookup_cancel(\[1\])**                                   | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_lookup_cancel)                         |
| **t_lookup_request()**                                       | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_lookup_request)                        |
| **t_newtran()**                                              | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_newtran)                               |
| **t_next_contacts()**                                        | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_next_contacts)                         |
| **t_next_contact_flow()**                                    | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_next_contact_flow)                     |
| **t_on_branch(branch_route)**                                | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_on_branch)                             |
| **t_on_branch_failure(branch_failure_route)**                | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_on_branch_failure)                     |
| **t_on_failure(failure_route)**                              | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_on_failure)                            |
| **t_on_reply(onreply_route)**                                | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_on_reply)                              |
| **t_precheck_trans()**                                       | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_precheck_trans)                     |
| **t_relay(\[host, port\])**                                  | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_relay)                                 |
| **t_relay_cancel()**                                         | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_relay_cancel)                          |
| **t_relay_to(proxy, flags)**                                 | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_relay_to)                              |
| **t_relay_to_sctp(\[ip, port\])**                            | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_relay_to_sctp)                         |
| **t_relay_to_tcp(\[ip, port\])**                             | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_relay_to_tcp)                          |
| **t_relay_to_tls(\[ip, port\])**                             | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_relay_to_tls)                          |
| **t_relay_to_udp(\[ip, port\])**                             | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_relay_to_udp)                          |
| **t_release()**                                              | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_release)                               |
| **t_replicate(\[params\])**                                  | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_replicate)                             |
| **t_reply(code, reason_phrase)**                             | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_reply)                                 |
| **t_reply_callid(callid, cseq, code, reason)**               | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_reply_callid)                       |
| **t_reset_fr()**                                             | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_reset_fr)                              |
| **t_reset_max_lifetime()**                                   | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_reset_max_lifetime)                    |
| **t_reset_retr()**                                           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_reset_retr)                            |
| **t_retransmit_reply()**                                     | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_retransmit_reply)                      |
| **t_reuse_branch()**                                         | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_reuse_branch)                       |
| **t_save_lumps()**                                           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_save_lumps)                            |
| **t_set_auto_inv_100(0\|1)**                                 | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_auto_inv_100)                      |
| **t_set_disable_6xx(0\|1)**                                  | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_disable_6xx)                       |
| **t_set_disable_failover(0\|1)**                             | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_disable_failover)                  |
| **t_set_disable_internal_reply(0\|1)**                       | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_disable_internal_reply)            |
| **t_set_fr(fr_inv_timeout \[, fr_timeout\])**                | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_fr)                                |
| **t_set_max_lifetime(inv_lifetime, noninv_lifetime)**        | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_max_lifetime)                      |
| **t_set_no_e2e_cancel_reason(0\|1)**                         | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_no_e2e_cancel_reason)              |
| **t_set_retr(retr_t1_interval, retr_t2_interval)**           | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_set_retr)                              |
| **t_suspend()**                                              | *src/modules* | [tmx](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tmx.html#tmx.f.t_suspend)                            |
| **t_uac_send(method, ruri, nexthop, socket, headers, body)** | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_uac_send)                              |
| **t_use_uac_headers()**                                      | *src/modules* | [tm](http://www.kamailio.org/docs/modules/5.0.x/src/modules/tm.html#tm.f.t_use_uac_headers)                       |

## \[U\]

| Name                                     | Module Path   | Module Name                                                                                                   |
|------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------|
| **uac_auth()**                           | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_auth())                       |
| **uac_reg_lookup(uuid, dst)**            | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_reg_lookup(uuid, dst))        |
| **uac_reg_request_to(user, mode)**       | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_reg_request_to(user, mode))   |
| **uac_reg_status(uuid)**                 | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_reg_status(uuid))             |
| **uac_replace_from(display,uri)**        | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_replace_from)                 |
| **uac_replace_from(uri)**                | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_replace_from(uri))            |
| **uac_replace_to(display,uri)**          | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_replace_to(display,uri))      |
| **uac_replace_to(uri)**                  | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_replace_to(uri))              |
| **uac_req_send()**                       | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_req_send())                   |
| **uac_restore_from()**                   | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_restore_from())               |
| **uac_restore_to()**                     | *src/modules* | [uac](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uac.html#uac.f.uac_restore_to())                 |
| **unforce_rtp_proxy()**                  | *src/modules* | [rtpproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/rtpproxy.html#rtpproxy.f.unforce_rtp_proxy) |
| **unlock(key)**                          | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.unlock)            |
| **unlock_extra_attrs (group_id, id)**    | *src/modules* | [uid_avp_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_avp_db.html)                          |
| **unregister(domain)**                   | *src/modules* | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_registrar_scscf.html)        |
| **unregister(domain, uri\[, ruid\])**    | *src/modules* | [registrar](http://www.kamailio.org/docs/modules/5.0.x/src/modules/registrar.html#registrar.f.unregister)     |
| **unset_dlg_profile(profile,\[value\])** | *src/modules* | [dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/dialog.html#dialog.f.unset_dlg_profile)       |
| **unset_dlg_profile(profile,\[value\])** | *src/modules* | [ims_dialog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/ims_dialog.html)                          |
| **update_stat(variable,value)**          | *src/modules* | [statistics](http://www.kamailio.org/docs/modules/5.0.x/src/modules/statistics.html#statistics.f.update_stat) |
| **uri_param(param)**                     | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html)                              |
| **uri_param(param,value)**               | *src/modules* | [siputils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/siputils.html#siputils.f.uri_param_value)   |
| **use_media_proxy()**                    | *src/modules* | [mediaproxy](http://www.kamailio.org/docs/modules/5.0.x/src/modules/mediaproxy.html)                          |
| **use_next_gw()/next_routing()**         | *src/modules* | [drouting](http://www.kamailio.org/docs/modules/5.0.x/src/modules/drouting.html)                              |
| **usleep(time)**                         | *src/modules* | [cfgutils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/cfgutils.html#cfgutils.f.usleep)            |

## \[V\]

| Name                         | Module Path   | Module Name                                                                                                       |
|------------------------------|---------------|-------------------------------------------------------------------------------------------------------------------|
| **validateospheader()**      | *src/modules* | [osp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/osp.html)                                            |
| **verify_destination()**     | *src/modules* | [peering](http://www.kamailio.org/docs/modules/5.0.x/src/modules/peering.html)                                    |
| **verify_source()**          | *src/modules* | [peering](http://www.kamailio.org/docs/modules/5.0.x/src/modules/peering.html)                                    |
| **vrfy_check_callid()**      | *src/modules* | [auth_identity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_identity.html#vrfy_check_callid)      |
| **vrfy_check_certificate()** | *src/modules* | [auth_identity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_identity.html#vrfy_check_certificate) |
| **vrfy_check_date()**        | *src/modules* | [auth_identity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_identity.html#vrfy_check_date)        |
| **vrfy_check_msgvalidity()** | *src/modules* | [auth_identity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_identity.html#vrfy_check_msgvalidity) |
| **vrfy_get_certificate()**   | *src/modules* | [auth_identity](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_identity.html#vrfy_get_certificate)   |

## \[W\]

| Name                                                | Module Path   | Module Name                                                                                                        |
|-----------------------------------------------------|---------------|--------------------------------------------------------------------------------------------------------------------|
| **ws_close(\[status, reason\[, connection_id\]\])** | *src/modules* | [websocket](http://www.kamailio.org/docs/modules/5.0.x/src/modules/websocket.html#websocket.f.ws_close)            |
| **ws_handle_handshake()**                           | *src/modules* | [websocket](http://www.kamailio.org/docs/modules/5.0.x/src/modules/websocket.html#websocket.f.ws_handle_handshake) |
| **www_authenticate(realm, table \[, method\])**     | *src/modules* | [auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_db.html#auth_db.f.www_authenticate)          |
| **www_authorize(realm, table)**                     | *src/modules* | [auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth_db.html#auth_db.f.www_authorize)             |
| **www_authorize(realm, table)**                     | *src/modules* | [uid_auth_db](http://www.kamailio.org/docs/modules/5.0.x/src/modules/uid_auth_db.html#www_authorize)               |
| **www_challenge(realm, flags)**                     | *src/modules* | [auth](http://www.kamailio.org/docs/modules/5.0.x/src/modules/auth.html#auth.f.www_challenge)                      |

## \[X\]

| Name                                              | Module Path   | Module Name                                                                                         |
|---------------------------------------------------|---------------|-----------------------------------------------------------------------------------------------------|
| **xalert(format)**                                | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xalert)              |
| **xavp_params_explode(sparams, xname)**           | *src/modules* | [pv](http://www.kamailio.org/docs/modules/5.0.x/src/modules/pv.html#pv.f.xavp_params_explode)       |
| **xbug(format)**                                  | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xbug)                |
| **xcaps_del(uri, path)**                          | *src/modules* | [xcap_server](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xcap_server.html)              |
| **xcaps_get(uri, path)**                          | *src/modules* | [xcap_server](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xcap_server.html)              |
| **xcaps_put(uri, path, doc)**                     | *src/modules* | [xcap_server](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xcap_server.html)              |
| **xcap_auth_status(watcher_uri, presentity_uri)** | *src/modules* | [utils](http://www.kamailio.org/docs/modules/5.0.x/src/modules/utils.html#utils.f.xcap_auth_status) |
| **xcrit(format)**                                 | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xcrit)               |
| **xdbg(format)**                                  | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xdbg)                |
| **xdbgl(format)**                                 | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xdbgl)               |
| **xerr(format)**                                  | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xerr)                |
| **xhttp_reply(code, reason, ctype, body)**        | *src/modules* | [xhttp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xhttp.html)                          |
| **xinfo(format)**                                 | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xinfo)               |
| **xlfix_attr($attribute)**                        | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#xlfix_attr)                   |
| **xlog(\[ \[facility,\] level,\] format)**        | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xlog)                |
| **xlogl(\[ \[facility,\] level,\] format)**       | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xlogl)               |
| **xlogm(level, format)**                          | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xlogm)               |
| **xlset_attr($attribute, xl_format)**             | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.xlset_attr)             |
| **xlset_destination(xl_format)**                  | *src/modules* | [avp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/avp.html#avp.f.xlset_destination)      |
| **xmlrpc_reply(code, reason)**                    | *src/modules* | [xmlrpc](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xmlrpc.html#xmlrpc.xmlrpc_reply)    |
| **xmpp_send_message()**                           | *src/modules* | [xmpp](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xmpp.html)                            |
| **xnotice(format)**                               | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xnotice)             |
| **xpdbg(format)**                                 | *src/modules* | [xprint](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xprint.html#xprint.xpdbg)           |
| **xplog(level, format)**                          | *src/modules* | [xprint](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xprint.html#xprint.xplog)           |
| **xwarn(format)**                                 | *src/modules* | [xlog](http://www.kamailio.org/docs/modules/5.0.x/src/modules/xlog.html#xlog.f.xwarn)               |

## \[Y\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[Z\]

| Name | Module Path | Module Name |
|------|-------------|-------------|
