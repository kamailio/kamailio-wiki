# Modules Functions

 ([#a](a))  ([#b](b))  ([#c](c))  ([#d](d))  ([#e](e))  ([#f](f))  ([#g](g))  ([#h](h))  ([#i](i))  ([#j](j))  ([#k](k))  ([#l](l))  ([#m](m))  ([#n](n))  ([#o](o))  ([#p](p))  ([#q](q))  ([#r](r))  ([#s](s))  ([#t](t))  ([#u](u))  ([#v](v))  ([#w](w))  ([#x](x))  ([#y](y))  ([#z](z)) 

## [a]

| Name | Module Name |
|------|-------------|
| **abort()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.abortcfgutils) |
| **acc_db_request(comment, table)** | [acc](http://www.kamailio.org/docs/modules/5.7.x/modules/acc.html#acc.f.acc_db_requestacc) |
| **acc_diam_request(comment)** | [acc_diameter](http://www.kamailio.org/docs/modules/5.7.x/modules/acc_diameter.html#acc_diameter.f.acc_diam_requestacc_diameter) |
| **acc_log_request(comment)** | [acc](http://www.kamailio.org/docs/modules/5.7.x/modules/acc.html#acc.f.acc_log_requestacc) |
| **acc_rad_request(comment)** | [acc_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/acc_radius.html#acc_radius.f.acc_rad_requestacc_radius) |
| **acc_request(comment, table)** | [acc](http://www.kamailio.org/docs/modules/5.7.x/modules/acc.html#acc.f.acc_requestacc) |
| **add_contact_alias([ip_addr, port, proto])** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.add_contact_aliasnathelper) |
| **add_diversion(reason [, uri])** | [diversion](http://www.kamailio.org/docs/modules/5.7.x/modules/diversion.html#diversion.f.add_diversiondiversion) |
| **add_path()** | [path](http://www.kamailio.org/docs/modules/5.7.x/modules/path.html#path.f.add_pathpath) |
| **add_path(user)** | [path](http://www.kamailio.org/docs/modules/5.7.x/modules/path.html#path.f.add_path_upath) |
| **add_path(user, parameters)** | [path](http://www.kamailio.org/docs/modules/5.7.x/modules/path.html#path.f.add_path_uppath) |
| **add_path_received()** | [path](http://www.kamailio.org/docs/modules/5.7.x/modules/path.html#path.f.add_path_rcvpath) |
| **add_path_received(user)** | [path](http://www.kamailio.org/docs/modules/5.7.x/modules/path.html#path.f.add_path_rcv_upath) |
| **add_path_received(user, parameters)** | [path](http://www.kamailio.org/docs/modules/5.7.x/modules/path.html#path.f.add_path_rcv_uppath) |
| **add_rcv_param([flag]),** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.add_rcv_paramnathelper) |
| **add_rr_param(param)** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.add_rr_paramrr) |
| **add_sock_hdr(hdr_name)** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.add_sock_hdrregistrar) |
| **add_uri_param(param)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.add_uri_paramsiputils) |
| **alias_db_find( table_name , input, output [,flags] )** | [alias_db](http://www.kamailio.org/docs/modules/5.7.x/modules/alias_db.html#alias_db.p.alias_db_findalias_db) |
| **alias_db_lookup(table_name [,flags])** | [alias_db](http://www.kamailio.org/docs/modules/5.7.x/modules/alias_db.html#alias_db.f.alias_db_lookupalias_db) |
| **allow_address(group_id, ip_addr_pvar, port_pvar)** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_addresspermissions) |
| **allow_address_group(addr, port)** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_address_grouppermissions) |
| **allow_register(allow_file, deny_file)** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_register_fileargspermissions) |
| **allow_register(basename)** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_registerpermissions) |
| **allow_routing()** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_routingpermissions) |
| **allow_routing(allow_file,deny_file)** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_routing_fileargspermissions) |
| **allow_routing(basename)** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_routing_basenamepermissions) |
| **allow_source_address([group_id])** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_source_addresspermissions) |
| **allow_source_address_group()** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_source_address_grouppermissions) |
| **allow_trusted([src_ip_pvar, proto_pvar, furi_pvar])** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_trustedpermissions) |
| **allow_uri(basename, pvar)** | [permissions](http://www.kamailio.org/docs/modules/5.7.x/modules/permissions.html#permissions.f.allow_uripermissions) |
| **append_attr_hf(header_name, $avp_name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.append_attr_hf_2avp) |
| **append_attr_hf(name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.append_attr_hf_1avp) |
| **append_body_part(txt,content_type[, content_disposition])** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.append_body_parttextops) |
| **append_body_part_hex(txt,content_type[, content_disposition])** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.append_body_part_hextextops) |
| **append_branch([ uri, [ q ] ])** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.append_branchcorex) |
| **append_hf(txt[, hdr])** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.append_hftextops) |
| **append_hf_value(hf, hvalue)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.append_hf_valuetextopsx) |
| **append_rpid_hf()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.append_rpid_hfsiputils) |
| **append_rpid_hf(prefix, suffix)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.append_rpid_hf_paramssiputils) |
| **append_time()** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.append_timetextops) |
| **append_time_to_request()** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.append_time_to_requesttextops) |
| **append_to_reply(txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.append_to_replytextops) |
| **append_urihf(prefix, suffix)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.append_urihftextops) |
| **assign_hf_value(hf, hvalue)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.assign_hf_valuetextopsx) |
| **assign_hf_value2(hf, hvalue)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.assign_hf_value2textopsx) |
| **assign_server_unreg(aysnc_reply_route, domain, direction)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **async_ms_route(routename, milliseconds)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_ms_routeasync) |
| **async_ms_sleep(milliseconds)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_ms_sleepasync) |
| **async_route(routename, seconds)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_routeasync) |
| **async_sleep(seconds)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_sleepasync) |
| **async_task_data(routename, data)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_task_dataasync) |
| **async_task_group_data(routename, groupname, data)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_task_group_dataasync) |
| **async_task_group_route(routename, groupname)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_task_group_routeasync) |
| **async_task_route(routename)** | [async](http://www.kamailio.org/docs/modules/5.7.x/modules/async.html#async.f.async_task_routeasync) |
| **attr2uri($attribute[,uri-part])** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.attr2uriavp) |
| **attr_destination($avp_name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.attr_destinationavp) |
| **attr_equals(attribute, value)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.attr_equalsavp) |
| **attr_equals_xl(attribute, xl_format)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.attr_equals_xlavp) |
| **attr_exists(attribute)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.attr_existsavp) |
| **attr_to_reply(header_name, $avp_name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.attr_to_reply_2avp) |
| **attr_to_reply(name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.attr_to_reply_1avp) |
| **autheph_authenticate(username, password)** | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_ephemeral.html#auth_eph.f.autheph_authenticateauth_ephemeral) |
| **autheph_check(realm)** | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_ephemeral.html#auth_eph.f.autheph_checkauth_ephemeral) |
| **autheph_check_from([username])** | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_fromauth_ephemeral) |
| **autheph_check_timestamp(username)** | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_timestampauth_ephemeral) |
| **autheph_check_to([username])** | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_ephemeral.html#auth_eph.f.autheph_check_toauth_ephemeral) |
| **autheph_proxy(realm)** | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_ephemeral.html#auth_eph.f.autheph_proxyauth_ephemeral) |
| **autheph_www(realm[, method])** | [auth_ephemeral](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_ephemeral.html#auth_eph.f.autheph_wwwauth_ephemeral) |
| **auth_add_identity()** | [auth_identity](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_identity.htmlauth_identity) |
| **auth_challenge(realm, flags)** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.auth_challengeauth) |
| **auth_check(realm, table, flags)** | [auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_db.html#auth_db.f.auth_checkauth_db) |
| **auth_date_proc()** | [auth_identity](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_identity.htmlauth_identity) |
| **auth_get_www_authenticate(realm, flags, pvdest)** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.auth_get_www_authenticateauth) |
| **auth_xkeys_add(hdr, kid, alg, data)** | [auth_xkeys](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_addauth_xkeys) |
| **auth_xkeys_check(hdr, kid, alg, data)** | [auth_xkeys](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_xkeys.html#auth_xkeys.f.auth_xkeys_checkauth_xkeys) |
| **avp_check(name,op_value)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_checkavpops) |
| **avp_copy(old_name,new_name)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_copyavpops) |
| **avp_db_delete(source,name)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_db_deleteavpops) |
| **avp_db_load(source,name)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_db_loadavpops) |
| **avp_db_query(query[,dest])** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_db_queryavpops) |
| **avp_db_store(source,name)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_db_storeavpops) |
| **avp_delete(name)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_deleteavpops) |
| **avp_op(name,op_value)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_opavpops) |
| **avp_print()** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_printavpops) |
| **avp_printf(dest, format)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_printfavpops) |
| **avp_pushto(destination,name)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_pushtoavpops) |
| **avp_subst(avps, subst)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_substavpops) |
| **avp_subst_pv(avps, subst)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.avp_subst_pvavpops) |

## [b]

