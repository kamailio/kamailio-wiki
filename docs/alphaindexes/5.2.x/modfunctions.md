# Modules Functions

([A](#a)) ([B](#b)) ([C](#c)) ([D](#d)) ([E](#e)) ([F](#f)) ([G](#g))
([H](#h)) ([I](#i)) ([J](#j)) ([K](#k)) ([L](#l)) ([M](#m)) ([N](#n))
([O](#o)) ([P](#p)) ([Q](#q)) ([R](#r)) ([S](#s)) ([T](#t)) ([U](#u))
([V](#v)) ([W](#w)) ([X](#x)) ([Y](#y)) ([Z](#z))

## \[A\]

| Name                                                                | Module Path | Module Name                                                                                                                 |
|---------------------------------------------------------------------|-------------|-----------------------------------------------------------------------------------------------------------------------------|
| **abort()**                                                         | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.abort)                               |
| **acc_db_request(comment, table)**                                  | *modules*   | [acc](http://www.kamailio.org/docs/modules/5.2.x/modules/acc.html#acc.f.acc_db_request)                                     |
| **acc_diam_request(comment)**                                       | *modules*   | [acc](http://www.kamailio.org/docs/modules/5.2.x/modules/acc.html#acc.f.acc_diam_request)                                   |
| **acc_diam_request(comment)**                                       | *modules*   | [acc_diameter](http://www.kamailio.org/docs/modules/5.2.x/modules/acc_diameter.html#acc_diameter.f.acc_diam_request)        |
| **acc_log_request(comment)**                                        | *modules*   | [acc](http://www.kamailio.org/docs/modules/5.2.x/modules/acc.html#acc.f.acc_log_request)                                    |
| **acc_rad_request(comment)**                                        | *modules*   | [acc_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/acc_radius.html#acc_radius.f.acc_rad_request)               |
| **acc_request(comment, table)**                                     | *modules*   | [acc](http://www.kamailio.org/docs/modules/5.2.x/modules/acc.html#acc.f.acc_request)                                        |
| **add_contact_alias(\[ip_addr, port, proto\])**                     | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.add_contact_alias)                |
| **add_diversion(reason \[, uri\])**                                 | *modules*   | [diversion](http://www.kamailio.org/docs/modules/5.2.x/modules/diversion.html#diversion.f.add_diversion)                    |
| **add_path()**                                                      | *modules*   | [path](http://www.kamailio.org/docs/modules/5.2.x/modules/path.html#path.f.add_path)                                        |
| **add_path(user)**                                                  | *modules*   | [path](http://www.kamailio.org/docs/modules/5.2.x/modules/path.html#path.f.add_path_u)                                      |
| **add_path(user, parameters)**                                      | *modules*   | [path](http://www.kamailio.org/docs/modules/5.2.x/modules/path.html#path.f.add_path_up)                                     |
| **add_path_received()**                                             | *modules*   | [path](http://www.kamailio.org/docs/modules/5.2.x/modules/path.html#path.f.add_path_rcv)                                    |
| **add_path_received(user)**                                         | *modules*   | [path](http://www.kamailio.org/docs/modules/5.2.x/modules/path.html#path.f.add_path_rcv_u)                                  |
| **add_path_received(user, parameters)**                             | *modules*   | [path](http://www.kamailio.org/docs/modules/5.2.x/modules/path.html#path.f.add_path_rcv_up)                                 |
| **add_rcv_param(\[flag\]),**                                        | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.add_rcv_param)                    |
| **add_rr_param(param)**                                             | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.add_rr_param)                                          |
| **add_sock_hdr(hdr_name)**                                          | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.add_sock_hdr)                     |
| **add_uri_param(param)**                                            | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.add_uri_param)                       |
| **alias_db_find( table_name , input, output \[,flags\] )**          | *modules*   | [alias_db](http://www.kamailio.org/docs/modules/5.2.x/modules/alias_db.html#alias_db.p.alias_db_find)                       |
| **alias_db_lookup(table_name \[,flags\])**                          | *modules*   | [alias_db](http://www.kamailio.org/docs/modules/5.2.x/modules/alias_db.html#alias_db.f.alias_db_lookup)                     |
| **allow_address(group_id, ip_addr_pvar, port_pvar)**                | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_address)              |
| **allow_address_group(addr, port)**                                 | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_address_group)        |
| **allow_register(allow_file, deny_file)**                           | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_register_fileargs)    |
| **allow_register(basename)**                                        | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_register)             |
| **allow_routing()**                                                 | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_routing)              |
| **allow_routing(allow_file,deny_file)**                             | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_routing_fileargs)     |
| **allow_routing(basename)**                                         | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_routing_basename)     |
| **allow_source_address(\[group_id\])**                              | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_source_address)       |
| **allow_source_address_group()**                                    | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_source_address_group) |
| **allow_trusted(\[src_ip_pvar, proto_pvar, furi_pvar\])**           | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_trusted)              |
| **allow_uri(basename, pvar)**                                       | *modules*   | [permissions](http://www.kamailio.org/docs/modules/5.2.x/modules/permissions.html#permissions.f.allow_uri)                  |
| **append_attr_hf(header_name, $avp_name)**                          | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.append_attr_hf_2)                                   |
| **append_attr_hf(name)**                                            | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.append_attr_hf_1)                                   |
| **append_body_part(txt,content_type\[, content_disposition\])**     | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.append_body_part)                       |
| **append_body_part_hex(txt,content_type\[, content_disposition\])** | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.append_body_part_hex)                   |
| **append_branch(\[ uri, \[ q \] \])**                               | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.append_branch)                                |
| **append_hf(txt\[, hdr\])**                                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.append_hf)                              |
| **append_hf_value(hf, hvalue)**                                     | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.append_hf_value)                     |
| **append_rpid_hf()**                                                | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.append_rpid_hf)                      |
| **append_rpid_hf(prefix, suffix)**                                  | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.append_rpid_hf_params)               |
| **append_time()**                                                   | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.append_time)                            |
| **append_time_to_request()**                                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.append_time_to_request)                 |
| **append_to_reply(txt)**                                            | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.append_to_reply)                        |
| **append_urihf(prefix, suffix)**                                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.append_urihf)                           |
| **assign_hf_value(hf, hvalue)**                                     | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.assign_hf_value)                     |
| **assign_hf_value2(hf, hvalue)**                                    | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.assign_hf_value2)                    |
| **assign_server_unreg(aysnc_reply_route, domain, direction)**       | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                          |
| **async_route(routename, seconds)**                                 | *modules*   | [async](http://www.kamailio.org/docs/modules/5.2.x/modules/async.html#async.f.async_route)                                  |
| **async_sleep(seconds)**                                            | *modules*   | [async](http://www.kamailio.org/docs/modules/5.2.x/modules/async.html#async.f.async_sleep)                                  |
| **async_task_route(routename)**                                     | *modules*   | [async](http://www.kamailio.org/docs/modules/5.2.x/modules/async.html#async.f.async_task_route)                             |
| **attr2uri($attribute\[,uri-part\])**                               | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.attr2uri)                                           |
| **attr_destination($avp_name)**                                     | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.attr_destination)                                   |
| **attr_equals(attribute, value)**                                   | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.attr_equals)                                        |
| **attr_equals_xl(attribute, xl_format)**                            | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.attr_equals_xl)                                     |
| **attr_exists(attribute)**                                          | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.attr_exists)                                        |
| **attr_to_reply(header_name, $avp_name)**                           | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.attr_to_reply_2)                                    |
| **attr_to_reply(name)**                                             | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.attr_to_reply_1)                                    |
| **autheph_authenticate(username, password)**                        | *modules*   | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_ephemeral.html#auth_eph.f.autheph_authenticate)    |
| **autheph_check(realm)**                                            | *modules*   | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check)           |
| **autheph_check_from(\[username\])**                                | *modules*   | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_from)      |
| **autheph_check_timestamp(username)**                               | *modules*   | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_timestamp) |
| **autheph_check_to(\[username\])**                                  | *modules*   | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_to)        |
| **autheph_proxy(realm)**                                            | *modules*   | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_ephemeral.html#auth_eph.f.autheph_proxy)           |
| **autheph_www(realm\[, method\])**                                  | *modules*   | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_ephemeral.html#auth_eph.f.autheph_www)             |
| **auth_add_identity()**                                             | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_identity.html)                                      |
| **auth_challenge(realm, flags)**                                    | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.auth_challenge)                                  |
| **auth_check(realm, table, flags)**                                 | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_db.html#auth_db.f.auth_check)                             |
| **auth_date_proc()**                                                | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_identity.html)                                      |
| **auth_get_www_authenticate(realm, flags, pvdest)**                 | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.auth_get_www_authenticate)                       |
| **auth_xkeys_add(hdr, kid, alg, data)**                             | *modules*   | [auth_xkeys](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_add)                |
| **auth_xkeys_check(hdr, kid, alg, data)**                           | *modules*   | [auth_xkeys](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_check)              |
| **avp_check(name,op_value)**                                        | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_check)                                 |
| **avp_copy(old_name,new_name)**                                     | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_copy)                                  |
| **avp_db_delete(source,name)**                                      | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_db_delete)                             |
| **avp_db_load(source,name)**                                        | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_db_load)                               |
| **avp_db_query(query\[,dest\])**                                    | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_db_query)                              |
| **avp_db_store(source,name)**                                       | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_db_store)                              |
| **avp_delete(name)**                                                | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_delete)                                |
| **avp_op(name,op_value)**                                           | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_op)                                    |
| **avp_print()**                                                     | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_print)                                 |
| **avp_printf(dest, format)**                                        | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_printf)                                |
| **avp_pushto(destination,name)**                                    | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_pushto)                                |
| **avp_subst(avps, subst)**                                          | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.avp_subst)                                 |

## \[B\]

