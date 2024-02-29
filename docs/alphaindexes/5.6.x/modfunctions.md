# Modules Functions

 ([a](#a))  ([b](#b))  ([c](#c))  ([d](#d))  ([e](#e))  ([f](#f))  ([g](#g))  ([h](#h))  ([i](#i))  ([j](#j))  ([k](#k))  ([l](#l))  ([m](#m))  ([n](#n))  ([o](#o))  ([p](#p))  ([q](#q))  ([r](#r))  ([s](#s))  ([t](#t))  ([u](#u))  ([v](#v))  ([w](#w))  ([x](#x))  ([y](#y))  ([z](#z))

## [a]

| Name | Module Name |
|------|-------------|
| **abort()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.abort) |
| **acc_db_request(comment, table)** | [acc](https://www.kamailio.org/docs/modules/5.6.x/modules/acc.html#acc.f.acc_db_request) |
| **acc_diam_request(comment)** | [acc_diameter](https://www.kamailio.org/docs/modules/5.6.x/modules/acc_diameter.html#acc_diameter.f.acc_diam_request) |
| **acc_log_request(comment)** | [acc](https://www.kamailio.org/docs/modules/5.6.x/modules/acc.html#acc.f.acc_log_request) |
| **acc_rad_request(comment)** | [acc_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/acc_radius.html#acc_radius.f.acc_rad_request) |
| **acc_request(comment, table)** | [acc](https://www.kamailio.org/docs/modules/5.6.x/modules/acc.html#acc.f.acc_request) |
| **add_contact_alias([ip_addr, port, proto])** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.add_contact_alias) |
| **add_diversion(reason [, uri])** | [diversion](https://www.kamailio.org/docs/modules/5.6.x/modules/diversion.html#diversion.f.add_diversion) |
| **add_path()** | [path](https://www.kamailio.org/docs/modules/5.6.x/modules/path.html#path.f.add_path) |
| **add_path(user)** | [path](https://www.kamailio.org/docs/modules/5.6.x/modules/path.html#path.f.add_path_u) |
| **add_path(user, parameters)** | [path](https://www.kamailio.org/docs/modules/5.6.x/modules/path.html#path.f.add_path_up) |
| **add_path_received()** | [path](https://www.kamailio.org/docs/modules/5.6.x/modules/path.html#path.f.add_path_rcv) |
| **add_path_received(user)** | [path](https://www.kamailio.org/docs/modules/5.6.x/modules/path.html#path.f.add_path_rcv_u) |
| **add_path_received(user, parameters)** | [path](https://www.kamailio.org/docs/modules/5.6.x/modules/path.html#path.f.add_path_rcv_up) |
| **add_rcv_param([flag]),** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.add_rcv_param) |
| **add_rr_param(param)** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.add_rr_param) |
| **add_sock_hdr(hdr_name)** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.add_sock_hdr) |
| **add_uri_param(param)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.add_uri_param) |
| **alias_db_find( table_name , input, output [,flags] )** | [alias_db](https://www.kamailio.org/docs/modules/5.6.x/modules/alias_db.html#alias_db.p.alias_db_find) |
| **alias_db_lookup(table_name [,flags])** | [alias_db](https://www.kamailio.org/docs/modules/5.6.x/modules/alias_db.html#alias_db.f.alias_db_lookup) |
| **allow_address(group_id, ip_addr_pvar, port_pvar)** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_address) |
| **allow_address_group(addr, port)** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_address_group) |
| **allow_register(allow_file, deny_file)** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_register_fileargs) |
| **allow_register(basename)** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_register) |
| **allow_routing()** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_routing) |
| **allow_routing(allow_file,deny_file)** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_routing_fileargs) |
| **allow_routing(basename)** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_routing_basename) |
| **allow_source_address([group_id])** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_source_address) |
| **allow_source_address_group()** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_source_address_group) |
| **allow_trusted([src_ip_pvar, proto_pvar, furi_pvar])** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_trusted) |
| **allow_uri(basename, pvar)** | [permissions](https://www.kamailio.org/docs/modules/5.6.x/modules/permissions.html#permissions.f.allow_uri) |
| **append_attr_hf(header_name, $avp_name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.append_attr_hf_2) |
| **append_attr_hf(name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.append_attr_hf_1) |
| **append_body_part(txt,content_type[, content_disposition])** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.append_body_part) |
| **append_body_part_hex(txt,content_type[, content_disposition])** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.append_body_part_hex) |
| **append_branch([ uri, [ q ] ])** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.append_branch) |
| **append_hf(txt[, hdr])** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.append_hf) |
| **append_hf_value(hf, hvalue)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.append_hf_value) |
| **append_rpid_hf()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.append_rpid_hf) |
| **append_rpid_hf(prefix, suffix)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.append_rpid_hf_params) |
| **append_time()** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.append_time) |
| **append_time_to_request()** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.append_time_to_request) |
| **append_to_reply(txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.append_to_reply) |
| **append_urihf(prefix, suffix)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.append_urihf) |
| **assign_hf_value(hf, hvalue)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.assign_hf_value) |
| **assign_hf_value2(hf, hvalue)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.assign_hf_value2) |
| **assign_server_unreg(aysnc_reply_route, domain, direction)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **async_ms_route(routename, milliseconds)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_ms_route) |
| **async_ms_sleep(milliseconds)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_ms_sleep) |
| **async_route(routename, seconds)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_route) |
| **async_sleep(seconds)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_sleep) |
| **async_task_data(routename, data)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_task_data) |
| **async_task_group_data(routename, groupname, data)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_task_group_data) |
| **async_task_group_route(routename, groupname)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_task_group_route) |
| **async_task_route(routename)** | [async](https://www.kamailio.org/docs/modules/5.6.x/modules/async.html#async.f.async_task_route) |
| **attr2uri($attribute[,uri-part])** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.attr2uri) |
| **attr_destination($avp_name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.attr_destination) |
| **attr_equals(attribute, value)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.attr_equals) |
| **attr_equals_xl(attribute, xl_format)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.attr_equals_xl) |
| **attr_exists(attribute)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.attr_exists) |
| **attr_to_reply(header_name, $avp_name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.attr_to_reply_2) |
| **attr_to_reply(name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.attr_to_reply_1) |
| **autheph_authenticate(username, password)** | [auth_ephemeral](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_ephemeral.html#auth_eph.f.autheph_authenticate) |
| **autheph_check(realm)** | [auth_ephemeral](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check) |
| **autheph_check_from([username])** | [auth_ephemeral](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_from) |
| **autheph_check_timestamp(username)** | [auth_ephemeral](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_timestamp) |
| **autheph_check_to([username])** | [auth_ephemeral](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_to) |
| **autheph_proxy(realm)** | [auth_ephemeral](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_ephemeral.html#auth_eph.f.autheph_proxy) |
| **autheph_www(realm[, method])** | [auth_ephemeral](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_ephemeral.html#auth_eph.f.autheph_www) |
| **auth_add_identity()** | [auth_identity](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_identity.html) |
| **auth_challenge(realm, flags)** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.auth_challenge) |
| **auth_check(realm, table, flags)** | [auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_db.html#auth_db.f.auth_check) |
| **auth_date_proc()** | [auth_identity](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_identity.html) |
| **auth_get_www_authenticate(realm, flags, pvdest)** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.auth_get_www_authenticate) |
| **auth_xkeys_add(hdr, kid, alg, data)** | [auth_xkeys](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_add) |
| **auth_xkeys_check(hdr, kid, alg, data)** | [auth_xkeys](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_check) |
| **avp_check(name,op_value)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_check) |
| **avp_copy(old_name,new_name)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_copy) |
| **avp_db_delete(source,name)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_db_delete) |
| **avp_db_load(source,name)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_db_load) |
| **avp_db_query(query[,dest])** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_db_query) |
| **avp_db_store(source,name)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_db_store) |
| **avp_delete(name)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_delete) |
| **avp_op(name,op_value)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_op) |
| **avp_print()** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_print) |
| **avp_printf(dest, format)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_printf) |
| **avp_pushto(destination,name)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_pushto) |
| **avp_subst(avps, subst)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_subst) |
| **avp_subst_pv(avps, subst)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.avp_subst_pv) |

## [b]