| Name | Module Name |
|------|-------------|
| **bla_handle_notify** | [pua_bla](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_bla.htmlpua_bla) |
| **bla_set_flag** | [pua_bla](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_bla.htmlpua_bla) |
| **block_dtmf([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.block_dtmfrtpengine) |
| **block_media([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.block_mediartpengine) |
| **blst_add([timeout])** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_addblst) |
| **blst_add_retry_after(min, max)** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_add_retry_afterblst) |
| **blst_clear_ignore([flags])** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_clear_ignoreblst) |
| **blst_del()** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_delblst) |
| **blst_is_blocklisted()** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_is_blocklistedblst) |
| **blst_rpl_clear_ignore([flags])** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_rpl_clear_ignoreblst) |
| **blst_rpl_set_ignore([flags])** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_rpl_set_ignoreblst) |
| **blst_set_ignore([flags])** | [blst](http://www.kamailio.org/docs/modules/5.7.x/modules/blst.html#blst_set_ignoreblst) |
| **bl_iterator_append(iname, text)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.bl_iterator_appendtextopsx) |
| **bl_iterator_end(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.bl_iterator_endtextopsx) |
| **bl_iterator_insert(iname, text)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.bl_iterator_inserttextopsx) |
| **bl_iterator_next(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.bl_iterator_nexttextopsx) |
| **bl_iterator_rm(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.bl_iterator_rmtextopsx) |
| **bl_iterator_start(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.bl_iterator_starttextopsx) |
| **bm_log_timer(name)** | [benchmark](http://www.kamailio.org/docs/modules/5.7.x/modules/benchmark.html#benchmark.f.bm_log_timerbenchmark) |
| **bm_start_timer(name)** | [benchmark](http://www.kamailio.org/docs/modules/5.7.x/modules/benchmark.html#benchmark.f.bm_start_timerbenchmark) |

## [c]

| Name | Module Name |
|------|-------------|
| **call_control()** | [call_control](http://www.kamailio.org/docs/modules/5.7.x/modules/call_control.html#call_control.f.call_controlcall_control) |
| **call_obj_free(object_number)** | [call_obj](http://www.kamailio.org/docs/modules/5.7.x/modules/call_obj.html#call_obj.f.call_obj_freecall_obj) |
| **call_obj_get(reply_number)** | [call_obj](http://www.kamailio.org/docs/modules/5.7.x/modules/call_obj.html#call_obj.f.call_obj_getcall_obj) |
| **can_publish_reg(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **can_subscribe_to_reg(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **cass_insert(keyspace, column_family, key, column, value)** | [ndb_cassandra](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_cassandra.htmlndb_cassandra) |
| **cass_retrieve(keyspace, column_family, key, column, value)** | [ndb_cassandra](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_cassandra.htmlndb_cassandra) |
| **cdp_check_peer(fqdn)** | [cdp](http://www.kamailio.org/docs/modules/5.7.x/modules/cdp.html#cdp.f.cdp_check_peercdp) |
| **cdp_has_app([vendorid, ]application)** | [cdp](http://www.kamailio.org/docs/modules/5.7.x/modules/cdp.html#cdp.f.cdp_has_appcdp) |
| **change_reply_status(code, reason)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.change_reply_statustextopsx) |
| **change_reply_status_code(vcode)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.change_reply_status_codetextopsx) |
| **checkcallingtranslation()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **checkospheader()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **checkosproute()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **check_allowlist (string table)** | [userblocklist](http://www.kamailio.org/docs/modules/5.7.x/modules/userblocklist.html#userblocklist.f.check_allowlistuserblocklist) |
| **check_blocklist ([string table])** | [userblocklist](http://www.kamailio.org/docs/modules/5.7.x/modules/userblocklist.html#userblocklist.f.check_blocklistuserblocklist) |
| **check_from()** | [uid_uri_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_uri_db.html#check_fromuid_uri_db) |
| **check_from()** | [uri_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uri_db.html#uri_db.f.check_fromuri_db) |
| **check_route_exists(route)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.check_route_existscfgutils) |
| **check_route_param(re)** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.check_route_paramrr) |
| **check_to()** | [uid_uri_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_uri_db.html#check_touid_uri_db) |
| **check_to()** | [uri_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uri_db.html#uri_db.f.check_touri_db) |
| **check_uri(uri)** | [uri_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uri_db.html#uri_db.f.check_uriuri_db) |
| **check_user_allowlist (string user, string domain, string number, string table)** | [userblocklist](http://www.kamailio.org/docs/modules/5.7.x/modules/userblocklist.html#userblocklist.f.check_user_allowlistuserblocklist) |
| **check_user_blocklist (string user, string domain, string number, string table)** | [userblocklist](http://www.kamailio.org/docs/modules/5.7.x/modules/userblocklist.html#userblocklist.f.check_user_blocklistuserblocklist) |
| **cmp_aor(str1, str2)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.cmp_aorsiputils) |
| **cmp_hdr_name(str1, str2)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.cmp_hdr_namesiputils) |
| **cmp_istr(str1, str2)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.cmp_istrtextops) |
| **cmp_str(str1, str2)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.cmp_strtextops) |
| **cmp_uri(str1, str2)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.cmp_urisiputils) |
| **cnt_add([group.]name, number)** | [counters](http://www.kamailio.org/docs/modules/5.7.x/modules/counters.html#counters.f.cnt_addcounters) |
| **cnt_inc([group.]name)** | [counters](http://www.kamailio.org/docs/modules/5.7.x/modules/counters.html#counters.f.cnt_inccounters) |
| **cnt_reset([group.]name)** | [counters](http://www.kamailio.org/docs/modules/5.7.x/modules/counters.html#counters.f.cnt_resetcounters) |
| **cnxcc_set_max_channel(customer, maxchan)** | [cnxcc](http://www.kamailio.org/docs/modules/5.7.x/modules/cnxcc.html#cnxcc.f.set_max_channelcnxcc) |
| **cnxcc_set_max_credit(customer, maxcredit, connect, cps, ipulse, fpulse)** | [cnxcc](http://www.kamailio.org/docs/modules/5.7.x/modules/cnxcc.html#cnxcc.f.set_max_creditcnxcc) |
| **cnxcc_set_max_time(customer, maxtime)** | [cnxcc](http://www.kamailio.org/docs/modules/5.7.x/modules/cnxcc.html#cnxcc.f.set_max_timecnxcc) |
| **cnxcc_terminate_all(customer)** | [cnxcc](http://www.kamailio.org/docs/modules/5.7.x/modules/cnxcc.html#cnxcc.f.terminate_allcnxcc) |
| **cnxcc_update_max_time(customer, maxtime)** | [cnxcc](http://www.kamailio.org/docs/modules/5.7.x/modules/cnxcc.html#cnxcc.f.update_max_timecnxcc) |
| **Common requirements** | [app_java](http://www.kamailio.org/docs/modules/5.7.x/modules/app_java.htmlapp_java) |
| **compare_ips (ip1, ip2)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.compare_ipsipops) |
| **compare_pure_ips (ip1, ip2)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.compare_pure_ipsipops) |
| **consume_credentials()** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.consume_credentialsauth) |
| **contact_param_decode(pname)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.contact_param_decodesiputils) |
| **contact_param_decode_uri(pname)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.contact_param_decode_rurisiputils) |
| **contact_param_encode(pname, saddr)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.contact_param_encodesiputils) |
| **contact_param_rm(pname)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.contact_param_rmsiputils) |
| **core_hash(string1, string2, size)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.core_hashcfgutils) |
| **cpl_process_register()** | [cplc](http://www.kamailio.org/docs/modules/5.7.x/modules/cplc.html#cplc.f.process_registercplc) |
| **cpl_process_register_norpl()** | [cplc](http://www.kamailio.org/docs/modules/5.7.x/modules/cplc.html#cplc.p.process_register_norplcplc) |
| **cpl_run_script(type,mode, [uri])** | [cplc](http://www.kamailio.org/docs/modules/5.7.x/modules/cplc.html#cplc.f.cpl_run_scriptcplc) |
| **crypto_aes_decrypt(text, key, res)** | [crypto](http://www.kamailio.org/docs/modules/5.7.x/modules/crypto.html#async.f.crypto_aes_decryptcrypto) |
| **crypto_aes_encrypt(text, key, res)** | [crypto](http://www.kamailio.org/docs/modules/5.7.x/modules/crypto.html#async.f.crypto_aes_encryptcrypto) |
| **crypto_hmac_sha256(text, key, res)** | [crypto](http://www.kamailio.org/docs/modules/5.7.x/modules/crypto.html#async.f.crypto_hmac_sha256crypto) |
| **crypto_netio_decrypt()** | [crypto](http://www.kamailio.org/docs/modules/5.7.x/modules/crypto.html#async.f.crypto_netio_decryptcrypto) |
| **crypto_netio_encrypt()** | [crypto](http://www.kamailio.org/docs/modules/5.7.x/modules/crypto.html#async.f.crypto_netio_encryptcrypto) |
| **crypto_netio_in)** | [crypto](http://www.kamailio.org/docs/modules/5.7.x/modules/crypto.html#async.f.crypto_netio_incrypto) |
| **crypto_netio_out()** | [crypto](http://www.kamailio.org/docs/modules/5.7.x/modules/crypto.html#async.f.crypto_netio_outcrypto) |
| **cr_next_domain(carrier, domain, prefix_matching, host, reply_code, dstavp)** | [carrierroute](http://www.kamailio.org/docs/modules/5.7.x/modules/carrierroute.htmlcarrierroute) |
| **cr_nofallback_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | [carrierroute](http://www.kamailio.org/docs/modules/5.7.x/modules/carrierroute.htmlcarrierroute) |
| **cr_route(carrier, domain, prefix_matching, rewrite_user, hash_source, descavp)** | [carrierroute](http://www.kamailio.org/docs/modules/5.7.x/modules/carrierroute.htmlcarrierroute) |
| **cr_user_carrier(user, domain, dstavp)** | [carrierroute](http://www.kamailio.org/docs/modules/5.7.x/modules/carrierroute.htmlcarrierroute) |

## [d]

| Name | Module Name |
|------|-------------|
| **dbg_breakpoint(mode)** | [debugger](http://www.kamailio.org/docs/modules/5.7.x/modules/debugger.html#dbg.f.db_breakpointdebugger) |
| **dbg_pv_dump([mask] [, level])** | [debugger](http://www.kamailio.org/docs/modules/5.7.x/modules/debugger.html#dbg.f.dbg_pv_dumpdebugger) |
| **dbg_sip_msg([log_level], [facility])** | [debugger](http://www.kamailio.org/docs/modules/5.7.x/modules/debugger.html#dbg.f.dbg_sip_msgdebugger) |
| **decode_contact()** | [mangler](http://www.kamailio.org/docs/modules/5.7.x/modules/mangler.html#mangler.f.decode_contactmangler) |
| **decode_contact()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.decode_contactsiputils) |
| **decode_contact_header()** | [mangler](http://www.kamailio.org/docs/modules/5.7.x/modules/mangler.html#mangler.f.decode_contact_headermangler) |
| **decode_contact_header()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.decode_contact_headersiputils) |
| **defunct_gw(period)** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.defunct_gwlcr) |
| **del_attr($avp_name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.del_attravp) |
| **detailed_ipv4_type (ip, result)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.detailed_ipv4_typeipops) |
| **detailed_ipv6_type (ip, result)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.detailed_ipv6_typeipops) |
| **detailed_ip_type (ip, result)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.detailed_ip_typeipops) |
| **diameter_is_user_in(who, group)** | [auth_diameter](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_diameter.htmlauth_diameter) |
| **diameter_proxy_authorize(realm)** | [auth_diameter](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_diameter.htmlauth_diameter) |
| **diameter_www_authorize(realm)** | [auth_diameter](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_diameter.htmlauth_diameter) |
| **dispatch_rpc()** | [xmlrpc](http://www.kamailio.org/docs/modules/5.7.x/modules/xmlrpc.html#xmlrpc.f.dispatch_rpcxmlrpc) |
| **dispatch_xhttp_pi()** | [xhttp_pi](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_pi.htmlxhttp_pi) |
| **dispatch_xhttp_rpc()** | [xhttp_rpc](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_rpc.htmlxhttp_rpc) |
| **dlgs_count(field, op, data)** | [dlgs](http://www.kamailio.org/docs/modules/5.7.x/modules/dlgs.html#dlgs.f.dlgs_countdlgs) |
| **dlgs_init(src, dst, data)** | [dlgs](http://www.kamailio.org/docs/modules/5.7.x/modules/dlgs.html#dlgs.f.dlgs_initdlgs) |
| **dlgs_tags_add(vtag)** | [dlgs](http://www.kamailio.org/docs/modules/5.7.x/modules/dlgs.html#dlgs.f.dlgs_tags_adddlgs) |
| **dlgs_tags_count(vtag)** | [dlgs](http://www.kamailio.org/docs/modules/5.7.x/modules/dlgs.html#dlgs.f.dlgs_tags_countdlgs) |
| **dlgs_tags_rm(vtag)** | [dlgs](http://www.kamailio.org/docs/modules/5.7.x/modules/dlgs.html#dlgs.f.dlgs_tags_rmdlgs) |
| **dlgs_update()** | [dlgs](http://www.kamailio.org/docs/modules/5.7.x/modules/dlgs.html#dlgs.f.dlgs_updatedlgs) |
| **dlg_bridge(from, to, op)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_bridgedialog) |
| **dlg_bridge(from, to, op)** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dlg_bye(side)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_byedialog) |
| **dlg_db_load_callid(cival)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_db_load_calliddialog) |
| **dlg_db_load_extra()** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_db_load_extradialog) |
| **dlg_get(callid, ftag, ttag)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_getdialog) |
| **dlg_get(callid, ftag, ttag)** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dlg_isflagset(flag)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_isflagsetdialog) |
| **dlg_isflagset(flag)** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dlg_manage()** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_managedialog) |
| **dlg_manage()** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dlg_refer(side, address)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_referdialog) |
| **dlg_refer(side, address)** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dlg_remote_profile(cmd, profile, value, uid, expires)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_remote_profiledialog) |
| **dlg_resetflag(flag)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_resetflagdialog) |
| **dlg_resetflag(flag)** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dlg_reset_property(attr)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_reset_propertydialog) |
| **dlg_setflag(flag)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_setflagdialog) |
| **dlg_setflag(flag)** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dlg_set_property(attr)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_set_propertydialog) |
| **dlg_set_ruri()** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_set_ruridialog) |
| **dlg_set_timeout(timeout [, h_entry, h_id])** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_set_timeoutdialog) |
| **dlg_set_timeout_by_profile(profile, [value], timeout)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.dlg_set_timeout_by_profiledialog) |
| **dlg_terminate** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **dmq_bcast_message(channel, body, content_type)** | [dmq](http://www.kamailio.org/docs/modules/5.7.x/modules/dmq.html#dmq.f.dmq_bcast_messagedmq) |
| **dmq_handle_message([continue])** | [dmq](http://www.kamailio.org/docs/modules/5.7.x/modules/dmq.html#dmq.f.dmq_handle_messagedmq) |
| **dmq_is_from_node()** | [dmq](http://www.kamailio.org/docs/modules/5.7.x/modules/dmq.html#dmq.f.dmq_is_from_nodedmq) |
| **dmq_process_message([continue])** | [dmq](http://www.kamailio.org/docs/modules/5.7.x/modules/dmq.html#dmq.f.dmq_process_messagedmq) |
| **dmq_send_message(channel, node, body, content_type)** | [dmq](http://www.kamailio.org/docs/modules/5.7.x/modules/dmq.html#dmq.f.dmq_send_messagedmq) |
| **dmq_t_replicate([skip_loop_test])** | [dmq](http://www.kamailio.org/docs/modules/5.7.x/modules/dmq.html#dmq.f.dmq_t_replicatedmq) |
| **dns_int_match_ip(hostname, ipaddr)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.dns_int_match_ipipops) |
| **dns_query(hostname, pvid)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.dns_queryipops) |
| **dns_set_local_ttl(vttl)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.dns_set_local_ttlipops) |
| **dns_sys_match_ip(hostname, ipaddr)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.dns_sys_match_ipipops) |
| **does_uri_exist()** | [uid_uri_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_uri_db.html#does_uri_existuid_uri_db) |
| **does_uri_exist()** | [uri_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uri_db.html#uri_db.f.does_uri_existuri_db) |
| **do_routing([groupID])** | [drouting](http://www.kamailio.org/docs/modules/5.7.x/modules/drouting.html#drouting.f.do_routingdrouting) |
| **dp_apply_policy()** | [domainpolicy](http://www.kamailio.org/docs/modules/5.7.x/modules/domainpolicy.html#dompolicy.f.dp_apply_policydomainpolicy) |
| **dp_can_connect()** | [domainpolicy](http://www.kamailio.org/docs/modules/5.7.x/modules/domainpolicy.html#dompolicy.f.dp_can_connectdomainpolicy) |
| **dp_match(dpid, inval)** | [dialplan](http://www.kamailio.org/docs/modules/5.7.x/modules/dialplan.html#dialplan.p.dp_matchdialplan) |
| **dp_reload()** | [dialplan](http://www.kamailio.org/docs/modules/5.7.x/modules/dialplan.html#dialplan.f.dp_reloaddialplan) |
| **dp_replace(dpid, inval, outvar)** | [dialplan](http://www.kamailio.org/docs/modules/5.7.x/modules/dialplan.html#dialplan.p.dp_replacedialplan) |
| **dp_translate(id, [src[/dest]])** | [dialplan](http://www.kamailio.org/docs/modules/5.7.x/modules/dialplan.html#dialplan.p.dp_translatedialplan) |
| **ds_is_active(groupid [, uri])** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_is_activedispatcher) |
| **ds_is_from_list([groupid [, mode [, uri] ] ])** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_is_from_listdispatcher) |
| **ds_list_exists(groupid)** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_list_existsdispatcher) |
| **ds_load_unset()** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.htmldispatcher) |
| **ds_load_update()** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_load_updatedispatcher) |
| **ds_mark_dst([state])** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_mark_dstdispatcher) |
| **ds_next_domain()** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.htmldispatcher) |
| **ds_next_dst()** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.htmldispatcher) |
| **ds_reload()** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_reloaddispatcher) |
| **ds_select(set, alg [, limit])** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_selectdispatcher) |
| **ds_select_domain(set, alg[, limit])** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_select_domaindispatcher) |
| **ds_select_dst(set, alg[, limit])** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_select_dstdispatcher) |
| **ds_select_routes(rules, mode [, limit])** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_select_routesdispatcher) |
| **ds_set_domain()** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_set_domaindispatcher) |
| **ds_set_dst()** | [dispatcher](http://www.kamailio.org/docs/modules/5.7.x/modules/dispatcher.html#dispatcher.f.ds_set_dstdispatcher) |
| **dump_attrs()** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.dump_attrsavp) |

## [e]

| Name | Module Name |
|------|-------------|
| **encode_contact(encoding_prefix)** | [mangler](http://www.kamailio.org/docs/modules/5.7.x/modules/mangler.html#mangler.f.encode_contactmangler) |
| **encode_contact(encoding_prefix,hostpart)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.encode_contactsiputils) |
| **ends_with(str1, str2)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.ends_withtextops) |
| **end_media_session()** | [mediaproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/mediaproxy.html#mediaproxy.p.endmediaproxy) |
| **engage_media_proxy()** | [mediaproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/mediaproxy.html#mediaproxy.f.engagemediaproxy) |
| **enum_pv_query("pvar" [,"suffix" [,"service"]])** | [enum](http://www.kamailio.org/docs/modules/5.7.x/modules/enum.html#enum.f.enum_pv_queryenum) |
| **enum_query(["suffix" [,"service"]])** | [enum](http://www.kamailio.org/docs/modules/5.7.x/modules/enum.html#enum.f.enum_queryenum) |
| **erl_reg_send(server,msg)** | [erlang](http://www.kamailio.org/docs/modules/5.7.x/modules/erlang.html#erlang.f.erl_reg_senderlang) |
| **erl_reply(msg)** | [erlang](http://www.kamailio.org/docs/modules/5.7.x/modules/erlang.html#erlang.f.erl_replyerlang) |
| **erl_rpc(mod,fun,args,reply)** | [erlang](http://www.kamailio.org/docs/modules/5.7.x/modules/erlang.html#erlang.f.erl_rpcerlang) |
| **erl_send(pid,msg)** | [erlang](http://www.kamailio.org/docs/modules/5.7.x/modules/erlang.html#erlang.f.erl_senderlang) |
| **evapi_async_multicast(evdata, etag)** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_async_multicastevapi) |
| **evapi_async_relay(evdata)** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_async_relayevapi) |
| **evapi_async_unicast(evdata, etag)** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_async_unicastevapi) |
| **evapi_close()** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_closeevapi) |
| **evapi_multicast(evdata, etag)** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_multicastevapi) |
| **evapi_relay(evdata)** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_relayevapi) |
| **evapi_set_tag(tname)** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_set_tagevapi) |
| **evapi_unicast(evdata, etag)** | [evapi](http://www.kamailio.org/docs/modules/5.7.x/modules/evapi.html#evapi.f.evapi_unicastevapi) |
| **exclude_hf_value(hf, hvalue)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.exclude_hf_valuetextopsx) |
| **exec_avp(command [, avplist])** | [exec](http://www.kamailio.org/docs/modules/5.7.x/modules/exec.html#exec.f.exec_avpexec) |
| **exec_cmd(command)** | [exec](http://www.kamailio.org/docs/modules/5.7.x/modules/exec.html#exec.f.exec_cmdexec) |
| **exec_dset(command)** | [exec](http://www.kamailio.org/docs/modules/5.7.x/modules/exec.html#exec.f.exec_dsetexec) |
| **exec_msg(command)** | [exec](http://www.kamailio.org/docs/modules/5.7.x/modules/exec.html#exec.f.exec_msgexec) |

## [f]

| Name | Module Name |
|------|-------------|
| **file_read(fpath, var)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.file_readcorex) |
| **file_write(fpath, content)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.file_writecorex) |
| **filter_body(content_type)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.filter_bodytextops) |
| **fix_nated_contact()** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.fix_nated_contactnathelper) |
| **fix_nated_register()** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.fix_nated_registernathelper) |
| **fix_nated_sdp(flags [, ip_address])** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.fix_nated_sdpnathelper) |
| **flags2attr("$avp")** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.flags2attravp) |
| **float2int(fval, ival)** | [sipcapture](http://www.kamailio.org/docs/modules/5.7.x/modules/sipcapture.html#sipcapture.f.float2intsipcapture) |
| **fnmatch(value, expr [, flags])** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.fnmatchtextopsx) |
| **forward_reply()** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.forward_replycorex) |
| **from_any_gw([ip_addr, proto[, src_port]])** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.from_any_gwlcr) |
| **from_gw(lcr_id[, ip_addr, proto[, src_port]])** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.from_gwlcr) |

## [g]

| Name | Module Name |
|------|-------------|
| **geoip2_match(ipaddr, pvc)** | [geoip2](http://www.kamailio.org/docs/modules/5.7.x/modules/geoip2.htmlgeoip2) |
| **geoip_match(ipaddr, pvc)** | [geoip](http://www.kamailio.org/docs/modules/5.7.x/modules/geoip.htmlgeoip) |
| **get_body_part(content_type, opv)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.get_body_parttextops) |
| **get_body_part_raw(content_type, opv)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.get_body_part_rawtextops) |
| **get_profile_size(profile,[value],size)** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.get_profile_sizedialog) |
| **get_profile_size(profile,[value],size)** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **get_redirects(max)** | [uac_redirect](http://www.kamailio.org/docs/modules/5.7.x/modules/uac_redirect.html#uac_redirect.f.get_redirects1uac_redirect) |
| **get_redirects(max,reason)** | [uac_redirect](http://www.kamailio.org/docs/modules/5.7.x/modules/uac_redirect.html#uac_redirect.f.get_redirects2uac_redirect) |
| **get_uri_param(name, var)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.get_uri_paramsiputils) |
| **get_user_group(URI, AVP)** | [group](http://www.kamailio.org/docs/modules/5.7.x/modules/group.html#group.f.get_user_groupgroup) |
| **goes_to_gw([type])** | [drouting](http://www.kamailio.org/docs/modules/5.7.x/modules/drouting.htmldrouting) |

## [h]

| Name | Module Name |
|------|-------------|
| **h350_auth_lookup(auth_username, "username_avp_spec/pwd_avp_spec")** | [h350](http://www.kamailio.org/docs/modules/5.7.x/modules/h350.htmlh350) |
| **h350_result_call_preferences(avp_name_prefix)** | [h350](http://www.kamailio.org/docs/modules/5.7.x/modules/h350.htmlh350) |
| **h350_result_service_level(avp_name_prefix)** | [h350](http://www.kamailio.org/docs/modules/5.7.x/modules/h350.htmlh350) |
| **h350_sipuri_lookup(sip_uri)** | [h350](http://www.kamailio.org/docs/modules/5.7.x/modules/h350.htmlh350) |
| **handle_publish([sender_uri])** | [presence](http://www.kamailio.org/docs/modules/5.7.x/modules/presence.html#presence.f.handle_publishpresence) |
| **handle_ruri_alias([mode])** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.handle_ruri_aliasnathelper) |
| **handle_subscribe([watcher_uri])** | [presence](http://www.kamailio.org/docs/modules/5.7.x/modules/presence.html#presence.f.handle_subscribepresence) |
| **has_body(), has_body(mime)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.has_bodytextops) |
| **has_credentials(realm)** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.has_credentialsauth) |
| **has_totag()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.has_totag()siputils) |
| **hdr_body2attrs(headername, prefix)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.hdr_body2attrsavp) |
| **hdr_body2attrs2(headername, prefix)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.hdr_body2attrs2avp) |
| **hdr_date_check(tdiff)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.hdr_date_checksiputils) |
| **hf_iterator_append(iname, htext)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_iterator_appendtextopsx) |
| **hf_iterator_end(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_iterator_endtextopsx) |
| **hf_iterator_insert(iname, htext)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_iterator_inserttextopsx) |
| **hf_iterator_next(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_iterator_nexttextopsx) |
| **hf_iterator_prev(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_iterator_prevtextopsx) |
| **hf_iterator_rm(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_iterator_rmtextopsx) |
| **hf_iterator_start(iname)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_iterator_starttextopsx) |
| **hf_value_exists(hf, hvalue)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.hf_value_existstextopsx) |
| **hlog([correlation_id,] message)** | [siptrace](http://www.kamailio.org/docs/modules/5.7.x/modules/siptrace.html#siptrace.f.hlogsiptrace) |
| **http_async_query(url, route_name)** | [http_async_client](http://www.kamailio.org/docs/modules/5.7.x/modules/http_async_client.html#http_async_client.f.http_async_queryhttp_async_client) |
| **http_client_get(url, body, hdrs, respv)** | [http_client](http://www.kamailio.org/docs/modules/5.7.x/modules/http_client.html#http_client.f.http_gethttp_client) |
| **http_client_query(url, [post-data], [hdrs], result)** | [http_client](http://www.kamailio.org/docs/modules/5.7.x/modules/http_client.html#http_client.f.http_queryhttp_client) |
| **http_connect(connection, url, [content_type, data,] result)** | [http_client](http://www.kamailio.org/docs/modules/5.7.x/modules/http_client.html#http_client.f.http_connecthttp_client) |
| **http_connect_raw(connection, url, content_type, data, result)** | [http_client](http://www.kamailio.org/docs/modules/5.7.x/modules/http_client.html#http_client.f.http_connect_rawhttp_client) |
| **http_get_redirect(connection, result)** | [http_client](http://www.kamailio.org/docs/modules/5.7.x/modules/http_client.html#http_client.f.http_get_redirecthttp_client) |

## [i]

| Name | Module Name |
|------|-------------|
| **imc_manager()** | [imc](http://www.kamailio.org/docs/modules/5.7.x/modules/imc.htmlimc) |
| **impu_registered(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **ims_proxy_authenticate(realm, table)** | [ims_auth](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_auth.htmlims_auth) |
| **ims_proxy_challenge(route_block, realm, table)** | [ims_auth](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_auth.htmlims_auth) |
| **ims_www_authenticate(realm)** | [ims_auth](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_auth.htmlims_auth) |
| **ims_www_authorize(realm, table)** | [ims_auth](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_auth.htmlims_auth) |
| **ims_www_challenge(route_block, realm)** | [ims_auth](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_auth.htmlims_auth) |
| **ims_www_challenge(route_block, realm, algorithm)** | [ims_auth](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_auth.htmlims_auth) |
| **inactivate_gw()** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.inactivate_gwlcr) |
| **include_hf_value(hf, hvalue)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.include_hf_valuetextopsx) |
| **insert_attr_hf(header_name, $avp_name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.insert_attr_hf_2avp) |
| **insert_attr_hf(name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.insert_attr_hf_1avp) |
| **insert_hf(txt[, hdr])** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.insert_hftextops) |
| **insert_hf_value(hf, hvalue)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.insert_hf_valuetextopsx) |
| **in_list(subject, list, separator)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.in_listtextops) |
| **in_list_prefix(subject, list, separator)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.in_list_prefixtextops) |
| **ipsec_create(domain)** | [ims_ipsec_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_ipsec_pcscf.htmlims_ipsec_pcscf) |
| **ipsec_destroy(domain)** | [ims_ipsec_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_ipsec_pcscf.htmlims_ipsec_pcscf) |
| **ipsec_forward(domain, flags)** | [ims_ipsec_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_ipsec_pcscf.htmlims_ipsec_pcscf) |
| **ip_type (ip)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_ip_typeipops) |
| **isbflagset(flag [, branch])** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.isbflagsetkex) |
| **isc_from_as(direction)** | [ims_isc](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_isc.htmlims_isc) |
| **isc_match_filter(direction,domain)** | [ims_isc](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_isc.htmlims_isc) |
| **isc_match_filter_reg(reg_state,domain)** | [ims_isc](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_isc.htmlims_isc) |
| **isdsturiset()** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.isdsturisetkex) |
| **isRPDATA()** | [smsops](http://www.kamailio.org/docs/modules/5.7.x/modules/smsops.html#smsops.f.isRPDATAsmsops) |
| **issflagset(flag)** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.issflagsetkex) |
| **isup_to_json** | [ss7ops](http://www.kamailio.org/docs/modules/5.7.x/modules/ss7ops.html#ss7ops.f.isup_to_jsonss7ops) |
| **isxflagset(flag)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.isxflagsetcorex) |
| **is_alphanum(tval)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_alphanumsiputils) |
| **is_alphanumex(tval, eset)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_alphanumexsiputils) |
| **is_audio_on_hold()** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.is_audio_on_holdtextops) |
| **is_avp_set(name)** | [avpops](http://www.kamailio.org/docs/modules/5.7.x/modules/avpops.html#avpops.f.is_avp_setavpops) |
| **is_direction(dir)** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.is_directionrr) |
| **is_domain_local(domain)** | [domain](http://www.kamailio.org/docs/modules/5.7.x/modules/domain.html#domain.f.is_domain_localdomain) |
| **is_e164(pseudo-variable)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_e164siputils) |
| **is_faked_msg()** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.is_faked_msgcorex) |
| **is_first_hop([mode])** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_first_hopsiputils) |
| **is_from_gw([ type, [flag] ])** | [drouting](http://www.kamailio.org/docs/modules/5.7.x/modules/drouting.html#drouting.f.is_from_gwdrouting) |
| **is_from_local()** | [domain](http://www.kamailio.org/docs/modules/5.7.x/modules/domain.html#domain.f.is_from_localdomain) |
| **is_from_user_enum()** | [enum](http://www.kamailio.org/docs/modules/5.7.x/modules/enum.html#enum.f.is_from_user_enumenum) |
| **is_gflag(flag)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.is_gflagcfgutils) |
| **is_gruu([uri])** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_gruusiputils) |
| **is_incoming()** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.is_incomingcorex) |
| **is_int(pvar)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.is_intpv) |
| **is_in_profile(profile,[value])** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.is_in_profiledialog) |
| **is_in_profile(profile,[value])** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **is_in_subnet (ip, subnets_list)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_in_subnetipops) |
| **is_ip (ip)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_ipipops) |
| **is_ipv4 (ip)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_ipv4ipops) |
| **is_ipv6 (ip)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_ipv6ipops) |
| **is_ipv6_reference (ip)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_ipv6_referenceipops) |
| **is_ip_rfc1918 (ip)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_ip_rfc1918ipops) |
| **is_known_dlg()** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.is_known_dlgdialog) |
| **is_known_dlg()** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **is_leap_year([year])** | [tmrec](http://www.kamailio.org/docs/modules/5.7.x/modules/tmrec.html#tmrec.f.is_leap_yeartmrec) |
| **is_local(domain)** | [uid_domain](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_domain.html#is_localuid_domain) |
| **is_maxfwd_lt(max_value)** | [maxfwd](http://www.kamailio.org/docs/modules/5.7.x/modules/maxfwd.html#maxfwd.f.is_maxfwd_ltmaxfwd) |
| **is_method(name)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.is_methodtextops) |
| **is_myself(uri)** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.is_myselfkex) |
| **is_numeric(tval)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_numericsiputils) |
| **is_peer_verified()** | [tls](http://www.kamailio.org/docs/modules/5.7.x/modules/tls.html#tls.f.is_peer_verfiedtls) |
| **is_present_hf(hf_name)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.is_present_hftextops) |
| **is_present_hf_pv(hf_name)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.is_present_hf_pvtextops) |
| **is_present_hf_re(hf_name_re)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.is_present_hf_retextops) |
| **is_present_hf_re_pv(hf_name_re)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.is_present_hf_re_pvtextops) |
| **is_privacy(privacy_type)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.is_privacytextops) |
| **is_pure_ip (ip)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.is_pur_ipipops) |
| **is_reply()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_replysiputils) |
| **is_request()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_requestsiputils) |
| **is_rfc1918(ip_address)** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.is_rfc1918nathelper) |
| **is_rpid_user_e164()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.htmlsiputils) |
| **is_socket_name(sockname)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.is_socket_namecorex) |
| **is_subscriber(uri, dbtable, flags)** | [auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_db.html#auth_db.f.is_subscriberauth_db) |
| **is_supported(option)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_supportedsiputils) |
| **is_tel_number(tval)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_tel_numbersiputils) |
| **is_ugflag(flag_num)** | [uid_gflags](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_gflags.html#is_ugflaguid_gflags) |
| **is_uri(pseudo-variable)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_urisiputils) |
| **is_uri_host_local()** | [domain](http://www.kamailio.org/docs/modules/5.7.x/modules/domain.html#domain.f.is_uri_host_localdomain) |
| **is_uri_user_e164(pseudo-variable)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_uri_user_e164siputils) |
| **is_user(username)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.is_usersiputils) |
| **is_user_in(URI, group)** | [group](http://www.kamailio.org/docs/modules/5.7.x/modules/group.html#group.f.is_user_ingroup) |
| **i_enum_query(["suffix" [,"service"]])** | [enum](http://www.kamailio.org/docs/modules/5.7.x/modules/enum.html#enum.f.i_enum_queryenum) |
| **I_perform_location_information_request(route_block)** | [ims_icscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_icscf.htmlims_icscf) |
| **I_perform_user_authorization_request(route_block, capabalities)** | [ims_icscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_icscf.htmlims_icscf) |
| **I_scscf_drop()** | [ims_icscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_icscf.htmlims_icscf) |
| **I_scscf_select(initial)** | [ims_icscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_icscf.htmlims_icscf) |

## [j]

| Name | Module Name |
|------|-------------|
| **janssonrpc_notification(conn, method, parameters)** | [janssonrpcc](http://www.kamailio.org/docs/modules/5.7.x/modules/janssonrpcc.htmljanssonrpcc) |
| **janssonrpc_request(conn, method, params[, options]])** | [janssonrpcc](http://www.kamailio.org/docs/modules/5.7.x/modules/janssonrpcc.htmljanssonrpcc) |
| **jansson_append(type, key/path, value, result)** | [jansson](http://www.kamailio.org/docs/modules/5.7.x/modules/jansson.html#jansson.f.jansson_appendjansson) |
| **jansson_array_size(key/path, src, dst)** | [jansson](http://www.kamailio.org/docs/modules/5.7.x/modules/jansson.html#jansson.f.jansson_array_sizejansson) |
| **jansson_get(key/path, src, dst)** | [jansson](http://www.kamailio.org/docs/modules/5.7.x/modules/jansson.html#jansson.f.jansson_getjansson) |
| **jansson_get_field(src, field_name, dst)** | [jansson](http://www.kamailio.org/docs/modules/5.7.x/modules/jansson.html#jansson.f.jansson_get_fieldjansson) |
| **jansson_set(type, key/path, value, result)** | [jansson](http://www.kamailio.org/docs/modules/5.7.x/modules/jansson.html#jansson.f.jansson_setjansson) |
| **jansson_xdecode(json, xavp)** | [jansson](http://www.kamailio.org/docs/modules/5.7.x/modules/jansson.html#jansson.f.jansson_xdecodejansson) |
| **jansson_xencode(xavp, pv)** | [jansson](http://www.kamailio.org/docs/modules/5.7.x/modules/jansson.html#jansson.f.jansson_xencodejansson) |
| **java_method_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](http://www.kamailio.org/docs/modules/5.7.x/modules/app_java.html#app_java.f.java_method_execapp_java) |
| **java_staticmethod_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](http://www.kamailio.org/docs/modules/5.7.x/modules/app_java.html#app_java.f.java_staticmethod_execapp_java) |
| **java_s_method_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](http://www.kamailio.org/docs/modules/5.7.x/modules/app_java.html#app_java.f.java_s_method_execapp_java) |
| **java_s_staticmethod_exec(method, method_signature, [param1[, param2[, ...]]])** | [app_java](http://www.kamailio.org/docs/modules/5.7.x/modules/app_java.html#app_java.f.java_s_staticmethod_execapp_java) |
| **jsdt_dofile(path)** | [app_jsdt](http://www.kamailio.org/docs/modules/5.7.x/modules/app_jsdt.html#app_jsdt.f.jsdt_dofileapp_jsdt) |
| **jsdt_dostring(script)** | [app_jsdt](http://www.kamailio.org/docs/modules/5.7.x/modules/app_jsdt.html#app_jsdt.f.jsdt_dostringapp_jsdt) |
| **jsdt_run(function, params)** | [app_jsdt](http://www.kamailio.org/docs/modules/5.7.x/modules/app_jsdt.html#app_jsdt.f.jsdt_runapp_jsdt) |
| **jsdt_runstring(script)** | [app_jsdt](http://www.kamailio.org/docs/modules/5.7.x/modules/app_jsdt.html#app_jsdt.f.jsdt_runstringapp_jsdt) |
| **jsonrpc_dispatch()** | [jsonrpcs](http://www.kamailio.org/docs/modules/5.7.x/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_dispatchjsonrpcs) |
| **jsonrpc_exec(cmd)** | [jsonrpcs](http://www.kamailio.org/docs/modules/5.7.x/modules/jsonrpcs.html#jsonrpcs.f.jsonrpc_execjsonrpcs) |
| **jsonrpc_notification(method, parameters)** | [jsonrpcc](http://www.kamailio.org/docs/modules/5.7.x/modules/jsonrpcc.htmljsonrpcc) |
| **jsonrpc_request(method, parameters, return_route, error_route, result_var)** | [jsonrpcc](http://www.kamailio.org/docs/modules/5.7.x/modules/jsonrpcc.htmljsonrpcc) |
| **json_get_field(json_string, field_name, destination)** | [json](http://www.kamailio.org/docs/modules/5.7.x/modules/json.html#json.f.json_get_fieldjson) |
| **json_get_string(json_string, field_name, destination)** | [json](http://www.kamailio.org/docs/modules/5.7.x/modules/json.html#json.f.json_get_stringjson) |
| **jwt_generate(prvkey, alg, claims, [headers])** | [jwt](http://www.kamailio.org/docs/modules/5.7.x/modules/jwt.html#jwt.f.jwt_generatejwt) |
| **jwt_verify(pubkey, alg, claims, jwtval)** | [jwt](http://www.kamailio.org/docs/modules/5.7.x/modules/jwt.html#jwt.f.jwt_verifyjwt) |

## [k]

| Name | Module Name |
|------|-------------|
| **kazoo_encode(to_encode, target_var)** | [modules](http://www.kamailio.org/docs/modules/5.7.x/modules/kazoo.htmlkazoo) |
| **kazoo_json(json_payload, field, target_var)** | [modules](http://www.kamailio.org/docs/modules/5.7.x/modules/kazoo.htmlkazoo) |
| **kazoo_pua_publish(json_payload)** | [modules](http://www.kamailio.org/docs/modules/5.7.x/modules/kazoo.htmlkazoo) |
| **kazoo_publish(exchange, routing_key, json_payload [, amqp_headers])** | [modules](http://www.kamailio.org/docs/modules/5.7.x/modules/kazoo.htmlkazoo) |
| **kazoo_query(exchange, routing_key, json_payload [, target_var] [, amqp_headers])** | [modules](http://www.kamailio.org/docs/modules/5.7.x/modules/kazoo.htmlkazoo) |
| **kazoo_subscribe(exchange, exchange_type, queue, routing_key)** | [modules](http://www.kamailio.org/docs/modules/5.7.x/modules/kazoo.htmlkazoo) |
| **kazoo_subscribe(json_description)** | [modules](http://www.kamailio.org/docs/modules/5.7.x/modules/kazoo.htmlkazoo) |
| **keep_hf([regexp])** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.keep_hftextopsx) |
| **km_append_branch([uri])** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.km_append_branchkex) |

## [l]

| Name | Module Name |
|------|-------------|
| **ldap_filter_url_encode(string, avp_spec)** | [ldap](http://www.kamailio.org/docs/modules/5.7.x/modules/ldap.html#ldap-filter-url-encode-fnldap) |
| **ldap_result("ldap_attr_name/avp_spec[/avp_type]" [, regex_subst])** | [ldap](http://www.kamailio.org/docs/modules/5.7.x/modules/ldap.html#ldap-result-fnldap) |
| **ldap_result_check("ldap_attr_name/string_to_match" [, regex_subst])** | [ldap](http://www.kamailio.org/docs/modules/5.7.x/modules/ldap.html#ldap-result-check-fnldap) |
| **ldap_result_next()** | [ldap](http://www.kamailio.org/docs/modules/5.7.x/modules/ldap.html#ldap-result-next-fnldap) |
| **ldap_search(ldap_url)** | [ldap](http://www.kamailio.org/docs/modules/5.7.x/modules/ldap.html#ldap-search-fnldap) |
| **load_attrs (track, id)** | [uid_avp_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_avp_db.htmluid_avp_db) |
| **load_extra_attrs (group_id, id)** | [uid_avp_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_avp_db.htmluid_avp_db) |
| **load_gws(lcr_id[, uri_user[, caller_uri]])** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.load_gwslcr) |
| **lock(key)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.lockcfgutils) |
| **lock_extra_attrs (group_id, id)** | [uid_avp_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_avp_db.htmluid_avp_db) |
| **log_udp(text)** | [log_custom](http://www.kamailio.org/docs/modules/5.7.x/modules/log_custom.html#log_custom.f.log_udplog_custom) |
| **lookup(domain [, uri])** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.lookupregistrar) |
| **lookup(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **lookup_branches(domain)** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.lookup_branchesregistrar) |
| **lookup_domain(attr_group, domain)** | [uid_domain](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_domain.html#lookup_domainuid_domain) |
| **lookup_domain(domain [, prefix])** | [domain](http://www.kamailio.org/docs/modules/5.7.x/modules/domain.html#domain.f.lookup_domaindomain) |
| **lookup_path_to_contact(uri)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **lookup_to_dset(domain [, uri])** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.lookup_to_dsetregistrar) |
| **lookup_xavp(ultable, uri, rxname, cxname)** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.lookup_xavpregistrar) |
| **loose_route()** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.loose_routerr) |
| **loose_route_mode(vmode)** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.loose_route_moderr) |
| **loose_route_preloaded()** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.loose_route_preloadedrr) |
| **lost_held_dereference(url, rtime, rtype, pidf-lo, error)** | [lost](http://www.kamailio.org/docs/modules/5.7.x/modules/lost.html#lost.f.lost_held_dereferencelost) |
| **lost_held_query(con, [id,] pidf-lo, url, error)** | [lost](http://www.kamailio.org/docs/modules/5.7.x/modules/lost.html#lost.f.lost_held_querylost) |
| **lost_query(con, [pidf-lo, urn,] uri, name, error)** | [lost](http://www.kamailio.org/docs/modules/5.7.x/modules/lost.html#lost.f.lost_querylost) |
| **lua_dofile(path)** | [app_lua](http://www.kamailio.org/docs/modules/5.7.x/modules/app_lua.html#app_lua.f.lua_dotfileapp_lua) |
| **lua_dostring(script)** | [app_lua](http://www.kamailio.org/docs/modules/5.7.x/modules/app_lua.html#app_lua.f.lua_dostringapp_lua) |
| **lua_run(func [, params])** | [app_lua](http://www.kamailio.org/docs/modules/5.7.x/modules/app_lua.html#app_lua.f.lua_runapp_lua) |
| **lua_runstring(script)** | [app_lua](http://www.kamailio.org/docs/modules/5.7.x/modules/app_lua.html#app_lua.f.lua_runstringapp_lua) |
| **lwsc_notify(wsurl, data)** | [lwsc](http://www.kamailio.org/docs/modules/5.7.x/modules/lwsc.html#lwsc.f.lwsc_notifylwsc) |
| **lwsc_notify_proto(wsurl, wsproto, data)** | [lwsc](http://www.kamailio.org/docs/modules/5.7.x/modules/lwsc.html#lwsc.f.lwsc_notify_protolwsc) |
| **lwsc_request(wsurl, data)** | [lwsc](http://www.kamailio.org/docs/modules/5.7.x/modules/lwsc.html#lwsc.f.lwsc_requestlwsc) |
| **lwsc_request_proto(wsurl, wsproto, data)** | [lwsc](http://www.kamailio.org/docs/modules/5.7.x/modules/lwsc.html#lwsc.f.lwsc_request_protolwsc) |

## [m]

| Name | Module Name |
|------|-------------|
| **matrix (string first, string second, string dstavp)** | [matrix](http://www.kamailio.org/docs/modules/5.7.x/modules/matrix.html#matrix.f.matrixmatrix) |
| **maxfwd_at_least(max_value)** | [maxfwd](http://www.kamailio.org/docs/modules/5.7.x/modules/maxfwd.html#maxfwd.f.maxfwd_at_leastmaxfwd) |
| **maxfwd_process(max_value)** | [maxfwd](http://www.kamailio.org/docs/modules/5.7.x/modules/maxfwd.html#maxfwd.f.maxfwd_processmaxfwd) |
| **mf_lowlimit(max_value)** | [maxfwd](http://www.kamailio.org/docs/modules/5.7.x/modules/maxfwd.html#maxfwd.f.mf_lowlimitmaxfwd) |
| **mf_process_maxfwd_header(max_value)** | [maxfwd](http://www.kamailio.org/docs/modules/5.7.x/modules/maxfwd.html#maxfwd.f.mf_process_maxfwd_headermaxfwd) |
| **mohq_count (queue_name, pvar)** | [mohqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mohqueue.html#count.funcmohqueue) |
| **mohq_process ()** | [mohqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mohqueue.html#proc.funcmohqueue) |
| **mohq_retrieve (queue_name, URI)** | [mohqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mohqueue.html#retrieve.funcmohqueue) |
| **mohq_send (queue_name)** | [mohqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mohqueue.html#send.funcmohqueue) |
| **mongodb_cmd(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmdndb_mongodb) |
| **mongodb_cmd_simple(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_cmd_simplendb_mongodb) |
| **mongodb_find(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_findndb_mongodb) |
| **mongodb_find_one(srvname, dbname, cname, command, replyid)** | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_find_onendb_mongodb) |
| **mongodb_free(replyid)** | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_freendb_mongodb) |
| **mongodb_next(replyid)** | [ndb_mongodb](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_mongodb.html#ndb_mongodb.f.mongodb_nextndb_mongodb) |
| **mono_exec(path [, param])** | [app_mono](http://www.kamailio.org/docs/modules/5.7.x/modules/app_mono.html#app_mono.f.mono_execapp_mono) |
| **mono_run([param])** | [app_mono](http://www.kamailio.org/docs/modules/5.7.x/modules/app_mono.html#app_mono.mono_runapp_mono) |
| **mqtt_publish(topic, message, qos)** | [mqtt](http://www.kamailio.org/docs/modules/5.7.x/modules/mqtt.html#evapi.f.mqtt_publishmqtt) |
| **mqtt_subscribe(topic, qos)** | [mqtt](http://www.kamailio.org/docs/modules/5.7.x/modules/mqtt.html#evapi.f.mqtt_subscribemqtt) |
| **mqtt_unsubscribe(topic)** | [mqtt](http://www.kamailio.org/docs/modules/5.7.x/modules/mqtt.html#evapi.f.mqtt_unsubscribemqtt) |
| **mq_add(queue, key, value)** | [mqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mqueue.html#mqueue.f.mq_addmqueue) |
| **mq_fetch(queue)** | [mqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mqueue.html#mqueue.f.mq_fetchmqueue) |
| **mq_pv_free(queue)** | [mqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mqueue.html#mqueue.f.mq_pv_freemqueue) |
| **mq_size(queue)** | [mqueue](http://www.kamailio.org/docs/modules/5.7.x/modules/mqueue.html#mqueue.f.mq_sizemqueue) |
| **msg_apply_changes()** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.msg_apply_changestextopsx) |
| **msg_iflag_is_set(flagname)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.msg_iflag_is_setcorex) |
| **msg_iflag_reset(flagname)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.msg_iflag_resetcorex) |
| **msg_iflag_set(flagname)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.msg_iflag_setcorex) |
| **msg_set_buffer(data)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.msg_set_buffertextopsx) |
| **msrp_cmap_lookup()** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_cmap_lookupmsrp) |
| **msrp_cmap_save()** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_cmap_savemsrp) |
| **msrp_is_reply()** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_is_replymsrp) |
| **msrp_is_request()** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_is_requestmsrp) |
| **msrp_relay()** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_relaymsrp) |
| **msrp_relay_flags(flags)** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_relay_flagsmsrp) |
| **msrp_reply(code, text [, hdrs])** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_replymsrp) |
| **msrp_reply_flags(flags)** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_reply_flagsmsrp) |
| **msrp_set_dst(addr, sock)** | [msrp](http://www.kamailio.org/docs/modules/5.7.x/modules/msrp.html#msrp.f.msrp_set_dstmsrp) |
| **mt_match(mtree, pv, mode)** | [mtree](http://www.kamailio.org/docs/modules/5.7.x/modules/mtree.htmlmtree) |
| **mt_mem_alloc(size)** | [misctest](http://www.kamailio.org/docs/modules/5.7.x/modules/misctest.html#misctest.mt_mem_allocmisctest) |
| **mt_mem_free()** | [misctest](http://www.kamailio.org/docs/modules/5.7.x/modules/misctest.html#misctest.mt_mem_freemisctest) |
| **m_dump([owner])** | [msilo](http://www.kamailio.org/docs/modules/5.7.x/modules/msilo.html#msilo.f.m_dumpmsilo) |
| **m_store([owner])** | [msilo](http://www.kamailio.org/docs/modules/5.7.x/modules/msilo.html#msilo.f.m_storemsilo) |

## [n]

| Name | Module Name |
|------|-------------|
| **naptr_query(domain, pvid)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.naptr_queryipops) |
| **nats_publish(subject, payload)** | [nats](http://www.kamailio.org/docs/modules/5.7.x/modules/nats.html#nats.f.nats_publishnats) |
| **nat_uac_test(flags)** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.f.nat_uac_testnathelper) |
| **next_gw()** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.next_gwlcr) |
| **next_routing()** | [drouting](http://www.kamailio.org/docs/modules/5.7.x/modules/drouting.html#drouting.f.next_routingdrouting) |
| **not_empty(pvar)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.not_emptypv) |

## [o]

| Name | Module Name |
|------|-------------|
| **options_reply()** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.options_replysiputils) |

## [p]

| Name | Module Name |
|------|-------------|
| **pcre_match (string, pcre_regex)** | [regex](http://www.kamailio.org/docs/modules/5.7.x/modules/regex.html#regex.f.pcre_matchregex) |
| **pcre_match_group (string [, group])** | [regex](http://www.kamailio.org/docs/modules/5.7.x/modules/regex.html#regex.f.pcre_match_groupregex) |
| **pcscf_follows_service_routes(domain)** | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_pcscf.htmlims_registrar_pcscf) |
| **pcscf_force_service_routes(domain)** | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_pcscf.htmlims_registrar_pcscf) |
| **pcscf_is_registered(domain)** | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_pcscf.htmlims_registrar_pcscf) |
| **pcscf_save(domain)** | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_pcscf.htmlims_registrar_pcscf) |
| **pcscf_save_pending(domain)** | [ims_registrar_pcscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_pcscf.htmlims_registrar_pcscf) |
| **pdb_query (string query, string dstavp)** | [pdb](http://www.kamailio.org/docs/modules/5.7.x/modules/pdb.htmlpdb) |
| **pd_translate(sdomain, rewrite_mode)** | [pdt](http://www.kamailio.org/docs/modules/5.7.x/modules/pdt.htmlpdt) |
| **perl_exec(func, [param])** | [app_perl](http://www.kamailio.org/docs/modules/5.7.x/modules/app_perl.html#app_perl.f.perl_execapp_perl) |
| **perl_exec_simple(func, [param])** | [app_perl](http://www.kamailio.org/docs/modules/5.7.x/modules/app_perl.html#app_perl.f.perl_exec_simpleapp_perl) |
| **phonenum_match(num, pvc)** | [phonenum](http://www.kamailio.org/docs/modules/5.7.x/modules/phonenum.html#phonenum.f.phonenum_matchphonenum) |
| **phonenum_match_cn(num, cnc, pvc)** | [phonenum](http://www.kamailio.org/docs/modules/5.7.x/modules/phonenum.html#phonenum.f.phonenum_match_cnphonenum) |
| **pike_check_ip(ipaddr)** | [pike](http://www.kamailio.org/docs/modules/5.7.x/modules/pike.html#pike.f.pike_check_ippike) |
| **pike_check_req()** | [pike](http://www.kamailio.org/docs/modules/5.7.x/modules/pike.html#pike.f.pike_check_reqpike) |
| **pkg_status()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.pkg_statuscfgutils) |
| **pkg_summary()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.pkg_summarycfgutils) |
| **play_dtmf([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.play_dtmfrtpengine) |
| **play_media([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.play_mediartpengine) |
| **pl_active(name)** | [pipelimit](http://www.kamailio.org/docs/modules/5.7.x/modules/pipelimit.html#pipelimit.f.pl_activepipelimit) |
| **pl_check(name [, algorithm, limit])** | [pipelimit](http://www.kamailio.org/docs/modules/5.7.x/modules/pipelimit.html#pipelimit.f.pl_checkpipelimit) |
| **pl_drop([ [min ], max ])** | [pipelimit](http://www.kamailio.org/docs/modules/5.7.x/modules/pipelimit.html#pipelimit.f.pl_droppipelimit) |
| **pos_append(idx, val)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_appendposops) |
| **pos_body_end()** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_body_endposops) |
| **pos_body_start()** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_body_startposops) |
| **pos_findi_str(idx, val)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_findi_strposops) |
| **pos_find_str(idx, val)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_find_strposops) |
| **pos_headers_end()** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_headers_endposops) |
| **pos_headers_start()** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_headers_startposops) |
| **pos_insert(idx, val)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_insertposops) |
| **pos_rfindi_str(idx, val)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_rfindi_strposops) |
| **pos_rfind_str(idx, val)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_rfind_strposops) |
| **pos_rm(idx, len)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_rmposops) |
| **pos_rsearch(idx, re)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_rsearchposops) |
| **pos_search(idx, re)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_searchposops) |
| **pos_set_char(idx, val)** | [posops](http://www.kamailio.org/docs/modules/5.7.x/modules/posops.html#posops.f.pos_set_charposops) |
| **prefix2domain()** | [pdt](http://www.kamailio.org/docs/modules/5.7.x/modules/pdt.htmlpdt) |
| **prefix2domain(rewrite_mode)** | [pdt](http://www.kamailio.org/docs/modules/5.7.x/modules/pdt.htmlpdt) |
| **prefix2domain(rewrite_mode, multidomain_mode)** | [pdt](http://www.kamailio.org/docs/modules/5.7.x/modules/pdt.htmlpdt) |
| **prefix_route([user])** | [prefix_route](http://www.kamailio.org/docs/modules/5.7.x/modules/prefix_route.html#prefixroute.prefix_routeprefix_route) |
| **prepareallosproute()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **prepareosproute()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **pres_auth_status(watcher_uri, presentity_uri)** | [presence](http://www.kamailio.org/docs/modules/5.7.x/modules/presence.html#presence.f.pres_auth_statuspresence) |
| **pres_check_activities(presentity_uri, activity)** | [presence_xml](http://www.kamailio.org/docs/modules/5.7.x/modules/presence_xml.html#presence_xml.f.pres_check_activitiespresence_xml) |
| **pres_check_basic(presentity_uri, status)** | [presence_xml](http://www.kamailio.org/docs/modules/5.7.x/modules/presence_xml.html#presence_xml.f.pres_check_basicpresence_xml) |
| **pres_has_subscribers(presentity_uri, event)** | [presence](http://www.kamailio.org/docs/modules/5.7.x/modules/presence.html#presence.f.pres_has_subscriberspresence) |
| **pres_refresh_watchers(uri, event, type[, file_uri, filename])** | [presence](http://www.kamailio.org/docs/modules/5.7.x/modules/presence.html#presence.f.pres_refresh_watcherspresence) |
| **pres_update_watchers(uri, event)** | [presence](http://www.kamailio.org/docs/modules/5.7.x/modules/presence.html#presence.f.pres_update_watcherspresence) |
| **print(txt)** | [print](http://www.kamailio.org/docs/modules/5.7.x/modules/print.html#print.printprint) |
| **print_attr($attribute)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.print_aattravp) |
| **print_stderr(txt)** | [print_lib](http://www.kamailio.org/docs/modules/5.7.x/modules/print_lib.html#print_lib.printprint_lib) |
| **process_maxfwd(max_value)** | [maxfwd](http://www.kamailio.org/docs/modules/5.7.x/modules/maxfwd.htmlmaxfwd) |
| **prom_check_uri()** | [xhttp_prom](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_prom.html#xhttp_prom.f.prom_check_urixhttp_prom) |
| **prom_counter_inc(name, number, l0, l1, l2)** | [xhttp_prom](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_prom.html#xhttp_prom.f.prom_counter_incxhttp_prom) |
| **prom_counter_reset(name, l0, l1, l2)** | [xhttp_prom](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_prom.html#xhttp_prom.f.prom_counter_resetxhttp_prom) |
| **prom_dispatch()** | [xhttp_prom](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_prom.html#xhttp_prom.f.prom_dispatchxhttp_prom) |
| **prom_gauge_reset(name, l0, l1, l2)** | [xhttp_prom](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_prom.html#xhttp_prom.f.prom_gauge_resetxhttp_prom) |
| **prom_gauge_set(name, number, l0, l1, l2)** | [xhttp_prom](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_prom.html#xhttp_prom.f.prom_gauge_setxhttp_prom) |
| **prom_histogram_observe(name, number, l0, l1, l2)** | [xhttp_prom](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp_prom.html#xhttp_prom.f.prom_histogram_observexhttp_prom) |
| **proxy_authenticate(realm, table)** | [auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_db.html#auth_db.f.proxy_authenticateauth_db) |
| **proxy_authorize(realm, table)** | [auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_db.html#auth_db.f.proxy_authorizeauth_db) |
| **proxy_authorize(realm, table)** | [uid_auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_auth_db.html#proxy_authorizeuid_auth_db) |
| **proxy_challenge(realm, flags)** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.proxy_challengeauth) |
| **pua_json_publish(json_payload)** | [pua_json](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_json.htmlpua_json) |
| **pua_set_publish()** | [pua_usrloc](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_usrloc.htmlpua_usrloc) |
| **pua_update_contact()** | [pua](http://www.kamailio.org/docs/modules/5.7.x/modules/pua.htmlpua) |
| **pua_xmpp_notify()** | [pua_xmpp](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_notifypua_xmpp) |
| **pua_xmpp_req_winfo(request_uri, expires)** | [pua_xmpp](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_xmpp.html#pua_xmpp.f.pua_xmpp_req_winfopua_xmpp) |
| **publish_reg(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **pv_auth_check(realm, passwd, flags, checks)** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.pv_auth_checkauth) |
| **pv_evalx(dst, fmt)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_evalxpv) |
| **pv_isset(pvar)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_issetpv) |
| **pv_printf(var, str)** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.pv_printfkex) |
| **pv_proxy_authenticate(realm, passwd, flags)** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.pv_proxy_authenticateauth) |
| **pv_unset(pvar)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_unsetpv) |
| **pv_var_to_xavp(varname, xname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_var_to_xavppv) |
| **pv_www_authenticate(realm, passwd, flags [, method])** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.pv_www_authenticateauth) |
| **pv_xavi_print()** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_xavi_printpv) |
| **pv_xavp_print()** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_xavp_printpv) |
| **pv_xavp_to_var(xname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_xavp_to_varpv) |
| **pv_xavu_print()** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.pv_xavu_printpv) |
| **python_exec(method [, args])** | [app_python3](http://www.kamailio.org/docs/modules/5.7.x/modules/app_python3.html#app_python3.f.python_execapp_python3) |
| **python_exec(method [, args])** | [app_python](http://www.kamailio.org/docs/modules/5.7.x/modules/app_python.html#app_python.f.python_execapp_python) |

## [q]

| Name | Module Name |
|------|-------------|

## [r]

| Name | Module Name |
|------|-------------|
| **rabbitmq_publish(exchange, routing_key, content_type, messagebody)** | [rabbitmq](http://www.kamailio.org/docs/modules/5.7.x/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publishrabbitmq) |
| **rabbitmq_publish_consume(exchange, routing_key, content_type, messagebody, reply)** | [rabbitmq](http://www.kamailio.org/docs/modules/5.7.x/modules/rabbitmq.html#rabbitmq.f.rabbitmq_publish_consumerabbitmq) |
| **radius_does_uri_exist([uri])** | [misc_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/misc_radius.html#mrad.f.does_uri_existmisc_radius) |
| **radius_does_uri_user_exist([user])** | [misc_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/misc_radius.html#mrad.f.does_uri_user_existmisc_radius) |
| **radius_is_user_in(user, group)** | [misc_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/misc_radius.html#mrad.f.is_user_inmisc_radius) |
| **radius_load_callee_avps(callee)** | [misc_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/misc_radius.html#mrad.f.load_callee_avpsmisc_radius) |
| **radius_load_caller_avps(caller)** | [misc_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/misc_radius.html#mrad.f.load_caller_avpsmisc_radius) |
| **radius_proxy_authorize(realm [, uri_user])** | [auth_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_radius.html#auth_radius.f.radius_proxy_authorizeauth_radius) |
| **radius_www_authorize(realm [, uri_user])** | [auth_radius](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_radius.html#auth_radius.f.radius_www_authorizeauth_radius) |
| **rand_event()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.rand_eventcfgutils) |
| **rand_get_prob()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.rand_get_probcfgutils) |
| **rand_reset_prob()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.rand_reset_probcfgutils) |
| **rand_set_prob(probability)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.rand_set_probcfgutils) |
| **record_route([sparams])** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.record_routerr) |
| **record_route_advertised_address(address)** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.record_route_adv_addrrr) |
| **record_route_preset(string [,string2])** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.record_route_presetrr) |
| **redis_cmd(srvname, command, ..., replyid)** | [ndb_redis](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_redis.html#ndb_redis.f.redis_cmdndb_redis) |
| **redis_execute(srvname)** | [ndb_redis](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_redis.html#ndb_redis.f.redis_executendb_redis) |
| **redis_free(replyid)** | [ndb_redis](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_redis.html#ndb_redis.f.redis_freendb_redis) |
| **redis_pipe_cmd(srvname, command, ..., replyid)** | [ndb_redis](http://www.kamailio.org/docs/modules/5.7.x/modules/ndb_redis.html#ndb_redis.f.redis_pipe_cmdndb_redis) |
| **regex_substring(itext, regexp, mindex, mcount, dpv)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.regex_substringtextops) |
| **reginfo_handle_notify(uldomain)** | [pua_reginfo](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_reginfo.html#pua_reginfo.f.reginfo_handle_notifypua_reginfo) |
| **reginfo_subscribe(uri[, expires])** | [pua_reginfo](http://www.kamailio.org/docs/modules/5.7.x/modules/pua_reginfo.htmlpua_reginfo) |
| **registered(domain [, uri [, match_option [, match_action]]])** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.registeredregistrar) |
| **reg_fetch_contacts(domain, uri, profile)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **reg_fetch_contacts(domain, uri, profile)** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.reg_fetch_contactsregistrar) |
| **reg_free_contacts(profile)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **reg_free_contacts(profile)** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.reg_free_contactsregistrar) |
| **reg_send_reply()** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.reg_send_replyregistrar) |
| **remove_body()** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.remove_bodytextopsx) |
| **remove_body_part(content_type)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_body_parttextops) |
| **remove_extra_attrs (group_id, id)** | [uid_avp_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_avp_db.htmluid_avp_db) |
| **remove_hf(hname)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hftextops) |
| **remove_hf_exp(expmatch, expskip)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hf_exptextops) |
| **remove_hf_exp_pv(expmatch, expskip)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hf_exp_pvtextops) |
| **remove_hf_idx(hname, idx)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hf_idxtextops) |
| **remove_hf_match(hname, op, expr)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hf_matchtextops) |
| **remove_hf_pv(hname)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hf_pvtextops) |
| **remove_hf_re(re)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hf_retextops) |
| **remove_hf_re_pv(re)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.remove_hf_re_pvtextops) |
| **remove_hf_value(hf_par)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.remove_hf_valuetextopsx) |
| **remove_hf_value2(hf_par)** | [textopsx](http://www.kamailio.org/docs/modules/5.7.x/modules/textopsx.html#textopsx.f.remove_hf_value2textopsx) |
| **remove_record_route()** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.remove_record_routerr) |
| **replace(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replacetextops) |
| **replace_all(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_alltextops) |
| **replace_attr_hf(header_name, $avp_name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.replace_attr_hf_2avp) |
| **replace_attr_hf(name)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.replace_attr_hf_1avp) |
| **replace_body(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_bodytextops) |
| **replace_body_all(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_body_alltextops) |
| **replace_body_atonce(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_body_atoncetextops) |
| **replace_body_str(match, repl, mode)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_body_strtextops) |
| **replace_hdrs(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_hdrstextops) |
| **replace_hdrs_str(match, repl, mode)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_hdrs_strtextops) |
| **replace_str(match, repl, mode)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.replace_strtextops) |
| **reportospusage()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **report_capture([table], [cid], [data])** | [sipcapture](http://www.kamailio.org/docs/modules/5.7.x/modules/sipcapture.html#sipcapture.f.report_capturesipcapture) |
| **requestosprouting()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **resetbflag(flag [, branch])** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.resetbflagkex) |
| **resetdebug()** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.resetdebugkex) |
| **resetdsturi()** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.resetdsturikex) |
| **resetsflag(flag)** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.resetsflagkex) |
| **resetxflag(flag)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.resetxflagcorex) |
| **reset_gflag(flag)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.reset_gflagcfgutils) |
| **reset_stat(variable)** | [statistics](http://www.kamailio.org/docs/modules/5.7.x/modules/statistics.html#statistics.f.reset_statstatistics) |
| **reset_ugflag(flag_num)** | [uid_gflags](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_gflags.html#reset_ugflaguid_gflags) |
| **rls_handle_notify()** | [rls](http://www.kamailio.org/docs/modules/5.7.x/modules/rls.html#rls.f.rls_handle_notifyrls) |
| **rls_handle_subscribe([watcher_uri])** | [rls](http://www.kamailio.org/docs/modules/5.7.x/modules/rls.html#rls.f.rls_handle_subscriberls) |
| **rls_update_subs(uri, event)** | [rls](http://www.kamailio.org/docs/modules/5.7.x/modules/rls.html#rls.f.rls_update_subsrls) |
| **rl_check([pvar])** | [ratelimit](http://www.kamailio.org/docs/modules/5.7.x/modules/ratelimit.htmlratelimit) |
| **rl_check_pipe(pipe_no)** | [ratelimit](http://www.kamailio.org/docs/modules/5.7.x/modules/ratelimit.htmlratelimit) |
| **rms_answer (event_route)** | [rtp_media_server](http://www.kamailio.org/docs/modules/5.7.x/modules/rtp_media_server.html#rtp_media_server.f.rms_answerrtp_media_server) |
| **rms_bridge (target URI, event_route)** | [rtp_media_server](http://www.kamailio.org/docs/modules/5.7.x/modules/rtp_media_server.html#rtp_media_server.f.rms_bridgertp_media_server) |
| **rms_dialog_check ()** | [rtp_media_server](http://www.kamailio.org/docs/modules/5.7.x/modules/rtp_media_server.html#rtp_media_server.f.rms_dialog_checkrtp_media_server) |
| **rms_hangup ()** | [rtp_media_server](http://www.kamailio.org/docs/modules/5.7.x/modules/rtp_media_server.html#rtp_media_server.f.rms_hanguprtp_media_server) |
| **rms_play (file, event_route)** | [rtp_media_server](http://www.kamailio.org/docs/modules/5.7.x/modules/rtp_media_server.html#rtp_media_server.f.rms_playrtp_media_server) |
| **rms_sip_request ()** | [rtp_media_server](http://www.kamailio.org/docs/modules/5.7.x/modules/rtp_media_server.html#rtp_media_server.f.rms_sip_requestrtp_media_server) |
| **route_if_exists(route)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.route_if_existscfgutils) |
| **Ro_CCR(route_name, direction, reservation_units, incoming_trunk_id, outgoing_trunk_id)** | [ims_charging](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_charging.htmlims_charging) |
| **Ro_set_session_id_avp()** | [ims_charging](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_charging.htmlims_charging) |
| **rr_next_hop_route()** | [rr](http://www.kamailio.org/docs/modules/5.7.x/modules/rr.html#rr.f.rr_next_hop_routerr) |
| **rtjson_init_routes(rtdoc)** | [rtjson](http://www.kamailio.org/docs/modules/5.7.x/modules/rtjson.html#rtjson.f.rtjson_init_routesrtjson) |
| **rtjson_next_route()** | [rtjson](http://www.kamailio.org/docs/modules/5.7.x/modules/rtjson.html#rtjson.f.rtjson_next_routertjson) |
| **rtjson_push_routes()** | [rtjson](http://www.kamailio.org/docs/modules/5.7.x/modules/rtjson.html#rtjson.f.rtjson_push_routesrtjson) |
| **rtjson_update_branch()** | [rtjson](http://www.kamailio.org/docs/modules/5.7.x/modules/rtjson.html#rtjson.f.rtjson_update_branchrtjson) |
| **rtpengine_answer([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.rtpengine_answerrtpengine) |
| **rtpengine_delete([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.rtpengine_deletertpengine) |
| **rtpengine_info([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.rtpengine_infortpengine) |
| **rtpengine_manage([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.rtpengine_managertpengine) |
| **rtpengine_offer([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.rtpengine_offerrtpengine) |
| **rtpengine_query([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.rtpengine_queryrtpengine) |
| **rtpengine_query_v(fmt, var)** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.rtpengine_query_vrtpengine) |
| **rtpproxy_answer([flags [, ip_address]])** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_answerrtpproxy) |
| **rtpproxy_destroy([flags])** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_destroyrtpproxy) |
| **rtpproxy_manage([flags [, ip_address]])** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_managertpproxy) |
| **rtpproxy_offer([flags [, ip_address]])** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_offerrtpproxy) |
| **rtpproxy_stop_stream2uac(),** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uacrtpproxy) |
| **rtpproxy_stop_stream2uas()** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stop_stream2uasrtpproxy) |
| **rtpproxy_stream2uac(prompt_name, count),** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uacrtpproxy) |
| **rtpproxy_stream2uas(prompt_name, count)** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.rtpproxy_stream2uasrtpproxy) |
| **ruby_run(function, params)** | [app_ruby](http://www.kamailio.org/docs/modules/5.7.x/modules/app_ruby.html#app_ruby.f.ruby_runapp_ruby) |
| **ruxc_http_delete(url, body, hdrs, respv)** | [ruxc](http://www.kamailio.org/docs/modules/5.7.x/modules/ruxc.html#ruxc.f.ruxc_http_deleteruxc) |
| **ruxc_http_get(url, hdrs, respv)** | [ruxc](http://www.kamailio.org/docs/modules/5.7.x/modules/ruxc.html#ruxc.f.ruxc_http_getruxc) |
| **ruxc_http_post(url, body, hdrs, respv)** | [ruxc](http://www.kamailio.org/docs/modules/5.7.x/modules/ruxc.html#ruxc.f.ruxc_http_postruxc) |
| **Rx_AAR(route_block, direction, subscription_id, subscription_id_type)** | [ims_qos](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_qos.htmlims_qos) |
| **Rx_AAR_Register(route_block, domain)** | [ims_qos](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_qos.htmlims_qos) |

## [s]

| Name | Module Name |
|------|-------------|
| **sanity_check([msg_checks [, uri_checks]])** | [sanity](http://www.kamailio.org/docs/modules/5.7.x/modules/sanity.html#sanity.f.sanity_checksanity) |
| **sanity_reply()** | [sanity](http://www.kamailio.org/docs/modules/5.7.x/modules/sanity.html#sanity.f.sanity_replysanity) |
| **save(async_reply_route, domain, mode, flags)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **save(domain, [, flags [, uri]])** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.saveregistrar) |
| **save_extra_attrs (group_id, id)** | [uid_avp_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_avp_db.htmluid_avp_db) |
| **sbranch_append()** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.sbranch_appendpv) |
| **sbranch_reset()** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.sbranch_resetpv) |
| **sbranch_set_ruri()** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.sbranch_set_ruripv) |
| **sca_call_info_update([mask, to, from])** | [sca](http://www.kamailio.org/docs/modules/5.7.x/modules/sca.html#sca.f.sca_call_info_updatesca) |
| **sca_handle_subscribe()** | [sca](http://www.kamailio.org/docs/modules/5.7.x/modules/sca.html#sca.f.sca_handle_subscribesca) |
| **sdp_content([sloppy])** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_contentsdpops) |
| **sdp_get(avpvar)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_getsdpops) |
| **sdp_get_address_family()** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_get_address_familysdpops) |
| **sdp_get_line_startswith(avpvar, string)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_get_line_startswithsdpops) |
| **sdp_keep_codecs_by_id(list [, mtype])** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.keep_codecs_by_idsdpops) |
| **sdp_keep_codecs_by_name(list [, mtype])** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.keep_codecs_by_namesdpops) |
| **sdp_mangle_ip(pattern, newip)** | [mangler](http://www.kamailio.org/docs/modules/5.7.x/modules/mangler.html#mangler.f.sdp_mangle_ipmangler) |
| **sdp_mangle_port(offset)** | [mangler](http://www.kamailio.org/docs/modules/5.7.x/modules/mangler.html#mangler.f.sdp_mangle_portmangler) |
| **sdp_print(level)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_printsdpops) |
| **sdp_remove_codecs_by_id(list [, mtype])** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.remove_codecs_by_idsdpops) |
| **sdp_remove_codecs_by_name(list [, mtype])** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.remove_codecs_by_namesdpops) |
| **sdp_remove_line_by_prefix(string [, mtype])** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.remove_line_by_prefixsdpops) |
| **sdp_remove_media(type)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_remove_mediasdpops) |
| **sdp_remove_transport(type)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_remove_transportsdpops) |
| **sdp_transport(pv)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_transportsdpops) |
| **sdp_with_active_media(type)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_with_active_mediasdpops) |
| **sdp_with_codecs_by_id(list)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_with_codecs_by_idsdpops) |
| **sdp_with_codecs_by_name(list)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdspops.f.sdp.with_codecs_by_namesdpops) |
| **sdp_with_ice()** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_with_icesdpops) |
| **sdp_with_media(type)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_with_mediasdpops) |
| **sdp_with_transport(type)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_with_transportsdpops) |
| **sdp_with_transport_like(type)** | [sdpops](http://www.kamailio.org/docs/modules/5.7.x/modules/sdpops.html#sdpops.f.sdp_with_transport_likesdpops) |
| **sd_journal_print(level, text)** | [log_systemd](http://www.kamailio.org/docs/modules/5.7.x/modules/log_systemd.html#log_systemd.f.sd_journal_printlog_systemd) |
| **sd_journal_send_xavp(name)** | [log_systemd](http://www.kamailio.org/docs/modules/5.7.x/modules/log_systemd.html#log_systemd.f.sd_journal_send_xavplog_systemd) |
| **sd_lookup(table [, owner])** | [speeddial](http://www.kamailio.org/docs/modules/5.7.x/modules/speeddial.htmlspeeddial) |
| **search(re)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.searchtextops) |
| **search_append(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.search_appendtextops) |
| **search_append_body(re, txt)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.search_append_bodytextops) |
| **search_body(re)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.search_bodytextops) |
| **search_hf(hf, re, flags)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.search_hftextops) |
| **search_str(text. re)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.search_strtextops) |
| **secf_check_contact_hdr ()** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_contact_hdrsecfilter) |
| **secf_check_country (string)** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_countrysecfilter) |
| **secf_check_dst (string)** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_dstsecfilter) |
| **secf_check_from_hdr ()** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_from_hdrsecfilter) |
| **secf_check_ip ()** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.fsecf_.check_ipsecfilter) |
| **secf_check_sqli_all ()** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_sqli_allsecfilter) |
| **secf_check_sqli_hdr (string)** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_sqli_hdrsecfilter) |
| **secf_check_to_hdr ()** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_to_hdrsecfilter) |
| **secf_check_ua ()** | [secfilter](http://www.kamailio.org/docs/modules/5.7.x/modules/secfilter.html#secfilter.f.secf_check_uasecfilter) |
| **secsipid_add_identity(origTN, destTN, attest, origID, x5u, keyPath)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_add_identitysecsipid) |
| **secsipid_build_identity(origTN, destTN, attest, origID, x5u, keyPath)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_build_identitysecsipid) |
| **secsipid_build_identity_prvkey(origTN, destTN, attest, origID, x5u, keyData)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_build_identity_prvkeysecsipid) |
| **secsipid_check(sIdentity, keyPath)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_checksecsipid) |
| **secsipid_check_identity(keyPath)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_check_identitysecsipid) |
| **secsipid_check_identity_pubkey(pubkeyVal)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_check_identity_pubkeysecsipid) |
| **secsipid_get_url(url, ovar)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_get_urlsecsipid) |
| **secsipid_sign(sheaders, spaypload, keyPath)** | [secsipid](http://www.kamailio.org/docs/modules/5.7.x/modules/secsipid.html#secsipid.f.secsipid_signsecsipid) |
| **sendx(uri, sock, data)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.sendxcorex) |
| **send_data(uri, data)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.send_datacorex) |
| **send_reply(code, reason)** | [sl](http://www.kamailio.org/docs/modules/5.7.x/modules/sl.html#sl.f.send_replysl) |
| **send_reply_mode(code, reason, mode)** | [sl](http://www.kamailio.org/docs/modules/5.7.x/modules/sl.html#sl.f.send_reply_modesl) |
| **send_tcp([ host [ :port ] ])** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.send_tcpcorex) |
| **send_udp([ host [ :port ] ])** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.send_udpcorex) |
| **setbflag(flag [, branch])** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.setbflagkex) |
| **setdebug(level)** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.setdebugkex) |
| **setdsturi(uri)** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.setdsturikex) |
| **setsflag(flag)** | [kex](http://www.kamailio.org/docs/modules/5.7.x/modules/kex.html#kex.f.setsflagkex) |
| **setxflag(flag)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.setxflagcorex) |
| **set_accept_filter(filter,flags)** | [uac_redirect](http://www.kamailio.org/docs/modules/5.7.x/modules/uac_redirect.html#uac_redirect.f.set_accept_filteruac_redirect) |
| **set_alias_to_pv(target_avp)** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.set_alias_to_pvnathelper) |
| **set_body(txt,content_type)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.set_bodytextops) |
| **set_body_multipart([txt,content_type][,boundary])** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.set_body_multiparttextops) |
| **set_contact_alias([trim])** | [nathelper](http://www.kamailio.org/docs/modules/5.7.x/modules/nathelper.html#nathelper.set_contact_aliasnathelper) |
| **set_deny_filter(filter,flags)** | [uac_redirect](http://www.kamailio.org/docs/modules/5.7.x/modules/uac_redirect.html#uac_redirect.f.set_deny_filteruac_redirect) |
| **set_dlg_profile(profile,[value])** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.set_dlg_profiledialog) |
| **set_dlg_profile(profile,[value])** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **set_gflag(flag)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.set_gflagcfgutils) |
| **set_gflag(flag_num)** | [uid_gflags](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_gflags.html#set_ugflaguid_gflags) |
| **set_iattr(attribute,value)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.set_iattravp) |
| **set_recv_socket(saddr)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.set_recv_socketcorex) |
| **set_recv_socket_name(sname)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.set_recv_socket_namecorex) |
| **set_reply_body(txt,content_type)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.set_reply_bodytextops) |
| **set_rtpengine_set(setid[, setid])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.set_rtpengine_setrtpengine) |
| **set_rtp_proxy_set(setid)** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.set_rtp_proxy_setrtpproxy) |
| **set_sattr(attribute,value)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.set_sattravp) |
| **set_send_socket(saddr)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.set_send_socketcorex) |
| **set_send_socket_name(sname)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.set_send_socket_namecorex) |
| **set_source_address(saddr)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.set_source_addresscorex) |
| **set_uri_host(uri, host)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.set_uri_hostsiputils) |
| **set_uri_user(uri, user)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.set_uri_usersiputils) |
| **shm_status()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.shm_statuscfgutils) |
| **shm_summary()** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.shm_summarycfgutils) |
| **sht_has_name(htable, op, mval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_has_namehtable) |
| **sht_has_str_value(htable, op, mval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_has_str_valuehtable) |
| **sht_iterator_end(iname)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_iterator_endhtable) |
| **sht_iterator_next(iname)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_iterator_nexthtable) |
| **sht_iterator_rm(iname)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_iterator_rmhtable) |
| **sht_iterator_setex(iname, exval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_iterator_setexhtable) |
| **sht_iterator_seti(iname, ival)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_iterator_setihtable) |
| **sht_iterator_sets(iname, sval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_iterator_setshtable) |
| **sht_iterator_start(iname, hname)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_iterator_starthtable) |
| **sht_lock(htable=&gt;key)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_lockhtable) |
| **sht_match_name(htable, op, mval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_match_namehtable) |
| **sht_match_str_value(htable, op, mval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_match_str_valuehtable) |
| **sht_print()** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_printhtable) |
| **sht_reset(htable)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_resethtable) |
| **sht_rm(htname, itname)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_rmhtable) |
| **sht_rm_name(htable, op, val)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_rm_namehtable) |
| **sht_rm_name_re(htable=&gt;regexp)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_rm_name_rehtable) |
| **sht_rm_value(htable, op, val)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_rm_valuehtable) |
| **sht_rm_value_re(htable=&gt;regexp)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_rm_value_rehtable) |
| **sht_setxi(htname, itname, itval, exval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_setxihtable) |
| **sht_setxs(htname, itname, itval, exval)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_setxshtable) |
| **sht_unlock(htable=&gt;key)** | [htable](http://www.kamailio.org/docs/modules/5.7.x/modules/htable.html#htable.f.sht_unlockhtable) |
| **silence_media([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.silence_mediartpengine) |
| **sipdump_send(tag)** | [sipdump](http://www.kamailio.org/docs/modules/5.7.x/modules/sipdump.html#sipdump.f.sipdump_sendsipdump) |
| **sipt_destination(destination, hops, nai[, terminator=1])** | [sipt](http://www.kamailio.org/docs/modules/5.7.x/modules/sipt.html#sipt.f.sipt_destinationsipt) |
| **sipt_forwarding(origin, nai)** | [sipt](http://www.kamailio.org/docs/modules/5.7.x/modules/sipt.html#sipt.f.sipt_forwardingsipt) |
| **sipt_has_isup_body()** | [sipt](http://www.kamailio.org/docs/modules/5.7.x/modules/sipt.html#sipt.f.sipt_has_isup_bodysipt) |
| **sipt_set_bci_1(charge_indicator, called_status, called_category, e2e_indicator)** | [sipt](http://www.kamailio.org/docs/modules/5.7.x/modules/sipt.html#sipt.f.sipt_set_bci_1sipt) |
| **sipt_set_calling(origin, nai, presentation, screening)** | [sipt](http://www.kamailio.org/docs/modules/5.7.x/modules/sipt.html#sipt.f.sipt_set_callingsipt) |
| **sip_capture([table], [cmode])** | [sipcapture](http://www.kamailio.org/docs/modules/5.7.x/modules/sipcapture.html#sipcapture.f.sip_capturesipcapture) |
| **sip_capture_forward(uri)** | [sipcapture](http://www.kamailio.org/docs/modules/5.7.x/modules/sipcapture.html#sipcapture.f.sip_capture_forwardsipcapture) |
| **sip_p_charging_vector(flags)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.sip_p_charging_vectorsiputils) |
| **sip_trace([address][,correlation_id][,mode])** | [siptrace](http://www.kamailio.org/docs/modules/5.7.x/modules/siptrace.html#siptrace.f.sip_tracesiptrace) |
| **sip_trace_mode(tmode)** | [siptrace](http://www.kamailio.org/docs/modules/5.7.x/modules/siptrace.html#siptrace.f.sip_trace_modesiptrace) |
| **sj_serialize(opt, ovar)** | [sipjson](http://www.kamailio.org/docs/modules/5.7.x/modules/sipjson.html#sipjson.f.sj_serializesipjson) |
| **slack_send(format)** | [slack](http://www.kamailio.org/docs/modules/5.7.x/modules/slack.html#slack.f.slack_sendslack) |
| **sleep(time)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.sleepcfgutils) |
| **sl_forward_reply([ code, [ reason ] ])** | [sl](http://www.kamailio.org/docs/modules/5.7.x/modules/sl.html#sl.f.sl_forward_replysl) |
| **sl_reply_error()** | [sl](http://www.kamailio.org/docs/modules/5.7.x/modules/sl.html#sl.f.sl_reply_errorsl) |
| **sl_send_reply(code, reason)** | [sl](http://www.kamailio.org/docs/modules/5.7.x/modules/sl.html#sl.f.sl_send_replysl) |
| **smsdump()** | [smsops](http://www.kamailio.org/docs/modules/5.7.x/modules/smsops.html#smsops.f.smsdumpsmsops) |
| **sms_send_msg()** | [sms](http://www.kamailio.org/docs/modules/5.7.x/modules/sms.html#sms_send_msgsms) |
| **sms_send_msg_to_net(network_name)** | [sms](http://www.kamailio.org/docs/modules/5.7.x/modules/sms.html#sms_send_msg_to_netsms) |
| **sqlang_dofile(path)** | [app_sqlang](http://www.kamailio.org/docs/modules/5.7.x/modules/app_sqlang.html#app_sqlang.f.sqlang_dofileapp_sqlang) |
| **sqlang_dostring(script)** | [app_sqlang](http://www.kamailio.org/docs/modules/5.7.x/modules/app_sqlang.html#app_sqlang.f.sqlang_dostringapp_sqlang) |
| **sqlang_run(function [, params])** | [app_sqlang](http://www.kamailio.org/docs/modules/5.7.x/modules/app_sqlang.html#app_sqlang.f.sqlang_runapp_sqlang) |
| **sqlang_runstring(script)** | [app_sqlang](http://www.kamailio.org/docs/modules/5.7.x/modules/app_sqlang.html#app_sqlang.f.sqlang_runstringapp_sqlang) |
| **sql_pvquery(connection, query, result)** | [sqlops](http://www.kamailio.org/docs/modules/5.7.x/modules/sqlops.htmlsqlops) |
| **sql_query(connection, query[, result])** | [sqlops](http://www.kamailio.org/docs/modules/5.7.x/modules/sqlops.htmlsqlops) |
| **sql_query_async(connection, query)** | [sqlops](http://www.kamailio.org/docs/modules/5.7.x/modules/sqlops.html#sqlops.f.sql_query_asyncsqlops) |
| **sql_result_free(result)** | [sqlops](http://www.kamailio.org/docs/modules/5.7.x/modules/sqlops.htmlsqlops) |
| **sql_xquery(connection, query, result)** | [sqlops](http://www.kamailio.org/docs/modules/5.7.x/modules/sqlops.htmlsqlops) |
| **srv_query(srvcname, pvid)** | [ipops](http://www.kamailio.org/docs/modules/5.7.x/modules/ipops.html#ipops.f.srv_queryipops) |
| **sr_msg_async_pull(callid, msgid, gname, rname)** | [siprepo](http://www.kamailio.org/docs/modules/5.7.x/modules/siprepo.html#siprepo.f.sr_msg_async_pullsiprepo) |
| **sr_msg_check()** | [siprepo](http://www.kamailio.org/docs/modules/5.7.x/modules/siprepo.html#siprepo.f.sr_msg_checksiprepo) |
| **sr_msg_pull(callid, msgid, rname)** | [siprepo](http://www.kamailio.org/docs/modules/5.7.x/modules/siprepo.html#siprepo.f.sr_msg_pullsiprepo) |
| **sr_msg_push(msgid)** | [siprepo](http://www.kamailio.org/docs/modules/5.7.x/modules/siprepo.html#siprepo.f.sr_msg_pushsiprepo) |
| **sr_msg_rm(callid, msgid)** | [siprepo](http://www.kamailio.org/docs/modules/5.7.x/modules/siprepo.html#siprepo.f.sr_msg_rmsiprepo) |
| **sstCheckMin(send_reply_flag)** | [sst](http://www.kamailio.org/docs/modules/5.7.x/modules/sst.html#sst.f.sstCheckMinsst) |
| **starts_with(str1, str2)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.starts_withtextops) |
| **start_forwarding([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.start_forwardingrtpengine) |
| **start_recording()** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.start_recordingrtpproxy) |
| **start_recording([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.start_recordingrtpengine) |
| **statsd_decr(key)** | [statsd](http://www.kamailio.org/docs/modules/5.7.x/modules/statsd.html#statsd.f.statsd_decrstatsd) |
| **statsd_gauge(key, value)** | [statsd](http://www.kamailio.org/docs/modules/5.7.x/modules/statsd.html#statsd.f.statsd_gaugestatsd) |
| **statsd_histogram(key, value)** | [statsd](http://www.kamailio.org/docs/modules/5.7.x/modules/statsd.html#statsd.f.statsd_histogramstatsd) |
| **statsd_incr(key)** | [statsd](http://www.kamailio.org/docs/modules/5.7.x/modules/statsd.html#statsd.f.statsd_incrstatsd) |
| **statsd_set(key, value)** | [statsd](http://www.kamailio.org/docs/modules/5.7.x/modules/statsd.html#statsd.f.statsd_setstatsd) |
| **statsd_start(key)** | [statsd](http://www.kamailio.org/docs/modules/5.7.x/modules/statsd.html#statsd.f.statsd_startstatsd) |
| **statsd_stop(key)** | [statsd](http://www.kamailio.org/docs/modules/5.7.x/modules/statsd.html#statsd.f.statsd_stopstatsd) |
| **stirshaken_add_identity(x5u, attest, origtn_val, desttn_val, origid)** | [stirshaken](http://www.kamailio.org/docs/modules/5.7.x/modules/stirshaken.html#stirshaken.f.stirshaken_add_identitystirshaken) |
| **stirshaken_add_identity_with_key(x5u, attest, origtn_val, desttn_val, origid, keyPath)** | [stirshaken](http://www.kamailio.org/docs/modules/5.7.x/modules/stirshaken.html#stirshaken.f.stirshaken_add_identity_with_keystirshaken) |
| **stirshaken_check_identity()** | [stirshaken](http://www.kamailio.org/docs/modules/5.7.x/modules/stirshaken.html#stirshaken.f.stirshaken_check_identitystirshaken) |
| **stirshaken_check_identity_with_cert(certPath)** | [stirshaken](http://www.kamailio.org/docs/modules/5.7.x/modules/stirshaken.html#stirshaken.f.stirshaken_check_identity_with_certstirshaken) |
| **stirshaken_check_identity_with_key(keyPath)** | [stirshaken](http://www.kamailio.org/docs/modules/5.7.x/modules/stirshaken.html#stirshaken.f.stirshaken_check_identity_with_keystirshaken) |
| **stop_forwarding([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.stop_forwardingrtpengine) |
| **stop_media([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.stop_mediartpengine) |
| **stop_recording([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.stop_recordingrtpengine) |
| **str_find(str1, str2)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.str_findtextops) |
| **str_ifind(str1, str2)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.str_ifindtextops) |
| **subscribe_to_reg(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **subst('/re/repl/flags')** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.substtextops) |
| **subst_attr($avp_name, subst_re)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.subst_attravp) |
| **subst_body('/re/repl/flags')** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.subst_bodytextops) |
| **subst_hf(hf, subexp, flags)** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.subst_hftextops) |
| **subst_uri('/re/repl/flags')** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.subst_uritextops) |
| **subst_user('/re/repl/flags')** | [textops](http://www.kamailio.org/docs/modules/5.7.x/modules/textops.html#textops.f.subst_usertextops) |
| **sworker_active()** | [sworker](http://www.kamailio.org/docs/modules/5.7.x/modules/sworker.html#sworker.f.sworker_activesworker) |
| **swork_task(gname)** | [sworker](http://www.kamailio.org/docs/modules/5.7.x/modules/sworker.html#sworker.f.swork_tasksworker) |

## [t]

| Name | Module Name |
|------|-------------|
| **tcp_close_connection([conid])** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_close_connectiontcpops) |
| **tcp_conid_alive(conid)** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_conid_alivetcpops) |
| **tcp_conid_state(conid)** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_conid_statetcpops) |
| **tcp_enable_closed_event([conid])** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_enable_closed_eventtcpops) |
| **tcp_get_conid(hostport, pvname)** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_get_conidtcpops) |
| **tcp_keepalive_disable([conid])** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_keepalive_disabletcpops) |
| **tcp_keepalive_enable([conid], idle, count, interval)** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_keepalive_enabletcpops) |
| **tcp_set_connection_lifetime([conid], lifetime)** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_set_connection_lifetimetcpops) |
| **tcp_set_otcpid(conid)** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_set_otcpidtcpops) |
| **tcp_set_otcpid_flag(mode)** | [tcpops](http://www.kamailio.org/docs/modules/5.7.x/modules/tcpops.html#tcpops.f.tcp_set_otcpid_flagtcpops) |
| **tel2sip(uri, hostpart, result)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.tel2sipsiputils) |
| **term_impu_registered(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **time_period_match(period [, timestamp])** | [tmrec](http://www.kamailio.org/docs/modules/5.7.x/modules/tmrec.html#tmrec.f.time_period_matchtmrec) |
| **tls_set_connect_server_id(srvid)** | [tls](http://www.kamailio.org/docs/modules/5.7.x/modules/tls.html#tls.f.tls_set_connect_server_idtls) |
| **tmrec_match(timerec [, timestamp])** | [tmrec](http://www.kamailio.org/docs/modules/5.7.x/modules/tmrec.html#tmrec.f.tmrec_matchtmrec) |
| **to_any_gw([ip_addr, proto])** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.to_any_gwlcr) |
| **to_gw(lcr_id[, ip_addr, proto])** | [lcr](http://www.kamailio.org/docs/modules/5.7.x/modules/lcr.html#lcr.f.to_gwlcr) |
| **tps_set_context(ctx)** | [topos](http://www.kamailio.org/docs/modules/5.7.x/modules/topos.html#topos.f.tps_set_contexttopos) |
| **trylock(key)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.trylockcfgutils) |
| **ts_append(domain, ruri)** | [tsilo](http://www.kamailio.org/docs/modules/5.7.x/modules/tsilo.html#tsilo.f.ts_appendtsilo) |
| **ts_append_by_contact(domain, ruri [, contact])** | [tsilo](http://www.kamailio.org/docs/modules/5.7.x/modules/tsilo.html#tsilo.f.ts_append_by_contacttsilo) |
| **ts_append_to(tindex, tlabel, domain, [uri])** | [tsilo](http://www.kamailio.org/docs/modules/5.7.x/modules/tsilo.html#tsilo.f.ts_append_totsilo) |
| **ts_store([uri])** | [tsilo](http://www.kamailio.org/docs/modules/5.7.x/modules/tsilo.html#tsilo.f.ts_storetsilo) |
| **typeof(pvar, vtype)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.typeofpv) |
| **t_any_replied()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_any_repliedtm) |
| **t_any_timeout()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_any_timeouttm) |
| **t_branch_replied()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_branch_repliedtm) |
| **t_branch_timeout()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_branch_timeouttm) |
| **t_cancel_branches(which)** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_cancel_branchestmx) |
| **t_cancel_callid(callid, cseq, flag [, rcode])** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_cancel_callidtmx) |
| **t_check_status(re)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_check_statustm) |
| **t_check_trans()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_check_transtm) |
| **t_clean()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_cleantm) |
| **t_continue(tindex, tlabel, rtname)** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_continuetmx) |
| **t_drop([rcode])** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_droptmx) |
| **t_drop_replies([mode])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_drop_repliestm) |
| **t_flush_flags()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_flush_flagstmx) |
| **t_flush_xflags()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_flush_xflagstmx) |
| **t_forward_nonack([ip, port])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_forward_nonacktm) |
| **t_forward_nonack_sctp(ip, port)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_forward_nonack_sctptm) |
| **t_forward_nonack_tcp(ip, port)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_forward_nonack_tcptm) |
| **t_forward_nonack_tls(ip, port)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_forward_nonack_tlstm) |
| **t_forward_nonack_udp(ip, port)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_forward_nonack_udptm) |
| **t_get_status_code()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_get_status_codetm) |
| **t_grep_status("code")** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_grep_statustm) |
| **t_is_branch_route()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_is_branch_routetmx) |
| **t_is_canceled()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_is_canceledtm) |
| **t_is_expired()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_is_expiredtm) |
| **t_is_failure_route()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_is_failure_routetmx) |
| **t_is_reply_route()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_is_reply_routetmx) |
| **t_is_request_route()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_is_request_routetmx) |
| **t_is_retr_async_reply()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_is_retr_async_replytm) |
| **t_is_set(target)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_is_settm) |
| **t_load_contacts([mode])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_load_contactstm) |
| **t_lookup_cancel([1])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_lookup_canceltm) |
| **t_lookup_request()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_lookup_requesttm) |
| **t_newtran()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_newtrantm) |
| **t_next_contacts()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_next_contactstm) |
| **t_next_contact_flow()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_next_contact_flowtm) |
| **t_on_branch(branch_route)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_on_branchtm) |
| **t_on_branch_failure(branch_failure_route)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_on_branch_failuretm) |
| **t_on_failure(failure_route)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_on_failuretm) |
| **t_on_reply(onreply_route)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_on_replytm) |
| **t_precheck_trans()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_precheck_transtmx) |
| **t_relay([host, port])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_relaytm) |
| **t_relay_cancel()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_relay_canceltm) |
| **t_relay_to(proxy, flags)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_relay_totm) |
| **t_relay_to_sctp([ip, port])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_relay_to_sctptm) |
| **t_relay_to_tcp([ip, port])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_relay_to_tcptm) |
| **t_relay_to_tls([ip, port])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_relay_to_tlstm) |
| **t_relay_to_udp([ip, port])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_relay_to_udptm) |
| **t_release()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_releasetm) |
| **t_replicate([params])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_replicatetm) |
| **t_reply(code, reason_phrase)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_replytm) |
| **t_reply_callid(callid, cseq, code, reason)** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_reply_callidtmx) |
| **t_reset_fr()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_reset_frtm) |
| **t_reset_max_lifetime()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_reset_max_lifetimetm) |
| **t_reset_retr()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_reset_retrtm) |
| **t_retransmit_reply()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_retransmit_replytm) |
| **t_reuse_branch()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_reuse_branchtmx) |
| **t_save_lumps()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_save_lumpstm) |
| **t_send_reply(code, reason)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_send_replytm) |
| **t_set_auto_inv_100(0|1)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_auto_inv_100tm) |
| **t_set_disable_6xx(0|1)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_disable_6xxtm) |
| **t_set_disable_failover(0|1)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_disable_failovertm) |
| **t_set_disable_internal_reply(0|1)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_disable_internal_replytm) |
| **t_set_fr(fr_inv_timeout [, fr_timeout])** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_frtm) |
| **t_set_max_lifetime(inv_lifetime, noninv_lifetime)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_max_lifetimetm) |
| **t_set_no_e2e_cancel_reason(0|1)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_no_e2e_cancel_reasontm) |
| **t_set_retr(retr_t1_interval, retr_t2_interval)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_set_retrtm) |
| **t_suspend()** | [tmx](http://www.kamailio.org/docs/modules/5.7.x/modules/tmx.html#tmx.f.t_suspendtmx) |
| **t_uac_send(method, ruri, nexthop, socket, headers, body)** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_uac_sendtm) |
| **t_use_uac_headers()** | [tm](http://www.kamailio.org/docs/modules/5.7.x/modules/tm.html#tm.f.t_use_uac_headerstm) |

## [u]

| Name | Module Name |
|------|-------------|
| **uac_auth([mode])** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_authuac) |
| **uac_auth_mode(vmode)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_auth_modeuac) |
| **uac_reg_disable(attr, val)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_reg_disableuac) |
| **uac_reg_enable(attr, val)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_reg_enableuac) |
| **uac_reg_lookup(uuid, dst)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_reg_lookupuac) |
| **uac_reg_lookup_uri(uri, dst)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_reg_lookup_uriuac) |
| **uac_reg_refresh(luuid)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_reg_refreshuac) |
| **uac_reg_request_to(user, mode)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_reg_request_touac) |
| **uac_reg_status(uuid)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_reg_statusuac) |
| **uac_replace_from(display,uri)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_replace_fromuac) |
| **uac_replace_from(uri)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_replace_from_uriuac) |
| **uac_replace_to(display,uri)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_replace_touac) |
| **uac_replace_to(uri)** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_replace_to_uriuac) |
| **uac_req_send()** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_req_senduac) |
| **uac_restore_from()** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_restore_fromuac) |
| **uac_restore_to()** | [uac](http://www.kamailio.org/docs/modules/5.7.x/modules/uac.html#uac.f.uac_restore_to()uac) |
| **unblock_dtmf([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.unblock_dtmfrtpengine) |
| **unblock_media([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.unblock_mediartpengine) |
| **unforce_rtp_proxy()** | [rtpproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpproxy.html#rtpproxy.f.unforce_rtp_proxyrtpproxy) |
| **unlock(key)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.unlockcfgutils) |
| **unlock_extra_attrs (group_id, id)** | [uid_avp_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_avp_db.htmluid_avp_db) |
| **unregister(domain)** | [ims_registrar_scscf](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_registrar_scscf.htmlims_registrar_scscf) |
| **unregister(domain, uri[, ruid])** | [registrar](http://www.kamailio.org/docs/modules/5.7.x/modules/registrar.html#registrar.f.unregisterregistrar) |
| **unset_dlg_profile(profile,[value])** | [dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/dialog.html#dialog.f.unset_dlg_profiledialog) |
| **unset_dlg_profile(profile,[value])** | [ims_dialog](http://www.kamailio.org/docs/modules/5.7.x/modules/ims_dialog.htmlims_dialog) |
| **unsilence_media([flags])** | [rtpengine](http://www.kamailio.org/docs/modules/5.7.x/modules/rtpengine.html#rtpengine.f.unsilence_mediartpengine) |
| **update_stat(variable,value)** | [statistics](http://www.kamailio.org/docs/modules/5.7.x/modules/statistics.html#statistics.f.update_statstatistics) |
| **uri_param(param)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.htmlsiputils) |
| **uri_param(param,value)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.html#siputils.f.uri_param_valuesiputils) |
| **uri_param_any(param)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.htmlsiputils) |
| **uri_param_rm(param)** | [siputils](http://www.kamailio.org/docs/modules/5.7.x/modules/siputils.htmlsiputils) |
| **use_media_proxy()** | [mediaproxy](http://www.kamailio.org/docs/modules/5.7.x/modules/mediaproxy.html#mediaproxy.p.usemediaproxy) |
| **use_next_gw()** | [drouting](http://www.kamailio.org/docs/modules/5.7.x/modules/drouting.html#drouting.f.use_next_gwdrouting) |
| **usleep(time)** | [cfgutils](http://www.kamailio.org/docs/modules/5.7.x/modules/cfgutils.html#cfgutils.f.usleepcfgutils) |

## [v]

| Name | Module Name |
|------|-------------|
| **validateospheader()** | [osp](http://www.kamailio.org/docs/modules/5.7.x/modules/osp.htmlosp) |
| **verify_destination()** | [peering](http://www.kamailio.org/docs/modules/5.7.x/modules/peering.htmlpeering) |
| **verify_source()** | [peering](http://www.kamailio.org/docs/modules/5.7.x/modules/peering.htmlpeering) |
| **via_add_srvid(flags)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.via_add_srvidcorex) |
| **via_add_xavp_params(flags)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.via_add_xavp_paramscorex) |
| **via_use_xavp_fields(flags)** | [corex](http://www.kamailio.org/docs/modules/5.7.x/modules/corex.html#corex.f.via_use_xavp_fieldscorex) |
| **vrfy_check_callid()** | [auth_identity](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_identity.html#vrfy_check_callidauth_identity) |
| **vrfy_check_certificate()** | [auth_identity](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_identity.html#vrfy_check_certificateauth_identity) |
| **vrfy_check_date()** | [auth_identity](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_identity.html#vrfy_check_dateauth_identity) |
| **vrfy_check_msgvalidity()** | [auth_identity](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_identity.html#vrfy_check_msgvalidityauth_identity) |
| **vrfy_get_certificate()** | [auth_identity](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_identity.html#vrfy_get_certificateauth_identity) |

## [w]

| Name | Module Name |
|------|-------------|
| **ws_close([status, reason[, connection_id]])** | [websocket](http://www.kamailio.org/docs/modules/5.7.x/modules/websocket.html#websocket.f.ws_closewebsocket) |
| **ws_handle_handshake()** | [websocket](http://www.kamailio.org/docs/modules/5.7.x/modules/websocket.html#websocket.f.ws_handle_handshakewebsocket) |
| **www_authenticate(realm, table [, method])** | [auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_db.html#auth_db.f.www_authenticateauth_db) |
| **www_authorize(realm, table)** | [auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/auth_db.html#auth_db.f.www_authorizeauth_db) |
| **www_authorize(realm, table)** | [uid_auth_db](http://www.kamailio.org/docs/modules/5.7.x/modules/uid_auth_db.html#www_authorizeuid_auth_db) |
| **www_challenge(realm, flags)** | [auth](http://www.kamailio.org/docs/modules/5.7.x/modules/auth.html#auth.f.www_challengeauth) |

## [x]

| Name | Module Name |
|------|-------------|
| **xalert(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xalertxlog) |
| **xavi_child_rm(rname, cname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavi_child_rmpv) |
| **xavi_child_seti(rname, cname, ival)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavi_child_setipv) |
| **xavi_child_sets(rname, cname, sval)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavi_child_setspv) |
| **xavi_rm(rname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavi_rmpv) |
| **xavp_child_rm(rname, cname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_child_rmpv) |
| **xavp_child_seti(rname, cname, ival)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_child_setipv) |
| **xavp_child_sets(rname, cname, sval)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_child_setspv) |
| **xavp_copy(source_name, source_index, destination_name)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_copypv) |
| **xavp_copy(source_name, source_index, destination_name, destination_index)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_copy2pv) |
| **xavp_lshift(xname, idx)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_lshiftpv) |
| **xavp_params_explode(sparams, xname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_params_explodepv) |
| **xavp_params_implode(xname, pvname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_params_implodepv) |
| **xavp_push_dst(xname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_push_dstpv) |
| **xavp_rm(rname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_rmpv) |
| **xavp_slist_explode(slist, sep, mode, xname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavp_slist_explodepv) |
| **xavu_params_explode(sparams, xname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavu_params_explodepv) |
| **xavu_params_implode(xname, pvname)** | [pv](http://www.kamailio.org/docs/modules/5.7.x/modules/pv.html#pv.f.xavu_params_implodepv) |
| **xbug(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xbugxlog) |
| **xcaps_del(uri, path)** | [xcap_server](http://www.kamailio.org/docs/modules/5.7.x/modules/xcap_server.html#xcap_server.f.xcaps_delxcap_server) |
| **xcaps_get(uri, path)** | [xcap_server](http://www.kamailio.org/docs/modules/5.7.x/modules/xcap_server.html#xcap_server.f.xcaps_getxcap_server) |
| **xcaps_put(uri, path, doc)** | [xcap_server](http://www.kamailio.org/docs/modules/5.7.x/modules/xcap_server.html#xcap_server.f.xcaps_putxcap_server) |
| **xcap_auth_status(watcher_uri, presentity_uri)** | [utils](http://www.kamailio.org/docs/modules/5.7.x/modules/utils.html#utils.f.xcap_auth_statusutils) |
| **xcrit(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xcritxlog) |
| **xdbg(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xdbgxlog) |
| **xdbgl(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xdbglxlog) |
| **xerr(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xerrxlog) |
| **xhttp_reply(code, reason, ctype, body)** | [xhttp](http://www.kamailio.org/docs/modules/5.7.x/modules/xhttp.html#xhttp.f.xhttp_replyxhttp) |
| **xinfo(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xinfoxlog) |
| **xlfix_attr($attribute)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#xlfix_attravp) |
| **xlog([ [facility,] level,] format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xlogxlog) |
| **xlogl([ [facility,] level,] format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xloglxlog) |
| **xlogm(level, format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xlogmxlog) |
| **xlset_attr($attribute, xl_format)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.xlset_attravp) |
| **xlset_destination(xl_format)** | [avp](http://www.kamailio.org/docs/modules/5.7.x/modules/avp.html#avp.f.xlset_destinationavp) |
| **xmlrpc_reply(code, reason)** | [xmlrpc](http://www.kamailio.org/docs/modules/5.7.x/modules/xmlrpc.html#xmlrpc.f.xmlrpc_replyxmlrpc) |
| **xmpp_send_message()** | [xmpp](http://www.kamailio.org/docs/modules/5.7.x/modules/xmpp.htmlxmpp) |
| **xnotice(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xnoticexlog) |
| **xpdbg(format)** | [xprint](http://www.kamailio.org/docs/modules/5.7.x/modules/xprint.html#xprint.xpdbgxprint) |
| **xplog(level, format)** | [xprint](http://www.kamailio.org/docs/modules/5.7.x/modules/xprint.html#xprint.xplogxprint) |
| **xwarn(format)** | [xlog](http://www.kamailio.org/docs/modules/5.7.x/modules/xlog.html#xlog.f.xwarnxlog) |

## [y]

| Name | Module Name |
|------|-------------|

## [z]

| Name | Module Name |
|------|-------------|