| Name                                 | Module Path | Module Name                                                                                               |
|--------------------------------------|-------------|-----------------------------------------------------------------------------------------------------------|
| **bla_handle_notify**                | *modules*   | [pua_bla](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_bla.html)                                |
| **bla_set_flag**                     | *modules*   | [pua_bla](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_bla.html)                                |
| **block_dtmf(\[flags\])**            | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.block_dtmf)     |
| **block_media(\[flags\])**           | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.block_media)    |
| **blst_add(\[timeout\])**            | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_add)                             |
| **blst_add_retry_after(min, max)**   | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_add_retry_after)                 |
| **blst_clear_ignore(\[flags\])**     | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_clear_ignore)                    |
| **blst_del()**                       | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_del)                             |
| **blst_is_blacklisted()**            | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_is_blacklisted)                  |
| **blst_rpl_clear_ignore(\[flags\])** | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_rpl_clear_ignore)                |
| **blst_rpl_set_ignore(\[flags\])**   | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_rpl_set_ignore)                  |
| **blst_set_ignore(\[flags\])**       | *modules*   | [blst](http://www.kamailio.org/docs/modules/5.2.x/modules/blst.html#blst_set_ignore)                      |
| **bm_log_timer(name)**               | *modules*   | [benchmark](http://www.kamailio.org/docs/modules/5.2.x/modules/benchmark.html#benchmark.f.bm_log_timer)   |
| **bm_start_timer(name)**             | *modules*   | [benchmark](http://www.kamailio.org/docs/modules/5.2.x/modules/benchmark.html#benchmark.f.bm_start_timer) |

## \[C\]

| Name                                                                                          | Module Path | Module Name                                                                                                                 |
|-----------------------------------------------------------------------------------------------|-------------|-----------------------------------------------------------------------------------------------------------------------------|
| **call_control()**                                                                            | *modules*   | [call_control](http://www.kamailio.org/docs/modules/5.2.x/modules/call_control.html#call_control.f.call_control)            |
| **call_obj_free(object_number)**                                                              | *modules*   | [call_obj](http://www.kamailio.org/docs/modules/5.2.x/modules/call_obj.html#call_obj.f.call_obj_free)                       |
| **call_obj_get(reply_number)**                                                                | *modules*   | [call_obj](http://www.kamailio.org/docs/modules/5.2.x/modules/call_obj.html#call_obj.f.call_obj_get)                        |
| **can_publish_reg(domain)**                                                                   | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                          |
| **can_subscribe_to_reg(domain)**                                                              | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                          |
| **cass_insert(keyspace, column_family, key, column, value)**                                  | *modules*   | [ndb_cassandra](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_cassandra.html)                                      |
| **cass_retrieve(keyspace, column_family, key, column, value)**                                | *modules*   | [ndb_cassandra](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_cassandra.html)                                      |
| **cdp_check_peer(fqdn)**                                                                      | *modules*   | [cdp](http://www.kamailio.org/docs/modules/5.2.x/modules/cdp.html#cdp.f.cdp_check_peer)                                     |
| **cdp_has_app(\[vendorid, \]application)**                                                    | *modules*   | [cdp](http://www.kamailio.org/docs/modules/5.2.x/modules/cdp.html#cdp.f.cdp_has_app)                                        |
| **change_reply_status(code, reason)**                                                         | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.change_reply_status)                 |
| **checkcallingtranslation()**                                                                 | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                                          |
| **checkospheader()**                                                                          | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                                          |
| **checkosproute()**                                                                           | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                                          |
| **check_blacklist (\[string table\])**                                                        | *modules*   | [userblacklist](http://www.kamailio.org/docs/modules/5.2.x/modules/userblacklist.html#userblacklist.f.check_blacklist)      |
| **check_from()**                                                                              | *modules*   | [uid_uri_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_uri_db.html#check_from)                                 |
| **check_from()**                                                                              | *modules*   | [uri_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uri_db.html#uri_db.f.check_from)                                |
| **check_route_exists(route)**                                                                 | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.check_route_exists)                  |
| **check_route_param(re)**                                                                     | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.check_route_param)                                     |
| **check_to()**                                                                                | *modules*   | [uid_uri_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_uri_db.html#check_to)                                   |
| **check_to()**                                                                                | *modules*   | [uri_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uri_db.html#uri_db.f.check_to)                                  |
| **check_uri(uri)**                                                                            | *modules*   | [uri_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uri_db.html#uri_db.f.check_uri)                                 |
| **check_user_blacklist (string user, string domain, string number, string table)**            | *modules*   | [userblacklist](http://www.kamailio.org/docs/modules/5.2.x/modules/userblacklist.html#userblacklist.f.check_user_blacklist) |
| **check_user_whitelist (string user, string domain, string number, string table)**            | *modules*   | [userblacklist](http://www.kamailio.org/docs/modules/5.2.x/modules/userblacklist.html#userblacklist.f.check_user_whitelist) |
| **check_whitelist (string table)**                                                            | *modules*   | [userblacklist](http://www.kamailio.org/docs/modules/5.2.x/modules/userblacklist.html#userblacklist.f.check_whitelist)      |
| **cmp_aor(str1, str2)**                                                                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.cmp_aor)                             |
| **cmp_istr(str1, str2)**                                                                      | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.cmp_istr)                               |
| **cmp_str(str1, str2)**                                                                       | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.cmp_str)                                |
| **cmp_uri(str1, str2)**                                                                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.cmp_uri)                             |
| **cnt_add(\[group.\]name, number)**                                                           | *modules*   | [counters](http://www.kamailio.org/docs/modules/5.2.x/modules/counters.html#counters.f.cnt_add)                             |
| **cnt_inc(\[group.\]name)**                                                                   | *modules*   | [counters](http://www.kamailio.org/docs/modules/5.2.x/modules/counters.html#counters.f.cnt_inc)                             |
| **cnt_reset(\[group.\]name)**                                                                 | *modules*   | [counters](http://www.kamailio.org/docs/modules/5.2.x/modules/counters.html#counters.f.cnt_reset)                           |
| **cnxcc_set_max_channel(customer, maxchan)**                                                  | *modules*   | [cnxcc](http://www.kamailio.org/docs/modules/5.2.x/modules/cnxcc.html#cnxcc.f.set_max_channel)                              |
| **cnxcc_set_max_credit(customer, maxcredit, cps, ipulse, fpulse)**                            | *modules*   | [cnxcc](http://www.kamailio.org/docs/modules/5.2.x/modules/cnxcc.html#cnxcc.f.set_max_credit)                               |
| **cnxcc_set_max_time(customer, maxtime)**                                                     | *modules*   | [cnxcc](http://www.kamailio.org/docs/modules/5.2.x/modules/cnxcc.html#cnxcc.f.set_max_time)                                 |
| **cnxcc_terminate_all(customer)**                                                             | *modules*   | [cnxcc](http://www.kamailio.org/docs/modules/5.2.x/modules/cnxcc.html#cnxcc.f.terminate_all)                                |
| **cnxcc_update_max_time(customer, maxtime)**                                                  | *modules*   | [cnxcc](http://www.kamailio.org/docs/modules/5.2.x/modules/cnxcc.html#cnxcc.f.update_max_time)                              |
| **Common requirements**                                                                       | *modules*   | [app_java](http://www.kamailio.org/docs/modules/5.2.x/modules/app_java.html)                                                |
| **compare_ips (ip1, ip2)**                                                                    | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.compare_ips)                                  |
| **compare_pure_ips (ip1, ip2)**                                                               | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.compare_pure_ips)                             |
| **consume_credentials()**                                                                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.consume_credentials)                             |
| **core_hash(string1, string2, size)**                                                         | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.core_hash)                           |
| **cpl_process_register()**                                                                    | *modules*   | [cplc](http://www.kamailio.org/docs/modules/5.2.x/modules/cplc.html#cplc.f.process_register)                                |
| **cpl_process_register_norpl()**                                                              | *modules*   | [cplc](http://www.kamailio.org/docs/modules/5.2.x/modules/cplc.html#cplc.p.process_register_norpl)                          |
| **cpl_run_script(type,mode, \[uri\])**                                                        | *modules*   | [cplc](http://www.kamailio.org/docs/modules/5.2.x/modules/cplc.html#cplc.f.cpl_run_script)                                  |
| **crypto_aes_decrypt(text, key, res)**                                                        | *modules*   | [crypto](http://www.kamailio.org/docs/modules/5.2.x/modules/crypto.html#async.f.crypto_aes_decrypt)                         |
| **crypto_aes_encrypt(text, key, res)**                                                        | *modules*   | [crypto](http://www.kamailio.org/docs/modules/5.2.x/modules/crypto.html#async.f.crypto_aes_encrypt)                         |
| **cr_next_domain(carrier, domain, prefix_matching, host, reply_code, dstavp)**                | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/5.2.x/modules/carrierroute.html)                                        |
| **cr_nofallback_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/5.2.x/modules/carrierroute.html)                                        |
| **cr_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)**            | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/5.2.x/modules/carrierroute.html)                                        |
| **cr_user_carrier(user, domain, dstavp)**                                                     | *modules*   | [carrierroute](http://www.kamailio.org/docs/modules/5.2.x/modules/carrierroute.html)                                        |

## \[D\]

| Name                                                        | Module Path | Module Name                                                                                                      |
|-------------------------------------------------------------|-------------|------------------------------------------------------------------------------------------------------------------|
| **dbg_breakpoint(mode)**                                    | *modules*   | [debugger](http://www.kamailio.org/docs/modules/5.2.x/modules/debugger.html#dbg.f.db_breakpoint)                 |
| **dbg_pv_dump(\[mask\] \[, level\])**                       | *modules*   | [debugger](http://www.kamailio.org/docs/modules/5.2.x/modules/debugger.html#dbg.f.dbg_pv_dump)                   |
| **dbg_sip_msg(\[log_level\], \[facility\])**                | *modules*   | [debugger](http://www.kamailio.org/docs/modules/5.2.x/modules/debugger.html#dbg.f.dbg_sip_msg)                   |
| **decode_contact()**                                        | *modules*   | [mangler](http://www.kamailio.org/docs/modules/5.2.x/modules/mangler.html#mangler.f.decode_contact)              |
| **decode_contact()**                                        | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.decode_contact)           |
| **decode_contact_header()**                                 | *modules*   | [mangler](http://www.kamailio.org/docs/modules/5.2.x/modules/mangler.html#mangler.f.decode_contact_header)       |
| **decode_contact_header()**                                 | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.decode_contact_header)    |
| **defunct_gw(period)**                                      | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.defunct_gw)                              |
| **del_attr($avp_name)**                                     | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.del_attr)                                |
| **detailed_ipv4_type (ip, result)**                         | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.detailed_ipv4_type)                |
| **detailed_ipv6_type (ip, result)**                         | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.detailed_ipv6_type)                |
| **detailed_ip_type (ip, result)**                           | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.detailed_ip_type)                  |
| **diameter_is_user_in(who, group)**                         | *modules*   | [auth_diameter](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_diameter.html)                           |
| **diameter_proxy_authorize(realm)**                         | *modules*   | [auth_diameter](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_diameter.html)                           |
| **diameter_www_authorize(realm)**                           | *modules*   | [auth_diameter](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_diameter.html)                           |
| **dispatch_rpc()**                                          | *modules*   | [xmlrpc](http://www.kamailio.org/docs/modules/5.2.x/modules/xmlrpc.html#xmlrpc.dispatch_rpc)                     |
| **dispatch_xhttp_pi()**                                     | *modules*   | [xhttp_pi](http://www.kamailio.org/docs/modules/5.2.x/modules/xhttp_pi.html)                                     |
| **dispatch_xhttp_rpc()**                                    | *modules*   | [xhttp_rpc](http://www.kamailio.org/docs/modules/5.2.x/modules/xhttp_rpc.html)                                   |
| **dlg_bridge(from, to, op)**                                | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_bridge)                     |
| **dlg_bridge(from, to, op)**                                | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dlg_bye(side)**                                           | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_bye)                        |
| **dlg_db_load_callid(cival)**                               | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_db_load_callid)             |
| **dlg_db_load_extra()**                                     | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_db_load_extra)              |
| **dlg_get(callid, ftag, ttag)**                             | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_get)                        |
| **dlg_get(callid, ftag, ttag)**                             | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dlg_isflagset(flag)**                                     | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_isflagset)                  |
| **dlg_isflagset(flag)**                                     | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dlg_manage()**                                            | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_manage)                     |
| **dlg_manage()**                                            | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dlg_refer(side, address)**                                | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_refer)                      |
| **dlg_refer(side, address)**                                | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dlg_remote_profile(cmd, profile, value, uid, expires)**   | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_remote_profile)             |
| **dlg_resetflag(flag)**                                     | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_resetflag)                  |
| **dlg_resetflag(flag)**                                     | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dlg_setflag(flag)**                                       | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_setflag)                    |
| **dlg_setflag(flag)**                                       | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dlg_set_property(attr)**                                  | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_set_property)               |
| **dlg_set_ruri()**                                          | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_set_ruri)                   |
| **dlg_set_timeout(timeout \[, h_entry, h_id\])**            | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_set_timeout)                |
| **dlg_set_timeout_by_profile(profile, \[value\], timeout)** | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.dlg_set_timeout_by_profile)     |
| **dlg_terminate**                                           | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                 |
| **dmq_bcast_message(peer, body, content_type)**             | *modules*   | [dmq](http://www.kamailio.org/docs/modules/5.2.x/modules/dmq.html#dmq.f.dmq_bcast_message)                       |
| **dmq_handle_message(\[continue\])**                        | *modules*   | [dmq](http://www.kamailio.org/docs/modules/5.2.x/modules/dmq.html#dmq.f.dmq_handle_message)                      |
| **dmq_is_from_node()**                                      | *modules*   | [dmq](http://www.kamailio.org/docs/modules/5.2.x/modules/dmq.html#dmq.f.dmq_is_from_node)                        |
| **dmq_send_message(peer, node, body, content_type)**        | *modules*   | [dmq](http://www.kamailio.org/docs/modules/5.2.x/modules/dmq.html#dmq.f.dmq_send_message)                        |
| **dmq_t\_replicate(\[skip_loop_test\])**                    | *modules*   | [dmq](http://www.kamailio.org/docs/modules/5.2.x/modules/dmq.html#dmq.f.dmq_t_replicate)                         |
| **dns_int_match_ip(hostname, ipaddr)**                      | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.dns_int_match_ip)                  |
| **dns_query(hostname, pvid)**                               | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.dns_query)                         |
| **dns_sys_match_ip(hostname, ipaddr)**                      | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.dns_sys_match_ip)                  |
| **does_uri_exist()**                                        | *modules*   | [uid_uri_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_uri_db.html#does_uri_exist)                  |
| **does_uri_exist()**                                        | *modules*   | [uri_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uri_db.html#uri_db.f.does_uri_exist)                 |
| **do_routing(\[groupID\])**                                 | *modules*   | [drouting](http://www.kamailio.org/docs/modules/5.2.x/modules/drouting.html#drouting.f.do_routing)               |
| **dp_apply_policy()**                                       | *modules*   | [domainpolicy](http://www.kamailio.org/docs/modules/5.2.x/modules/domainpolicy.html#dompolicy.f.dp_apply_policy) |
| **dp_can_connect()**                                        | *modules*   | [domainpolicy](http://www.kamailio.org/docs/modules/5.2.x/modules/domainpolicy.html#dompolicy.f.dp_can_connect)  |
| **dp_match(dpid, inval)**                                   | *modules*   | [dialplan](http://www.kamailio.org/docs/modules/5.2.x/modules/dialplan.html#dialplan.p.dp_match)                 |
| **dp_reload()**                                             | *modules*   | [dialplan](http://www.kamailio.org/docs/modules/5.2.x/modules/dialplan.html#dispatcher.f.dp_reload)              |
| **dp_replace(dpid, inval, outvar)**                         | *modules*   | [dialplan](http://www.kamailio.org/docs/modules/5.2.x/modules/dialplan.html#dialplan.p.dp_replace)               |
| **dp_translate(id, \[src\[/dest\]\])**                      | *modules*   | [dialplan](http://www.kamailio.org/docs/modules/5.2.x/modules/dialplan.html#dialplan.p.dp_translate)             |
| **ds_is_from_list(\[groupid \[, mode \[, uri\] \] \])**     | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_is_from_list)    |
| **ds_list_exists(groupid)**                                 | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_list_exists)     |
| **ds_load_unset()**                                         | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html)                                 |
| **ds_load_update()**                                        | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_load_update)     |
| **ds_mark_dst(\[state\])**                                  | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_mark_dst)        |
| **ds_next_domain()**                                        | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html)                                 |
| **ds_next_dst()**                                           | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html)                                 |
| **ds_reload()**                                             | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_reload)          |
| **ds_select(set, alg \[, limit\])**                         | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_select)          |
| **ds_select_domain(set, alg\[, limit\])**                   | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_select_domain)   |
| **ds_select_dst(set, alg\[, limit\])**                      | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_select_dst)      |
| **ds_select_routes(rules, mode \[, limit\])**               | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_select_routes)   |
| **ds_set_domain()**                                         | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_set_domain)      |
| **ds_set_dst()**                                            | *modules*   | [dispatcher](http://www.kamailio.org/docs/modules/5.2.x/modules/dispatcher.html#dispatcher.f.ds_set_dst)         |
| **dump_attrs()**                                            | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.dump_attrs)                              |

## \[E\]

| Name                                                   | Module Path | Module Name                                                                                              |
|--------------------------------------------------------|-------------|----------------------------------------------------------------------------------------------------------|
| **encode_contact(encoding_prefix)**                    | *modules*   | [mangler](http://www.kamailio.org/docs/modules/5.2.x/modules/mangler.html#mangler.f.encode_contact)      |
| **encode_contact(encoding_prefix,hostpart)**           | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.encode_contact)   |
| **end_media_session()**                                | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/mediaproxy.html#mediaproxy.p.end)        |
| **engage_media_proxy()**                               | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/mediaproxy.html#mediaproxy.f.engage)     |
| **enum_pv_query("pvar" \[,"suffix" \[,"service"\]\])** | *modules*   | [enum](http://www.kamailio.org/docs/modules/5.2.x/modules/enum.html#enum.f.enum_pv_query)                |
| **enum_query(\["suffix" \[,"service"\]\])**            | *modules*   | [enum](http://www.kamailio.org/docs/modules/5.2.x/modules/enum.html#enum.f.enum_query)                   |
| **erl_reg_send(server,msg)**                           | *modules*   | [erlang](http://www.kamailio.org/docs/modules/5.2.x/modules/erlang.html#erlang.f.erl_reg_send)           |
| **erl_reply(msg)**                                     | *modules*   | [erlang](http://www.kamailio.org/docs/modules/5.2.x/modules/erlang.html#erlang.f.erl_reply)              |
| **erl_rpc(mod,fun,args,reply)**                        | *modules*   | [erlang](http://www.kamailio.org/docs/modules/5.2.x/modules/erlang.html#erlang.f.erl_rpc)                |
| **erl_send(pid,msg)**                                  | *modules*   | [erlang](http://www.kamailio.org/docs/modules/5.2.x/modules/erlang.html#erlang.f.erl_send)               |
| **evapi_async_multicast(evdata, etag)**                | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_async_multicast)     |
| **evapi_async_relay(evdata)**                          | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_async_relay)         |
| **evapi_async_unicast(evdata, etag)**                  | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_async_unicast)       |
| **evapi_close()**                                      | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_close)               |
| **evapi_multicast(evdata, etag)**                      | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_multicast)           |
| **evapi_relay(evdata)**                                | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_relay)               |
| **evapi_set_tag(tname)**                               | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_set_tag)             |
| **evapi_unicast(evdata, etag)**                        | *modules*   | [evapi](http://www.kamailio.org/docs/modules/5.2.x/modules/evapi.html#evapi.f.evapi_unicast)             |
| **exclude_hf_value(hf, hvalue)**                       | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.exclude_hf_value) |
| **exec_avp(command \[, avplist\])**                    | *modules*   | [exec](http://www.kamailio.org/docs/modules/5.2.x/modules/exec.html#exec.f.exec_avp)                     |
| **exec_dset(command)**                                 | *modules*   | [exec](http://www.kamailio.org/docs/modules/5.2.x/modules/exec.html#exec.f.exec_dset)                    |
| **exec_msg(command)**                                  | *modules*   | [exec](http://www.kamailio.org/docs/modules/5.2.x/modules/exec.html#exec.f.exec_msg)                     |

## \[F\]

| Name                                      | Module Path | Module Name                                                                                                   |
|-------------------------------------------|-------------|---------------------------------------------------------------------------------------------------------------|
| **file_read(fpath, var)**                 | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.file_read)                      |
| **file_write(fpath, content)**            | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.file_write)                     |
| **filter_body(content_type)**             | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.filter_body)              |
| **fix_nated_contact()**                   | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.fix_nated_contact)  |
| **fix_nated_register()**                  | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.fix_nated_register) |
| **fix_nated_sdp(flags \[, ip_address\])** | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.fix_nated_sdp)      |
| **flags2attr("$avp")**                    | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.flags2attr)                           |
| **float2int(fval, ival)**                 | *modules*   | [sipcapture](http://www.kamailio.org/docs/modules/5.2.x/modules/sipcapture.html#sipcapture.f.float2int)       |
| **fnmatch(value, expr \[, flags\])**      | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.fnmatch)               |
| **from_any_gw(\[ip_addr, proto\])**       | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.from_any_gw)                          |
| **from_gw(lcr_id\[, ip_addr, proto\])**   | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.from_gw)                              |