| Name | Module Name |
|------|-------------|
| **bla_handle_notify** | [pua_bla](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_bla.html) |
| **bla_set_flag** | [pua_bla](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_bla.html) |
| **block_dtmf([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.block_dtmf) |
| **block_media([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.block_media) |
| **blst_add([timeout])** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_add) |
| **blst_add_retry_after(min, max)** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_add_retry_after) |
| **blst_clear_ignore([flags])** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_clear_ignore) |
| **blst_del()** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_del) |
| **blst_is_blocklisted()** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_is_blocklisted) |
| **blst_rpl_clear_ignore([flags])** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_rpl_clear_ignore) |
| **blst_rpl_set_ignore([flags])** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_rpl_set_ignore) |
| **blst_set_ignore([flags])** | [blst](https://www.kamailio.org/docs/modules/5.6.x/modules/blst.html#blst_set_ignore) |
| **bl_iterator_append(iname, text)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.bl_iterator_append) |
| **bl_iterator_end(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.bl_iterator_end) |
| **bl_iterator_insert(iname, text)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.bl_iterator_insert) |
| **bl_iterator_next(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.bl_iterator_next) |
| **bl_iterator_rm(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.bl_iterator_rm) |
| **bl_iterator_start(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.bl_iterator_start) |
| **bm_log_timer(name)** | [benchmark](https://www.kamailio.org/docs/modules/5.6.x/modules/benchmark.html#benchmark.f.bm_log_timer) |
| **bm_start_timer(name)** | [benchmark](https://www.kamailio.org/docs/modules/5.6.x/modules/benchmark.html#benchmark.f.bm_start_timer) |

## [c]

| Name | Module Name |
|------|-------------|
| **call_control()** | [call_control](https://www.kamailio.org/docs/modules/5.6.x/modules/call_control.html#call_control.f.call_control) |
| **call_obj_free(object_number)** | [call_obj](https://www.kamailio.org/docs/modules/5.6.x/modules/call_obj.html#call_obj.f.call_obj_free) |
| **call_obj_get(reply_number)** | [call_obj](https://www.kamailio.org/docs/modules/5.6.x/modules/call_obj.html#call_obj.f.call_obj_get) |
| **can_publish_reg(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **can_subscribe_to_reg(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **cass_insert(keyspace, column_family, key, column, value)** | [ndb_cassandra](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_cassandra.html) |
| **cass_retrieve(keyspace, column_family, key, column, value)** | [ndb_cassandra](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_cassandra.html) |
| **cdp_check_peer(fqdn)** | [cdp](https://www.kamailio.org/docs/modules/5.6.x/modules/cdp.html#cdp.f.cdp_check_peer) |
| **cdp_has_app([vendorid, ]application)** | [cdp](https://www.kamailio.org/docs/modules/5.6.x/modules/cdp.html#cdp.f.cdp_has_app) |
| **change_reply_status(code, reason)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.change_reply_status) |
| **change_reply_status_code(vcode)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.change_reply_status_code) |
| **checkcallingtranslation()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **checkospheader()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **checkosproute()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **check_allowlist (string table)** | [userblocklist](https://www.kamailio.org/docs/modules/5.6.x/modules/userblocklist.html#userblocklist.f.check_allowlist) |
| **check_blocklist ([string table])** | [userblocklist](https://www.kamailio.org/docs/modules/5.6.x/modules/userblocklist.html#userblocklist.f.check_blocklist) |
| **check_from()** | [uid_uri_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_uri_db.html#check_from) |
| **check_from()** | [uri_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uri_db.html#uri_db.f.check_from) |
| **check_route_exists(route)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.check_route_exists) |
| **check_route_param(re)** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.check_route_param) |
| **check_to()** | [uid_uri_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_uri_db.html#check_to) |
| **check_to()** | [uri_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uri_db.html#uri_db.f.check_to) |
| **check_uri(uri)** | [uri_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uri_db.html#uri_db.f.check_uri) |
| **check_user_allowlist (string user, string domain, string number, string table)** | [userblocklist](https://www.kamailio.org/docs/modules/5.6.x/modules/userblocklist.html#userblocklist.f.check_user_allowlist) |
| **check_user_blocklist (string user, string domain, string number, string table)** | [userblocklist](https://www.kamailio.org/docs/modules/5.6.x/modules/userblocklist.html#userblocklist.f.check_user_blocklist) |
| **cmp_aor(str1, str2)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.cmp_aor) |
| **cmp_hdr_name(str1, str2)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.cmp_hdr_name) |
| **cmp_istr(str1, str2)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.cmp_istr) |
| **cmp_str(str1, str2)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.cmp_str) |
| **cmp_uri(str1, str2)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.cmp_uri) |
| **cnt_add([group.]name, number)** | [counters](https://www.kamailio.org/docs/modules/5.6.x/modules/counters.html#counters.f.cnt_add) |
| **cnt_inc([group.]name)** | [counters](https://www.kamailio.org/docs/modules/5.6.x/modules/counters.html#counters.f.cnt_inc) |
| **cnt_reset([group.]name)** | [counters](https://www.kamailio.org/docs/modules/5.6.x/modules/counters.html#counters.f.cnt_reset) |
| **cnxcc_set_max_channel(customer, maxchan)** | [cnxcc](https://www.kamailio.org/docs/modules/5.6.x/modules/cnxcc.html#cnxcc.f.set_max_channel) |
| **cnxcc_set_max_credit(customer, maxcredit, connect, cps, ipulse, fpulse)** | [cnxcc](https://www.kamailio.org/docs/modules/5.6.x/modules/cnxcc.html#cnxcc.f.set_max_credit) |
| **cnxcc_set_max_time(customer, maxtime)** | [cnxcc](https://www.kamailio.org/docs/modules/5.6.x/modules/cnxcc.html#cnxcc.f.set_max_time) |
| **cnxcc_terminate_all(customer)** | [cnxcc](https://www.kamailio.org/docs/modules/5.6.x/modules/cnxcc.html#cnxcc.f.terminate_all) |
| **cnxcc_update_max_time(customer, maxtime)** | [cnxcc](https://www.kamailio.org/docs/modules/5.6.x/modules/cnxcc.html#cnxcc.f.update_max_time) |
| **Common requirements** | [app_java](https://www.kamailio.org/docs/modules/5.6.x/modules/app_java.html) |
| **compare_ips (ip1, ip2)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.compare_ips) |
| **compare_pure_ips (ip1, ip2)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.compare_pure_ips) |
| **consume_credentials()** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.consume_credentials) |
| **contact_param_decode(pname)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.contact_param_decode) |
| **contact_param_decode_uri(pname)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.contact_param_decode_ruri) |
| **contact_param_encode(pname, saddr)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.contact_param_encode) |
| **contact_param_rm(pname)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.contact_param_rm) |
| **core_hash(string1, string2, size)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.core_hash) |
| **cpl_process_register()** | [cplc](https://www.kamailio.org/docs/modules/5.6.x/modules/cplc.html#cplc.f.process_register) |
| **cpl_process_register_norpl()** | [cplc](https://www.kamailio.org/docs/modules/5.6.x/modules/cplc.html#cplc.p.process_register_norpl) |
| **cpl_run_script(type,mode, [uri])** | [cplc](https://www.kamailio.org/docs/modules/5.6.x/modules/cplc.html#cplc.f.cpl_run_script) |
| **crypto_aes_decrypt(text, key, res)** | [crypto](https://www.kamailio.org/docs/modules/5.6.x/modules/crypto.html#async.f.crypto_aes_decrypt) |
| **crypto_aes_encrypt(text, key, res)** | [crypto](https://www.kamailio.org/docs/modules/5.6.x/modules/crypto.html#async.f.crypto_aes_encrypt) |
| **crypto_hmac_sha256(text, key, res)** | [crypto](https://www.kamailio.org/docs/modules/5.6.x/modules/crypto.html#async.f.crypto_hmac_sha256) |
| **crypto_netio_decrypt()** | [crypto](https://www.kamailio.org/docs/modules/5.6.x/modules/crypto.html#async.f.crypto_netio_decrypt) |
| **crypto_netio_encrypt()** | [crypto](https://www.kamailio.org/docs/modules/5.6.x/modules/crypto.html#async.f.crypto_netio_encrypt) |
| **crypto_netio_in)** | [crypto](https://www.kamailio.org/docs/modules/5.6.x/modules/crypto.html#async.f.crypto_netio_in) |
| **crypto_netio_out()** | [crypto](https://www.kamailio.org/docs/modules/5.6.x/modules/crypto.html#async.f.crypto_netio_out) |
| **cr_next_domain(carrier, domain, prefix_matching, host, reply_code, dstavp)** | [carrierroute](https://www.kamailio.org/docs/modules/5.6.x/modules/carrierroute.html) |
| **cr_nofallback_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | [carrierroute](https://www.kamailio.org/docs/modules/5.6.x/modules/carrierroute.html) |
| **cr_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | [carrierroute](https://www.kamailio.org/docs/modules/5.6.x/modules/carrierroute.html) |
| **cr_user_carrier(user, domain, dstavp)** | [carrierroute](https://www.kamailio.org/docs/modules/5.6.x/modules/carrierroute.html) |

## [d]

| Name | Module Name |
|------|-------------|
| **dbg_breakpoint(mode)** | [debugger](https://www.kamailio.org/docs/modules/5.6.x/modules/debugger.html#dbg.f.db_breakpoint) |
| **dbg_pv_dump([mask] [, level])** | [debugger](https://www.kamailio.org/docs/modules/5.6.x/modules/debugger.html#dbg.f.dbg_pv_dump) |
| **dbg_sip_msg([log_level], [facility])** | [debugger](https://www.kamailio.org/docs/modules/5.6.x/modules/debugger.html#dbg.f.dbg_sip_msg) |
| **decode_contact()** | [mangler](https://www.kamailio.org/docs/modules/5.6.x/modules/mangler.html#mangler.f.decode_contact) |
| **decode_contact()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.decode_contact) |
| **decode_contact_header()** | [mangler](https://www.kamailio.org/docs/modules/5.6.x/modules/mangler.html#mangler.f.decode_contact_header) |
| **decode_contact_header()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.decode_contact_header) |
| **defunct_gw(period)** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.defunct_gw) |
| **del_attr($avp_name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.del_attr) |
| **detailed_ipv4_type (ip, result)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.detailed_ipv4_type) |
| **detailed_ipv6_type (ip, result)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.detailed_ipv6_type) |
| **detailed_ip_type (ip, result)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.detailed_ip_type) |
| **diameter_is_user_in(who, group)** | [auth_diameter](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_diameter.html) |
| **diameter_proxy_authorize(realm)** | [auth_diameter](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_diameter.html) |
| **diameter_www_authorize(realm)** | [auth_diameter](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_diameter.html) |
| **dispatch_rpc()** | [xmlrpc](https://www.kamailio.org/docs/modules/5.6.x/modules/xmlrpc.html#xmlrpc.f.dispatch_rpc) |
| **dispatch_xhttp_pi()** | [xhttp_pi](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_pi.html) |
| **dispatch_xhttp_rpc()** | [xhttp_rpc](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_rpc.html) |
| **dlgs_count(field, op, data)** | [dlgs](https://www.kamailio.org/docs/modules/5.6.x/modules/dlgs.html#dlgs.f.dlgs_count) |
| **dlgs_init(src, dst, data)** | [dlgs](https://www.kamailio.org/docs/modules/5.6.x/modules/dlgs.html#dlgs.f.dlgs_init) |
| **dlgs_tags_add(vtag)** | [dlgs](https://www.kamailio.org/docs/modules/5.6.x/modules/dlgs.html#dlgs.f.dlgs_tags_add) |
| **dlgs_tags_count(vtag)** | [dlgs](https://www.kamailio.org/docs/modules/5.6.x/modules/dlgs.html#dlgs.f.dlgs_tags_count) |
| **dlgs_tags_rm(vtag)** | [dlgs](https://www.kamailio.org/docs/modules/5.6.x/modules/dlgs.html#dlgs.f.dlgs_tags_rm) |
| **dlgs_update()** | [dlgs](https://www.kamailio.org/docs/modules/5.6.x/modules/dlgs.html#dlgs.f.dlgs_update) |
| **dlg_bridge(from, to, op)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_bridge) |
| **dlg_bridge(from, to, op)** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dlg_bye(side)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_bye) |
| **dlg_db_load_callid(cival)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_db_load_callid) |
| **dlg_db_load_extra()** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_db_load_extra) |
| **dlg_get(callid, ftag, ttag)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_get) |
| **dlg_get(callid, ftag, ttag)** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dlg_isflagset(flag)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_isflagset) |
| **dlg_isflagset(flag)** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dlg_manage()** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_manage) |
| **dlg_manage()** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dlg_refer(side, address)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_refer) |
| **dlg_refer(side, address)** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dlg_remote_profile(cmd, profile, value, uid, expires)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_remote_profile) |
| **dlg_resetflag(flag)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_resetflag) |
| **dlg_resetflag(flag)** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dlg_reset_property(attr)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_reset_property) |
| **dlg_setflag(flag)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_setflag) |
| **dlg_setflag(flag)** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dlg_set_property(attr)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_set_property) |
| **dlg_set_ruri()** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_set_ruri) |
| **dlg_set_timeout(timeout [, h_entry, h_id])** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_set_timeout) |
| **dlg_set_timeout_by_profile(profile, [value], timeout)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.dlg_set_timeout_by_profile) |
| **dlg_terminate** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **dmq_bcast_message(channel, body, content_type)** | [dmq](https://www.kamailio.org/docs/modules/5.6.x/modules/dmq.html#dmq.f.dmq_bcast_message) |
| **dmq_handle_message([continue])** | [dmq](https://www.kamailio.org/docs/modules/5.6.x/modules/dmq.html#dmq.f.dmq_handle_message) |
| **dmq_is_from_node()** | [dmq](https://www.kamailio.org/docs/modules/5.6.x/modules/dmq.html#dmq.f.dmq_is_from_node) |
| **dmq_process_message([continue])** | [dmq](https://www.kamailio.org/docs/modules/5.6.x/modules/dmq.html#dmq.f.dmq_process_message) |
| **dmq_send_message(channel, node, body, content_type)** | [dmq](https://www.kamailio.org/docs/modules/5.6.x/modules/dmq.html#dmq.f.dmq_send_message) |
| **dmq_t_replicate([skip_loop_test])** | [dmq](https://www.kamailio.org/docs/modules/5.6.x/modules/dmq.html#dmq.f.dmq_t_replicate) |
| **dns_int_match_ip(hostname, ipaddr)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.dns_int_match_ip) |
| **dns_query(hostname, pvid)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.dns_query) |
| **dns_set_local_ttl(vttl)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.dns_set_local_ttl) |
| **dns_sys_match_ip(hostname, ipaddr)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.dns_sys_match_ip) |
| **does_uri_exist()** | [uid_uri_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_uri_db.html#does_uri_exist) |
| **does_uri_exist()** | [uri_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uri_db.html#uri_db.f.does_uri_exist) |
| **do_routing([groupID])** | [drouting](https://www.kamailio.org/docs/modules/5.6.x/modules/drouting.html#drouting.f.do_routing) |
| **dp_apply_policy()** | [domainpolicy](https://www.kamailio.org/docs/modules/5.6.x/modules/domainpolicy.html#dompolicy.f.dp_apply_policy) |
| **dp_can_connect()** | [domainpolicy](https://www.kamailio.org/docs/modules/5.6.x/modules/domainpolicy.html#dompolicy.f.dp_can_connect) |
| **dp_match(dpid, inval)** | [dialplan](https://www.kamailio.org/docs/modules/5.6.x/modules/dialplan.html#dialplan.p.dp_match) |
| **dp_reload()** | [dialplan](https://www.kamailio.org/docs/modules/5.6.x/modules/dialplan.html#dialplan.f.dp_reload) |
| **dp_replace(dpid, inval, outvar)** | [dialplan](https://www.kamailio.org/docs/modules/5.6.x/modules/dialplan.html#dialplan.p.dp_replace) |
| **dp_translate(id, [src[/dest]])** | [dialplan](https://www.kamailio.org/docs/modules/5.6.x/modules/dialplan.html#dialplan.p.dp_translate) |
| **ds_is_active(groupid [, uri])** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_is_active) |
| **ds_is_from_list([groupid [, mode [, uri] ] ])** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_is_from_list) |
| **ds_list_exists(groupid)** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_list_exists) |
| **ds_load_unset()** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html) |
| **ds_load_update()** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_load_update) |
| **ds_mark_dst([state])** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_mark_dst) |
| **ds_next_domain()** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html) |
| **ds_next_dst()** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html) |
| **ds_reload()** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_reload) |
| **ds_select(set, alg [, limit])** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_select) |
| **ds_select_domain(set, alg[, limit])** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_select_domain) |
| **ds_select_dst(set, alg[, limit])** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_select_dst) |
| **ds_select_routes(rules, mode [, limit])** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_select_routes) |
| **ds_set_domain()** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_set_domain) |
| **ds_set_dst()** | [dispatcher](https://www.kamailio.org/docs/modules/5.6.x/modules/dispatcher.html#dispatcher.f.ds_set_dst) |
| **dump_attrs()** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.dump_attrs) |

## [e]

| Name | Module Name |
|------|-------------|
| **encode_contact(encoding_prefix)** | [mangler](https://www.kamailio.org/docs/modules/5.6.x/modules/mangler.html#mangler.f.encode_contact) |
| **encode_contact(encoding_prefix,hostpart)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.encode_contact) |
| **ends_with(str1, str2)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.ends_with) |
| **end_media_session()** | [mediaproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/mediaproxy.html#mediaproxy.p.end) |
| **engage_media_proxy()** | [mediaproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/mediaproxy.html#mediaproxy.f.engage) |
| **enum_pv_query("pvar" [,"suffix" [,"service"]])** | [enum](https://www.kamailio.org/docs/modules/5.6.x/modules/enum.html#enum.f.enum_pv_query) |
| **enum_query(["suffix" [,"service"]])** | [enum](https://www.kamailio.org/docs/modules/5.6.x/modules/enum.html#enum.f.enum_query) |
| **erl_reg_send(server,msg)** | [erlang](https://www.kamailio.org/docs/modules/5.6.x/modules/erlang.html#erlang.f.erl_reg_send) |
| **erl_reply(msg)** | [erlang](https://www.kamailio.org/docs/modules/5.6.x/modules/erlang.html#erlang.f.erl_reply) |
| **erl_rpc(mod,fun,args,reply)** | [erlang](https://www.kamailio.org/docs/modules/5.6.x/modules/erlang.html#erlang.f.erl_rpc) |
| **erl_send(pid,msg)** | [erlang](https://www.kamailio.org/docs/modules/5.6.x/modules/erlang.html#erlang.f.erl_send) |
| **evapi_async_multicast(evdata, etag)** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_async_multicast) |
| **evapi_async_relay(evdata)** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_async_relay) |
| **evapi_async_unicast(evdata, etag)** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_async_unicast) |
| **evapi_close()** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_close) |
| **evapi_multicast(evdata, etag)** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_multicast) |
| **evapi_relay(evdata)** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_relay) |
| **evapi_set_tag(tname)** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_set_tag) |
| **evapi_unicast(evdata, etag)** | [evapi](https://www.kamailio.org/docs/modules/5.6.x/modules/evapi.html#evapi.f.evapi_unicast) |
| **exclude_hf_value(hf, hvalue)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.exclude_hf_value) |
| **exec_avp(command [, avplist])** | [exec](https://www.kamailio.org/docs/modules/5.6.x/modules/exec.html#exec.f.exec_avp) |
| **exec_cmd(command)** | [exec](https://www.kamailio.org/docs/modules/5.6.x/modules/exec.html#exec.f.exec_cmd) |
| **exec_dset(command)** | [exec](https://www.kamailio.org/docs/modules/5.6.x/modules/exec.html#exec.f.exec_dset) |
| **exec_msg(command)** | [exec](https://www.kamailio.org/docs/modules/5.6.x/modules/exec.html#exec.f.exec_msg) |

## [f]

| Name | Module Name |
|------|-------------|
| **file_read(fpath, var)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.file_read) |
| **file_write(fpath, content)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.file_write) |
| **filter_body(content_type)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.filter_body) |
| **fix_nated_contact()** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.fix_nated_contact) |
| **fix_nated_register()** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.fix_nated_register) |
| **fix_nated_sdp(flags [, ip_address])** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.fix_nated_sdp) |
| **flags2attr("$avp")** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.flags2attr) |
| **float2int(fval, ival)** | [sipcapture](https://www.kamailio.org/docs/modules/5.6.x/modules/sipcapture.html#sipcapture.f.float2int) |
| **fnmatch(value, expr [, flags])** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.fnmatch) |
| **forward_reply()** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.forward_reply) |
| **from_any_gw([ip_addr, proto[, src_port]])** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.from_any_gw) |
| **from_gw(lcr_id[, ip_addr, proto[, src_port]])** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.from_gw) |

## [g]

| Name | Module Name |
|------|-------------|
| **geoip2_match(ipaddr, pvc)** | [geoip2](https://www.kamailio.org/docs/modules/5.6.x/modules/geoip2.html) |
| **geoip_match(ipaddr, pvc)** | [geoip](https://www.kamailio.org/docs/modules/5.6.x/modules/geoip.html) |
| **get_body_part(content_type, opv)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.get_body_part) |
| **get_body_part_raw(content_type, opv)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.get_body_part_raw) |
| **get_profile_size(profile,[value],size)** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.get_profile_size) |
| **get_profile_size(profile,[value],size)** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **get_redirects(max)** | [uac_redirect](https://www.kamailio.org/docs/modules/5.6.x/modules/uac_redirect.html#uac_redirect.f.get_redirects1) |
| **get_redirects(max,reason)** | [uac_redirect](https://www.kamailio.org/docs/modules/5.6.x/modules/uac_redirect.html#uac_redirect.f.get_redirects2) |
| **get_uri_param(name, var)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.get_uri_param) |
| **get_user_group(URI, AVP)** | [group](https://www.kamailio.org/docs/modules/5.6.x/modules/group.html#group.f.get_user_group) |
| **goes_to_gw([type])** | [drouting](https://www.kamailio.org/docs/modules/5.6.x/modules/drouting.html) |

## [h]

| Name | Module Name |
|------|-------------|
| **h350_auth_lookup(auth_username, "username_avp_spec/pwd_avp_spec")** | [h350](https://www.kamailio.org/docs/modules/5.6.x/modules/h350.html) |
| **h350_result_call_preferences(avp_name_prefix)** | [h350](https://www.kamailio.org/docs/modules/5.6.x/modules/h350.html) |
| **h350_result_service_level(avp_name_prefix)** | [h350](https://www.kamailio.org/docs/modules/5.6.x/modules/h350.html) |
| **h350_sipuri_lookup(sip_uri)** | [h350](https://www.kamailio.org/docs/modules/5.6.x/modules/h350.html) |
| **handle_publish([sender_uri])** | [presence](https://www.kamailio.org/docs/modules/5.6.x/modules/presence.html#presence.f.handle_publish) |
| **handle_ruri_alias([mode])** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.handle_ruri_alias) |
| **handle_subscribe([watcher_uri])** | [presence](https://www.kamailio.org/docs/modules/5.6.x/modules/presence.html#presence.f.handle_subscribe) |
| **has_body(), has_body(mime)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.has_body) |
| **has_credentials(realm)** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.has_credentials) |
| **has_totag()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.has_totag()) |
| **hdr_body2attrs(headername, prefix)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.hdr_body2attrs) |
| **hdr_body2attrs2(headername, prefix)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.hdr_body2attrs2) |
| **hdr_date_check(tdiff)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.hdr_date_check) |
| **hf_iterator_append(iname, htext)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_iterator_append) |
| **hf_iterator_end(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_iterator_end) |
| **hf_iterator_insert(iname, htext)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_iterator_insert) |
| **hf_iterator_next(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_iterator_next) |
| **hf_iterator_prev(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_iterator_prev) |
| **hf_iterator_rm(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_iterator_rm) |
| **hf_iterator_start(iname)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_iterator_start) |
| **hf_value_exists(hf, hvalue)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.hf_value_exists) |
| **hlog([correlation_id,] message)** | [siptrace](https://www.kamailio.org/docs/modules/5.6.x/modules/siptrace.html#siptrace.f.hlog) |
| **http_async_query(url, route_name)** | [http_async_client](https://www.kamailio.org/docs/modules/5.6.x/modules/http_async_client.html#http_async_client.f.http_async_query) |
| **http_client_get(url, body, hdrs, respv)** | [http_client](https://www.kamailio.org/docs/modules/5.6.x/modules/http_client.html#http_client.f.http_get) |
| **http_client_query(url, [post-data], [hdrs], result)** | [http_client](https://www.kamailio.org/docs/modules/5.6.x/modules/http_client.html#http_client.f.http_query) |
| **http_connect(connection, url, [content_type, data,] result)** | [http_client](https://www.kamailio.org/docs/modules/5.6.x/modules/http_client.html#http_client.f.http_connect) |
| **http_connect_raw(connection, url, content_type, data, result)** | [http_client](https://www.kamailio.org/docs/modules/5.6.x/modules/http_client.html#http_client.f.http_connect_raw) |
| **http_get_redirect(connection, result)** | [http_client](https://www.kamailio.org/docs/modules/5.6.x/modules/http_client.html#http_client.f.http_get_redirect) |

## [i]

| Name | Module Name |
|------|-------------|
| **imc_manager()** | [imc](https://www.kamailio.org/docs/modules/5.6.x/modules/imc.html) |
| **impu_registered(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **ims_proxy_authenticate(realm, table)** | [ims_auth](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_auth.html) |
| **ims_proxy_challenge(route_block, realm, table)** | [ims_auth](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_auth.html) |
| **ims_www_authenticate(realm)** | [ims_auth](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_auth.html) |
| **ims_www_authorize(realm, table)** | [ims_auth](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_auth.html) |
| **ims_www_challenge(route_block, realm)** | [ims_auth](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_auth.html) |
| **ims_www_challenge(route_block, realm, algorithm)** | [ims_auth](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_auth.html) |
| **inactivate_gw()** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.inactivate_gw) |
| **include_hf_value(hf, hvalue)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.include_hf_value) |
| **insert_attr_hf(header_name, $avp_name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.insert_attr_hf_2) |
| **insert_attr_hf(name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.insert_attr_hf_1) |
| **insert_hf(txt[, hdr])** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.insert_hf) |
| **insert_hf_value(hf, hvalue)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.insert_hf_value) |
| **in_list(subject, list, separator)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.in_list) |
| **in_list_prefix(subject, list, separator)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.in_list_prefix) |
| **ipsec_create(domain)** | [ims_ipsec_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_ipsec_pcscf.html) |
| **ipsec_destroy(domain)** | [ims_ipsec_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_ipsec_pcscf.html) |
| **ipsec_forward(domain, flags)** | [ims_ipsec_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_ipsec_pcscf.html) |
| **ip_type (ip)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_ip_type) |
| **isbflagset(flag [, branch])** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.isbflagset) |
| **isc_from_as(direction)** | [ims_isc](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_isc.html) |
| **isc_match_filter(direction,domain)** | [ims_isc](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_isc.html) |
| **isc_match_filter_reg(reg_state,domain)** | [ims_isc](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_isc.html) |
| **isdsturiset()** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.isdsturiset) |
| **isRPDATA()** | [smsops](https://www.kamailio.org/docs/modules/5.6.x/modules/smsops.html#smsops.f.isRPDATA) |
| **issflagset(flag)** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.issflagset) |
| **isup_to_json** | [ss7ops](https://www.kamailio.org/docs/modules/5.6.x/modules/ss7ops.html#ss7ops.f.isup_to_json) |
| **isxflagset(flag)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.isxflagset) |
| **is_alphanum(tval)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_alphanum) |
| **is_alphanumex(tval, eset)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_alphanumex) |
| **is_audio_on_hold()** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.is_audio_on_hold) |
| **is_avp_set(name)** | [avpops](https://www.kamailio.org/docs/modules/5.6.x/modules/avpops.html#avpops.f.is_avp_set) |
| **is_direction(dir)** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.is_direction) |
| **is_domain_local(domain)** | [domain](https://www.kamailio.org/docs/modules/5.6.x/modules/domain.html#domain.f.is_domain_local) |
| **is_e164(pseudo-variable)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_e164) |
| **is_faked_msg()** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.is_faked_msg) |
| **is_first_hop([mode])** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_first_hop) |
| **is_from_gw([ type, [flag] ])** | [drouting](https://www.kamailio.org/docs/modules/5.6.x/modules/drouting.html#drouting.f.is_from_gw) |
| **is_from_local()** | [domain](https://www.kamailio.org/docs/modules/5.6.x/modules/domain.html#domain.f.is_from_local) |
| **is_from_user_enum()** | [enum](https://www.kamailio.org/docs/modules/5.6.x/modules/enum.html#enum.f.is_from_user_enum) |
| **is_gflag(flag)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.is_gflag) |
| **is_gruu([uri])** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_gruu) |
| **is_incoming()** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.is_incoming) |
| **is_int(pvar)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.is_int) |
| **is_in_profile(profile,[value])** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.is_in_profile) |
| **is_in_profile(profile,[value])** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **is_in_subnet (ip, subnets_list)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_in_subnet) |
| **is_ip (ip)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_ip) |
| **is_ipv4 (ip)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_ipv4) |
| **is_ipv6 (ip)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_ipv6) |
| **is_ipv6_reference (ip)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_ipv6_reference) |
| **is_ip_rfc1918 (ip)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_ip_rfc1918) |
| **is_known_dlg()** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.is_known_dlg) |
| **is_known_dlg()** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **is_leap_year([year])** | [tmrec](https://www.kamailio.org/docs/modules/5.6.x/modules/tmrec.html#tmrec.f.is_leap_year) |
| **is_local(domain)** | [uid_domain](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_domain.html#is_local) |
| **is_maxfwd_lt(max_value)** | [maxfwd](https://www.kamailio.org/docs/modules/5.6.x/modules/maxfwd.html#maxfwd.f.is_maxfwd_lt) |
| **is_method(name)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.is_method) |
| **is_myself(uri)** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.is_myself) |
| **is_numeric(tval)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_numeric) |
| **is_peer_verified()** | [tls](https://www.kamailio.org/docs/modules/5.6.x/modules/tls.html#tls.f.is_peer_verfied) |
| **is_present_hf(hf_name)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.is_present_hf) |
| **is_present_hf_pv(hf_name)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.is_present_hf_pv) |
| **is_present_hf_re(hf_name_re)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.is_present_hf_re) |
| **is_present_hf_re_pv(hf_name_re)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.is_present_hf_re_pv) |
| **is_privacy(privacy_type)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.is_privacy) |
| **is_pure_ip (ip)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.is_pur_ip) |
| **is_reply()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_reply) |
| **is_request()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_request) |
| **is_rfc1918(ip_address)** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.is_rfc1918) |
| **is_rpid_user_e164()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html) |
| **is_socket_name(sockname)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.is_socket_name) |
| **is_subscriber(uri, dbtable, flags)** | [auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_db.html#auth_db.f.is_subscriber) |
| **is_supported(option)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_supported) |
| **is_tel_number(tval)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_tel_number) |
| **is_ugflag(flag_num)** | [uid_gflags](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_gflags.html#is_ugflag) |
| **is_uri(pseudo-variable)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_uri) |
| **is_uri_host_local()** | [domain](https://www.kamailio.org/docs/modules/5.6.x/modules/domain.html#domain.f.is_uri_host_local) |
| **is_uri_user_e164(pseudo-variable)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_uri_user_e164) |
| **is_user(username)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.is_user) |
| **is_user_in(URI, group)** | [group](https://www.kamailio.org/docs/modules/5.6.x/modules/group.html#group.f.is_user_in) |
| **i_enum_query(["suffix" [,"service"]])** | [enum](https://www.kamailio.org/docs/modules/5.6.x/modules/enum.html#enum.f.i_enum_query) |
| **I_perform_location_information_request(route_block)** | [ims_icscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_icscf.html) |
| **I_perform_user_authorization_request(route_block, capabalities)** | [ims_icscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_icscf.html) |
| **I_scscf_drop()** | [ims_icscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_icscf.html) |
| **I_scscf_select(initial)** | [ims_icscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_icscf.html) |

## [j]

| Name | Module Name |
|------|-------------|
| **janssonrpc_notification(conn, method, parameters)** | [janssonrpcc](https://www.kamailio.org/docs/modules/5.6.x/modules/janssonrpcc.html) |
| **janssonrpc_request(conn, method, params[, options]])** | [janssonrpcc](https://www.kamailio.org/docs/modules/5.6.x/modules/janssonrpcc.html) |
| **jansson_append(type, key/path, value, result)** | [jansson](https://www.kamailio.org/docs/modules/5.6.x/modules/jansson.html#jansson.f.jansson_append) |
| **jansson_array_size(key/path, src, dst)** | [jansson](https://www.kamailio.org/docs/modules/5.6.x/modules/jansson.html#jansson.f.jansson_array_size) |
| **jansson_get(key/path, src, dst)** | [jansson](https://www.kamailio.org/docs/modules/5.6.x/modules/jansson.html#jansson.f.jansson_get) |
| **jansson_get_field(src, field_name, dst)** | [jansson](https://www.kamailio.org/docs/modules/5.6.x/modules/jansson.html#jansson.f.jansson_get_field) |
| **jansson_set(type, key/path, value, result)** | [jansson](https://www.kamailio.org/docs/modules/5.6.x/modules/jansson.html#jansson.f.jansson_set) |
| **jansson_xdecode(json, xavp)** | [jansson](https://www.kamailio.org/docs/modules/5.6.x/modules/jansson.html#jansson.f.jansson_xdecode) |
| **jansson_xencode(xavp, pv)** | [jansson](https://www.kamailio.org/docs/modules/5.6.x/modules/jansson.html#jansson.f.jansson_xencode) |
| **java_method_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](https://www.kamailio.org/docs/modules/5.6.x/modules/app_java.html#app_java.f.java_method_exec) |
| **java_staticmethod_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](https://www.kamailio.org/docs/modules/5.6.x/modules/app_java.html#app_java.f.java_staticmethod_exec) |
| **java_s_method_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](https://www.kamailio.org/docs/modules/5.6.x/modules/app_java.html#app_java.f.java_s_method_exec) |
| **java_s_staticmethod_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](https://www.kamailio.org/docs/modules/5.6.x/modules/app_java.html#app_java.f.java_s_staticmethod_exec) |
| **jsdt_dofile(path)** | [app_jsdt](https://www.kamailio.org/docs/modules/5.6.x/modules/app_jsdt.html#app_jsdt.f.jsdt_dofile) |
| **jsdt_dostring(script)** | [app_jsdt](https://www.kamailio.org/docs/modules/5.6.x/modules/app_jsdt.html#app_jsdt.f.jsdt_dostring) |
| **jsdt_run(function, params)** | [app_jsdt](https://www.kamailio.org/docs/modules/5.6.x/modules/app_jsdt.html#app_jsdt.f.jsdt_run) |
| **jsdt_runstring(script)** | [app_jsdt](https://www.kamailio.org/docs/modules/5.6.x/modules/app_jsdt.html#app_jsdt.f.jsdt_runstring) |
| **jsonrpc_dispatch()** | [jsonrpcs](https://www.kamailio.org/docs/modules/5.6.x/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_dispatch) |
| **jsonrpc_exec(cmd)** | [jsonrpcs](https://www.kamailio.org/docs/modules/5.6.x/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_exec) |
| **jsonrpc_notification(method, parameters)** | [jsonrpcc](https://www.kamailio.org/docs/modules/5.6.x/modules/jsonrpcc.html) |
| **jsonrpc_request(method, parameters, return_route, error_route, result_var)** | [jsonrpcc](https://www.kamailio.org/docs/modules/5.6.x/modules/jsonrpcc.html) |
| **json_get_field(json_string, field_name, destination)** | [json](https://www.kamailio.org/docs/modules/5.6.x/modules/json.html#json.f.json_get_field) |
| **json_get_string(json_string, field_name, destination)** | [json](https://www.kamailio.org/docs/modules/5.6.x/modules/json.html#json.f.json_get_string) |
| **jwt_generate(prvkey, alg, claims, [headers])** | [jwt](https://www.kamailio.org/docs/modules/5.6.x/modules/jwt.html#jwt.f.jwt_generate) |
| **jwt_verify(pubkey, alg, claims, jwtval)** | [jwt](https://www.kamailio.org/docs/modules/5.6.x/modules/jwt.html#jwt.f.jwt_verify) |

## [k]

| Name | Module Name |
|------|-------------|
| **kazoo_encode(to_encode, target_var)** | [modules](https://www.kamailio.org/docs/modules/5.6.x/modules/kazoo.html) |
| **kazoo_json(json_payload, field, target_var)** | [modules](https://www.kamailio.org/docs/modules/5.6.x/modules/kazoo.html) |
| **kazoo_pua_publish(json_payload)** | [modules](https://www.kamailio.org/docs/modules/5.6.x/modules/kazoo.html) |
| **kazoo_publish(exchange, routing_key, json_payload [, amqp_headers])** | [modules](https://www.kamailio.org/docs/modules/5.6.x/modules/kazoo.html) |
| **kazoo_query(exchange, routing_key, json_payload [, target_var] [, amqp_headers])** | [modules](https://www.kamailio.org/docs/modules/5.6.x/modules/kazoo.html) |
| **kazoo_subscribe(exchange, exchange_type, queue, routing_key)** | [modules](https://www.kamailio.org/docs/modules/5.6.x/modules/kazoo.html) |
| **kazoo_subscribe(json_description)** | [modules](https://www.kamailio.org/docs/modules/5.6.x/modules/kazoo.html) |
| **keep_hf([regexp])** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.keep_hf) |
| **km_append_branch([uri])** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.km_append_branch) |

## [l]

| Name | Module Name |
|------|-------------|
| **ldap_filter_url_encode(string, avp_spec)** | [ldap](https://www.kamailio.org/docs/modules/5.6.x/modules/ldap.html#ldap-filter-url-encode-fn) |
| **ldap_result("ldap_attr_name/avp_spec[/avp_type]" [, regex_subst])** | [ldap](https://www.kamailio.org/docs/modules/5.6.x/modules/ldap.html#ldap-result-fn) |
| **ldap_result_check("ldap_attr_name/string_to_match" [, regex_subst])** | [ldap](https://www.kamailio.org/docs/modules/5.6.x/modules/ldap.html#ldap-result-check-fn) |
| **ldap_result_next()** | [ldap](https://www.kamailio.org/docs/modules/5.6.x/modules/ldap.html#ldap-result-next-fn) |
| **ldap_search(ldap_url)** | [ldap](https://www.kamailio.org/docs/modules/5.6.x/modules/ldap.html#ldap-search-fn) |
| **load_attrs (track, id)** | [uid_avp_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_avp_db.html) |
| **load_extra_attrs (group_id, id)** | [uid_avp_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_avp_db.html) |
| **load_gws(lcr_id[, uri_user[, caller_uri]])** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.load_gws) |
| **lock(key)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.lock) |
| **lock_extra_attrs (group_id, id)** | [uid_avp_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_avp_db.html) |
| **log_udp(text)** | [log_custom](https://www.kamailio.org/docs/modules/5.6.x/modules/log_custom.html#log_custom.f.log_udp) |
| **lookup(domain [, uri])** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.lookup) |
| **lookup(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **lookup_branches(domain)** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.lookup_branches) |
| **lookup_domain(attr_group, domain)** | [uid_domain](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_domain.html#lookup_domain) |
| **lookup_domain(domain [, prefix])** | [domain](https://www.kamailio.org/docs/modules/5.6.x/modules/domain.html#domain.f.lookup_domain) |
| **lookup_path_to_contact(uri)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **lookup_to_dset(domain [, uri])** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.lookup_to_dset) |
| **loose_route()** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.loose_route) |
| **loose_route_mode(vmode)** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.loose_route_mode) |
| **loose_route_preloaded()** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.loose_route_preloaded) |
| **lost_held_dereference(url, rtime, rtype, pidf-lo, error)** | [lost](https://www.kamailio.org/docs/modules/5.6.x/modules/lost.html#lost.f.lost_held_dereference) |
| **lost_held_query(con, [id,] pidf-lo, url, error)** | [lost](https://www.kamailio.org/docs/modules/5.6.x/modules/lost.html#lost.f.lost_held_query) |
| **lost_query(con, [pidf-lo, urn,] uri, name, error)** | [lost](https://www.kamailio.org/docs/modules/5.6.x/modules/lost.html#lost.f.lost_query) |
| **lua_dofile(path)** | [app_lua](https://www.kamailio.org/docs/modules/5.6.x/modules/app_lua.html#app_lua.f.lua_dotfile) |
| **lua_dostring(script)** | [app_lua](https://www.kamailio.org/docs/modules/5.6.x/modules/app_lua.html#app_lua.f.lua_dostring) |
| **lua_run(func [, params])** | [app_lua](https://www.kamailio.org/docs/modules/5.6.x/modules/app_lua.html#app_lua.f.lua_run) |
| **lua_runstring(script)** | [app_lua](https://www.kamailio.org/docs/modules/5.6.x/modules/app_lua.html#app_lua.f.lua_runstring) |
| **lwsc_notify(wsurl, data)** | [lwsc](https://www.kamailio.org/docs/modules/5.6.x/modules/lwsc.html#lwsc.f.lwsc_notify) |
| **lwsc_notify_proto(wsurl, wsproto, data)** | [lwsc](https://www.kamailio.org/docs/modules/5.6.x/modules/lwsc.html#lwsc.f.lwsc_notify_proto) |
| **lwsc_request(wsurl, data)** | [lwsc](https://www.kamailio.org/docs/modules/5.6.x/modules/lwsc.html#lwsc.f.lwsc_request) |
| **lwsc_request_proto(wsurl, wsproto, data)** | [lwsc](https://www.kamailio.org/docs/modules/5.6.x/modules/lwsc.html#lwsc.f.lwsc_request_proto) |

## [m]

| Name | Module Name |
|------|-------------|
| **matrix (string first, string second, string dstavp)** | [matrix](https://www.kamailio.org/docs/modules/5.6.x/modules/matrix.html#matrix.f.matrix) |
| **maxfwd_at_least(max_value)** | [maxfwd](https://www.kamailio.org/docs/modules/5.6.x/modules/maxfwd.html#maxfwd.f.maxfwd_at_least) |
| **maxfwd_process(max_value)** | [maxfwd](https://www.kamailio.org/docs/modules/5.6.x/modules/maxfwd.html#maxfwd.f.maxfwd_process) |
| **mf_lowlimit(max_value)** | [maxfwd](https://www.kamailio.org/docs/modules/5.6.x/modules/maxfwd.html#maxfwd.f.mf_lowlimit) |
| **mf_process_maxfwd_header(max_value)** | [maxfwd](https://www.kamailio.org/docs/modules/5.6.x/modules/maxfwd.html#maxfwd.f.mf_process_maxfwd_header) |
| **mohq_count (queue_name, pvar)** | [mohqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mohqueue.html#count.func) |
| **mohq_process ()** | [mohqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mohqueue.html#proc.func) |
| **mohq_retrieve (queue_name, URI)** | [mohqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mohqueue.html#retrieve.func) |
| **mohq_send (queue_name)** | [mohqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mohqueue.html#send.func) |
| **mongodb_cmd(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmd) |
| **mongodb_cmd_simple(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmd_simple) |
| **mongodb_find(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_find) |
| **mongodb_find_one(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_find_one) |
| **mongodb_free(replyid)** | [ndb_mongodb](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_free) |
| **mongodb_next(replyid)** | [ndb_mongodb](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_next) |
| **mono_exec(path [, param])** | [app_mono](https://www.kamailio.org/docs/modules/5.6.x/modules/app_mono.html#app_mono.f.mono_exec) |
| **mono_run([param])** | [app_mono](https://www.kamailio.org/docs/modules/5.6.x/modules/app_mono.html#app_mono.mono_run) |
| **mqtt_publish(topic, message, qos)** | [mqtt](https://www.kamailio.org/docs/modules/5.6.x/modules/mqtt.html#evapi.f.mqtt_publish) |
| **mqtt_subscribe(topic, qos)** | [mqtt](https://www.kamailio.org/docs/modules/5.6.x/modules/mqtt.html#evapi.f.mqtt_subscribe) |
| **mqtt_unsubscribe(topic)** | [mqtt](https://www.kamailio.org/docs/modules/5.6.x/modules/mqtt.html#evapi.f.mqtt_unsubscribe) |
| **mq_add(queue, key, value)** | [mqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mqueue.html#mqueue.f.mq_add) |
| **mq_fetch(queue)** | [mqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mqueue.html#mqueue.f.mq_fetch) |
| **mq_pv_free(queue)** | [mqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mqueue.html#mqueue.f.mq_pv_free) |
| **mq_size(queue)** | [mqueue](https://www.kamailio.org/docs/modules/5.6.x/modules/mqueue.html#mqueue.f.mq_size) |
| **msg_apply_changes()** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.msg_apply_changes) |
| **msg_iflag_is_set(flagname)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.msg_iflag_is_set) |
| **msg_iflag_reset(flagname)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.msg_iflag_reset) |
| **msg_iflag_set(flagname)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.msg_iflag_set) |
| **msg_set_buffer(data)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.msg_set_buffer) |
| **msrp_cmap_lookup()** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_cmap_lookup) |
| **msrp_cmap_save()** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_cmap_save) |
| **msrp_is_reply()** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_is_reply) |
| **msrp_is_request()** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_is_request) |
| **msrp_relay()** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_relay) |
| **msrp_relay_flags(flags)** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_relay_flags) |
| **msrp_reply(code, text [, hdrs])** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_reply) |
| **msrp_reply_flags(flags)** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_reply_flags) |
| **msrp_set_dst(addr, sock)** | [msrp](https://www.kamailio.org/docs/modules/5.6.x/modules/msrp.html#msrp.f.msrp_set_dst) |
| **mt_match(mtree, pv, mode)** | [mtree](https://www.kamailio.org/docs/modules/5.6.x/modules/mtree.html) |
| **mt_mem_alloc(size)** | [misctest](https://www.kamailio.org/docs/modules/5.6.x/modules/misctest.html#misctest.mt_mem_alloc) |
| **mt_mem_free()** | [misctest](https://www.kamailio.org/docs/modules/5.6.x/modules/misctest.html#misctest.mt_mem_free) |
| **m_dump([owner])** | [msilo](https://www.kamailio.org/docs/modules/5.6.x/modules/msilo.html#msilo.f.m_dump) |
| **m_store([owner])** | [msilo](https://www.kamailio.org/docs/modules/5.6.x/modules/msilo.html#msilo.f.m_store) |

## [n]

| Name | Module Name |
|------|-------------|
| **naptr_query(domain, pvid)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.naptr_query) |
| **nats_publish(subject, payload)** | [nats](https://www.kamailio.org/docs/modules/5.6.x/modules/nats.html#nats.f.nats_publish) |
| **nat_uac_test(flags)** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.f.nat_uac_test) |
| **next_gw()** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.next_gw) |
| **next_routing()** | [drouting](https://www.kamailio.org/docs/modules/5.6.x/modules/drouting.html#drouting.f.next_routing) |
| **not_empty(pvar)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.not_empty) |

## [o]

| Name | Module Name |
|------|-------------|
| **options_reply()** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.options_reply) |

## [p]

| Name | Module Name |
|------|-------------|
| **pcre_match (string, pcre_regex)** | [regex](https://www.kamailio.org/docs/modules/5.6.x/modules/regex.html#regex.f.pcre_match) |
| **pcre_match_group (string [, group])** | [regex](https://www.kamailio.org/docs/modules/5.6.x/modules/regex.html#regex.f.pcre_match_group) |
| **pcscf_follows_service_routes(domain)** | [ims_registrar_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_pcscf.html) |
| **pcscf_force_service_routes(domain)** | [ims_registrar_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_pcscf.html) |
| **pcscf_is_registered(domain)** | [ims_registrar_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_pcscf.html) |
| **pcscf_save(domain)** | [ims_registrar_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_pcscf.html) |
| **pcscf_save_pending(domain)** | [ims_registrar_pcscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_pcscf.html) |
| **pdb_query (string query, string dstavp)** | [pdb](https://www.kamailio.org/docs/modules/5.6.x/modules/pdb.html) |
| **pd_translate(sdomain, rewrite_mode)** | [pdt](https://www.kamailio.org/docs/modules/5.6.x/modules/pdt.html) |
| **perl_exec(func, [param])** | [app_perl](https://www.kamailio.org/docs/modules/5.6.x/modules/app_perl.html#app_perl.f.perl_exec) |
| **perl_exec_simple(func, [param])** | [app_perl](https://www.kamailio.org/docs/modules/5.6.x/modules/app_perl.html#app_perl.f.perl_exec_simple) |
| **phonenum_match(num, pvc)** | [phonenum](https://www.kamailio.org/docs/modules/5.6.x/modules/phonenum.html#phonenum.f.phonenum_match) |
| **phonenum_match_cn(num, cnc, pvc)** | [phonenum](https://www.kamailio.org/docs/modules/5.6.x/modules/phonenum.html#phonenum.f.phonenum_match_cn) |
| **pike_check_ip(ipaddr)** | [pike](https://www.kamailio.org/docs/modules/5.6.x/modules/pike.html#pike.f.pike_check_ip) |
| **pike_check_req()** | [pike](https://www.kamailio.org/docs/modules/5.6.x/modules/pike.html#pike.f.pike_check_req) |
| **pkg_status()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.pkg_status) |
| **pkg_summary()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.pkg_summary) |
| **play_dtmf([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.play_dtmf) |
| **play_media([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.play_media) |
| **pl_active(name)** | [pipelimit](https://www.kamailio.org/docs/modules/5.6.x/modules/pipelimit.html#pipelimit.f.pl_active) |
| **pl_check(name [, algorithm, limit])** | [pipelimit](https://www.kamailio.org/docs/modules/5.6.x/modules/pipelimit.html#pipelimit.f.pl_check) |
| **pl_drop([ [min ], max ])** | [pipelimit](https://www.kamailio.org/docs/modules/5.6.x/modules/pipelimit.html#pipelimit.f.pl_drop) |
| **pos_append(idx, val)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_append) |
| **pos_body_end()** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_body_end) |
| **pos_body_start()** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_body_start) |
| **pos_findi_str(idx, val)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_findi_str) |
| **pos_find_str(idx, val)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_find_str) |
| **pos_headers_end()** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_headers_end) |
| **pos_headers_start()** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_headers_start) |
| **pos_insert(idx, val)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_insert) |
| **pos_rfindi_str(idx, val)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_rfindi_str) |
| **pos_rfind_str(idx, val)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_rfind_str) |
| **pos_rm(idx, len)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_rm) |
| **pos_rsearch(idx, re)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_rsearch) |
| **pos_search(idx, re)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_search) |
| **pos_set_char(idx, val)** | [posops](https://www.kamailio.org/docs/modules/5.6.x/modules/posops.html#posops.f.pos_set_char) |
| **prefix2domain()** | [pdt](https://www.kamailio.org/docs/modules/5.6.x/modules/pdt.html) |
| **prefix2domain(rewrite_mode)** | [pdt](https://www.kamailio.org/docs/modules/5.6.x/modules/pdt.html) |
| **prefix2domain(rewrite_mode, multidomain_mode)** | [pdt](https://www.kamailio.org/docs/modules/5.6.x/modules/pdt.html) |
| **prefix_route([user])** | [prefix_route](https://www.kamailio.org/docs/modules/5.6.x/modules/prefix_route.html#prefixroute.prefix_route) |
| **prepareallosproute()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **prepareosproute()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **pres_auth_status(watcher_uri, presentity_uri)** | [presence](https://www.kamailio.org/docs/modules/5.6.x/modules/presence.html#presence.f.pres_auth_status) |
| **pres_check_activities(presentity_uri, activity)** | [presence_xml](https://www.kamailio.org/docs/modules/5.6.x/modules/presence_xml.html#presence_xml.f.pres_check_activities) |
| **pres_check_basic(presentity_uri, status)** | [presence_xml](https://www.kamailio.org/docs/modules/5.6.x/modules/presence_xml.html#presence_xml.f.pres_check_basic) |
| **pres_has_subscribers(presentity_uri, event)** | [presence](https://www.kamailio.org/docs/modules/5.6.x/modules/presence.html#presence.f.pres_has_subscribers) |
| **pres_refresh_watchers(uri, event, type[, file_uri, filename])** | [presence](https://www.kamailio.org/docs/modules/5.6.x/modules/presence.html#presence.f.pres_refresh_watchers) |
| **pres_update_watchers(uri, event)** | [presence](https://www.kamailio.org/docs/modules/5.6.x/modules/presence.html#presence.f.pres_update_watchers) |
| **print(txt)** | [print](https://www.kamailio.org/docs/modules/5.6.x/modules/print.html#print.print) |
| **print_attr($attribute)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.print_aattr) |
| **print_stderr(txt)** | [print_lib](https://www.kamailio.org/docs/modules/5.6.x/modules/print_lib.html#print_lib.print) |
| **process_maxfwd(max_value)** | [maxfwd](https://www.kamailio.org/docs/modules/5.6.x/modules/maxfwd.html) |
| **prom_check_uri()** | [xhttp_prom](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_prom.html#xhttp_prom.f.prom_check_uri) |
| **prom_counter_inc(name, number, l0, l1, l2)** | [xhttp_prom](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_prom.html#xhttp_prom.f.prom_counter_inc) |
| **prom_counter_reset(name, l0, l1, l2)** | [xhttp_prom](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_prom.html#xhttp_prom.f.prom_counter_reset) |
| **prom_dispatch()** | [xhttp_prom](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_prom.html#xhttp_prom.f.prom_dispatch) |
| **prom_gauge_reset(name, l0, l1, l2)** | [xhttp_prom](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_prom.html#xhttp_prom.f.prom_gauge_reset) |
| **prom_gauge_set(name, number, l0, l1, l2)** | [xhttp_prom](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_prom.html#xhttp_prom.f.prom_gauge_set) |
| **prom_histogram_observe(name, number, l0, l1, l2)** | [xhttp_prom](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp_prom.html#xhttp_prom.f.prom_histogram_observe) |
| **proxy_authenticate(realm, table)** | [auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_db.html#auth_db.f.proxy_authenticate) |
| **proxy_authorize(realm, table)** | [auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_db.html#auth_db.f.proxy_authorize) |
| **proxy_authorize(realm, table)** | [uid_auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_auth_db.html#proxy_authorize) |
| **proxy_challenge(realm, flags)** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.proxy_challenge) |
| **pua_json_publish(json_payload)** | [pua_json](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_json.html) |
| **pua_set_publish()** | [pua_usrloc](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_usrloc.html) |
| **pua_update_contact()** | [pua](https://www.kamailio.org/docs/modules/5.6.x/modules/pua.html) |
| **pua_xmpp_notify()** | [pua_xmpp](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_notify) |
| **pua_xmpp_req_winfo(request_uri, expires)** | [pua_xmpp](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_req_winfo) |
| **publish_reg(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **pv_auth_check(realm, passwd, flags, checks)** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.pv_auth_check) |
| **pv_evalx(dst, fmt)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_evalx) |
| **pv_isset(pvar)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_isset) |
| **pv_printf(var, str)** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.pv_printf) |
| **pv_proxy_authenticate(realm, passwd, flags)** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.pv_proxy_authenticate) |
| **pv_unset(pvar)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_unset) |
| **pv_var_to_xavp(varname, xname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_var_to_xavp) |
| **pv_www_authenticate(realm, passwd, flags [, method])** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.pv_www_authenticate) |
| **pv_xavi_print()** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_xavi_print) |
| **pv_xavp_print()** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_xavp_print) |
| **pv_xavp_to_var(xname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_xavp_to_var) |
| **pv_xavu_print()** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.pv_xavu_print) |
| **python_exec(method [, args])** | [app_python3](https://www.kamailio.org/docs/modules/5.6.x/modules/app_python3.html#app_python3.f.python_exec) |
| **python_exec(method [, args])** | [app_python](https://www.kamailio.org/docs/modules/5.6.x/modules/app_python.html#app_python.f.python_exec) |

## [q]

| Name | Module Name |
|------|-------------|

## [r]

| Name | Module Name |
|------|-------------|
| **rabbitmq_publish(exchange, routing_key, content_type, messagebody)** | [rabbitmq](https://www.kamailio.org/docs/modules/5.6.x/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publish) |
| **rabbitmq_publish_consume(exchange, routing_key, content_type, messagebody, reply)** | [rabbitmq](https://www.kamailio.org/docs/modules/5.6.x/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publish_consume) |
| **radius_does_uri_exist([uri])** | [misc_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/misc_radius.html#mrad.f.does_uri_exist) |
| **radius_does_uri_user_exist([user])** | [misc_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/misc_radius.html#mrad.f.does_uri_user_exist) |
| **radius_is_user_in(user, group)** | [misc_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/misc_radius.html#mrad.f.is_user_in) |
| **radius_load_callee_avps(callee)** | [misc_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/misc_radius.html#mrad.f.load_callee_avps) |
| **radius_load_caller_avps(caller)** | [misc_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/misc_radius.html#mrad.f.load_caller_avps) |
| **radius_proxy_authorize(realm [, uri_user])** | [auth_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_radius.html#auth_radius.f.radius_proxy_authorize) |
| **radius_www_authorize(realm [, uri_user])** | [auth_radius](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_radius.html#auth_radius.f.radius_www_authorize) |
| **rand_event()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.rand_event) |
| **rand_get_prob()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.rand_get_prob) |
| **rand_reset_prob()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.rand_reset_prob) |
| **rand_set_prob(probability)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.rand_set_prob) |
| **record_route([sparams])** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.record_route) |
| **record_route_advertised_address(address)** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.record_route_adv_addr) |
| **record_route_preset(string [,string2])** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.record_route_preset) |
| **redis_cmd(srvname, command, ..., replyid)** | [ndb_redis](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_redis.html#ndb_redis.f.redis_cmd) |
| **redis_execute(srvname)** | [ndb_redis](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_redis.html#ndb_redis.f.redis_execute) |
| **redis_free(replyid)** | [ndb_redis](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_redis.html#ndb_redis.f.redis_free) |
| **redis_pipe_cmd(srvname, command, ..., replyid)** | [ndb_redis](https://www.kamailio.org/docs/modules/5.6.x/modules/ndb_redis.html#ndb_redis.f.redis_pipe_cmd) |
| **regex_substring(itext, regexp, mindex, mcount, dpv)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.regex_substring) |
| **reginfo_handle_notify(uldomain)** | [pua_reginfo](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_reginfo.html#pua_reginfo.f.reginfo_handle_notify) |
| **reginfo_subscribe(uri[, expires])** | [pua_reginfo](https://www.kamailio.org/docs/modules/5.6.x/modules/pua_reginfo.html) |
| **registered(domain [, uri [, match_option [, match_action]]])** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.registered) |
| **reg_fetch_contacts(domain, uri, profile)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **reg_fetch_contacts(domain, uri, profile)** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.reg_fetch_contacts) |
| **reg_free_contacts(profile)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **reg_free_contacts(profile)** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.reg_free_contacts) |
| **reg_send_reply()** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.reg_send_reply) |
| **remove_body()** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.remove_body) |
| **remove_body_part(content_type)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_body_part) |
| **remove_extra_attrs (group_id, id)** | [uid_avp_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_avp_db.html) |
| **remove_hf(hname)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf) |
| **remove_hf_exp(expmatch, expskip)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf_exp) |
| **remove_hf_exp_pv(expmatch, expskip)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf_exp_pv) |
| **remove_hf_idx(hname, idx)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf_idx) |
| **remove_hf_match(hname, op, expr)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf_match) |
| **remove_hf_pv(hname)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf_pv) |
| **remove_hf_re(re)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf_re) |
| **remove_hf_re_pv(re)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.remove_hf_re_pv) |
| **remove_hf_value(hf_par)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.remove_hf_value) |
| **remove_hf_value2(hf_par)** | [textopsx](https://www.kamailio.org/docs/modules/5.6.x/modules/textopsx.html#textopsx.f.remove_hf_value2) |
| **remove_record_route()** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.remove_record_route) |
| **replace(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace) |
| **replace_all(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_all) |
| **replace_attr_hf(header_name, $avp_name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.replace_attr_hf_2) |
| **replace_attr_hf(name)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.replace_attr_hf_1) |
| **replace_body(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_body) |
| **replace_body_all(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_body_all) |
| **replace_body_atonce(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_body_atonce) |
| **replace_body_str(match, repl, mode)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_body_str) |
| **replace_hdrs(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_hdrs) |
| **replace_hdrs_str(match, repl, mode)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_hdrs_str) |
| **replace_str(match, repl, mode)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.replace_str) |
| **reportospusage()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **report_capture([table], [cid], [data])** | [sipcapture](https://www.kamailio.org/docs/modules/5.6.x/modules/sipcapture.html#sipcapture.f.report_capture) |
| **requestosprouting()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **resetbflag(flag [, branch])** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.resetbflag) |
| **resetdebug()** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.resetdebug) |
| **resetdsturi()** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.resetdsturi) |
| **resetsflag(flag)** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.resetsflag) |
| **resetxflag(flag)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.resetxflag) |
| **reset_gflag(flag)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.reset_gflag) |
| **reset_stat(variable)** | [statistics](https://www.kamailio.org/docs/modules/5.6.x/modules/statistics.html#statistics.f.reset_stat) |
| **reset_ugflag(flag_num)** | [uid_gflags](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_gflags.html#reset_ugflag) |
| **rls_handle_notify()** | [rls](https://www.kamailio.org/docs/modules/5.6.x/modules/rls.html#rls.f.rls_handle_notify) |
| **rls_handle_subscribe([watcher_uri])** | [rls](https://www.kamailio.org/docs/modules/5.6.x/modules/rls.html#rls.f.rls_handle_subscribe) |
| **rls_update_subs(uri, event)** | [rls](https://www.kamailio.org/docs/modules/5.6.x/modules/rls.html#rls.f.rls_update_subs) |
| **rl_check([pvar])** | [ratelimit](https://www.kamailio.org/docs/modules/5.6.x/modules/ratelimit.html) |
| **rl_check_pipe(pipe_no)** | [ratelimit](https://www.kamailio.org/docs/modules/5.6.x/modules/ratelimit.html) |
| **rms_answer (event_route)** | [rtp_media_server](https://www.kamailio.org/docs/modules/5.6.x/modules/rtp_media_server.html#rtp_media_server.f.rms_answer) |
| **rms_bridge (target URI, event_route)** | [rtp_media_server](https://www.kamailio.org/docs/modules/5.6.x/modules/rtp_media_server.html#rtp_media_server.f.rms_bridge) |
| **rms_dialog_check ()** | [rtp_media_server](https://www.kamailio.org/docs/modules/5.6.x/modules/rtp_media_server.html#rtp_media_server.f.rms_dialog_check) |
| **rms_hangup ()** | [rtp_media_server](https://www.kamailio.org/docs/modules/5.6.x/modules/rtp_media_server.html#rtp_media_server.f.rms_hangup) |
| **rms_play (file, event_route)** | [rtp_media_server](https://www.kamailio.org/docs/modules/5.6.x/modules/rtp_media_server.html#rtp_media_server.f.rms_play) |
| **rms_sip_request ()** | [rtp_media_server](https://www.kamailio.org/docs/modules/5.6.x/modules/rtp_media_server.html#rtp_media_server.f.rms_sip_request) |
| **route_if_exists(route)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.route_if_exists) |
| **Ro_CCR(route_name, direction, reservation_units, incoming_trunk_id, outgoing_trunk_id)** | [ims_charging](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_charging.html) |
| **Ro_set_session_id_avp()** | [ims_charging](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_charging.html) |
| **rr_next_hop_route()** | [rr](https://www.kamailio.org/docs/modules/5.6.x/modules/rr.html#rr.f.rr_next_hop_route) |
| **rtjson_init_routes(rtdoc)** | [rtjson](https://www.kamailio.org/docs/modules/5.6.x/modules/rtjson.html#rtjson.f.rtjson_init_routes) |
| **rtjson_next_route()** | [rtjson](https://www.kamailio.org/docs/modules/5.6.x/modules/rtjson.html#rtjson.f.rtjson_next_route) |
| **rtjson_push_routes()** | [rtjson](https://www.kamailio.org/docs/modules/5.6.x/modules/rtjson.html#rtjson.f.rtjson_push_routes) |
| **rtjson_update_branch()** | [rtjson](https://www.kamailio.org/docs/modules/5.6.x/modules/rtjson.html#rtjson.f.rtjson_update_branch) |
| **rtpengine_answer([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.rtpengine_answer) |
| **rtpengine_delete([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.rtpengine_delete) |
| **rtpengine_info([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.rtpengine_info) |
| **rtpengine_manage([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.rtpengine_manage) |
| **rtpengine_offer([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.rtpengine_offer) |
| **rtpengine_query([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.rtpengine_query) |
| **rtpengine_query_v(fmt, var)** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.rtpengine_query_v) |
| **rtpproxy_answer([flags [, ip_address]])** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_answer) |
| **rtpproxy_destroy([flags])** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_destroy) |
| **rtpproxy_manage([flags [, ip_address]])** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_manage) |
| **rtpproxy_offer([flags [, ip_address]])** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_offer) |
| **rtpproxy_stop_stream2uac(),** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uac) |
| **rtpproxy_stop_stream2uas()** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uas) |
| **rtpproxy_stream2uac(prompt_name, count),** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uac) |
| **rtpproxy_stream2uas(prompt_name, count)** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uas) |
| **ruby_run(function, params)** | [app_ruby](https://www.kamailio.org/docs/modules/5.6.x/modules/app_ruby.html#app_ruby.f.ruby_run) |
| **ruxc_http_delete(url, body, hdrs, respv)** | [ruxc](https://www.kamailio.org/docs/modules/5.6.x/modules/ruxc.html#ruxc.f.ruxc_http_delete) |
| **ruxc_http_get(url, hdrs, respv)** | [ruxc](https://www.kamailio.org/docs/modules/5.6.x/modules/ruxc.html#ruxc.f.ruxc_http_get) |
| **ruxc_http_post(url, body, hdrs, respv)** | [ruxc](https://www.kamailio.org/docs/modules/5.6.x/modules/ruxc.html#ruxc.f.ruxc_http_post) |
| **Rx_AAR(route_block, direction, subscription_id, subscription_id_type)** | [ims_qos](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_qos.html) |
| **Rx_AAR_Register(route_block, domain)** | [ims_qos](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_qos.html) |

## [s]

| Name | Module Name |
|------|-------------|
| **sanity_check([msg_checks [, uri_checks]])** | [sanity](https://www.kamailio.org/docs/modules/5.6.x/modules/sanity.html#sanity.f.sanity_check) |
| **sanity_reply()** | [sanity](https://www.kamailio.org/docs/modules/5.6.x/modules/sanity.html#sanity.f.sanity_reply) |
| **save(async_reply_route, domain, mode, flags)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **save(domain, [, flags [, uri]])** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.save) |
| **save_extra_attrs (group_id, id)** | [uid_avp_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_avp_db.html) |
| **sbranch_append()** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.sbranch_append) |
| **sbranch_reset()** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.sbranch_reset) |
| **sbranch_set_ruri()** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.sbranch_set_ruri) |
| **sca_call_info_update([mask, to, from])** | [sca](https://www.kamailio.org/docs/modules/5.6.x/modules/sca.html#sca.f.sca_call_info_update) |
| **sca_handle_subscribe()** | [sca](https://www.kamailio.org/docs/modules/5.6.x/modules/sca.html#sca.f.sca_handle_subscribe) |
| **sdp_content([sloppy])** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_content) |
| **sdp_get(avpvar)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_get) |
| **sdp_get_address_family()** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_get_address_family) |
| **sdp_get_line_startswith(avpvar, string)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_get_line_startswith) |
| **sdp_keep_codecs_by_id(list [, mtype])** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.keep_codecs_by_id) |
| **sdp_keep_codecs_by_name(list [, mtype])** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.keep_codecs_by_name) |
| **sdp_mangle_ip(pattern, newip)** | [mangler](https://www.kamailio.org/docs/modules/5.6.x/modules/mangler.html#mangler.f.sdp_mangle_ip) |
| **sdp_mangle_port(offset)** | [mangler](https://www.kamailio.org/docs/modules/5.6.x/modules/mangler.html#mangler.f.sdp_mangle_port) |
| **sdp_print(level)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_print) |
| **sdp_remove_codecs_by_id(list [, mtype])** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.remove_codecs_by_id) |
| **sdp_remove_codecs_by_name(list [, mtype])** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.remove_codecs_by_name) |
| **sdp_remove_line_by_prefix(string [, mtype])** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.remove_line_by_prefix) |
| **sdp_remove_media(type)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_remove_media) |
| **sdp_remove_transport(type)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_remove_transport) |
| **sdp_transport(pv)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_transport) |
| **sdp_with_active_media(type)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_with_active_media) |
| **sdp_with_codecs_by_id(list)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_with_codecs_by_id) |
| **sdp_with_codecs_by_name(list)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdspops.f.sdp.with_codecs_by_name) |
| **sdp_with_ice()** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_with_ice) |
| **sdp_with_media(type)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_with_media) |
| **sdp_with_transport(type)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_with_transport) |
| **sdp_with_transport_like(type)** | [sdpops](https://www.kamailio.org/docs/modules/5.6.x/modules/sdpops.html#sdpops.f.sdp_with_transport_like) |
| **sd_journal_print(level, text)** | [log_systemd](https://www.kamailio.org/docs/modules/5.6.x/modules/log_systemd.html#log_systemd.f.sd_journal_print) |
| **sd_journal_send_xavp(name)** | [log_systemd](https://www.kamailio.org/docs/modules/5.6.x/modules/log_systemd.html#log_systemd.f.sd_journal_send_xavp) |
| **sd_lookup(table [, owner])** | [speeddial](https://www.kamailio.org/docs/modules/5.6.x/modules/speeddial.html) |
| **search(re)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.search) |
| **search_append(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.search_append) |
| **search_append_body(re, txt)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.search_append_body) |
| **search_body(re)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.search_body) |
| **search_hf(hf, re, flags)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.search_hf) |
| **search_str(text. re)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.search_str) |
| **secf_check_contact_hdr ()** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_contact_hdr) |
| **secf_check_country (string)** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_country) |
| **secf_check_dst (string)** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_dst) |
| **secf_check_from_hdr ()** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_from_hdr) |
| **secf_check_ip ()** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.fsecf_.check_ip) |
| **secf_check_sqli_all ()** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_sqli_all) |
| **secf_check_sqli_hdr (string)** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_sqli_hdr) |
| **secf_check_to_hdr ()** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_to_hdr) |
| **secf_check_ua ()** | [secfilter](https://www.kamailio.org/docs/modules/5.6.x/modules/secfilter.html#secfilter.f.secf_check_ua) |
| **secsipid_add_identity(origTN, destTN, attest, origID, x5u, keyPath)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_add_identity) |
| **secsipid_build_identity(origTN, destTN, attest, origID, x5u, keyPath)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_build_identity) |
| **secsipid_build_identity_prvkey(origTN, destTN, attest, origID, x5u, keyData)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_build_identity_prvkey) |
| **secsipid_check(sIdentity, keyPath)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_check) |
| **secsipid_check_identity(keyPath)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_check_identity) |
| **secsipid_check_identity_pubkey(pubkeyVal)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_check_identity_pubkey) |
| **secsipid_get_url(url, ovar)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_get_url) |
| **secsipid_sign(sheaders, spaypload, keyPath)** | [secsipid](https://www.kamailio.org/docs/modules/5.6.x/modules/secsipid.html#secsipid.f.secsipid_sign) |
| **sendx(uri, sock, data)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.sendx) |
| **send_data(uri, data)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.send_data) |
| **send_reply(code, reason)** | [sl](https://www.kamailio.org/docs/modules/5.6.x/modules/sl.html#sl.f.send_reply) |
| **send_reply_mode(code, reason, mode)** | [sl](https://www.kamailio.org/docs/modules/5.6.x/modules/sl.html#sl.f.send_reply_mode) |
| **send_tcp([ host [ :port ] ])** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.send_tcp) |
| **send_udp([ host [ :port ] ])** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.send_udp) |
| **setbflag(flag [, branch])** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.setbflag) |
| **setdebug(level)** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.setdebug) |
| **setdsturi(uri)** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.setdsturi) |
| **setsflag(flag)** | [kex](https://www.kamailio.org/docs/modules/5.6.x/modules/kex.html#kex.f.setsflag) |
| **setxflag(flag)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.setxflag) |
| **set_accept_filter(filter,flags)** | [uac_redirect](https://www.kamailio.org/docs/modules/5.6.x/modules/uac_redirect.html#uac_redirect.f.set_accept_filter) |
| **set_alias_to_pv(target_avp)** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.set_alias_to_pv) |
| **set_body(txt,content_type)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.set_body) |
| **set_body_multipart([txt,content_type][,boundary])** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.set_body_multipart) |
| **set_contact_alias([trim])** | [nathelper](https://www.kamailio.org/docs/modules/5.6.x/modules/nathelper.html#nathelper.set_contact_alias) |
| **set_deny_filter(filter,flags)** | [uac_redirect](https://www.kamailio.org/docs/modules/5.6.x/modules/uac_redirect.html#uac_redirect.f.set_deny_filter) |
| **set_dlg_profile(profile,[value])** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.set_dlg_profile) |
| **set_dlg_profile(profile,[value])** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **set_gflag(flag)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.set_gflag) |
| **set_gflag(flag_num)** | [uid_gflags](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_gflags.html#set_ugflag) |
| **set_iattr(attribute,value)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.set_iattr) |
| **set_recv_socket(saddr)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.set_recv_socket) |
| **set_recv_socket_name(sname)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.set_recv_socket_name) |
| **set_reply_body(txt,content_type)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.set_reply_body) |
| **set_rtpengine_set(setid[, setid])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.set_rtpengine_set) |
| **set_rtp_proxy_set(setid)** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.set_rtp_proxy_set) |
| **set_sattr(attribute,value)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.set_sattr) |
| **set_send_socket(saddr)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.set_send_socket) |
| **set_send_socket_name(sname)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.set_send_socket_name) |
| **set_source_address(saddr)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.set_source_address) |
| **set_uri_host(uri, host)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.set_uri_host) |
| **set_uri_user(uri, user)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.set_uri_user) |
| **shm_status()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.shm_status) |
| **shm_summary()** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.shm_summary) |
| **sht_has_name(htable, op, mval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_has_name) |
| **sht_has_str_value(htable, op, mval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_has_str_value) |
| **sht_iterator_end(iname)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_iterator_end) |
| **sht_iterator_next(iname)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_iterator_next) |
| **sht_iterator_rm(iname)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_iterator_rm) |
| **sht_iterator_setex(iname, exval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_iterator_setex) |
| **sht_iterator_seti(iname, ival)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_iterator_seti) |
| **sht_iterator_sets(iname, sval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_iterator_sets) |
| **sht_iterator_start(iname, hname)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_iterator_start) |
| **sht_lock(htable=&gt;key)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_lock) |
| **sht_match_name(htable, op, mval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_match_name) |
| **sht_match_str_value(htable, op, mval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_match_str_value) |
| **sht_print()** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_print) |
| **sht_reset(htable)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_reset) |
| **sht_rm(htname, itname)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_rm) |
| **sht_rm_name(htable, op, val)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_rm_name) |
| **sht_rm_name_re(htable=&gt;regexp)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_rm_name_re) |
| **sht_rm_value(htable, op, val)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_rm_value) |
| **sht_rm_value_re(htable=&gt;regexp)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_rm_value_re) |
| **sht_setxi(htname, itname, itval, exval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_setxi) |
| **sht_setxs(htname, itname, itval, exval)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_setxs) |
| **sht_unlock(htable=&gt;key)** | [htable](https://www.kamailio.org/docs/modules/5.6.x/modules/htable.html#htable.f.sht_unlock) |
| **silence_media([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.silence_media) |
| **sipdump_send(tag)** | [sipdump](https://www.kamailio.org/docs/modules/5.6.x/modules/sipdump.html#sipdump.f.sipdump_send) |
| **sipt_destination(destination, hops, nai[, terminator=1])** | [sipt](https://www.kamailio.org/docs/modules/5.6.x/modules/sipt.html#sipt.f.sipt_destination) |
| **sipt_forwarding(origin, nai)** | [sipt](https://www.kamailio.org/docs/modules/5.6.x/modules/sipt.html#sipt.f.sipt_forwarding) |
| **sipt_has_isup_body()** | [sipt](https://www.kamailio.org/docs/modules/5.6.x/modules/sipt.html#sipt.f.sipt_has_isup_body) |
| **sipt_set_bci_1(charge_indicator, called_status, called_category, e2e_indicator)** | [sipt](https://www.kamailio.org/docs/modules/5.6.x/modules/sipt.html#sipt.f.sipt_set_bci_1) |
| **sipt_set_calling(origin, nai, presentation, screening)** | [sipt](https://www.kamailio.org/docs/modules/5.6.x/modules/sipt.html#sipt.f.sipt_set_calling) |
| **sip_capture([table], [cmode])** | [sipcapture](https://www.kamailio.org/docs/modules/5.6.x/modules/sipcapture.html#sipcapture.f.sip_capture) |
| **sip_capture_forward(uri)** | [sipcapture](https://www.kamailio.org/docs/modules/5.6.x/modules/sipcapture.html#sipcapture.f.sip_capture_forward) |
| **sip_p_charging_vector(flags)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.sip_p_charging_vector) |
| **sip_trace([address][,correlation_id][,mode])** | [siptrace](https://www.kamailio.org/docs/modules/5.6.x/modules/siptrace.html#siptrace.f.sip_trace) |
| **sip_trace_mode(tmode)** | [siptrace](https://www.kamailio.org/docs/modules/5.6.x/modules/siptrace.html#siptrace.f.sip_trace_mode) |
| **sj_serialize(opt, ovar)** | [sipjson](https://www.kamailio.org/docs/modules/5.6.x/modules/sipjson.html#sipjson.f.sj_serialize) |
| **slack_send(format)** | [slack](https://www.kamailio.org/docs/modules/5.6.x/modules/slack.html#slack.f.slack_send) |
| **sleep(time)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.sleep) |
| **sl_forward_reply([ code, [ reason ] ])** | [sl](https://www.kamailio.org/docs/modules/5.6.x/modules/sl.html#sl.f.sl_forward_reply) |
| **sl_reply_error()** | [sl](https://www.kamailio.org/docs/modules/5.6.x/modules/sl.html#sl.f.sl_reply_error) |
| **sl_send_reply(code, reason)** | [sl](https://www.kamailio.org/docs/modules/5.6.x/modules/sl.html#sl.f.sl_send_reply) |
| **smsdump()** | [smsops](https://www.kamailio.org/docs/modules/5.6.x/modules/smsops.html#smsops.f.smsdump) |
| **sms_send_msg()** | [sms](https://www.kamailio.org/docs/modules/5.6.x/modules/sms.html#sms_send_msg) |
| **sms_send_msg_to_net(network_name)** | [sms](https://www.kamailio.org/docs/modules/5.6.x/modules/sms.html#sms_send_msg_to_net) |
| **sqlang_dofile(path)** | [app_sqlang](https://www.kamailio.org/docs/modules/5.6.x/modules/app_sqlang.html#app_sqlang.f.sqlang_dofile) |
| **sqlang_dostring(script)** | [app_sqlang](https://www.kamailio.org/docs/modules/5.6.x/modules/app_sqlang.html#app_sqlang.f.sqlang_dostring) |
| **sqlang_run(function [, params])** | [app_sqlang](https://www.kamailio.org/docs/modules/5.6.x/modules/app_sqlang.html#app_sqlang.f.sqlang_run) |
| **sqlang_runstring(script)** | [app_sqlang](https://www.kamailio.org/docs/modules/5.6.x/modules/app_sqlang.html#app_sqlang.f.sqlang_runstring) |
| **sql_pvquery(connection, query, result)** | [sqlops](https://www.kamailio.org/docs/modules/5.6.x/modules/sqlops.html) |
| **sql_query(connection, query[, result])** | [sqlops](https://www.kamailio.org/docs/modules/5.6.x/modules/sqlops.html) |
| **sql_query_async(connection, query)** | [sqlops](https://www.kamailio.org/docs/modules/5.6.x/modules/sqlops.html#sqlops.f.sql_query_async) |
| **sql_result_free(result)** | [sqlops](https://www.kamailio.org/docs/modules/5.6.x/modules/sqlops.html) |
| **sql_xquery(connection, query, result)** | [sqlops](https://www.kamailio.org/docs/modules/5.6.x/modules/sqlops.html) |
| **srv_query(srvcname, pvid)** | [ipops](https://www.kamailio.org/docs/modules/5.6.x/modules/ipops.html#ipops.f.srv_query) |
| **sr_msg_async_pull(callid, msgid, gname, rname)** | [siprepo](https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html#siprepo.f.sr_msg_async_pull) |
| **sr_msg_check()** | [siprepo](https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html#siprepo.f.sr_msg_check) |
| **sr_msg_pull(callid, msgid, rname)** | [siprepo](https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html#siprepo.f.sr_msg_pull) |
| **sr_msg_push(msgid)** | [siprepo](https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html#siprepo.f.sr_msg_push) |
| **sr_msg_rm(callid, msgid)** | [siprepo](https://www.kamailio.org/docs/modules/5.6.x/modules/siprepo.html#siprepo.f.sr_msg_rm) |
| **sstCheckMin(send_reply_flag)** | [sst](https://www.kamailio.org/docs/modules/5.6.x/modules/sst.html#sst.f.sstCheckMin) |
| **starts_with(str1, str2)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.starts_with) |
| **start_forwarding([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.start_forwarding) |
| **start_recording()** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.start_recording) |
| **start_recording([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.start_recording) |
| **statsd_decr(key)** | [statsd](https://www.kamailio.org/docs/modules/5.6.x/modules/statsd.html#statsd.f.statsd_decr) |
| **statsd_gauge(key, value)** | [statsd](https://www.kamailio.org/docs/modules/5.6.x/modules/statsd.html#statsd.f.statsd_gauge) |
| **statsd_histogram(key, value)** | [statsd](https://www.kamailio.org/docs/modules/5.6.x/modules/statsd.html#statsd.f.statsd_histogram) |
| **statsd_incr(key)** | [statsd](https://www.kamailio.org/docs/modules/5.6.x/modules/statsd.html#statsd.f.statsd_incr) |
| **statsd_set(key, value)** | [statsd](https://www.kamailio.org/docs/modules/5.6.x/modules/statsd.html#statsd.f.statsd_set) |
| **statsd_start(key)** | [statsd](https://www.kamailio.org/docs/modules/5.6.x/modules/statsd.html#statsd.f.statsd_start) |
| **statsd_stop(key)** | [statsd](https://www.kamailio.org/docs/modules/5.6.x/modules/statsd.html#statsd.f.statsd_stop) |
| **stirshaken_add_identity(x5u, attest, origtn_val, desttn_val, origid)** | [stirshaken](https://www.kamailio.org/docs/modules/5.6.x/modules/stirshaken.html#stirshaken.f.stirshaken_add_identity) |
| **stirshaken_add_identity_with_key(x5u, attest, origtn_val, desttn_val, origid, keyPath)** | [stirshaken](https://www.kamailio.org/docs/modules/5.6.x/modules/stirshaken.html#stirshaken.f.stirshaken_add_identity_with_key) |
| **stirshaken_check_identity()** | [stirshaken](https://www.kamailio.org/docs/modules/5.6.x/modules/stirshaken.html#stirshaken.f.stirshaken_check_identity) |
| **stirshaken_check_identity_with_cert(certPath)** | [stirshaken](https://www.kamailio.org/docs/modules/5.6.x/modules/stirshaken.html#stirshaken.f.stirshaken_check_identity_with_cert) |
| **stirshaken_check_identity_with_key(keyPath)** | [stirshaken](https://www.kamailio.org/docs/modules/5.6.x/modules/stirshaken.html#stirshaken.f.stirshaken_check_identity_with_key) |
| **stop_forwarding([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.stop_forwarding) |
| **stop_media([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.stop_media) |
| **stop_recording([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.stop_recording) |
| **str_find(str1, str2)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.str_find) |
| **str_ifind(str1, str2)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.str_ifind) |
| **subscribe_to_reg(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **subst('/re/repl/flags')** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.subst) |
| **subst_attr($avp_name, subst_re)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.subst_attr) |
| **subst_body('/re/repl/flags')** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.subst_body) |
| **subst_hf(hf, subexp, flags)** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.subst_hf) |
| **subst_uri('/re/repl/flags')** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.subst_uri) |
| **subst_user('/re/repl/flags')** | [textops](https://www.kamailio.org/docs/modules/5.6.x/modules/textops.html#textops.f.subst_user) |
| **sworker_active()** | [sworker](https://www.kamailio.org/docs/modules/5.6.x/modules/sworker.html#sworker.f.sworker_active) |
| **swork_task(gname)** | [sworker](https://www.kamailio.org/docs/modules/5.6.x/modules/sworker.html#sworker.f.swork_task) |

## [t]

| Name | Module Name |
|------|-------------|
| **tcp_close_connection([conid])** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_close_connection) |
| **tcp_conid_alive(conid)** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_conid_alive) |
| **tcp_conid_state(conid)** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_conid_state) |
| **tcp_enable_closed_event([conid])** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_enable_closed_event) |
| **tcp_get_conid(hostport, pvname)** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_get_conid) |
| **tcp_keepalive_disable([conid])** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_keepalive_disable) |
| **tcp_keepalive_enable([conid], idle, count, interval)** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_keepalive_enable) |
| **tcp_set_connection_lifetime([conid], lifetime)** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_set_connection_lifetime) |
| **tcp_set_otcpid(conid)** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_set_otcpid) |
| **tcp_set_otcpid_flag(mode)** | [tcpops](https://www.kamailio.org/docs/modules/5.6.x/modules/tcpops.html#tcpops.f.tcp_set_otcpid_flag) |
| **tel2sip(uri, hostpart, result)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.tel2sip) |
| **term_impu_registered(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **time_period_match(period [, timestamp])** | [tmrec](https://www.kamailio.org/docs/modules/5.6.x/modules/tmrec.html#tmrec.f.time_period_match) |
| **tls_set_connect_server_id(srvid)** | [tls](https://www.kamailio.org/docs/modules/5.6.x/modules/tls.html#tls.f.tls_set_connect_server_id) |
| **tmrec_match(timerec [, timestamp])** | [tmrec](https://www.kamailio.org/docs/modules/5.6.x/modules/tmrec.html#tmrec.f.tmrec_match) |
| **to_any_gw([ip_addr, proto])** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.to_any_gw) |
| **to_gw(lcr_id[, ip_addr, proto])** | [lcr](https://www.kamailio.org/docs/modules/5.6.x/modules/lcr.html#lcr.f.to_gw) |
| **tps_set_context(ctx)** | [topos](https://www.kamailio.org/docs/modules/5.6.x/modules/topos.html#topos.f.tps_set_context) |
| **trylock(key)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.trylock) |
| **ts_append(domain, ruri)** | [tsilo](https://www.kamailio.org/docs/modules/5.6.x/modules/tsilo.html#tsilo.f.ts_append) |
| **ts_append_by_contact(domain, ruri [, contact])** | [tsilo](https://www.kamailio.org/docs/modules/5.6.x/modules/tsilo.html#tsilo.f.ts_append_by_contact) |
| **ts_append_to(tindex, tlabel, domain, [uri])** | [tsilo](https://www.kamailio.org/docs/modules/5.6.x/modules/tsilo.html#tsilo.f.ts_append_to) |
| **ts_store([uri])** | [tsilo](https://www.kamailio.org/docs/modules/5.6.x/modules/tsilo.html#tsilo.f.ts_store) |
| **typeof(pvar, vtype)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.typeof) |
| **t_any_replied()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_any_replied) |
| **t_any_timeout()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_any_timeout) |
| **t_branch_replied()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_branch_replied) |
| **t_branch_timeout()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_branch_timeout) |
| **t_cancel_branches(which)** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_cancel_branches) |
| **t_cancel_callid(callid, cseq, flag [, rcode])** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_cancel_callid) |
| **t_check_status(re)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_check_status) |
| **t_check_trans()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_check_trans) |
| **t_clean()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_clean) |
| **t_continue(tindex, tlabel, rtname)** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_continue) |
| **t_drop([rcode])** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_drop) |
| **t_drop_replies([mode])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_drop_replies) |
| **t_flush_flags()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_flush_flags) |
| **t_flush_xflags()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_flush_xflags) |
| **t_forward_nonack([ip, port])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_forward_nonack) |
| **t_forward_nonack_sctp(ip, port)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_forward_nonack_sctp) |
| **t_forward_nonack_tcp(ip, port)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_forward_nonack_tcp) |
| **t_forward_nonack_tls(ip, port)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_forward_nonack_tls) |
| **t_forward_nonack_udp(ip, port)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_forward_nonack_udp) |
| **t_get_status_code()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_get_status_code) |
| **t_grep_status("code")** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_grep_status) |
| **t_is_branch_route()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_is_branch_route) |
| **t_is_canceled()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_is_canceled) |
| **t_is_expired()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_is_expired) |
| **t_is_failure_route()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_is_failure_route) |
| **t_is_reply_route()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_is_reply_route) |
| **t_is_request_route()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_is_request_route) |
| **t_is_retr_async_reply()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_is_retr_async_reply) |
| **t_is_set(target)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_is_set) |
| **t_load_contacts([mode])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_load_contacts) |
| **t_lookup_cancel([1])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_lookup_cancel) |
| **t_lookup_request()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_lookup_request) |
| **t_newtran()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_newtran) |
| **t_next_contacts()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_next_contacts) |
| **t_next_contact_flow()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_next_contact_flow) |
| **t_on_branch(branch_route)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_on_branch) |
| **t_on_branch_failure(branch_failure_route)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_on_branch_failure) |
| **t_on_failure(failure_route)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_on_failure) |
| **t_on_reply(onreply_route)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_on_reply) |
| **t_precheck_trans()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_precheck_trans) |
| **t_relay([host, port])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_relay) |
| **t_relay_cancel()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_relay_cancel) |
| **t_relay_to(proxy, flags)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_relay_to) |
| **t_relay_to_sctp([ip, port])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_relay_to_sctp) |
| **t_relay_to_tcp([ip, port])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_relay_to_tcp) |
| **t_relay_to_tls([ip, port])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_relay_to_tls) |
| **t_relay_to_udp([ip, port])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_relay_to_udp) |
| **t_release()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_release) |
| **t_replicate([params])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_replicate) |
| **t_reply(code, reason_phrase)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_reply) |
| **t_reply_callid(callid, cseq, code, reason)** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_reply_callid) |
| **t_reset_fr()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_reset_fr) |
| **t_reset_max_lifetime()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_reset_max_lifetime) |
| **t_reset_retr()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_reset_retr) |
| **t_retransmit_reply()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_retransmit_reply) |
| **t_reuse_branch()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_reuse_branch) |
| **t_save_lumps()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_save_lumps) |
| **t_send_reply(code, reason)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_send_reply) |
| **t_set_auto_inv_100(0|1)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_auto_inv_100) |
| **t_set_disable_6xx(0|1)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_disable_6xx) |
| **t_set_disable_failover(0|1)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_disable_failover) |
| **t_set_disable_internal_reply(0|1)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_disable_internal_reply) |
| **t_set_fr(fr_inv_timeout [, fr_timeout])** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_fr) |
| **t_set_max_lifetime(inv_lifetime, noninv_lifetime)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_max_lifetime) |
| **t_set_no_e2e_cancel_reason(0|1)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_no_e2e_cancel_reason) |
| **t_set_retr(retr_t1_interval, retr_t2_interval)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_set_retr) |
| **t_suspend()** | [tmx](https://www.kamailio.org/docs/modules/5.6.x/modules/tmx.html#tmx.f.t_suspend) |
| **t_uac_send(method, ruri, nexthop, socket, headers, body)** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_uac_send) |
| **t_use_uac_headers()** | [tm](https://www.kamailio.org/docs/modules/5.6.x/modules/tm.html#tm.f.t_use_uac_headers) |

## [u]

| Name | Module Name |
|------|-------------|
| **uac_auth([mode])** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_auth) |
| **uac_auth_mode(vmode)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_auth_mode) |
| **uac_reg_disable(attr, val)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_reg_disable) |
| **uac_reg_enable(attr, val)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_reg_enable) |
| **uac_reg_lookup(uuid, dst)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_reg_lookup) |
| **uac_reg_lookup_uri(uri, dst)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_reg_lookup_uri) |
| **uac_reg_refresh(luuid)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_reg_refresh) |
| **uac_reg_request_to(user, mode)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_reg_request_to) |
| **uac_reg_status(uuid)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_reg_status) |
| **uac_replace_from(display,uri)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_replace_from) |
| **uac_replace_from(uri)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_replace_from_uri) |
| **uac_replace_to(display,uri)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_replace_to) |
| **uac_replace_to(uri)** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_replace_to_uri) |
| **uac_req_send()** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_req_send) |
| **uac_restore_from()** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_restore_from) |
| **uac_restore_to()** | [uac](https://www.kamailio.org/docs/modules/5.6.x/modules/uac.html#uac.f.uac_restore_to()) |
| **unblock_dtmf([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.unblock_dtmf) |
| **unblock_media([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.unblock_media) |
| **unforce_rtp_proxy()** | [rtpproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpproxy.html#rtpproxy.f.unforce_rtp_proxy) |
| **unlock(key)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.unlock) |
| **unlock_extra_attrs (group_id, id)** | [uid_avp_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_avp_db.html) |
| **unregister(domain)** | [ims_registrar_scscf](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_registrar_scscf.html) |
| **unregister(domain, uri[, ruid])** | [registrar](https://www.kamailio.org/docs/modules/5.6.x/modules/registrar.html#registrar.f.unregister) |
| **unset_dlg_profile(profile,[value])** | [dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/dialog.html#dialog.f.unset_dlg_profile) |
| **unset_dlg_profile(profile,[value])** | [ims_dialog](https://www.kamailio.org/docs/modules/5.6.x/modules/ims_dialog.html) |
| **unsilence_media([flags])** | [rtpengine](https://www.kamailio.org/docs/modules/5.6.x/modules/rtpengine.html#rtpengine.f.unsilence_media) |
| **update_stat(variable,value)** | [statistics](https://www.kamailio.org/docs/modules/5.6.x/modules/statistics.html#statistics.f.update_stat) |
| **uri_param(param)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html) |
| **uri_param(param,value)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html#siputils.f.uri_param_value) |
| **uri_param_any(param)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html) |
| **uri_param_rm(param)** | [siputils](https://www.kamailio.org/docs/modules/5.6.x/modules/siputils.html) |
| **use_media_proxy()** | [mediaproxy](https://www.kamailio.org/docs/modules/5.6.x/modules/mediaproxy.html#mediaproxy.p.use) |
| **use_next_gw()** | [drouting](https://www.kamailio.org/docs/modules/5.6.x/modules/drouting.html#drouting.f.use_next_gw) |
| **usleep(time)** | [cfgutils](https://www.kamailio.org/docs/modules/5.6.x/modules/cfgutils.html#cfgutils.f.usleep) |

## [v]

| Name | Module Name |
|------|-------------|
| **validateospheader()** | [osp](https://www.kamailio.org/docs/modules/5.6.x/modules/osp.html) |
| **verify_destination()** | [peering](https://www.kamailio.org/docs/modules/5.6.x/modules/peering.html) |
| **verify_source()** | [peering](https://www.kamailio.org/docs/modules/5.6.x/modules/peering.html) |
| **via_add_srvid(flags)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.via_add_srvid) |
| **via_add_xavp_params(flags)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.via_add_xavp_params) |
| **via_use_xavp_fields(flags)** | [corex](https://www.kamailio.org/docs/modules/5.6.x/modules/corex.html#corex.f.via_use_xavp_fields) |
| **vrfy_check_callid()** | [auth_identity](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_identity.html#vrfy_check_callid) |
| **vrfy_check_certificate()** | [auth_identity](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_identity.html#vrfy_check_certificate) |
| **vrfy_check_date()** | [auth_identity](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_identity.html#vrfy_check_date) |
| **vrfy_check_msgvalidity()** | [auth_identity](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_identity.html#vrfy_check_msgvalidity) |
| **vrfy_get_certificate()** | [auth_identity](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_identity.html#vrfy_get_certificate) |

## [w]

| Name | Module Name |
|------|-------------|
| **ws_close([status, reason[, connection_id]])** | [websocket](https://www.kamailio.org/docs/modules/5.6.x/modules/websocket.html#websocket.f.ws_close) |
| **ws_handle_handshake()** | [websocket](https://www.kamailio.org/docs/modules/5.6.x/modules/websocket.html#websocket.f.ws_handle_handshake) |
| **www_authenticate(realm, table [, method])** | [auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_db.html#auth_db.f.www_authenticate) |
| **www_authorize(realm, table)** | [auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/auth_db.html#auth_db.f.www_authorize) |
| **www_authorize(realm, table)** | [uid_auth_db](https://www.kamailio.org/docs/modules/5.6.x/modules/uid_auth_db.html#www_authorize) |
| **www_challenge(realm, flags)** | [auth](https://www.kamailio.org/docs/modules/5.6.x/modules/auth.html#auth.f.www_challenge) |

## [x]

| Name | Module Name |
|------|-------------|
| **xalert(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xalert) |
| **xavi_child_rm(rname, cname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavi_child_rm) |
| **xavi_child_seti(rname, cname, ival)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavi_child_seti) |
| **xavi_child_sets(rname, cname, sval)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavi_child_sets) |
| **xavi_rm(rname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavi_rm) |
| **xavp_child_rm(rname, cname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_child_rm) |
| **xavp_child_seti(rname, cname, ival)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_child_seti) |
| **xavp_child_sets(rname, cname, sval)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_child_sets) |
| **xavp_copy(source_name, source_index, destination_name)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_copy) |
| **xavp_copy(source_name, source_index, destination_name, destination_index)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_copy2) |
| **xavp_params_explode(sparams, xname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_params_explode) |
| **xavp_params_implode(xname, pvname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_params_implode) |
| **xavp_rm(rname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_rm) |
| **xavp_slist_explode(slist, sep, mode, xname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavp_slist_explode) |
| **xavu_params_explode(sparams, xname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavu_params_explode) |
| **xavu_params_implode(xname, pvname)** | [pv](https://www.kamailio.org/docs/modules/5.6.x/modules/pv.html#pv.f.xavu_params_implode) |
| **xbug(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xbug) |
| **xcaps_del(uri, path)** | [xcap_server](https://www.kamailio.org/docs/modules/5.6.x/modules/xcap_server.html#xcap_server.f.xcaps_del) |
| **xcaps_get(uri, path)** | [xcap_server](https://www.kamailio.org/docs/modules/5.6.x/modules/xcap_server.html#xcap_server.f.xcaps_get) |
| **xcaps_put(uri, path, doc)** | [xcap_server](https://www.kamailio.org/docs/modules/5.6.x/modules/xcap_server.html#xcap_server.f.xcaps_put) |
| **xcap_auth_status(watcher_uri, presentity_uri)** | [utils](https://www.kamailio.org/docs/modules/5.6.x/modules/utils.html#utils.f.xcap_auth_status) |
| **xcrit(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xcrit) |
| **xdbg(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xdbg) |
| **xdbgl(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xdbgl) |
| **xerr(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xerr) |
| **xhttp_reply(code, reason, ctype, body)** | [xhttp](https://www.kamailio.org/docs/modules/5.6.x/modules/xhttp.html#xhttp.f.xhttp_reply) |
| **xinfo(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xinfo) |
| **xlfix_attr($attribute)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#xlfix_attr) |
| **xlog([ [facility,] level,] format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xlog) |
| **xlogl([ [facility,] level,] format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xlogl) |
| **xlogm(level, format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xlogm) |
| **xlset_attr($attribute, xl_format)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.xlset_attr) |
| **xlset_destination(xl_format)** | [avp](https://www.kamailio.org/docs/modules/5.6.x/modules/avp.html#avp.f.xlset_destination) |
| **xmlrpc_reply(code, reason)** | [xmlrpc](https://www.kamailio.org/docs/modules/5.6.x/modules/xmlrpc.html#xmlrpc.f.xmlrpc_reply) |
| **xmpp_send_message()** | [xmpp](https://www.kamailio.org/docs/modules/5.6.x/modules/xmpp.html) |
| **xnotice(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xnotice) |
| **xpdbg(format)** | [xprint](https://www.kamailio.org/docs/modules/5.6.x/modules/xprint.html#xprint.xpdbg) |
| **xplog(level, format)** | [xprint](https://www.kamailio.org/docs/modules/5.6.x/modules/xprint.html#xprint.xplog) |
| **xwarn(format)** | [xlog](https://www.kamailio.org/docs/modules/5.6.x/modules/xlog.html#xlog.f.xwarn) |

## [y]

| Name | Module Name |
|------|-------------|

## [z]

| Name | Module Name |
|------|-------------|