## \[G\]

| Name                                         | Module Path | Module Name                                                                                            |
|----------------------------------------------|-------------|--------------------------------------------------------------------------------------------------------|
| **geoip2_match(ipaddr, pvc)**                | *modules*   | [geoip2](http://www.kamailio.org/docs/modules/5.2.x/modules/geoip2.html)                               |
| **geoip_match(ipaddr, pvc)**                 | *modules*   | [geoip](http://www.kamailio.org/docs/modules/5.2.x/modules/geoip.html)                                 |
| **get_body_part(content_type, opv)**         | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.get_body_part)     |
| **get_body_part_raw(content_type, opv)**     | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.get_body_part_raw) |
| **get_profile_size(profile,\[value\],size)** | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.get_profile_size)     |
| **get_profile_size(profile,\[value\],size)** | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                       |
| **get_redirects(max)**                       | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/5.2.x/modules/uac_redirect.html)                   |
| **get_redirects(max,reason)**                | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/5.2.x/modules/uac_redirect.html)                   |
| **get_uri_param(name, var)**                 | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.get_uri_param)  |
| **get_user_group(URI, AVP)**                 | *modules*   | [group](http://www.kamailio.org/docs/modules/5.2.x/modules/group.html#group.f.get_user_group)          |
| **goes_to_gw(\[type\])**                     | *modules*   | [drouting](http://www.kamailio.org/docs/modules/5.2.x/modules/drouting.html)                           |

## \[H\]

| Name                                                                  | Module Path | Module Name                                                                                                                         |
|-----------------------------------------------------------------------|-------------|-------------------------------------------------------------------------------------------------------------------------------------|
| **h350_auth_lookup(auth_username, "username_avp_spec/pwd_avp_spec")** | *modules*   | [h350](http://www.kamailio.org/docs/modules/5.2.x/modules/h350.html)                                                                |
| **h350_result_call_preferences(avp_name_prefix)**                     | *modules*   | [h350](http://www.kamailio.org/docs/modules/5.2.x/modules/h350.html)                                                                |
| **h350_result_service_level(avp_name_prefix)**                        | *modules*   | [h350](http://www.kamailio.org/docs/modules/5.2.x/modules/h350.html)                                                                |
| **h350_sipuri_lookup(sip_uri)**                                       | *modules*   | [h350](http://www.kamailio.org/docs/modules/5.2.x/modules/h350.html)                                                                |
| **handle_publish(\[sender_uri\])**                                    | *modules*   | [presence](http://www.kamailio.org/docs/modules/5.2.x/modules/presence.html#presence.f.handle_publish)                              |
| **handle_ruri_alias()**                                               | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.handle_ruri_alias)                        |
| **handle_subscribe(\[watcher_uri\])**                                 | *modules*   | [presence](http://www.kamailio.org/docs/modules/5.2.x/modules/presence.html#presence.f.handle_subscribe)                            |
| **has_body(), has_body(mime)**                                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.has_body)                                       |
| **has_credentials(realm)**                                            | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.has_credentials)                                         |
| **has_totag()**                                                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.has_totag())                                 |
| **hdr_body2attrs(headername, prefix)**                                | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.hdr_body2attrs)                                             |
| **hdr_body2attrs2(headername, prefix)**                               | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.hdr_body2attrs2)                                            |
| **hf_value_exists(hf, hvalue)**                                       | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.hf_value_exists)                             |
| **hlog(\[correlation_id,\] message)**                                 | *modules*   | [siptrace](http://www.kamailio.org/docs/modules/5.2.x/modules/siptrace.html#siptrace.f.hlog)                                        |
| **http_async_query(url, route_name)**                                 | *modules*   | [http_async_client](http://www.kamailio.org/docs/modules/5.2.x/modules/http_async_client.html#http_async_client.f.http_async_query) |
| **http_client_query(url, \[post-data\], \[hdrs\], result)**           | *modules*   | [http_client](http://www.kamailio.org/docs/modules/5.2.x/modules/http_client.html#http_client.f.http_query)                         |
| **http_connect(connection, url, \[content_type, data,\] result)**     | *modules*   | [http_client](http://www.kamailio.org/docs/modules/5.2.x/modules/http_client.html#http_client.f.http_connect)                       |
| **http_get_redirect(connection, result)**                             | *modules*   | [http_client](http://www.kamailio.org/docs/modules/5.2.x/modules/http_client.html#http_client.f.http_get_redirect)                  |

## \[I\]

| Name                                                                | Module Path | Module Name                                                                                              |
|---------------------------------------------------------------------|-------------|----------------------------------------------------------------------------------------------------------|
| **imc_manager()**                                                   | *modules*   | [imc](http://www.kamailio.org/docs/modules/5.2.x/modules/imc.html)                                       |
| **impu_registered(domain)**                                         | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)       |
| **ims_proxy_authenticate(realm, table)**                            | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_auth.html)                             |
| **ims_proxy_challenge(route_block, realm, table)**                  | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_auth.html)                             |
| **ims_www_authenticate(realm)**                                     | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_auth.html)                             |
| **ims_www_authorize(realm, table)**                                 | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_auth.html)                             |
| **ims_www_challenge(route_block, realm)**                           | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_auth.html)                             |
| **ims_www_challenge(route_block, realm, algorithm)**                | *modules*   | [ims_auth](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_auth.html)                             |
| **inactivate_gw()**                                                 | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.inactivate_gw)                   |
| **include_hf_value(hf, hvalue)**                                    | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.include_hf_value) |
| **insert_attr_hf(header_name, $avp_name)**                          | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.insert_attr_hf_2)                |
| **insert_attr_hf(name)**                                            | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.insert_attr_hf_1)                |
| **insert_hf(txt\[, hdr\])**                                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.insert_hf)           |
| **insert_hf_value(hf, hvalue)**                                     | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.insert_hf_value)  |
| **in_list(subject, list, separator)**                               | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.in_list)             |
| **in_list_prefix(subject, list, separator)**                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.in_list_prefix)      |
| **ipsec_create(domain)**                                            | *modules*   | [ims_ipsec_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_ipsec_pcscf.html)               |
| **ipsec_destroy(domain)**                                           | *modules*   | [ims_ipsec_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_ipsec_pcscf.html)               |
| **ipsec_forward(domain)**                                           | *modules*   | [ims_ipsec_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_ipsec_pcscf.html)               |
| **ip_type (ip)**                                                    | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_ip_type)                |
| **isbflagset(flag \[, branch\])**                                   | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.isbflagset)                      |
| **isc_from_as(direction)**                                          | *modules*   | [ims_isc](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_isc.html)                               |
| **isc_match_filter(direction,domain)**                              | *modules*   | [ims_isc](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_isc.html)                               |
| **isc_match_filter_reg(reg_state,domain)**                          | *modules*   | [ims_isc](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_isc.html)                               |
| **isdsturiset()**                                                   | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.isdsturiset)                     |
| **isRPDATA()**                                                      | *modules*   | [smsops](http://www.kamailio.org/docs/modules/5.2.x/modules/smsops.html#smsops.f.isrpdata)               |
| **issflagset(flag)**                                                | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.issflagset)                      |
| **isup_to_json**                                                    | *modules*   | [ss7ops](http://www.kamailio.org/docs/modules/5.2.x/modules/ss7ops.html#ss7ops.f.isup_to_json)           |
| **isxflagset(flag)**                                                | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.isxflagset)                |
| **is_alphanum(tval)**                                               | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_alphanum)      |
| **is_alphanumex(tval, eset)**                                       | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_alphanumex)    |
| **is_audio_on_hold()**                                              | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.is_audio_on_hold)    |
| **is_avp_set(name)**                                                | *modules*   | [avpops](http://www.kamailio.org/docs/modules/5.2.x/modules/avpops.html#avpops.f.is_avp_set)             |
| **is_direction(dir)**                                               | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.is_direction)                       |
| **is_domain_local(domain)**                                         | *modules*   | [domain](http://www.kamailio.org/docs/modules/5.2.x/modules/domain.html#domain.f.is_domain_local)        |
| **is_e164(pseudo-variable)**                                        | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_e164)          |
| **is_first_hop()**                                                  | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_first_hop)     |
| **is_from_gw(\[ type, \[flag\] \])**                                | *modules*   | [drouting](http://www.kamailio.org/docs/modules/5.2.x/modules/drouting.html#drouting.f.is_from_gw)       |
| **is_from_local()**                                                 | *modules*   | [domain](http://www.kamailio.org/docs/modules/5.2.x/modules/domain.html#domain.f.is_from_local)          |
| **is_from_user_enum()**                                             | *modules*   | [enum](http://www.kamailio.org/docs/modules/5.2.x/modules/enum.html#enum.f.is_from_user_enum)            |
| **is_gflag(flag)**                                                  | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.is_gflag)         |
| **is_gruu(\[uri\])**                                                | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_gruu)          |
| **is_incoming()**                                                   | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.is_incoming)               |
| **is_int(pvar)**                                                    | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.is_int)                             |
| **is_in_profile(profile,\[value\])**                                | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.is_in_profile)          |
| **is_in_profile(profile,\[value\])**                                | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                         |
| **is_in_subnet (ip, subnets_list)**                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_in_subnet)              |
| **is_ip (ip)**                                                      | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_ip)                     |
| **is_ipv4 (ip)**                                                    | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_ipv4)                   |
| **is_ipv6 (ip)**                                                    | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_ipv6)                   |
| **is_ipv6_reference (ip)**                                          | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_ipv6_reference)         |
| **is_ip_rfc1918 (ip)**                                              | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_ip_rfc1918)             |
| **is_known_dlg()**                                                  | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.is_known_dlg)           |
| **is_known_dlg()**                                                  | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                         |
| **is_leap_year(\[year\])**                                          | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/5.2.x/modules/tmrec.html#tmrec.f.is_leap_year)              |
| **is_local(domain)**                                                | *modules*   | [uid_domain](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_domain.html#is_local)                |
| **is_maxfwd_lt(max_value)**                                         | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/5.2.x/modules/maxfwd.html#maxfwd.f.is_maxfwd_lt)           |
| **is_method(name)**                                                 | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.is_method)           |
| **is_myself(uri)**                                                  | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.is_myself)                       |
| **is_numeric(tval)**                                                | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_numeric)       |
| **is_peer_verified()**                                              | *modules*   | [tls](http://www.kamailio.org/docs/modules/5.2.x/modules/tls.html#tls.f.is_peer_verfied)                 |
| **is_present_hf(hf_name)**                                          | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.is_present_hf)       |
| **is_present_hf_re(hf_name_re)**                                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.is_present_hf_re)    |
| **is_privacy(privacy_type)**                                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.is_privacy)          |
| **is_pure_ip (ip)**                                                 | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.is_pur_ip)                 |
| **is_reply()**                                                      | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_reply)         |
| **is_request()**                                                    | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_request)       |
| **is_rfc1918(ip_address)**                                          | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.is_rfc1918)    |
| **is_rpid_user_e164()**                                             | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html)                             |
| **is_subscriber(uri, dbtable, flags)**                              | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_db.html#auth_db.f.is_subscriber)       |
| **is_supported(option)**                                            | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_supported)     |
| **is_tel_number(tval)**                                             | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_tel_number)    |
| **is_ugflag(flag_num)**                                             | *modules*   | [uid_gflags](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_gflags.html#is_ugflag)               |
| **is_uri(pseudo-variable)**                                         | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_uri)           |
| **is_uri_host_local()**                                             | *modules*   | [domain](http://www.kamailio.org/docs/modules/5.2.x/modules/domain.html#domain.f.is_uri_host_local)      |
| **is_uri_user_e164(pseudo-variable)**                               | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_uri_user_e164) |
| **is_user(username)**                                               | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.is_user)          |
| **is_user_in(URI, group)**                                          | *modules*   | [group](http://www.kamailio.org/docs/modules/5.2.x/modules/group.html#group.f.is_user_in)                |
| **i_enum_query(\["suffix" \[,"service"\]\])**                       | *modules*   | [enum](http://www.kamailio.org/docs/modules/5.2.x/modules/enum.html#enum.f.i_enum_query)                 |
| **I_perform_location_information_request(route_block)**             | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_icscf.html)                           |
| **I_perform_user_authorization_request(route_block, capabalities)** | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_icscf.html)                           |
| **I_scscf_drop()**                                                  | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_icscf.html)                           |
| **I_scscf_select(initial)**                                         | *modules*   | [ims_icscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_icscf.html)                           |

## \[J\]

| Name                                                                                     | Module Path | Module Name                                                                                                      |
|------------------------------------------------------------------------------------------|-------------|------------------------------------------------------------------------------------------------------------------|
| **janssonrpc_notification(conn, method, parameters)**                                    | *modules*   | [janssonrpcc](http://www.kamailio.org/docs/modules/5.2.x/modules/janssonrpcc.html)                               |
| **janssonrpc_request(conn, method, params\[, options\]\])**                              | *modules*   | [janssonrpcc](http://www.kamailio.org/docs/modules/5.2.x/modules/janssonrpcc.html)                               |
| **jansson_append(type, key/path, value, result)**                                        | *modules*   | [jansson](http://www.kamailio.org/docs/modules/5.2.x/modules/jansson.html#jansson.f.jansson_append)              |
| **jansson_array_size(key/path, src, dst)**                                               | *modules*   | [jansson](http://www.kamailio.org/docs/modules/5.2.x/modules/jansson.html#jansson.f.jansson_array_size)          |
| **jansson_get(key/path, src, dst)**                                                      | *modules*   | [jansson](http://www.kamailio.org/docs/modules/5.2.x/modules/jansson.html#jansson.f.jansson_get)                 |
| **jansson_get_field(src, field_name, dst)**                                              | *modules*   | [jansson](http://www.kamailio.org/docs/modules/5.2.x/modules/jansson.html#jansson.f.jansson_get_field)           |
| **jansson_set(type, key/path, value, result)**                                           | *modules*   | [jansson](http://www.kamailio.org/docs/modules/5.2.x/modules/jansson.html#jansson.f.jansson_set)                 |
| **java_method_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])**          | *modules*   | [app_java](http://www.kamailio.org/docs/modules/5.2.x/modules/app_java.html#app_java.f.java_method_exec)         |
| **java_staticmethod_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])**    | *modules*   | [app_java](http://www.kamailio.org/docs/modules/5.2.x/modules/app_java.html#app_java.f.java_staticmethod_exec)   |
| **java_s\_method_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])**       | *modules*   | [app_java](http://www.kamailio.org/docs/modules/5.2.x/modules/app_java.html#app_java.f.java_s_method_exec)       |
| **java_s\_staticmethod_exec(method, method_signature, \[param1\[, param2\[, ...\]\]\])** | *modules*   | [app_java](http://www.kamailio.org/docs/modules/5.2.x/modules/app_java.html#app_java.f.java_s_staticmethod_exec) |
| **jsdt_dofile(path)**                                                                    | *modules*   | [app_jsdt](http://www.kamailio.org/docs/modules/5.2.x/modules/app_jsdt.html#app_jsdt.f.jsdt_dofile)              |
| **jsdt_dostring(script)**                                                                | *modules*   | [app_jsdt](http://www.kamailio.org/docs/modules/5.2.x/modules/app_jsdt.html#app_jsdt.f.jsdt_dostring)            |
| **jsdt_run(function, params)**                                                           | *modules*   | [app_jsdt](http://www.kamailio.org/docs/modules/5.2.x/modules/app_jsdt.html#app_jsdt.f.jsdt_run)                 |
| **jsdt_runstring(script)**                                                               | *modules*   | [app_jsdt](http://www.kamailio.org/docs/modules/5.2.x/modules/app_jsdt.html#app_jsdt.f.jsdt_runstring)           |
| **jsonrpc_dispatch()**                                                                   | *modules*   | [jsonrpcs](http://www.kamailio.org/docs/modules/5.2.x/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_dispatch)         |
| **jsonrpc_exec(cmd)**                                                                    | *modules*   | [jsonrpcs](http://www.kamailio.org/docs/modules/5.2.x/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_exec)             |
| **jsonrpc_notification(method, parameters)**                                             | *modules*   | [jsonrpcc](http://www.kamailio.org/docs/modules/5.2.x/modules/jsonrpcc.html)                                     |
| **jsonrpc_request(method, parameters, return_route, error_route, result_var)**           | *modules*   | [jsonrpcc](http://www.kamailio.org/docs/modules/5.2.x/modules/jsonrpcc.html)                                     |
| **json_get_field(json_string, field_name, destination)**                                 | *modules*   | [json](http://www.kamailio.org/docs/modules/5.2.x/modules/json.html#json.f.json_get_field)                       |
| **json_get_string(json_string, field_name, destination)**                                | *modules*   | [json](http://www.kamailio.org/docs/modules/5.2.x/modules/json.html#json.f.json_get_string)                      |

## \[K\]

| Name                                                                  | Module Path | Module Name                                                                                     |
|-----------------------------------------------------------------------|-------------|-------------------------------------------------------------------------------------------------|
| **kazoo_encode(to_encode, target_var)**                               | *modules*   | [kazoo](http://www.kamailio.org/docs/modules/5.2.x/modules/kazoo.html)                          |
| **kazoo_json(json_payload, field, target_var)**                       | *modules*   | [kazoo](http://www.kamailio.org/docs/modules/5.2.x/modules/kazoo.html)                          |
| **kazoo_pua_publish(json_payload)**                                   | *modules*   | [kazoo](http://www.kamailio.org/docs/modules/5.2.x/modules/kazoo.html)                          |
| **kazoo_publish(exchange, routing_key, json_payload)**                | *modules*   | [kazoo](http://www.kamailio.org/docs/modules/5.2.x/modules/kazoo.html)                          |
| **kazoo_query(exchange, routing_key, json_payload \[, target_var\])** | *modules*   | [kazoo](http://www.kamailio.org/docs/modules/5.2.x/modules/kazoo.html)                          |
| **kazoo_subscribe(exchange, exchange_type, queue, routing_key)**      | *modules*   | [kazoo](http://www.kamailio.org/docs/modules/5.2.x/modules/kazoo.html)                          |
| **kazoo_subscribe(json_description)**                                 | *modules*   | [kazoo](http://www.kamailio.org/docs/modules/5.2.x/modules/kazoo.html)                          |
| **keep_hf(\[regexp\])**                                               | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.keep_hf) |
| **km_append_branch(\[uri\])**                                         | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.km_append_branch)       |

## \[L\]

| Name                                                                      | Module Path | Module Name                                                                                                |
|---------------------------------------------------------------------------|-------------|------------------------------------------------------------------------------------------------------------|
| **ldap_filter_url_encode(string, avp_spec)**                              | *modules*   | [ldap](http://www.kamailio.org/docs/modules/5.2.x/modules/ldap.html#ldap-filter-url-encode-fn)             |
| **ldap_result("ldap_attr_name/avp_spec\[/avp_type\]" \[, regex_subst\])** | *modules*   | [ldap](http://www.kamailio.org/docs/modules/5.2.x/modules/ldap.html#ldap-result-fn)                        |
| **ldap_result_check("ldap_attr_name/string_to_match" \[, regex_subst\])** | *modules*   | [ldap](http://www.kamailio.org/docs/modules/5.2.x/modules/ldap.html#ldap-result-check-fn)                  |
| **ldap_result_next()**                                                    | *modules*   | [ldap](http://www.kamailio.org/docs/modules/5.2.x/modules/ldap.html#ldap-result-next-fn)                   |
| **ldap_search(ldap_url)**                                                 | *modules*   | [ldap](http://www.kamailio.org/docs/modules/5.2.x/modules/ldap.html#ldap-search-fn)                        |
| **load_attrs (track, id)**                                                | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_avp_db.html)                           |
| **load_extra_attrs (group_id, id)**                                       | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_avp_db.html)                           |
| **load_gws(lcr_id\[, uri_user\[, caller_uri\]\])**                        | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.load_gws)                          |
| **lock(key)**                                                             | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.lock)               |
| **lock_extra_attrs (group_id, id)**                                       | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_avp_db.html)                           |
| **log_udp(text)**                                                         | *modules*   | [log_custom](http://www.kamailio.org/docs/modules/5.2.x/modules/log_custom.html#log_custom.f.log_udp)      |
| **lookup(domain \[, uri\])**                                              | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.lookup)          |
| **lookup(domain)**                                                        | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)         |
| **lookup_branches(domain)**                                               | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.lookup_branches) |
| **lookup_domain(attr_group, domain)**                                     | *modules*   | [uid_domain](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_domain.html#lookup_domain)             |
| **lookup_domain(domain \[, prefix\])**                                    | *modules*   | [domain](http://www.kamailio.org/docs/modules/5.2.x/modules/domain.html#domain.f.lookup_domain)            |
| **lookup_path_to_contact(uri)**                                           | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)         |
| **loose_route()**                                                         | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.loose_route)                          |
| **lua_dofile(path)**                                                      | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/5.2.x/modules/app_lua.html#app_lua.f.lua_dotfile)           |
| **lua_dostring(script)**                                                  | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/5.2.x/modules/app_lua.html#app_lua.f.lua_dostring)          |
| **lua_run(func \[, params\])**                                            | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/5.2.x/modules/app_lua.html#app_lua.f.lua_run)               |
| **lua_runstring(script)**                                                 | *modules*   | [app_lua](http://www.kamailio.org/docs/modules/5.2.x/modules/app_lua.html#app_lua.f.lua_runstring)         |

## \[M\]

| Name                                                             | Module Path | Module Name                                                                                                         |
|------------------------------------------------------------------|-------------|---------------------------------------------------------------------------------------------------------------------|
| **matrix (string first, string second, string dstavp)**          | *modules*   | [matrix](http://www.kamailio.org/docs/modules/5.2.x/modules/matrix.html#matrix.f.matrix)                            |
| **maxfwd_at_least(max_value)**                                   | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/5.2.x/modules/maxfwd.html#maxfwd.f.maxfwd_at_least)                   |
| **maxfwd_process(max_value)**                                    | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/5.2.x/modules/maxfwd.html#maxfwd.f.maxfwd_process)                    |
| **mf_lowlimit(max_value)**                                       | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/5.2.x/modules/maxfwd.html#maxfwd.f.mf_lowlimit)                       |
| **mf_process_maxfwd_header(max_value)**                          | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/5.2.x/modules/maxfwd.html#maxfwd.f.mf_process_maxfwd_header)          |
| **mohq_count (queue_name, pvar)**                                | *modules*   | [mohqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mohqueue.html#count.func)                             |
| **mohq_process ()**                                              | *modules*   | [mohqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mohqueue.html#proc.func)                              |
| **mohq_retrieve (queue_name, URI)**                              | *modules*   | [mohqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mohqueue.html#retrieve.func)                          |
| **mohq_send (queue_name)**                                       | *modules*   | [mohqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mohqueue.html#send.func)                              |
| **mongodb_cmd(srvname, dbname, cname, command, replyid)**        | *modules*   | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmd)        |
| **mongodb_cmd_simple(srvname, dbname, cname, command, replyid)** | *modules*   | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmd_simple) |
| **mongodb_find(srvname, dbname, cname, command, replyid)**       | *modules*   | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_find)       |
| **mongodb_find_one(srvname, dbname, cname, command, replyid)**   | *modules*   | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_find_one)   |
| **mongodb_free(replyid)**                                        | *modules*   | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_free)       |
| **mongodb_next(replyid)**                                        | *modules*   | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_next)       |
| **mono_exec(path \[, param\])**                                  | *modules*   | [app_mono](http://www.kamailio.org/docs/modules/5.2.x/modules/app_mono.html#app_mono.f.mono_exec)                   |
| **mono_run(\[param\])**                                          | *modules*   | [app_mono](http://www.kamailio.org/docs/modules/5.2.x/modules/app_mono.html#app_mono.mono_run)                      |
| **mq_add(queue, key, value)**                                    | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mqueue.html#mqueue.f.mq_add)                            |
| **mq_fetch(queue)**                                              | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mqueue.html#mqueue.f.mq_fetch)                          |
| **mq_pv_free(queue)**                                            | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mqueue.html#mqueue.f.mq_pv_free)                        |
| **mq_size(queue)**                                               | *modules*   | [mqueue](http://www.kamailio.org/docs/modules/5.2.x/modules/mqueue.html#mqueue.f.mq_size)                           |
| **msg_apply_changes()**                                          | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.msg_apply_changes)           |
| **msg_iflag_is_set(flagname)**                                   | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.msg_iflag_is_set)                     |
| **msg_iflag_reset(flagname)**                                    | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.msg_iflag_reset)                      |
| **msg_iflag_set(flagname)**                                      | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.msg_iflag_set)                        |
| **msrp_cmap_lookup()**                                           | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_cmap_lookup)                        |
| **msrp_cmap_save()**                                             | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_cmap_save)                          |
| **msrp_is_reply()**                                              | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_is_reply)                           |
| **msrp_is_request()**                                            | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_is_request)                         |
| **msrp_relay()**                                                 | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_relay)                              |
| **msrp_relay_flags(flags)**                                      | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_relay_flags)                        |
| **msrp_reply(code, text \[, hdrs\])**                            | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_reply)                              |
| **msrp_reply_flags(flags)**                                      | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_reply_flags)                        |
| **msrp_set_dst(addr, sock)**                                     | *modules*   | [msrp](http://www.kamailio.org/docs/modules/5.2.x/modules/msrp.html#msrp.f.msrp_set_dst)                            |
| **mt_match(mtree, pv, mode)**                                    | *modules*   | [mtree](http://www.kamailio.org/docs/modules/5.2.x/modules/mtree.html)                                              |
| **mt_mem_alloc(size)**                                           | *modules*   | [malloc_test](http://www.kamailio.org/docs/modules/5.2.x/modules/malloc_test.html#malloc_test.mt_mem_alloc)         |
| **mt_mem_free()**                                                | *modules*   | [malloc_test](http://www.kamailio.org/docs/modules/5.2.x/modules/malloc_test.html#malloc_test.mt_mem_free)          |
| **m_dump(\[owner\])**                                            | *modules*   | [msilo](http://www.kamailio.org/docs/modules/5.2.x/modules/msilo.html#msilo.f.m_dump)                               |
| **m_store(\[owner\])**                                           | *modules*   | [msilo](http://www.kamailio.org/docs/modules/5.2.x/modules/msilo.html#msilo.f.m_store)                              |

## \[N\]

| Name                          | Module Path | Module Name                                                                                             |
|-------------------------------|-------------|---------------------------------------------------------------------------------------------------------|
| **naptr_query(domain, pvid)** | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.naptr_query)              |
| **nat_uac_test(flags)**       | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.f.nat_uac_test) |
| **next_gw()**                 | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.next_gw)                        |
| **next_routing()**            | *modules*   | [drouting](http://www.kamailio.org/docs/modules/5.2.x/modules/drouting.html#drouting.f.next_routing)    |
| **not_empty(pvar)**           | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.not_empty)                         |

## \[O\]

| Name                | Module Path | Module Name                                                                                           |
|---------------------|-------------|-------------------------------------------------------------------------------------------------------|
| **options_reply()** | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.options_reply) |

## \[P\]

| Name                                                                | Module Path | Module Name                                                                                                               |
|---------------------------------------------------------------------|-------------|---------------------------------------------------------------------------------------------------------------------------|
| **pcre_match (string, pcre_regex)**                                 | *modules*   | [regex](http://www.kamailio.org/docs/modules/5.2.x/modules/regex.html#regex.f.pcre_match)                                 |
| **pcre_match_group (string \[, group\])**                           | *modules*   | [regex](http://www.kamailio.org/docs/modules/5.2.x/modules/regex.html#regex.f.pcre_match_group)                           |
| **pcscf_follows_service_routes(domain)**                            | *modules*   | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_pcscf.html)                        |
| **pcscf_force_service_routes(domain)**                              | *modules*   | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_pcscf.html)                        |
| **pcscf_is_registered(domain)**                                     | *modules*   | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_pcscf.html)                        |
| **pcscf_save(domain)**                                              | *modules*   | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_pcscf.html)                        |
| **pcscf_save_pending(domain)**                                      | *modules*   | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_pcscf.html)                        |
| **pdb_query (string query, string dstavp)**                         | *modules*   | [pdb](http://www.kamailio.org/docs/modules/5.2.x/modules/pdb.html)                                                        |
| **pd_translate(sdomain, rewrite_mode)**                             | *modules*   | [pdt](http://www.kamailio.org/docs/modules/5.2.x/modules/pdt.html)                                                        |
| **perl_exec(func, \[param\])**                                      | *modules*   | [app_perl](http://www.kamailio.org/docs/modules/5.2.x/modules/app_perl.html#app_perl.f.perl_exec)                         |
| **perl_exec_simple(func, \[param\])**                               | *modules*   | [app_perl](http://www.kamailio.org/docs/modules/5.2.x/modules/app_perl.html#app_perl.f.perl_exec_simple)                  |
| **phonenum_match(num, cnc, pvc)**                                   | *modules*   | [phonenum](http://www.kamailio.org/docs/modules/5.2.x/modules/phonenum.html#phonenum.f.phonenum_match_cn)                 |
| **phonenum_match(num, pvc)**                                        | *modules*   | [phonenum](http://www.kamailio.org/docs/modules/5.2.x/modules/phonenum.html#phonenum.f.phonenum_match)                    |
| **pike_check_req()**                                                | *modules*   | [pike](http://www.kamailio.org/docs/modules/5.2.x/modules/pike.html#pike.f.pike_check_req)                                |
| **pkg_status()**                                                    | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.pkg_status)                        |
| **pkg_summary()**                                                   | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.pkg_summary)                       |
| **pl_check(name \[, algorithm, limit\])**                           | *modules*   | [pipelimit](http://www.kamailio.org/docs/modules/5.2.x/modules/pipelimit.html#pipelimit.f.pl_check)                       |
| **pl_drop(\[ \[min \], max \])**                                    | *modules*   | [pipelimit](http://www.kamailio.org/docs/modules/5.2.x/modules/pipelimit.html#pipelimit.f.pl_drop)                        |
| **prefix2domain()**                                                 | *modules*   | [pdt](http://www.kamailio.org/docs/modules/5.2.x/modules/pdt.html)                                                        |
| **prefix2domain(rewrite_mode)**                                     | *modules*   | [pdt](http://www.kamailio.org/docs/modules/5.2.x/modules/pdt.html)                                                        |
| **prefix2domain(rewrite_mode, multidomain_mode)**                   | *modules*   | [pdt](http://www.kamailio.org/docs/modules/5.2.x/modules/pdt.html)                                                        |
| **prefix_route(\[user\])**                                          | *modules*   | [prefix_route](http://www.kamailio.org/docs/modules/5.2.x/modules/prefix_route.html#prefixroute.prefix_route)             |
| **prepareallosproute()**                                            | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                                        |
| **prepareosproute()**                                               | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                                        |
| **pres_auth_status(watcher_uri, presentity_uri)**                   | *modules*   | [presence](http://www.kamailio.org/docs/modules/5.2.x/modules/presence.html#presence.f.pres_auth_status)                  |
| **pres_check_activities(presentity_uri, activity)**                 | *modules*   | [presence_xml](http://www.kamailio.org/docs/modules/5.2.x/modules/presence_xml.html#presence_xml.f.pres_check_activities) |
| **pres_check_basic(presentity_uri, status)**                        | *modules*   | [presence_xml](http://www.kamailio.org/docs/modules/5.2.x/modules/presence_xml.html#presence_xml.f.pres_check_basic)      |
| **pres_has_subscribers(presentity_uri, event)**                     | *modules*   | [presence](http://www.kamailio.org/docs/modules/5.2.x/modules/presence.html#presence.f.pres_has_subscribers)              |
| **pres_refresh_watchers(uri, event, type\[, file_uri, filename\])** | *modules*   | [presence](http://www.kamailio.org/docs/modules/5.2.x/modules/presence.html#presence.f.pres_refresh_watchers)             |
| **pres_update_watchers(uri, event)**                                | *modules*   | [presence](http://www.kamailio.org/docs/modules/5.2.x/modules/presence.html#presence.f.pres_update_whatchers)             |
| **print(txt)**                                                      | *modules*   | [print](http://www.kamailio.org/docs/modules/5.2.x/modules/print.html#print.print)                                        |
| **print_attr($attribute)**                                          | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.print_aattr)                                      |
| **print_stderr(txt)**                                               | *modules*   | [print_lib](http://www.kamailio.org/docs/modules/5.2.x/modules/print_lib.html#print_lib.print)                            |
| **process_maxfwd(max_value)**                                       | *modules*   | [maxfwd](http://www.kamailio.org/docs/modules/5.2.x/modules/maxfwd.html)                                                  |
| **proxy_authenticate(realm, table)**                                | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_db.html#auth_db.f.proxy_authenticate)                   |
| **proxy_authorize(realm, table)**                                   | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_db.html#auth_db.f.proxy_authorize)                      |
| **proxy_authorize(realm, table)**                                   | *modules*   | [uid_auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_auth_db.html#proxy_authorize)                        |
| **proxy_challenge(realm, flags)**                                   | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.proxy_challenge)                               |
| **pua_json_publish(json_payload)**                                  | *modules*   | [pua_json](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_json.html)                                              |
| **pua_set_publish()**                                               | *modules*   | [pua_usrloc](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_usrloc.html)                                          |
| **pua_update_contact()**                                            | *modules*   | [pua](http://www.kamailio.org/docs/modules/5.2.x/modules/pua.html)                                                        |
| **pua_xmpp_notify()**                                               | *modules*   | [pua_xmpp](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_notify)                   |
| **pua_xmpp_req_winfo(request_uri, expires)**                        | *modules*   | [pua_xmpp](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_req_winfo)                |
| **publish_reg(domain)**                                             | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                        |
| **pv_auth_check(realm, passwd, flags, checks)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.pv_auth_check)                                 |
| **pv_evalx(dst, fmt)**                                              | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.pv_evalx)                                            |
| **pv_isset(pvar)**                                                  | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.pv_isset)                                            |
| **pv_printf(var, str)**                                             | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.pv_printf)                                        |
| **pv_proxy_authenticate(realm, passwd, flags)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.pv_proxy_authenticate)                         |
| **pv_unset(pvar)**                                                  | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.pv_unset)                                            |
| **pv_var_to_xavp(varname, xname)**                                  | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.pv_var_to_xavp)                                      |
| **pv_www_authenticate(realm, passwd, flags \[, method\])**          | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.pv_www_authenticate)                           |
| **pv_xavp_print()**                                                 | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.pv_xavp_print)                                       |
| **pv_xavp_to_var(xname)**                                           | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.pv_xavp_to_var)                                      |
| **python_exec(method \[, args\])**                                  | *modules*   | [app_python](http://www.kamailio.org/docs/modules/5.2.x/modules/app_python.html#app_python.f.python_exec)                 |
| **python_exec(method \[, args\])**                                  | *modules*   | [app_python3](http://www.kamailio.org/docs/modules/5.2.x/modules/app_python3.html#app_python3.f.python_exec)              |

## \[Q\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[R\]

| Name                                                                                              | Module Path | Module Name                                                                                                             |
|---------------------------------------------------------------------------------------------------|-------------|-------------------------------------------------------------------------------------------------------------------------|
| **rabbitmq_publish(exchange, routing_key, content_type, messagebody)**                            | *modules*   | [rabbitmq](http://www.kamailio.org/docs/modules/5.2.x/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publish)                |
| **rabbitmq_publish_consume(exchange, routing_key, content_type, messagebody, reply)**             | *modules*   | [rabbitmq](http://www.kamailio.org/docs/modules/5.2.x/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publish_consume)        |
| **radius_does_uri_exist(\[uri\])**                                                                | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/misc_radius.html#mrad.f.does_uri_exist)                |
| **radius_does_uri_user_exist(\[user\])**                                                          | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/misc_radius.html#mrad.f.does_uri_user_exist)           |
| **radius_is_user_in(user, group)**                                                                | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/misc_radius.html#mrad.f.is_user_in)                    |
| **radius_load_callee_avps(callee)**                                                               | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/misc_radius.html#mrad.f.load_callee_avps)              |
| **radius_load_caller_avps(caller)**                                                               | *modules*   | [misc_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/misc_radius.html#mrad.f.load_caller_avps)              |
| **radius_proxy_authorize(realm \[, uri_user\])**                                                  | *modules*   | [auth_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_radius.html#auth_radius.f.radius_proxy_authorize) |
| **radius_www_authorize(realm \[, uri_user\])**                                                    | *modules*   | [auth_radius](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_radius.html#auth_radius.f.radius_www_authorize)   |
| **rand_event()**                                                                                  | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.rand_event)                      |
| **rand_get_prob()**                                                                               | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.rand_get_prob)                   |
| **rand_reset_prob()**                                                                             | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.rand_reset_prob)                 |
| **rand_set_prob(probability)**                                                                    | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.rand_set_prob)                   |
| **record_route() and record_route(string)**                                                       | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.record_route)                                      |
| **record_route_advertised_address(address)**                                                      | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.record_route_adv_addr)                             |
| **record_route_preset(string \[,string2\])**                                                      | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.record_route_preset)                               |
| **redis_cmd(srvname, command, ..., replyid)**                                                     | *modules*   | [ndb_redis](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_redis.html#ndb_redis.f.redis_cmd)                    |
| **redis_execute(srvname)**                                                                        | *modules*   | [ndb_redis](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_redis.html#ndb_redis.f.redis_execute)                |
| **redis_free(replyid)**                                                                           | *modules*   | [ndb_redis](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_redis.html#ndb_redis.f.redis_free)                   |
| **redis_pipe_cmd(srvname, command, ..., replyid)**                                                | *modules*   | [ndb_redis](http://www.kamailio.org/docs/modules/5.2.x/modules/ndb_redis.html#ndb_redis.f.redis_pipe_cmd)               |
| **reginfo_handle_notify(uldomain)**                                                               | *modules*   | [pua_reginfo](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_reginfo.html#pua_reginfo.f.reginfo_handle_notify)  |
| **reginfo_subscribe(uri\[, expires\])**                                                           | *modules*   | [pua_reginfo](http://www.kamailio.org/docs/modules/5.2.x/modules/pua_reginfo.html)                                      |
| **registered(domain \[, uri \[, match_option \[, match_action\]\]\])**                            | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.registered)                   |
| **reg_fetch_contacts(domain, uri, profile)**                                                      | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                      |
| **reg_fetch_contacts(domain, uri, profile)**                                                      | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.reg_fetch_contacts)           |
| **reg_free_contacts(profile)**                                                                    | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                      |
| **reg_free_contacts(profile)**                                                                    | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.reg_free_contacts)            |
| **remove_body()**                                                                                 | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.remove_body)                     |
| **remove_body_part(content_type)**                                                                | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.remove_body_part)                   |
| **remove_extra_attrs (group_id, id)**                                                             | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_avp_db.html)                                        |
| **remove_hf(hname)**                                                                              | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.remove_hf)                          |
| **remove_hf_exp(expmatch, expskip)**                                                              | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.remove_hf_exp)                      |
| **remove_hf_re(re)**                                                                              | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.remove_hf_re)                       |
| **remove_hf_value(hf_par)**                                                                       | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.remove_hf_value)                 |
| **remove_hf_value2(hf_par)**                                                                      | *modules*   | [textopsx](http://www.kamailio.org/docs/modules/5.2.x/modules/textopsx.html#textopsx.f.remove_hf_value2)                |
| **remove_record_route()**                                                                         | *modules*   | [rr](http://www.kamailio.org/docs/modules/5.2.x/modules/rr.html#rr.f.remove_record_route)                               |
| **replace(re, txt)**                                                                              | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace)                            |
| **replace_all(re, txt)**                                                                          | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_all)                        |
| **replace_attr_hf(header_name, $avp_name)**                                                       | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.replace_attr_hf_2)                              |
| **replace_attr_hf(name)**                                                                         | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.replace_attr_hf_1)                              |
| **replace_body(re, txt)**                                                                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_body)                       |
| **replace_body_all(re, txt)**                                                                     | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_body_all)                   |
| **replace_body_atonce(re, txt)**                                                                  | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_body_atonce)                |
| **replace_body_str(match, repl, mode)**                                                           | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_body_str)                   |
| **replace_hdrs(re, txt)**                                                                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_hdrs)                       |
| **replace_hdrs_str(match, repl, mode)**                                                           | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_hdrs_str)                   |
| **replace_str(match, repl, mode)**                                                                | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.replace_str)                        |
| **reportospusage()**                                                                              | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                                      |
| **report_capture(\[table\], \[cid\], \[data\])**                                                  | *modules*   | [sipcapture](http://www.kamailio.org/docs/modules/5.2.x/modules/sipcapture.html#sipcapture.f.report_capture)            |
| **requestosprouting()**                                                                           | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                                      |
| **resetbflag(flag \[, branch\])**                                                                 | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.resetbflag)                                     |
| **resetdebug()**                                                                                  | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.resetdebug)                                     |
| **resetdsturi()**                                                                                 | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.resetdsturi)                                    |
| **resetsflag(flag)**                                                                              | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.resetsflag)                                     |
| **resetxflag(flag)**                                                                              | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.resetxflag)                               |
| **reset_gflag(flag)**                                                                             | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.reset_gflag)                     |
| **reset_stat(variable)**                                                                          | *modules*   | [statistics](http://www.kamailio.org/docs/modules/5.2.x/modules/statistics.html#statistics.f.reset_stat)                |
| **reset_ugflag(flag_num)**                                                                        | *modules*   | [uid_gflags](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_gflags.html#reset_ugflag)                           |
| **ring_insert_callid()**                                                                          | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.ring_insert_callid)              |
| **rls_handle_notify()**                                                                           | *modules*   | [rls](http://www.kamailio.org/docs/modules/5.2.x/modules/rls.html)                                                      |
| **rls_handle_subscribe(\[watcher_uri\])**                                                         | *modules*   | [rls](http://www.kamailio.org/docs/modules/5.2.x/modules/rls.html)                                                      |
| **rls_update_subs(uri, event)**                                                                   | *modules*   | [rls](http://www.kamailio.org/docs/modules/5.2.x/modules/rls.html)                                                      |
| **rl_check(\[pvar\])**                                                                            | *modules*   | [ratelimit](http://www.kamailio.org/docs/modules/5.2.x/modules/ratelimit.html)                                          |
| **rl_check_pipe(pipe_no)**                                                                        | *modules*   | [ratelimit](http://www.kamailio.org/docs/modules/5.2.x/modules/ratelimit.html)                                          |
| **route_if_exists(route)**                                                                        | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.route_if_exists)                 |
| **Ro_CCR(route_name, direction, reservation_units, domain, incoming_trunk_id, outgoing_trunk_id** | *modules*   | [ims_charging](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_charging.html)                                    |
| **Ro_set_session_id_avp()**                                                                       | *modules*   | [ims_charging](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_charging.html)                                    |
| **rtjson_init_routes(rtdoc)**                                                                     | *modules*   | [rtjson](http://www.kamailio.org/docs/modules/5.2.x/modules/rtjson.html#rtjson.f.rtjson_init_routes)                    |
| **rtjson_next_route()**                                                                           | *modules*   | [rtjson](http://www.kamailio.org/docs/modules/5.2.x/modules/rtjson.html#rtjson.f.rtjson_next_route)                     |
| **rtjson_push_routes()**                                                                          | *modules*   | [rtjson](http://www.kamailio.org/docs/modules/5.2.x/modules/rtjson.html#rtjson.f.rtjson_push_routes)                    |
| **rtjson_update_branch()**                                                                        | *modules*   | [rtjson](http://www.kamailio.org/docs/modules/5.2.x/modules/rtjson.html#rtjson.f.rtjson_update_branch)                  |
| **rtpengine_answer(\[flags\])**                                                                   | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.rtpengine_answer)             |
| **rtpengine_delete(\[flags\])**                                                                   | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.rtpengine_delete)             |
| **rtpengine_manage(\[flags\])**                                                                   | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.rtpengine_manage)             |
| **rtpengine_offer(\[flags\])**                                                                    | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.rtpengine_offer)              |
| **rtpengine_query(\[flags\])**                                                                    | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.rtpengine_query)              |
| **rtpproxy_answer(\[flags \[, ip_address\]\])**                                                   | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_answer)                 |
| **rtpproxy_destroy(\[flags\])**                                                                   | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_destroy)                |
| **rtpproxy_manage(\[flags \[, ip_address\]\])**                                                   | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_manage)                 |
| **rtpproxy_offer(\[flags \[, ip_address\]\])**                                                    | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_ofrer)                  |
| **rtpproxy_stop_stream2uac(),**                                                                   | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uac)        |
| **rtpproxy_stop_stream2uas()**                                                                    | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uas)        |
| **rtpproxy_stream2uac(prompt_name, count),**                                                      | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uac)             |
| **rtpproxy_stream2uas(prompt_name, count)**                                                       | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uas)             |
| **ruby_run(function, params)**                                                                    | *modules*   | [app_ruby](http://www.kamailio.org/docs/modules/5.2.x/modules/app_ruby.html#app_ruby.f.ruby_run)                        |
| **Rx_AAR(route_block, direction, subscription_id, subscription_id_type)**                         | *modules*   | [ims_qos](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_qos.html)                                              |
| **Rx_AAR_Register(route_block, domain)**                                                          | *modules*   | [ims_qos](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_qos.html)                                              |

## \[S\]

| Name                                                                                | Module Path | Module Name                                                                                                           |
|-------------------------------------------------------------------------------------|-------------|-----------------------------------------------------------------------------------------------------------------------|
| **sanity_check(\[msg_checks \[, uri_checks\]\])**                                   | *modules*   | [sanity](http://www.kamailio.org/docs/modules/5.2.x/modules/sanity.html#sanity.f.sanity_check)                        |
| **sanity_reply()**                                                                  | *modules*   | [sanity](http://www.kamailio.org/docs/modules/5.2.x/modules/sanity.html#sanity.f.sanity_reply)                        |
| **save(async_reply_route, domain)**                                                 | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                    |
| **save(domain, \[, flags \[, uri\]\])**                                             | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.save)                       |
| **save_extra_attrs (group_id, id)**                                                 | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_avp_db.html)                                      |
| **sbranch_append()**                                                                | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.sbranch_append)                                  |
| **sbranch_reset()**                                                                 | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.sbranch_reset)                                   |
| **sbranch_set_ruri()**                                                              | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.sbranch_set_ruri)                                |
| **sca_call_info_update(\[mask, to, from\])**                                        | *modules*   | [sca](http://www.kamailio.org/docs/modules/5.2.x/modules/sca.html#sca.f.sca_call_info_update)                         |
| **sca_handle_subscribe()**                                                          | *modules*   | [sca](http://www.kamailio.org/docs/modules/5.2.x/modules/sca.html#sca.f.sca_handle_subscribe)                         |
| **sdp_content(\[sloppy\])**                                                         | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_content)                         |
| **sdp_get(avpvar)**                                                                 | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_get)                             |
| **sdp_get_line_startswith(avpvar, string)**                                         | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_get_line_startswith)             |
| **sdp_keep_codecs_by_id(list \[, mtype\])**                                         | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.keep_codecs_by_id)                   |
| **sdp_keep_codecs_by_name(list \[, mtype\])**                                       | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.keep_codecs_by_name)                 |
| **sdp_mangle_ip(pattern, newip)**                                                   | *modules*   | [mangler](http://www.kamailio.org/docs/modules/5.2.x/modules/mangler.html#mangler.f.sdp_mangle_ip)                    |
| **sdp_mangle_port(offset)**                                                         | *modules*   | [mangler](http://www.kamailio.org/docs/modules/5.2.x/modules/mangler.html#mangler.f.sdp_mangle_port)                  |
| **sdp_print(level)**                                                                | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_print)                           |
| **sdp_remove_codecs_by_id(list \[, mtype\])**                                       | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.remove_codecs_by_id)                 |
| **sdp_remove_codecs_by_name(list \[, mtype\])**                                     | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.remove_codecs_by_name)               |
| **sdp_remove_line_by_prefix(string \[, mtype\])**                                   | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.remove_line_by_prefix)               |
| **sdp_remove_media(type)**                                                          | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_remove_media)                    |
| **sdp_remove_transport(type)**                                                      | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_remove_transport)                |
| **sdp_transport(pv)**                                                               | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_transport)                       |
| **sdp_with_active_media(type)**                                                     | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_with_active_media)               |
| **sdp_with_codecs_by_id(list)**                                                     | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_with_codecs_by_id)               |
| **sdp_with_codecs_by_name(list)**                                                   | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdspops.f.sdp.with_codecs_by_name)            |
| **sdp_with_ice()**                                                                  | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_with_ice)                        |
| **sdp_with_media(type)**                                                            | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_with_media)                      |
| **sdp_with_transport(type)**                                                        | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_with_transport)                  |
| **sdp_with_transport_like(type)**                                                   | *modules*   | [sdpops](http://www.kamailio.org/docs/modules/5.2.x/modules/sdpops.html#sdpops.f.sdp_with_transport_like)             |
| **sd_journal_print(level, text)**                                                   | *modules*   | [log_systemd](http://www.kamailio.org/docs/modules/5.2.x/modules/log_systemd.html#log_systemd.f.sd_journal_print)     |
| **sd_journal_send_xavp(name)**                                                      | *modules*   | [log_systemd](http://www.kamailio.org/docs/modules/5.2.x/modules/log_systemd.html#log_systemd.f.sd_journal_send_xavp) |
| **sd_lookup(table \[, owner\])**                                                    | *modules*   | [speeddial](http://www.kamailio.org/docs/modules/5.2.x/modules/speeddial.html)                                        |
| **search(re)**                                                                      | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.search)                           |
| **search_append(re, txt)**                                                          | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.search_append)                    |
| **search_append_body(re, txt)**                                                     | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.search_append_body)               |
| **search_body(re)**                                                                 | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.search_body)                      |
| **search_hf(hf, re, flags)**                                                        | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.search_hf)                        |
| **sendx(uri, sock, data)**                                                          | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.sendx)                                  |
| **send_data(uri, data)**                                                            | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.send_data)                              |
| **send_reply(code, reason)**                                                        | *modules*   | [sl](http://www.kamailio.org/docs/modules/5.2.x/modules/sl.html#send_reply)                                           |
| **send_tcp(\[ host \[ :port \] \])**                                                | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.send_tcp)                               |
| **send_udp(\[ host \[ :port \] \])**                                                | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.send_udp)                               |
| **setbflag(flag \[, branch\])**                                                     | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.setbflag)                                     |
| **setdebug(level)**                                                                 | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.setdebug)                                     |
| **setdsturi(uri)**                                                                  | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.setdsturi)                                    |
| **setsflag(flag)**                                                                  | *modules*   | [kex](http://www.kamailio.org/docs/modules/5.2.x/modules/kex.html#kex.f.setsflag)                                     |
| **setxflag(flag)**                                                                  | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.setxflag)                               |
| **set_accept_filter(filter,flags)**                                                 | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/5.2.x/modules/uac_redirect.html)                                  |
| **set_body(txt,content_type)**                                                      | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.set_body)                         |
| **set_body_multipart(\[txt,content_type\]\[,boundary\])**                           | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.set_body_multipart)               |
| **set_contact_alias()**                                                             | *modules*   | [nathelper](http://www.kamailio.org/docs/modules/5.2.x/modules/nathelper.html#nathelper.set_contact_alias)            |
| **set_deny_filter(filter,flags)**                                                   | *modules*   | [uac_redirect](http://www.kamailio.org/docs/modules/5.2.x/modules/uac_redirect.html)                                  |
| **set_dlg_profile(profile,\[value\])**                                              | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.set_dlg_profile)                     |
| **set_dlg_profile(profile,\[value\])**                                              | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                                      |
| **set_gflag(flag)**                                                                 | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.set_gflag)                     |
| **set_gflag(flag_num)**                                                             | *modules*   | [uid_gflags](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_gflags.html#set_ugflag)                           |
| **set_iattr(attribute,value)**                                                      | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.set_iattr)                                    |
| **set_recv_socket(saddr)**                                                          | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.set_recv_socket)                        |
| **set_reply_body(txt,content_type)**                                                | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.set_reply_body)                   |
| **set_rtpengine_set(setid\[, setid\])**                                             | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.set_rtpengine_set)          |
| **set_rtp_proxy_set(setid)**                                                        | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.set_rtp_proxy_set)             |
| **set_sattr(attribute,value)**                                                      | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.set_sattr)                                    |
| **set_send_socket(saddr)**                                                          | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.set_send_socket)                        |
| **set_source_address(saddr)**                                                       | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.set_source_address)                     |
| **set_uri_host(uri, host)**                                                         | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.set_uri_host)                  |
| **set_uri_user(uri, user)**                                                         | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.set_uri_user)                  |
| **shm_status()**                                                                    | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.shm_status)                    |
| **shm_summary()**                                                                   | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.shm_summary)                   |
| **sht_has_name(htable, op, mval)**                                                  | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_has_name)                        |
| **sht_has_str_value(htable, op, mval)**                                             | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_has_str_value)                   |
| **sht_iterator_end(iname)**                                                         | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_iterator_end)                    |
| **sht_iterator_next(iname)**                                                        | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_iterator_next)                   |
| **sht_iterator_start(iname, hname)**                                                | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_iterator_start)                  |
| **sht_lock(htable=>key)**                                                           | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_lock)                            |
| **sht_print()**                                                                     | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_print)                           |
| **sht_reset(htable)**                                                               | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_reset)                           |
| **sht_rm(htname, itname)**                                                          | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_rm)                              |
| **sht_rm_name(htable, op, val)**                                                    | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_rm_name)                         |
| **sht_rm_name_re(htable=>regexp)**                                                  | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_rm_name_re)                      |
| **sht_rm_value(htable, op, val)**                                                   | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_rm_value)                        |
| **sht_rm_value_re(htable=>regexp)**                                                 | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_rm_value_re)                     |
| **sht_unlock(htable=>key)**                                                         | *modules*   | [htable](http://www.kamailio.org/docs/modules/5.2.x/modules/htable.html#htable.f.sht_unlock)                          |
| **sipdump_send(tag)**                                                               | *modules*   | [sipdump](http://www.kamailio.org/docs/modules/5.2.x/modules/sipdump.html#sipdump.f.sipdump_send)                     |
| **sipt_destination(destination, hops, nai\[, terminator=1\])**                      | *modules*   | [sipt](http://www.kamailio.org/docs/modules/5.2.x/modules/sipt.html#sipt.f.sipt_destination)                          |
| **sipt_forwarding(origin, nai)**                                                    | *modules*   | [sipt](http://www.kamailio.org/docs/modules/5.2.x/modules/sipt.html#sipt.f.sipt_forwarding)                           |
| **sipt_set_bci_1(charge_indicator, called_status, called_category, e2e_indicator)** | *modules*   | [sipt](http://www.kamailio.org/docs/modules/5.2.x/modules/sipt.html#sipt.f.sipt_set_bci_1)                            |
| **sipt_set_calling(origin, nai, presentation, screening)**                          | *modules*   | [sipt](http://www.kamailio.org/docs/modules/5.2.x/modules/sipt.html#sipt.f.sipt_set_calling)                          |
| **sip_capture(\[table\], \[cmode\])**                                               | *modules*   | [sipcapture](http://www.kamailio.org/docs/modules/5.2.x/modules/sipcapture.html#sipcapture.f.sip_capture)             |
| **sip_capture_forward(uri)**                                                        | *modules*   | [sipcapture](http://www.kamailio.org/docs/modules/5.2.x/modules/sipcapture.html#sipcapture.f.sip_capture_forward)     |
| **sip_p\_charging_vector(flags)**                                                   | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.sip_p_charging_vector)         |
| **sip_trace(\[address\]\[, correlation_id\])**                                      | *modules*   | [siptrace](http://www.kamailio.org/docs/modules/5.2.x/modules/siptrace.html#siptrace.f.sip_trace)                     |
| **sj_serialize(opt, ovar)**                                                         | *modules*   | [sipjson](http://www.kamailio.org/docs/modules/5.2.x/modules/sipjson.html#sipjson.f.sj_serialize)                     |
| **sleep(time)**                                                                     | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.sleep)                         |
| **sl_forward \_reply(\[ code, \[ reason \] \])**                                    | *modules*   | [sl](http://www.kamailio.org/docs/modules/5.2.x/modules/sl.html#sl_forward_reply)                                     |
| **sl_reply_error()**                                                                | *modules*   | [sl](http://www.kamailio.org/docs/modules/5.2.x/modules/sl.html#sl_reply_error)                                       |
| **sl_send_reply(code, reason)**                                                     | *modules*   | [sl](http://www.kamailio.org/docs/modules/5.2.x/modules/sl.html#sl_send_reply)                                        |
| **smsdump()**                                                                       | *modules*   | [smsops](http://www.kamailio.org/docs/modules/5.2.x/modules/smsops.html#smsops.f.smsdump)                             |
| **sms_send_msg()**                                                                  | *modules*   | [sms](http://www.kamailio.org/docs/modules/5.2.x/modules/sms.html#sms_send_msg)                                       |
| **sms_send_msg_to_net(network_name)**                                               | *modules*   | [sms](http://www.kamailio.org/docs/modules/5.2.x/modules/sms.html#sms_send_msg_to_net)                                |
| **sqlang_dofile(path)**                                                             | *modules*   | [app_sqlang](http://www.kamailio.org/docs/modules/5.2.x/modules/app_sqlang.html#app_sqlang.f.sqlang_dofile)           |
| **sqlang_dostring(script)**                                                         | *modules*   | [app_sqlang](http://www.kamailio.org/docs/modules/5.2.x/modules/app_sqlang.html#app_sqlang.f.sqlang_dostring)         |
| **sqlang_run(function \[, params\])**                                               | *modules*   | [app_sqlang](http://www.kamailio.org/docs/modules/5.2.x/modules/app_sqlang.html#app_sqlang.f.sqlang_run)              |
| **sqlang_runstring(script)**                                                        | *modules*   | [app_sqlang](http://www.kamailio.org/docs/modules/5.2.x/modules/app_sqlang.html#app_sqlang.f.sqlang_runstring)        |
| **sql_pvquery(connection, query, result)**                                          | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/5.2.x/modules/sqlops.html)                                              |
| **sql_query(connection, query\[, result\])**                                        | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/5.2.x/modules/sqlops.html)                                              |
| **sql_query_async(connection, query)**                                              | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/5.2.x/modules/sqlops.html#sqlops.f.sql_query_async)                     |
| **sql_result_free(result)**                                                         | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/5.2.x/modules/sqlops.html)                                              |
| **sql_xquery(connection, query, result)**                                           | *modules*   | [sqlops](http://www.kamailio.org/docs/modules/5.2.x/modules/sqlops.html)                                              |
| **srv_query(srvcname, pvid)**                                                       | *modules*   | [ipops](http://www.kamailio.org/docs/modules/5.2.x/modules/ipops.html#ipops.f.srv_query)                              |
| **sstCheckMin(send_reply_flag)**                                                    | *modules*   | [sst](http://www.kamailio.org/docs/modules/5.2.x/modules/sst.html#sst.f.sstcheckmin)                                  |
| **starts_with(str1, str2)**                                                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.starts_with)                      |
| **start_recording()**                                                               | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.start_recording)               |
| **start_recording(\[flags\])**                                                      | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.start_recording)            |
| **statsd_decr(key)**                                                                | *modules*   | [statsd](http://www.kamailio.org/docs/modules/5.2.x/modules/statsd.html#statsd.f.statsd_decr)                         |
| **statsd_gauge(key, value)**                                                        | *modules*   | [statsd](http://www.kamailio.org/docs/modules/5.2.x/modules/statsd.html#statsd.f.statsd_gauge)                        |
| **statsd_incr(key)**                                                                | *modules*   | [statsd](http://www.kamailio.org/docs/modules/5.2.x/modules/statsd.html#statsd.f.statsd_incr)                         |
| **statsd_set(key, value)**                                                          | *modules*   | [statsd](http://www.kamailio.org/docs/modules/5.2.x/modules/statsd.html#statsd.f.statsd_set)                          |
| **statsd_start(key)**                                                               | *modules*   | [statsd](http://www.kamailio.org/docs/modules/5.2.x/modules/statsd.html#statsd.f.statsd_start)                        |
| **statsd_stop(key)**                                                                | *modules*   | [statsd](http://www.kamailio.org/docs/modules/5.2.x/modules/statsd.html#statsd.f.statsd_stop)                         |
| **stop_recording(\[flags\])**                                                       | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.stop_recording)             |
| **subscribe_to_reg(domain)**                                                        | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)                    |
| **subst('/re/repl/flags')**                                                         | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.subst)                            |
| **subst_attr($avp_name, subst_re)**                                                 | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.subst_attr)                                   |
| **subst_body('/re/repl/flags')**                                                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.subst_body)                       |
| **subst_hf(hf, subexp, flags)**                                                     | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.subst_hf)                         |
| **subst_uri('/re/repl/flags')**                                                     | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.subst_uri)                        |
| **subst_user('/re/repl/flags')**                                                    | *modules*   | [textops](http://www.kamailio.org/docs/modules/5.2.x/modules/textops.html#textops.f.subst_user)                       |

## \[T\]

| Name                                                         | Module Path | Module Name                                                                                                   |
|--------------------------------------------------------------|-------------|---------------------------------------------------------------------------------------------------------------|
| **tcp_conid_alive(conid)**                                   | *modules*   | [tcpops](http://www.kamailio.org/docs/modules/5.2.x/modules/tcpops.html#tcpops.f.tcp_conid_alive)             |
| **tcp_conid_state(conid)**                                   | *modules*   | [tcpops](http://www.kamailio.org/docs/modules/5.2.x/modules/tcpops.html#tcpops.f.tcp_conid_state)             |
| **tcp_enable_closed_event(\[conid\])**                       | *modules*   | [tcpops](http://www.kamailio.org/docs/modules/5.2.x/modules/tcpops.html#tcpops.f.tcp_enable_closed_event)     |
| **tcp_get_conid(hostport, pvname)**                          | *modules*   | [tcpops](http://www.kamailio.org/docs/modules/5.2.x/modules/tcpops.html#tcpops.f.tcp_get_conid)               |
| **tcp_keepalive_disable(\[conid\])**                         | *modules*   | [tcpops](http://www.kamailio.org/docs/modules/5.2.x/modules/tcpops.html#tcpops.f.tcp_keepalive_disable)       |
| **tcp_keepalive_enable(\[conid\], idle, count, interval)**   | *modules*   | [tcpops](http://www.kamailio.org/docs/modules/5.2.x/modules/tcpops.html#tcpops.f.tcp_keepalive_enable)        |
| **tcp_set_connection_lifetime(\[conid\], lifetime)**         | *modules*   | [tcpops](http://www.kamailio.org/docs/modules/5.2.x/modules/tcpops.html#tcpops.f.tcp_set_connection_lifetime) |
| **tel2sip(uri, hostpart, result)**                           | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.tel2sip)               |
| **term_impu_registered(domain)**                             | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)            |
| **time_period_match(period \[, timestamp\])**                | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/5.2.x/modules/tmrec.html#tmrec.f.time_period_match)              |
| **tmrec_match(timerec \[, timestamp\])**                     | *modules*   | [tmrec](http://www.kamailio.org/docs/modules/5.2.x/modules/tmrec.html#tmrec.f.tmrec_match)                    |
| **to_any_gw(\[ip_addr, proto\])**                            | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.to_any_gw)                            |
| **to_gw(lcr_id\[, ip_addr, proto\])**                        | *modules*   | [lcr](http://www.kamailio.org/docs/modules/5.2.x/modules/lcr.html#lcr.f.to_gw)                                |
| **trylock(key)**                                             | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.trylock)               |
| **ts_append(domain, ruri)**                                  | *modules*   | [tsilo](http://www.kamailio.org/docs/modules/5.2.x/modules/tsilo.html#tsilo.f.ts_append)                      |
| **ts_append_to(tindex, tlabel, domain, \[uri\])**            | *modules*   | [tsilo](http://www.kamailio.org/docs/modules/5.2.x/modules/tsilo.html#tsilo.f.ts_append_to)                   |
| **ts_store(\[uri\])**                                        | *modules*   | [tsilo](http://www.kamailio.org/docs/modules/5.2.x/modules/tsilo.html#tsilo.f.ts_store)                       |
| **typeof(pvar, vtype)**                                      | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.typeof)                                  |
| **t_any_replied()**                                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_any_replied)                           |
| **t_any_timeout()**                                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_any_timeout)                           |
| **t_branch_replied()**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_branch_replied)                        |
| **t_branch_timeout()**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_branch_timeout)                        |
| **t_cancel_branches(which)**                                 | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_cancel_branches)                    |
| **t_cancel_callid(callid, cseq, flag \[, rcode\])**          | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_cancel_callid)                      |
| **t_check_status(re)**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_check_status)                          |
| **t_check_trans()**                                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_check_trans)                           |
| **t_continue(tindex, tlabel, rtname)**                       | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_continue)                           |
| **t_drop_replies(\[mode\])**                                 | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_drop_replies)                          |
| **t_flush_flags()**                                          | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_flush_flags)                        |
| **t_flush_xflags()**                                         | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_flush_xflags)                       |
| **t_forward_nonack(\[ip, port\])**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_forward_nonack)                        |
| **t_forward_nonack_sctp(ip, port)**                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_forward_nonack_sctp)                   |
| **t_forward_nonack_tcp(ip, port)**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_forward_nonack_tcp)                    |
| **t_forward_nonack_tls(ip, port)**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_forward_nonack_tls)                    |
| **t_forward_nonack_udp(ip, port)**                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_forward_nonack_udp)                    |
| **t_grep_status("code")**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_grep_status)                           |
| **t_is_branch_route()**                                      | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_is_branch_route)                    |
| **t_is_canceled()**                                          | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_is_canceled)                           |
| **t_is_expired()**                                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_is_expired)                            |
| **t_is_failure_route()**                                     | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_is_failure_route)                   |
| **t_is_reply_route()**                                       | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_is_reply_route)                     |
| **t_is_request_route()**                                     | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_is_request_route)                   |
| **t_is_retr_async_reply()**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_is_retr_async_reply)                   |
| **t_is_set(target)**                                         | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_is_set)                                |
| **t_load_contacts()**                                        | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_load_contacts)                         |
| **t_lookup_cancel(\[1\])**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_lookup_cancel)                         |
| **t_lookup_request()**                                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_lookup_request)                        |
| **t_newtran()**                                              | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_newtran)                               |
| **t_next_contacts()**                                        | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_next_contacts)                         |
| **t_next_contact_flow()**                                    | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_next_contact_flow)                     |
| **t_on_branch(branch_route)**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_on_branch)                             |
| **t_on_branch_failure(branch_failure_route)**                | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_on_branch_failure)                     |
| **t_on_failure(failure_route)**                              | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_on_failure)                            |
| **t_on_reply(onreply_route)**                                | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_on_reply)                              |
| **t_precheck_trans()**                                       | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_precheck_trans)                     |
| **t_relay(\[host, port\])**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_relay)                                 |
| **t_relay_cancel()**                                         | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_relay_cancel)                          |
| **t_relay_to(proxy, flags)**                                 | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_relay_to)                              |
| **t_relay_to_sctp(\[ip, port\])**                            | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_relay_to_sctp)                         |
| **t_relay_to_tcp(\[ip, port\])**                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_relay_to_tcp)                          |
| **t_relay_to_tls(\[ip, port\])**                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_relay_to_tls)                          |
| **t_relay_to_udp(\[ip, port\])**                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_relay_to_udp)                          |
| **t_release()**                                              | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_release)                               |
| **t_replicate(\[params\])**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_replicate)                             |
| **t_reply(code, reason_phrase)**                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_reply)                                 |
| **t_reply_callid(callid, cseq, code, reason)**               | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_reply_callid)                       |
| **t_reset_fr()**                                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_reset_fr)                              |
| **t_reset_max_lifetime()**                                   | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_reset_max_lifetime)                    |
| **t_reset_retr()**                                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_reset_retr)                            |
| **t_retransmit_reply()**                                     | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_retransmit_reply)                      |
| **t_reuse_branch()**                                         | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_reuse_branch)                       |
| **t_save_lumps()**                                           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_save_lumps)                            |
| **t_send_reply(code, reason)**                               | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_send_reply)                            |
| **t_set_auto_inv_100(0\|1)**                                 | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_auto_inv_100)                      |
| **t_set_disable_6xx(0\|1)**                                  | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_disable_6xx)                       |
| **t_set_disable_failover(0\|1)**                             | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_disable_failover)                  |
| **t_set_disable_internal_reply(0\|1)**                       | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_disable_internal_reply)            |
| **t_set_fr(fr_inv_timeout \[, fr_timeout\])**                | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_fr)                                |
| **t_set_max_lifetime(inv_lifetime, noninv_lifetime)**        | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_max_lifetime)                      |
| **t_set_no_e2e_cancel_reason(0\|1)**                         | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_no_e2e_cancel_reason)              |
| **t_set_retr(retr_t1_interval, retr_t2_interval)**           | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_set_retr)                              |
| **t_suspend()**                                              | *modules*   | [tmx](http://www.kamailio.org/docs/modules/5.2.x/modules/tmx.html#tmx.f.t_suspend)                            |
| **t_uac_send(method, ruri, nexthop, socket, headers, body)** | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_uac_send)                              |
| **t_use_uac_headers()**                                      | *modules*   | [tm](http://www.kamailio.org/docs/modules/5.2.x/modules/tm.html#tm.f.t_use_uac_headers)                       |

## \[U\]

| Name                                     | Module Path | Module Name                                                                                               |
|------------------------------------------|-------------|-----------------------------------------------------------------------------------------------------------|
| **uac_auth()**                           | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_auth)                         |
| **uac_reg_disable(attr, val)**           | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_reg_disable)                  |
| **uac_reg_enable(attr, val)**            | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_reg_enable)                   |
| **uac_reg_lookup(uuid, dst)**            | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_reg_lookup)                   |
| **uac_reg_refresh(luuid)**               | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_reg_refresh)                  |
| **uac_reg_request_to(user, mode)**       | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_reg_request_to)               |
| **uac_reg_status(uuid)**                 | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_reg_status)                   |
| **uac_replace_from(display,uri)**        | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_replace_from)                 |
| **uac_replace_from(uri)**                | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_replace_from_uri)             |
| **uac_replace_to(display,uri)**          | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_replace_to)                   |
| **uac_replace_to(uri)**                  | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_replace_to_uri)               |
| **uac_req_send()**                       | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_req_send)                     |
| **uac_restore_from()**                   | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_restore_from)                 |
| **uac_restore_to()**                     | *modules*   | [uac](http://www.kamailio.org/docs/modules/5.2.x/modules/uac.html#uac.f.uac_restore_to())                 |
| **unblock_dtmf(\[flags\])**              | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.unblock_dtmf)   |
| **unblock_media(\[flags\])**             | *modules*   | [rtpengine](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpengine.html#rtpengine.f.unblock_media)  |
| **unforce_rtp_proxy()**                  | *modules*   | [rtpproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/rtpproxy.html#rtpproxy.f.unforce_rtp_proxy) |
| **unlock(key)**                          | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.unlock)            |
| **unlock_extra_attrs (group_id, id)**    | *modules*   | [uid_avp_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_avp_db.html)                          |
| **unregister(domain)**                   | *modules*   | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_registrar_scscf.html)        |
| **unregister(domain, uri\[, ruid\])**    | *modules*   | [registrar](http://www.kamailio.org/docs/modules/5.2.x/modules/registrar.html#registrar.f.unregister)     |
| **unset_dlg_profile(profile,\[value\])** | *modules*   | [dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/dialog.html#dialog.f.unset_dlg_profile)       |
| **unset_dlg_profile(profile,\[value\])** | *modules*   | [ims_dialog](http://www.kamailio.org/docs/modules/5.2.x/modules/ims_dialog.html)                          |
| **update_stat(variable,value)**          | *modules*   | [statistics](http://www.kamailio.org/docs/modules/5.2.x/modules/statistics.html#statistics.f.update_stat) |
| **uri_param(param)**                     | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html)                              |
| **uri_param(param,value)**               | *modules*   | [siputils](http://www.kamailio.org/docs/modules/5.2.x/modules/siputils.html#siputils.f.uri_param_value)   |
| **use_media_proxy()**                    | *modules*   | [mediaproxy](http://www.kamailio.org/docs/modules/5.2.x/modules/mediaproxy.html#mediaproxy.p.use)         |
| **use_next_gw()**                        | *modules*   | [drouting](http://www.kamailio.org/docs/modules/5.2.x/modules/drouting.html#drouting.f.use_next_gw)       |
| **usleep(time)**                         | *modules*   | [cfgutils](http://www.kamailio.org/docs/modules/5.2.x/modules/cfgutils.html#cfgutils.f.usleep)            |

## \[V\]

| Name                           | Module Path | Module Name                                                                                                   |
|--------------------------------|-------------|---------------------------------------------------------------------------------------------------------------|
| **validateospheader()**        | *modules*   | [osp](http://www.kamailio.org/docs/modules/5.2.x/modules/osp.html)                                            |
| **verify_destination()**       | *modules*   | [peering](http://www.kamailio.org/docs/modules/5.2.x/modules/peering.html)                                    |
| **verify_source()**            | *modules*   | [peering](http://www.kamailio.org/docs/modules/5.2.x/modules/peering.html)                                    |
| **via_add_srvid(flags)**       | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.via_add_srvid)                  |
| **via_add_xavp_params(flags)** | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.via_add_xavp_params)            |
| **via_use_xavp_fields(flags)** | *modules*   | [corex](http://www.kamailio.org/docs/modules/5.2.x/modules/corex.html#corex.f.via_use_xavp_fields)            |
| **vrfy_check_callid()**        | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_identity.html#vrfy_check_callid)      |
| **vrfy_check_certificate()**   | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_identity.html#vrfy_check_certificate) |
| **vrfy_check_date()**          | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_identity.html#vrfy_check_date)        |
| **vrfy_check_msgvalidity()**   | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_identity.html#vrfy_check_msgvalidity) |
| **vrfy_get_certificate()**     | *modules*   | [auth_identity](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_identity.html#vrfy_get_certificate)   |

## \[W\]

| Name                                                | Module Path | Module Name                                                                                                    |
|-----------------------------------------------------|-------------|----------------------------------------------------------------------------------------------------------------|
| **ws_close(\[status, reason\[, connection_id\]\])** | *modules*   | [websocket](http://www.kamailio.org/docs/modules/5.2.x/modules/websocket.html#websocket.f.ws_close)            |
| **ws_handle_handshake()**                           | *modules*   | [websocket](http://www.kamailio.org/docs/modules/5.2.x/modules/websocket.html#websocket.f.ws_handle_handshake) |
| **www_authenticate(realm, table \[, method\])**     | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_db.html#auth_db.f.www_authenticate)          |
| **www_authorize(realm, table)**                     | *modules*   | [auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/auth_db.html#auth_db.f.www_authorize)             |
| **www_authorize(realm, table)**                     | *modules*   | [uid_auth_db](http://www.kamailio.org/docs/modules/5.2.x/modules/uid_auth_db.html#www_authorize)               |
| **www_challenge(realm, flags)**                     | *modules*   | [auth](http://www.kamailio.org/docs/modules/5.2.x/modules/auth.html#auth.f.www_challenge)                      |

## \[X\]

| Name                                              | Module Path | Module Name                                                                                                |
|---------------------------------------------------|-------------|------------------------------------------------------------------------------------------------------------|
| **xalert(format)**                                | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xalert)                         |
| **xavp_params_explode(sparams, xname)**           | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.xavp_params_explode)                  |
| **xavp_params_implode(xname, pvname)**            | *modules*   | [pv](http://www.kamailio.org/docs/modules/5.2.x/modules/pv.html#pv.f.xavp_params_implode)                  |
| **xbug(format)**                                  | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xbug)                           |
| **xcaps_del(uri, path)**                          | *modules*   | [xcap_server](http://www.kamailio.org/docs/modules/5.2.x/modules/xcap_server.html#xcap_server.f.xcaps_del) |
| **xcaps_get(uri, path)**                          | *modules*   | [xcap_server](http://www.kamailio.org/docs/modules/5.2.x/modules/xcap_server.html#xcap_server.f.xcaps_get) |
| **xcaps_put(uri, path, doc)**                     | *modules*   | [xcap_server](http://www.kamailio.org/docs/modules/5.2.x/modules/xcap_server.html#xcap_server.f.xcaps_put) |
| **xcap_auth_status(watcher_uri, presentity_uri)** | *modules*   | [utils](http://www.kamailio.org/docs/modules/5.2.x/modules/utils.html#utils.f.xcap_auth_status)            |
| **xcrit(format)**                                 | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xcrit)                          |
| **xdbg(format)**                                  | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xdbg)                           |
| **xdbgl(format)**                                 | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xdbgl)                          |
| **xerr(format)**                                  | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xerr)                           |
| **xhttp_reply(code, reason, ctype, body)**        | *modules*   | [xhttp](http://www.kamailio.org/docs/modules/5.2.x/modules/xhttp.html#xhttp.f.xhttp_reply)                 |
| **xinfo(format)**                                 | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xinfo)                          |
| **xlfix_attr($attribute)**                        | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#xlfix_attr)                              |
| **xlog(\[ \[facility,\] level,\] format)**        | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xlog)                           |
| **xlogl(\[ \[facility,\] level,\] format)**       | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xlogl)                          |
| **xlogm(level, format)**                          | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xlogm)                          |
| **xlset_attr($attribute, xl_format)**             | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.xlset_attr)                        |
| **xlset_destination(xl_format)**                  | *modules*   | [avp](http://www.kamailio.org/docs/modules/5.2.x/modules/avp.html#avp.f.xlset_destination)                 |
| **xmlrpc_reply(code, reason)**                    | *modules*   | [xmlrpc](http://www.kamailio.org/docs/modules/5.2.x/modules/xmlrpc.html#xmlrpc.xmlrpc_reply)               |
| **xmpp_send_message()**                           | *modules*   | [xmpp](http://www.kamailio.org/docs/modules/5.2.x/modules/xmpp.html)                                       |
| **xnotice(format)**                               | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xnotice)                        |
| **xpdbg(format)**                                 | *modules*   | [xprint](http://www.kamailio.org/docs/modules/5.2.x/modules/xprint.html#xprint.xpdbg)                      |
| **xplog(level, format)**                          | *modules*   | [xprint](http://www.kamailio.org/docs/modules/5.2.x/modules/xprint.html#xprint.xplog)                      |
| **xwarn(format)**                                 | *modules*   | [xlog](http://www.kamailio.org/docs/modules/5.2.x/modules/xlog.html#xlog.f.xwarn)                          |

## \[Y\]

| Name | Module Path | Module Name |
|------|-------------|-------------|

## \[Z\]

| Name | Module Path | Module Name |
|------|-------------|-------------|
