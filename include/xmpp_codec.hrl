%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-record(text, {lang = <<>> :: binary(),
               data = <<>> :: binary()}).
-type text() :: #text{}.

-type iq_type() :: get | set | result | error.
-type message_type() :: chat | error | groupchat | headline | normal.
-type presence_type() :: available | error | probe | subscribe |
			 subscribed | unavailable | unsubscribe |
			 unsubscribed.

-record(iq, {id = <<>> :: binary(),
             type :: iq_type(),
             lang = <<>> :: binary(),
             from :: undefined | jid:jid(),
             to :: undefined | jid:jid(),
             sub_els = [] :: [xmpp_element() | fxml:xmlel()],
	     meta = #{} :: map()}).
-type iq() :: #iq{}.

-record(message, {id = <<>> :: binary(),
                  type = normal :: message_type(),
                  lang = <<>> :: binary(),
                  from :: undefined | jid:jid(),
                  to :: undefined | jid:jid(),
                  subject = [] :: [#text{}],
                  body = [] :: [#text{}],
                  thread :: undefined | message_thread(),
                  sub_els = [] :: [xmpp_element() | fxml:xmlel()],
		  meta = #{} :: map()}).
-type message() :: #message{}.

-record(presence, {id = <<>> :: binary(),
                   type = available :: presence_type(),
                   lang = <<>> :: binary(),
                   from :: undefined | jid:jid(),
                   to :: undefined | jid:jid(),
                   show :: undefined | 'away' | 'chat' | 'dnd' | 'xa',
                   status = [] :: [#text{}],
                   priority :: undefined | integer(),
                   sub_els = [] :: [xmpp_element() | fxml:xmlel()],
		   meta = #{} :: map()}).
-type presence() :: #presence{}.

-record(ps_affiliation, {xmlns = <<>> :: binary(),
			 node = <<>> :: binary(),
			 type :: member | none | outcast |
				 owner | publisher | publish_only,
			 jid :: undefined | jid:jid()}).
-type ps_affiliation() :: #ps_affiliation{}.

-type ps_error_type() :: 'closed-node' | 'configuration-required' |
			 'invalid-jid' | 'invalid-options' |
			 'invalid-payload' | 'invalid-subid' |
			 'item-forbidden' | 'item-required' | 'jid-required' |
			 'max-items-exceeded' | 'max-nodes-exceeded' |
			 'nodeid-required' | 'not-in-roster-group' |
			 'not-subscribed' | 'payload-too-big' |
			 'payload-required' | 'pending-subscription' |
			 'precondition-not-met' |
			 'presence-subscription-required' | 'subid-required' |
			 'too-many-subscriptions' | 'unsupported' |
			 'unsupported-access-model'.
-type ps_feature() :: 'access-authorize' | 'access-open' |
		      'access-presence' | 'access-roster' |
		      'access-whitelist' | 'auto-create' |
		      'auto-subscribe' | 'collections' | 'config-node' |
		      'create-and-configure' | 'create-nodes' |
		      'delete-items' | 'delete-nodes' |
		      'filtered-notifications' | 'get-pending' |
		      'instant-nodes' | 'item-ids' | 'last-published' |
		      'leased-subscription' | 'manage-subscriptions' |
		      'member-affiliation' | 'meta-data' |
		      'modify-affiliations' | 'multi-collection' |
		      'multi-subscribe' | 'outcast-affiliation' |
		      'persistent-items' | 'presence-notifications' |
		      'presence-subscribe' | 'publish' |
		      'publish-options' | 'publish-only-affiliation' |
		      'publisher-affiliation' | 'purge-nodes' |
		      'retract-items' | 'retrieve-affiliations' |
		      'retrieve-default' | 'retrieve-items' |
		      'retrieve-subscriptions' | 'subscribe' |
		      'subscription-options' | 'subscription-notifications' |
		      'multi-items' | undefined.
-record(ps_error, {type :: ps_error_type(), feature :: ps_feature()}).
-type ps_error() :: #ps_error{}.

-record(chatstate, {type :: active | composing | gone | inactive | paused}).
-type chatstate() :: #chatstate{}.

-record(csi, {type :: active | inactive}).
-type csi() :: #csi{}.

-record(hint, {type :: 'no-copy' | 'no-store' | 'no-storage' | 'store' |
		       'no-permanent-store' | 'no-permanent-storage'}).
-type hint() :: #hint{}.

-record(jingle_error, {reason :: 'out-of-order' | 'tie-break' |
				 'unknown-session' | 'unsupported-info' |
				 'security-required'}).
-type jingle_error() :: #jingle_error{}.

-record(jingle_ft_error, {reason :: 'file-not-available' | 'file-too-large'}).
-type jingle_ft_error() :: #jingle_ft_error{}.

-type xmpp_host() :: binary() | inet:ip_address() |
		     {binary() | inet:ip_address(), inet:port_number()}.

-record(avatar_data, {data = <<>> :: binary()}).
-type avatar_data() :: #avatar_data{}.

-record(mam_result, {xmlns = <<>> :: binary(),
                     queryid = <<>> :: binary(),
                     id = <<>> :: binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mam_result() :: #mam_result{}.

-record(rsm_first, {index :: 'undefined' | non_neg_integer(),
                    data = <<>> :: binary()}).
-type rsm_first() :: #rsm_first{}.

-record(carbons_enable, {}).
-type carbons_enable() :: #carbons_enable{}.

-record(sync_conversation, {type = <<>> :: binary(),
                            jid :: jid:jid(),
                            status :: 'active' | 'archived' | 'deleted' | 'undefined',
                            stamp = <<>> :: binary(),
                            thread = <<>> :: binary(),
                            mute :: 'undefined' | binary(),
                            pinned :: 'undefined' | binary(),
                            sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_conversation() :: #sync_conversation{}.

-record(jingle_ft_received, {creator :: 'initiator' | 'responder' | 'undefined',
                             name = <<>> :: binary()}).
-type jingle_ft_received() :: #jingle_ft_received{}.

-record(avatar_pointer, {bytes :: 'undefined' | non_neg_integer(),
                         id = <<>> :: binary(),
                         type = <<>> :: binary(),
                         height :: 'undefined' | non_neg_integer(),
                         width :: 'undefined' | non_neg_integer(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type avatar_pointer() :: #avatar_pointer{}.

-record(markup_strike, {}).
-type markup_strike() :: #markup_strike{}.

-record(x509_register, {}).
-type x509_register() :: #x509_register{}.

-record(bind2_bound, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type bind2_bound() :: #bind2_bound{}.

-record(perms_delete, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type perms_delete() :: #perms_delete{}.

-record(s2s_bidi_feature, {}).
-type s2s_bidi_feature() :: #s2s_bidi_feature{}.

-record(mix_create, {channel = <<>> :: binary(),
                     xmlns = <<>> :: binary()}).
-type mix_create() :: #mix_create{}.

-record(ping, {}).
-type ping() :: #ping{}.

-record(ibb_open, {sid = <<>> :: binary(),
                   'block-size' :: non_neg_integer(),
                   stanza = iq :: 'iq' | 'message'}).
-type ibb_open() :: #ibb_open{}.

-record(starttls_proceed, {}).
-type starttls_proceed() :: #starttls_proceed{}.

-record(xmppreference, {type = <<>> :: binary(),
                        'begin' :: 'undefined' | non_neg_integer(),
                        'end' :: 'undefined' | non_neg_integer(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xmppreference() :: #xmppreference{}.

-record(sasl2_next, {task = <<>> :: binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_next() :: #sasl2_next{}.

-record(markup_quote, {}).
-type markup_quote() :: #markup_quote{}.

-record(upload_file_too_large, {'max-file-size' :: 'undefined' | integer(),
                                xmlns = <<>> :: binary()}).
-type upload_file_too_large() :: #upload_file_too_large{}.

-record(avatar_info, {bytes :: non_neg_integer(),
                      id = <<>> :: binary(),
                      type = <<>> :: binary(),
                      height :: 'undefined' | non_neg_integer(),
                      width :: 'undefined' | non_neg_integer(),
                      url = <<>> :: binary()}).
-type avatar_info() :: #avatar_info{}.

-record(avatar_meta, {info = [] :: [#avatar_info{}],
                      pointer :: 'undefined' | #avatar_pointer{}}).
-type avatar_meta() :: #avatar_meta{}.

-record(groups_deny_user_avatar, {}).
-type groups_deny_user_avatar() :: #groups_deny_user_avatar{}.

-record(caps, {node = <<>> :: binary(),
               version = <<>> :: binary(),
               hash = <<>> :: binary(),
               exts = [] :: [binary()]}).
-type caps() :: #caps{}.

-record(scram_upgrade_salt, {iterations :: pos_integer(),
                             cdata = <<>> :: binary()}).
-type scram_upgrade_salt() :: #scram_upgrade_salt{}.

-record(legacy_auth_feature, {}).
-type legacy_auth_feature() :: #legacy_auth_feature{}.

-record(perms_permission, {name = <<>> :: binary(),
                           level = <<>> :: binary(),
                           status :: boolean(),
                           seconds :: 'undefined' | non_neg_integer(),
                           expires :: 'undefined' | non_neg_integer(),
                           tag = <<>> :: binary(),
                           fixed = false :: boolean(),
                           display = <<>> :: binary()}).
-type perms_permission() :: #perms_permission{}.

-record(xen_jid, {rule :: 'allow' | 'reject' | 'remove',
                  jid :: jid:jid()}).
-type xen_jid() :: #xen_jid{}.

-record(sasl2_response, {text = <<>> :: binary()}).
-type sasl2_response() :: #sasl2_response{}.

-record(receipt_response, {id = <<>> :: binary()}).
-type receipt_response() :: #receipt_response{}.

-record(expire, {seconds :: non_neg_integer(),
                 stored :: 'undefined' | non_neg_integer()}).
-type expire() :: #expire{}.

-record(markup_underline, {}).
-type markup_underline() :: #markup_underline{}.

-record(delivery_time, {stamp :: erlang:timestamp(),
                        by :: jid:jid()}).
-type delivery_time() :: #delivery_time{}.

-record(hash, {algo = <<>> :: binary(),
               data = <<>> :: binary()}).
-type hash() :: #hash{}.

-record(jingle_ft_range, {offset = 0 :: non_neg_integer(),
                          length :: 'undefined' | non_neg_integer(),
                          hash = [] :: [#hash{}]}).
-type jingle_ft_range() :: #jingle_ft_range{}.

-record(unified_push_push, {application = <<>> :: binary(),
                            instance = <<>> :: binary(),
                            data = <<>> :: binary()}).
-type unified_push_push() :: #unified_push_push{}.

-record(last, {seconds :: 'undefined' | non_neg_integer(),
               status = <<>> :: binary()}).
-type last() :: #last{}.

-record(xabber_encryption_key, {data = <<>> :: binary()}).
-type xabber_encryption_key() :: #xabber_encryption_key{}.

-record(message_retracted_30, {by :: undefined | jid:jid(),
                               from = <<>> :: binary(),
                               stamp :: undefined | erlang:timestamp(),
                               sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type message_retracted_30() :: #message_retracted_30{}.

-record(jidprep, {jid :: jid:jid()}).
-type jidprep() :: #jidprep{}.

-record(groups_owner, {id = <<>> :: binary()}).
-type groups_owner() :: #groups_owner{}.

-record(bind2_feature, {var = <<>> :: binary()}).
-type bind2_feature() :: #bind2_feature{}.

-record(sasl2_challenge, {text = <<>> :: binary()}).
-type sasl2_challenge() :: #sasl2_challenge{}.

-record(sasl_mechanisms, {list = [] :: [binary()]}).
-type sasl_mechanisms() :: #sasl_mechanisms{}.

-record(files_sources, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type files_sources() :: #files_sources{}.

-record(address, {type :: 'bcc' | 'cc' | 'noreply' | 'ofrom' | 'replyroom' | 'replyto' | 'to',
                  jid :: undefined | jid:jid(),
                  desc = <<>> :: binary(),
                  node = <<>> :: binary(),
                  delivered :: 'false' | 'true' | 'undefined',
                  sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type address() :: #address{}.

-record(mix_leave, {xmlns = <<>> :: binary()}).
-type mix_leave() :: #mix_leave{}.

-record(mix_client_leave, {channel :: undefined | jid:jid(),
                           leave :: #mix_leave{},
                           xmlns = <<>> :: binary()}).
-type mix_client_leave() :: #mix_client_leave{}.

-record(s2s_bidi, {}).
-type s2s_bidi() :: #s2s_bidi{}.

-record(perms_permissions, {target :: 'undefined' | binary(),
                            label :: 'undefined' | binary(),
                            actor :: 'undefined' | binary(),
                            stamp :: undefined | erlang:timestamp(),
                            perms = [] :: [#perms_permission{}]}).
-type perms_permissions() :: #perms_permissions{}.

-record(sm_resumed, {h :: non_neg_integer(),
                     previd = <<>> :: binary(),
                     xmlns = <<>> :: binary()}).
-type sm_resumed() :: #sm_resumed{}.

-record(db_feature, {errors = false :: boolean()}).
-type db_feature() :: #db_feature{}.

-record(private, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type private() :: #private{}.

-record(preauth, {token = <<>> :: binary()}).
-type preauth() :: #preauth{}.

-record(scram_upgrade_hash, {data = <<>> :: binary()}).
-type scram_upgrade_hash() :: #scram_upgrade_hash{}.

-record(message_retracted, {id = <<>> :: binary(),
                            by :: undefined | jid:jid(),
                            from = <<>> :: binary(),
                            stamp :: undefined | erlang:timestamp(),
                            sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type message_retracted() :: #message_retracted{}.

-record(jingle_propose, {id = <<>> :: binary(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_propose() :: #jingle_propose{}.

-record(voice_message, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type voice_message() :: #voice_message{}.

-record(vcard_org, {name :: 'undefined' | binary(),
                    units = [] :: [binary()]}).
-type vcard_org() :: #vcard_org{}.

-record(inbox_entry, {unread :: 'undefined' | non_neg_integer(),
                      jid :: undefined | jid:jid(),
                      id = <<>> :: binary()}).
-type inbox_entry() :: #inbox_entry{}.

-record(feature_register_ibr_token, {}).
-type feature_register_ibr_token() :: #feature_register_ibr_token{}.

-record(x509_challenge_failed, {}).
-type x509_challenge_failed() :: #x509_challenge_failed{}.

-record(sync_displayed, {id = <<>> :: binary()}).
-type sync_displayed() :: #sync_displayed{}.

-record(markup_bold, {}).
-type markup_bold() :: #markup_bold{}.

-record(thumbnail, {uri = <<>> :: binary(),
                    'media-type' = <<>> :: binary(),
                    width :: 'undefined' | non_neg_integer(),
                    height :: 'undefined' | non_neg_integer()}).
-type thumbnail() :: #thumbnail{}.

-record(x509_csr, {name = <<>> :: binary(),
                   der = <<>> :: binary()}).
-type x509_csr() :: #x509_csr{}.

-record(xen_prefs, {default :: 'allow' | 'reject' | 'remove' | 'roster' | 'undefined',
                    jids = [] :: [#xen_jid{}]}).
-type xen_prefs() :: #xen_prefs{}.

-record(sasl_channel_binding, {bindings = [] :: [binary()]}).
-type sasl_channel_binding() :: #sasl_channel_binding{}.

-record(x509_cert_chain, {name = <<>> :: binary(),
                          certs = [] :: [binary()]}).
-type x509_cert_chain() :: #x509_cert_chain{}.

-record(stream_start, {from :: undefined | jid:jid(),
                       to :: undefined | jid:jid(),
                       id = <<>> :: binary(),
                       version :: 'undefined' | {non_neg_integer(),non_neg_integer()},
                       xmlns = <<>> :: binary(),
                       stream_xmlns = <<>> :: binary(),
                       db_xmlns = <<>> :: binary(),
                       lang = <<>> :: binary()}).
-type stream_start() :: #stream_start{}.

-record(ibb_close, {sid = <<>> :: binary()}).
-type ibb_close() :: #ibb_close{}.

-record(retract_invalidate, {version :: 'undefined' | non_neg_integer(),
                             conversation :: undefined | jid:jid(),
                             type = <<>> :: binary()}).
-type retract_invalidate() :: #retract_invalidate{}.

-record(devices_feature, {}).
-type devices_feature() :: #devices_feature{}.

-record(sm_enable, {max :: 'undefined' | non_neg_integer(),
                    resume = false :: boolean(),
                    xmlns = <<>> :: binary()}).
-type sm_enable() :: #sm_enable{}.

-record(fast, {zero_rtt :: 'false' | 'true' | 'undefined',
               count :: 'undefined' | integer(),
               invalidate :: 'false' | 'true' | 'undefined',
               mechs = [] :: [binary()]}).
-type fast() :: #fast{}.

-record(feature_sm, {xmlns = <<>> :: binary()}).
-type feature_sm() :: #feature_sm{}.

-record(ps_item, {xmlns = <<>> :: binary(),
                  id = <<>> :: binary(),
                  sub_els = [] :: [xmpp_element() | fxml:xmlel()],
                  node = <<>> :: binary(),
                  publisher = <<>> :: binary()}).
-type ps_item() :: #ps_item{}.

-record(fast_token, {expiry :: undefined | erlang:timestamp(),
                     token = <<>> :: binary()}).
-type fast_token() :: #fast_token{}.

-record(idle, {since :: erlang:timestamp()}).
-type idle() :: #idle{}.

-record(muc_unique, {name = <<>> :: binary()}).
-type muc_unique() :: #muc_unique{}.

-record(sasl_auth, {mechanism = <<>> :: binary(),
                    text = <<>> :: binary()}).
-type sasl_auth() :: #sasl_auth{}.

-record(sync_call, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_call() :: #sync_call{}.

-record(markup_mention, {node = <<>> :: binary(),
                         cdata = <<>> :: binary()}).
-type markup_mention() :: #markup_mention{}.

-record(occupant_id, {id = <<>> :: binary()}).
-type occupant_id() :: #occupant_id{}.

-record(message_moderated_21, {by :: undefined | jid:jid(),
                               reason :: 'undefined' | binary(),
                               sub_els = [] :: [xmpp_element() | fxml:xmlel()],
                               occupant_id :: 'undefined' | #occupant_id{}}).
-type message_moderated_21() :: #message_moderated_21{}.

-record(message_moderated, {by :: undefined | jid:jid(),
                            sub_els = [] :: [xmpp_element() | fxml:xmlel()],
                            occupant_id :: 'undefined' | #occupant_id{}}).
-type message_moderated() :: #message_moderated{}.

-record(hash_used, {algo = <<>> :: binary()}).
-type hash_used() :: #hash_used{}.

-record(mix, {submission_id = <<>> :: binary(),
              jid :: undefined | jid:jid(),
              nick = <<>> :: binary(),
              xmlns = <<>> :: binary()}).
-type mix() :: #mix{}.

-record(mam_archived, {by :: jid:jid(),
                       id = <<>> :: binary()}).
-type mam_archived() :: #mam_archived{}.

-record(xdata_option, {label = <<>> :: binary(),
                       value :: binary()}).
-type xdata_option() :: #xdata_option{}.

-record(media_uri, {type = <<>> :: binary(),
                    uri = <<>> :: binary()}).
-type media_uri() :: #media_uri{}.

-record(mix_destroy, {channel = <<>> :: binary(),
                      xmlns = <<>> :: binary()}).
-type mix_destroy() :: #mix_destroy{}.

-record(fasten_external, {name = <<>> :: binary()}).
-type fasten_external() :: #fasten_external{}.

-record(mam_prefs, {xmlns = <<>> :: binary(),
                    default :: 'always' | 'never' | 'roster' | 'undefined',
                    always :: undefined | [jid:jid()],
                    never :: undefined | [jid:jid()]}).
-type mam_prefs() :: #mam_prefs{}.

-record(jingle_reject, {id = <<>> :: binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_reject() :: #jingle_reject{}.

-record(mix_update_subscription, {xmlns = <<>> :: binary(),
                                  jid :: undefined | jid:jid(),
                                  subscribe = [] :: [binary()],
                                  unsubscribe = [] :: [binary()]}).
-type mix_update_subscription() :: #mix_update_subscription{}.

-record(muc_subscribe, {nick = <<>> :: binary(),
                        password = <<>> :: binary(),
                        jid :: undefined | jid:jid(),
                        events = [] :: [binary()]}).
-type muc_subscribe() :: #muc_subscribe{}.

-record(retract_query, {version :: 'undefined' | non_neg_integer(),
                        'less-than' :: 'undefined' | non_neg_integer(),
                        type = <<>> :: binary()}).
-type retract_query() :: #retract_query{}.

-record(sm_a, {h :: non_neg_integer(),
               xmlns = <<>> :: binary()}).
-type sm_a() :: #sm_a{}.

-record(geoloc, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type geoloc() :: #geoloc{}.

-record(jingle_ibb_transport, {sid = <<>> :: binary(),
                               'block-size' :: non_neg_integer(),
                               stanza = iq :: 'iq' | 'message'}).
-type jingle_ibb_transport() :: #jingle_ibb_transport{}.

-record(stanza_id, {by :: jid:jid(),
                    id = <<>> :: binary()}).
-type stanza_id() :: #stanza_id{}.

-record(unified_push_registered, {expiration :: erlang:timestamp(),
                                  endpoint = <<>> :: binary()}).
-type unified_push_registered() :: #unified_push_registered{}.

-record(groups_delete, {group :: undefined | jid:jid()}).
-type groups_delete() :: #groups_delete{}.

-record(starttls_failure, {}).
-type starttls_failure() :: #starttls_failure{}.

-record(delivery_x, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type delivery_x() :: #delivery_x{}.

-record(db_verify, {from = <<>> :: binary(),
                    to = <<>> :: binary(),
                    id = <<>> :: binary(),
                    type :: 'error' | 'invalid' | 'undefined' | 'valid',
                    key = <<>> :: binary(),
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type db_verify() :: #db_verify{}.

-record(devices_revoke_all, {}).
-type devices_revoke_all() :: #devices_revoke_all{}.

-record(referenced_stanza, {by :: undefined | jid:jid(),
                            id = <<>> :: binary()}).
-type referenced_stanza() :: #referenced_stanza{}.

-record(sasl2_success, {jid :: jid:jid(),
                        additional_data :: 'undefined' | binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_success() :: #sasl2_success{}.

-record(sm_r, {xmlns = <<>> :: binary()}).
-type sm_r() :: #sm_r{}.

-record(sasl2_abort, {text :: 'undefined' | binary(),
                      sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_abort() :: #sasl2_abort{}.

-record(mark_markable, {}).
-type mark_markable() :: #mark_markable{}.

-record(groups_pinned_message, {id = <<>> :: binary(),
                                status = pinned :: 'pinned' | 'remove'}).
-type groups_pinned_message() :: #groups_pinned_message{}.

-record(groups_pinned, {messages = [] :: [#groups_pinned_message{}]}).
-type groups_pinned() :: #groups_pinned{}.

-record(xabber_push_disable, {jid :: jid:jid(),
                              node = <<>> :: binary()}).
-type xabber_push_disable() :: #xabber_push_disable{}.

-record(sasl_response, {text = <<>> :: binary()}).
-type sasl_response() :: #sasl_response{}.

-record(markup_link, {cdata = <<>> :: binary()}).
-type markup_link() :: #markup_link{}.

-record(groups_avatar, {info :: 'undefined' | #avatar_info{},
                        data :: 'undefined' | #avatar_data{}}).
-type groups_avatar() :: #groups_avatar{}.

-record(perms_defaults, {perms :: 'undefined' | #perms_permissions{}}).
-type perms_defaults() :: #perms_defaults{}.

-record(origin_id, {id = <<>> :: binary()}).
-type origin_id() :: #origin_id{}.

-record(retract_message, {xmlns = <<>> :: binary(),
                          id :: 'undefined' | binary(),
                          by :: undefined | jid:jid(),
                          symmetric :: 'false' | 'true' | 'undefined',
                          version :: 'undefined' | non_neg_integer(),
                          conversation :: undefined | jid:jid(),
                          type = <<>> :: binary()}).
-type retract_message() :: #retract_message{}.

-record(push_disable, {jid :: jid:jid(),
                       node = <<>> :: binary()}).
-type push_disable() :: #push_disable{}.

-record(fast_request_token, {mech = <<>> :: binary()}).
-type fast_request_token() :: #fast_request_token{}.

-record(sync_synchronization, {}).
-type sync_synchronization() :: #sync_synchronization{}.

-record(groups_details, {}).
-type groups_details() :: #groups_details{}.

-record(mark_displayed, {id = <<>> :: binary(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mark_displayed() :: #mark_displayed{}.

-record(sasl2_user_agent, {id = <<>> :: binary(),
                           software :: 'undefined' | binary(),
                           device :: 'undefined' | binary()}).
-type sasl2_user_agent() :: #sasl2_user_agent{}.

-record(upload_request, {filename :: binary(),
                         size :: non_neg_integer(),
                         'content-type' = <<>> :: binary(),
                         xmlns = <<>> :: binary()}).
-type upload_request() :: #upload_request{}.

-record(muc_unsubscribe, {nick = <<>> :: binary(),
                          jid :: undefined | jid:jid()}).
-type muc_unsubscribe() :: #muc_unsubscribe{}.

-record(ps_unsubscribe, {node = <<>> :: binary(),
                         jid :: jid:jid(),
                         subid = <<>> :: binary()}).
-type ps_unsubscribe() :: #ps_unsubscribe{}.

-record(ps_publish, {node = <<>> :: binary(),
                     items = [] :: [#ps_item{}]}).
-type ps_publish() :: #ps_publish{}.

-record(feature_pre_approval, {}).
-type feature_pre_approval() :: #feature_pre_approval{}.

-record(groups_invites, {list = [] :: [jid:jid()]}).
-type groups_invites() :: #groups_invites{}.

-record(groups_kick, {jid :: undefined | jid:jid()}).
-type groups_kick() :: #groups_kick{}.

-record(nick, {name = <<>> :: binary()}).
-type nick() :: #nick{}.

-record(message_retract_30, {}).
-type message_retract_30() :: #message_retract_30{}.

-record(sasl2_task_data, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_task_data() :: #sasl2_task_data{}.

-record(groups_contacts, {list = [] :: [jid:jid()]}).
-type groups_contacts() :: #groups_contacts{}.

-record(sync_last, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_last() :: #sync_last{}.

-record(sync_delivered, {id = <<>> :: binary()}).
-type sync_delivered() :: #sync_delivered{}.

-record('see-other-host', {host :: binary() | inet:ip_address() | {binary() | inet:ip_address(),inet:port_number()}}).
-type 'see-other-host'() :: #'see-other-host'{}.

-record(privilege_namespace, {ns = <<>> :: binary(),
                              type :: 'both' | 'get' | 'none' | 'set'}).
-type privilege_namespace() :: #privilege_namespace{}.

-record(privilege_perm, {access :: 'iq' | 'message' | 'presence' | 'roster',
                         type :: 'both' | 'get' | 'managed_entity' | 'none' | 'outgoing' | 'roster' | 'set' | 'undefined',
                         push = true :: boolean(),
                         namespaces = [] :: [#privilege_namespace{}]}).
-type privilege_perm() :: #privilege_perm{}.

-record(delivery_retry, {to :: undefined | jid:jid()}).
-type delivery_retry() :: #delivery_retry{}.

-record(retract_all, {xmlns = <<>> :: binary(),
                      symmetric :: 'false' | 'true' | 'undefined',
                      version :: 'undefined' | non_neg_integer(),
                      conversation :: undefined | jid:jid(),
                      type = <<>> :: binary()}).
-type retract_all() :: #retract_all{}.

-record(vcard_geo, {lat :: 'undefined' | binary(),
                    lon :: 'undefined' | binary()}).
-type vcard_geo() :: #vcard_geo{}.

-record(fasten_apply_to, {id = <<>> :: binary(),
                          external :: 'undefined' | #fasten_external{},
                          sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type fasten_apply_to() :: #fasten_apply_to{}.

-record(sticker, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sticker() :: #sticker{}.

-record(retract_user, {xmlns = <<>> :: binary(),
                       id = <<>> :: binary(),
                       by :: undefined | jid:jid(),
                       symmetric :: 'false' | 'true' | 'undefined',
                       version :: 'undefined' | non_neg_integer(),
                       conversation :: undefined | jid:jid(),
                       type = <<>> :: binary()}).
-type retract_user() :: #retract_user{}.

-record(stream_features, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type stream_features() :: #stream_features{}.

-record(groups_resend, {}).
-type groups_resend() :: #groups_resend{}.

-record(jingle_s5b_candidate, {cid = <<>> :: binary(),
                               host :: inet:ip_address(),
                               port :: 'undefined' | non_neg_integer(),
                               jid :: jid:jid(),
                               type = direct :: 'assisted' | 'direct' | 'proxy' | 'tunnel',
                               priority :: non_neg_integer()}).
-type jingle_s5b_candidate() :: #jingle_s5b_candidate{}.

-record(jingle_s5b_transport, {sid = <<>> :: binary(),
                               dstaddr = <<>> :: binary(),
                               mode = tcp :: 'tcp' | 'udp',
                               candidates = [] :: [#jingle_s5b_candidate{}],
                               'candidate-used' :: 'undefined' | binary(),
                               activated :: 'undefined' | binary(),
                               error :: 'candidate-error' | 'proxy-error' | 'undefined'}).
-type jingle_s5b_transport() :: #jingle_s5b_transport{}.

-record(bookmark_conference, {name = <<>> :: binary(),
                              jid :: jid:jid(),
                              autojoin = false :: boolean(),
                              nick :: 'undefined' | binary(),
                              password :: 'undefined' | binary()}).
-type bookmark_conference() :: #bookmark_conference{}.

-record(offline_item, {node = <<>> :: binary(),
                       action :: 'remove' | 'undefined' | 'view'}).
-type offline_item() :: #offline_item{}.

-record(time, {tzo :: 'undefined' | {integer(),integer()},
               utc :: undefined | erlang:timestamp()}).
-type time() :: #time{}.

-record(feature_register, {}).
-type feature_register() :: #feature_register{}.

-record(adhoc_note, {type = info :: 'error' | 'info' | 'warn',
                     data = <<>> :: binary()}).
-type adhoc_note() :: #adhoc_note{}.

-record(sasl_upgrade, {cdata = <<>> :: binary()}).
-type sasl_upgrade() :: #sasl_upgrade{}.

-record(bind2_bind, {tag :: 'undefined' | binary(),
                     inline :: 'undefined' | [xmpp_element() | fxml:xmlel()],
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type bind2_bind() :: #bind2_bind{}.

-record(vcard_key, {type :: 'undefined' | binary(),
                    cred :: 'undefined' | binary()}).
-type vcard_key() :: #vcard_key{}.

-record(vcard_photo, {type :: 'undefined' | binary(),
                      binval :: 'undefined' | binary(),
                      extval :: 'undefined' | binary()}).
-type vcard_photo() :: #vcard_photo{}.

-record(muc_history, {maxchars :: 'undefined' | non_neg_integer(),
                      maxstanzas :: 'undefined' | non_neg_integer(),
                      seconds :: 'undefined' | non_neg_integer(),
                      since :: undefined | erlang:timestamp()}).
-type muc_history() :: #muc_history{}.

-record(muc, {history :: 'undefined' | #muc_history{},
              password :: 'undefined' | binary()}).
-type muc() :: #muc{}.

-record(muc_invite, {reason = <<>> :: binary(),
                     from :: undefined | jid:jid(),
                     to :: undefined | jid:jid(),
                     continue :: 'undefined' | binary()}).
-type muc_invite() :: #muc_invite{}.

-record(muc_decline, {reason = <<>> :: binary(),
                      from :: undefined | jid:jid(),
                      to :: undefined | jid:jid()}).
-type muc_decline() :: #muc_decline{}.

-record(upload_slot_0, {get :: binary(),
                        put :: binary(),
                        xmlns = <<>> :: binary()}).
-type upload_slot_0() :: #upload_slot_0{}.

-record(sasl2_continue, {additional_data :: 'undefined' | binary(),
                         text :: 'undefined' | binary(),
                         tasks :: 'undefined' | [binary()],
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_continue() :: #sasl2_continue{}.

-record(xdata_field, {label = <<>> :: binary(),
                      type :: 'boolean' | 'fixed' | 'hidden' | 'jid-multi' | 'jid-single' | 'list-multi' | 'list-single' | 'text-multi' | 'text-private' | 'text-single' | 'undefined',
                      var = <<>> :: binary(),
                      required = false :: boolean(),
                      desc = <<>> :: binary(),
                      values = [] :: [binary()],
                      options = [] :: [#xdata_option{}],
                      sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xdata_field() :: #xdata_field{}.

-record(xdata, {type :: 'cancel' | 'form' | 'result' | 'submit',
                instructions = [] :: [binary()],
                title :: 'undefined' | binary(),
                reported :: 'undefined' | [#xdata_field{}],
                items = [] :: [[#xdata_field{}]],
                fields = [] :: [#xdata_field{}]}).
-type xdata() :: #xdata{}.

-record(xcaptcha, {xdata :: #xdata{}}).
-type xcaptcha() :: #xcaptcha{}.

-record(ps_options, {node = <<>> :: binary(),
                     jid :: undefined | jid:jid(),
                     subid = <<>> :: binary(),
                     xdata :: 'undefined' | #xdata{}}).
-type ps_options() :: #ps_options{}.

-record(message_thread, {parent = <<>> :: binary(),
                         data = <<>> :: binary()}).
-type message_thread() :: #message_thread{}.

-record(gone, {uri = <<>> :: binary()}).
-type gone() :: #gone{}.

-record(pubsub_serverinfo_remote_domain, {name = <<>> :: binary(),
                                          type = [] :: ['bidi' | 'incoming' | 'outgoing']}).
-type pubsub_serverinfo_remote_domain() :: #pubsub_serverinfo_remote_domain{}.

-record(pubsub_serverinfo_domain, {name = <<>> :: binary(),
                                   remote_domain :: 'undefined' | [#pubsub_serverinfo_remote_domain{}]}).
-type pubsub_serverinfo_domain() :: #pubsub_serverinfo_domain{}.

-record(xen_notification, {type = <<110,111,114,109,97,108>> :: binary(),
                           category = <<>> :: binary(),
                           sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xen_notification() :: #xen_notification{}.

-record(muc_actor, {jid :: undefined | jid:jid(),
                    nick = <<>> :: binary()}).
-type muc_actor() :: #muc_actor{}.

-record(stat_error, {code :: integer(),
                     reason = <<>> :: binary()}).
-type stat_error() :: #stat_error{}.

-record(groups_domains, {list = [] :: [jid:jid()]}).
-type groups_domains() :: #groups_domains{}.

-record(sync_unread, {count :: 'undefined' | non_neg_integer(),
                      'after' = <<>> :: binary()}).
-type sync_unread() :: #sync_unread{}.

-record(redirect, {uri = <<>> :: binary()}).
-type redirect() :: #redirect{}.

-record(sm_enabled, {id = <<>> :: binary(),
                     location = <<>> :: binary(),
                     max :: 'undefined' | non_neg_integer(),
                     resume = false :: boolean(),
                     xmlns = <<>> :: binary()}).
-type sm_enabled() :: #sm_enabled{}.

-record(files_file, {type :: 'undefined' | binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type files_file() :: #files_file{}.

-record(files_file_sharing, {file :: #files_file{},
                             sources :: #files_sources{}}).
-type files_file_sharing() :: #files_file_sharing{}.

-record(groups_revoke, {jid :: jid:jid()}).
-type groups_revoke() :: #groups_revoke{}.

-record(service, {action :: 'add' | 'modify' | 'remove' | 'undefined',
                  expires :: undefined | erlang:timestamp(),
                  host :: binary() | inet:ip_address(),
                  name = <<>> :: binary(),
                  password = <<>> :: binary(),
                  port :: 'undefined' | non_neg_integer(),
                  restricted :: 'false' | 'true' | 'undefined',
                  transport :: 'tcp' | 'udp' | 'undefined',
                  type :: 'stun' | 'stuns' | 'turn' | 'turns',
                  username = <<>> :: binary(),
                  xdata :: 'undefined' | #xdata{}}).
-type service() :: #service{}.

-record(credentials, {services = [] :: [#service{}]}).
-type credentials() :: #credentials{}.

-record(groups_block, {jids = [] :: [jid:jid()]}).
-type groups_block() :: #groups_block{}.

-record(push_call, {}).
-type push_call() :: #push_call{}.

-record(oob_x, {url :: binary(),
                desc = <<>> :: binary(),
                sid = <<>> :: binary(),
                sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type oob_x() :: #oob_x{}.

-record(x509_ca_list, {certs = [] :: [binary()]}).
-type x509_ca_list() :: #x509_ca_list{}.

-record(mix_participant, {jid :: undefined | jid:jid(),
                          nick :: 'undefined' | binary()}).
-type mix_participant() :: #mix_participant{}.

-record(compressed, {}).
-type compressed() :: #compressed{}.

-record(groups_decline, {}).
-type groups_decline() :: #groups_decline{}.

-record(delegated, {ns = <<>> :: binary(),
                    attrs = [] :: [binary()]}).
-type delegated() :: #delegated{}.

-record(carbons_disable, {}).
-type carbons_disable() :: #carbons_disable{}.

-record(rsm_set, {'after' :: 'undefined' | binary(),
                  before :: 'undefined' | binary(),
                  count :: 'undefined' | non_neg_integer(),
                  first :: 'undefined' | #rsm_first{},
                  index :: 'undefined' | non_neg_integer(),
                  last :: 'undefined' | binary(),
                  max :: 'undefined' | non_neg_integer()}).
-type rsm_set() :: #rsm_set{}.

-record(sync_query, {stamp = <<>> :: binary(),
                     rsm :: 'undefined' | #rsm_set{},
                     xdata :: 'undefined' | #xdata{},
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_query() :: #sync_query{}.

-record(inbox_fin, {total :: 'undefined' | non_neg_integer(),
                    unread :: 'undefined' | non_neg_integer(),
                    all_unread :: 'undefined' | non_neg_integer(),
                    rsm :: 'undefined' | #rsm_set{}}).
-type inbox_fin() :: #inbox_fin{}.

-record(mam_fin, {xmlns = <<>> :: binary(),
                  id = <<>> :: binary(),
                  rsm :: 'undefined' | #rsm_set{},
                  stable :: 'false' | 'true' | 'undefined',
                  complete :: 'false' | 'true' | 'undefined'}).
-type mam_fin() :: #mam_fin{}.

-record(inbox_query, {rsm :: 'undefined' | #rsm_set{}}).
-type inbox_query() :: #inbox_query{}.

-record(identity, {category = <<>> :: binary(),
                   type = <<>> :: binary(),
                   lang = <<>> :: binary(),
                   name = <<>> :: binary()}).
-type identity() :: #identity{}.

-record(disco_info, {node = <<>> :: binary(),
                     identities = [] :: [#identity{}],
                     features = [] :: [binary()],
                     xdata = [] :: [#xdata{}]}).
-type disco_info() :: #disco_info{}.

-record(mix_setnick, {nick :: binary(),
                      xmlns = <<>> :: binary()}).
-type mix_setnick() :: #mix_setnick{}.

-record(pubsub_serverinfo, {domain = [] :: [#pubsub_serverinfo_domain{}]}).
-type pubsub_serverinfo() :: #pubsub_serverinfo{}.

-record(sic, {ip :: undefined | inet:ip_address(),
              port :: 'undefined' | non_neg_integer(),
              xmlns = <<>> :: binary()}).
-type sic() :: #sic{}.

-record(compress, {methods = [] :: [binary()]}).
-type compress() :: #compress{}.

-record(delegation_query, {to :: jid:jid(),
                           delegate = [] :: [binary()]}).
-type delegation_query() :: #delegation_query{}.

-record(sm_resume, {h :: non_neg_integer(),
                    previd = <<>> :: binary(),
                    xmlns = <<>> :: binary()}).
-type sm_resume() :: #sm_resume{}.

-record(jingle_content, {creator :: 'initiator' | 'responder',
                         disposition = <<>> :: binary(),
                         name = <<>> :: binary(),
                         senders = both :: 'both' | 'initiator' | 'none' | 'responder',
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_content() :: #jingle_content{}.

-record(groups_unblock, {jid :: undefined | jid:jid()}).
-type groups_unblock() :: #groups_unblock{}.

-record(vcard_label, {home = false :: boolean(),
                      work = false :: boolean(),
                      postal = false :: boolean(),
                      parcel = false :: boolean(),
                      dom = false :: boolean(),
                      intl = false :: boolean(),
                      pref = false :: boolean(),
                      line = [] :: [binary()]}).
-type vcard_label() :: #vcard_label{}.

-record(feature_csi, {}).
-type feature_csi() :: #feature_csi{}.

-record(disco_item, {jid :: jid:jid(),
                     name = <<>> :: binary(),
                     node = <<>> :: binary()}).
-type disco_item() :: #disco_item{}.

-record(disco_items, {node = <<>> :: binary(),
                      items = [] :: [#disco_item{}],
                      rsm :: 'undefined' | #rsm_set{}}).
-type disco_items() :: #disco_items{}.

-record(message_retract, {id = <<>> :: binary(),
                          reason :: 'undefined' | binary(),
                          moderated :: 'undefined' | #message_moderated{}}).
-type message_retract() :: #message_retract{}.

-record(message_moderate_21, {reason :: 'undefined' | binary(),
                              retract :: 'undefined' | #message_retract{}}).
-type message_moderate_21() :: #message_moderate_21{}.

-record(message_moderate, {id = <<>> :: binary(),
                           reason :: 'undefined' | binary(),
                           retract :: 'undefined' | #message_retract{}}).
-type message_moderate() :: #message_moderate{}.

-record(bob_data, {cid = <<>> :: binary(),
                   'max-age' :: 'undefined' | non_neg_integer(),
                   type = <<>> :: binary(),
                   data = <<>> :: binary()}).
-type bob_data() :: #bob_data{}.

-record(muc_item, {actor :: 'undefined' | #muc_actor{},
                   continue :: 'undefined' | binary(),
                   reason = <<>> :: binary(),
                   affiliation :: 'admin' | 'member' | 'none' | 'outcast' | 'owner' | 'undefined',
                   role :: 'moderator' | 'none' | 'participant' | 'undefined' | 'visitor',
                   jid :: undefined | jid:jid(),
                   nick = <<>> :: binary()}).
-type muc_item() :: #muc_item{}.

-record(muc_admin, {items = [] :: [#muc_item{}]}).
-type muc_admin() :: #muc_admin{}.

-record(pep_bookmarks_conference, {name = <<>> :: binary(),
                                   autojoin = false :: boolean(),
                                   nick :: 'undefined' | binary(),
                                   password :: 'undefined' | binary(),
                                   extensions :: 'undefined' | [xmpp_element() | fxml:xmlel()]}).
-type pep_bookmarks_conference() :: #pep_bookmarks_conference{}.

-record(replaced, {stamp :: erlang:timestamp(),
                   body = <<>> :: binary()}).
-type replaced() :: #replaced{}.

-record(replace_message, {from :: undefined | jid:jid(),
                          to :: undefined | jid:jid(),
                          body :: 'undefined' | binary(),
                          stanza_id :: 'undefined' | #stanza_id{},
                          replaced :: 'undefined' | #replaced{},
                          sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type replace_message() :: #replace_message{}.

-record(replace, {xmlns = <<>> :: binary(),
                  id :: 'undefined' | binary(),
                  by :: undefined | jid:jid(),
                  version :: 'undefined' | non_neg_integer(),
                  conversation :: undefined | jid:jid(),
                  type = <<>> :: binary(),
                  replace_message :: 'undefined' | #replace_message{},
                  sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type replace() :: #replace{}.

-record(sasl_abort, {}).
-type sasl_abort() :: #sasl_abort{}.

-record(adhoc_actions, {execute :: 'complete' | 'next' | 'prev' | 'undefined',
                        prev = false :: boolean(),
                        next = false :: boolean(),
                        complete = false :: boolean()}).
-type adhoc_actions() :: #adhoc_actions{}.

-record(adhoc_command, {node = <<>> :: binary(),
                        action = execute :: 'cancel' | 'complete' | 'execute' | 'next' | 'prev',
                        sid = <<>> :: binary(),
                        status :: 'canceled' | 'completed' | 'executing' | 'undefined',
                        lang = <<>> :: binary(),
                        actions :: 'undefined' | #adhoc_actions{},
                        notes = [] :: [#adhoc_note{}],
                        xdata :: 'undefined' | #xdata{}}).
-type adhoc_command() :: #adhoc_command{}.

-record(muc_destroy, {xmlns = <<>> :: binary(),
                      jid :: undefined | jid:jid(),
                      reason = <<>> :: binary(),
                      password :: 'undefined' | binary()}).
-type muc_destroy() :: #muc_destroy{}.

-record(muc_owner, {destroy :: 'undefined' | #muc_destroy{},
                    config :: 'undefined' | #xdata{},
                    items = [] :: [#muc_item{}]}).
-type muc_owner() :: #muc_owner{}.

-record(search_item, {jid :: jid:jid(),
                      first :: 'undefined' | binary(),
                      last :: 'undefined' | binary(),
                      nick :: 'undefined' | binary(),
                      email :: 'undefined' | binary()}).
-type search_item() :: #search_item{}.

-record(search, {instructions :: 'undefined' | binary(),
                 first :: 'undefined' | binary(),
                 last :: 'undefined' | binary(),
                 nick :: 'undefined' | binary(),
                 email :: 'undefined' | binary(),
                 items = [] :: [#search_item{}],
                 xdata :: 'undefined' | #xdata{}}).
-type search() :: #search{}.

-record(vcard_logo, {type :: 'undefined' | binary(),
                     binval :: 'undefined' | binary(),
                     extval :: 'undefined' | binary()}).
-type vcard_logo() :: #vcard_logo{}.

-record(mark_received, {id = <<>> :: binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mark_received() :: #mark_received{}.

-record(carbons_private, {}).
-type carbons_private() :: #carbons_private{}.

-record(ibb_data, {sid = <<>> :: binary(),
                   seq :: non_neg_integer(),
                   data = <<>> :: binary()}).
-type ibb_data() :: #ibb_data{}.

-record(privileged_iq, {iq :: 'undefined' | #iq{}}).
-type privileged_iq() :: #privileged_iq{}.

-record(services, {type :: 'stun' | 'stuns' | 'turn' | 'turns' | 'undefined',
                   list = [] :: [#service{}]}).
-type services() :: #services{}.

-record(compress_failure, {reason :: 'processing-failed' | 'setup-failed' | 'undefined' | 'unsupported-method'}).
-type compress_failure() :: #compress_failure{}.

-record(sasl_challenge, {text = <<>> :: binary()}).
-type sasl_challenge() :: #sasl_challenge{}.

-record(xabber_push_security, {cipher = <<>> :: binary(),
                               encryption_key :: 'undefined' | #xabber_encryption_key{}}).
-type xabber_push_security() :: #xabber_push_security{}.

-record(xabber_push_enable, {jid :: jid:jid(),
                             node = <<>> :: binary(),
                             xdata :: 'undefined' | #xdata{},
                             push_security :: 'undefined' | #xabber_push_security{}}).
-type xabber_push_enable() :: #xabber_push_enable{}.

-record(unified_push_register, {application = <<>> :: binary(),
                                instance = <<>> :: binary()}).
-type unified_push_register() :: #unified_push_register{}.

-record(addresses, {list = [] :: [#address{}]}).
-type addresses() :: #addresses{}.

-record(xen_notify, {notification :: #xen_notification{},
                     fallback = [] :: [#text{}],
                     addresses :: #addresses{}}).
-type xen_notify() :: #xen_notify{}.

-record(groups_last, {stamp :: erlang:timestamp()}).
-type groups_last() :: #groups_last{}.

-record(muc_subscription, {jid :: undefined | jid:jid(),
                           nick = <<>> :: binary(),
                           events = [] :: [binary()]}).
-type muc_subscription() :: #muc_subscription{}.

-record(muc_subscriptions, {list = [] :: [#muc_subscription{}]}).
-type muc_subscriptions() :: #muc_subscriptions{}.

-record(receipt_request, {}).
-type receipt_request() :: #receipt_request{}.

-record(bind, {jid :: undefined | jid:jid(),
               resource = <<>> :: binary()}).
-type bind() :: #bind{}.

-record(rosterver_feature, {}).
-type rosterver_feature() :: #rosterver_feature{}.

-record(mix_roster_channel, {participant_id = <<>> :: binary()}).
-type mix_roster_channel() :: #mix_roster_channel{}.

-record(roster_item, {jid :: jid:jid(),
                      name = <<>> :: binary(),
                      groups = [] :: [binary()],
                      subscription = none :: 'both' | 'from' | 'none' | 'remove' | 'to',
                      ask :: 'subscribe' | 'undefined',
                      approved = false :: boolean(),
                      mix_channel :: 'undefined' | #mix_roster_channel{}}).
-type roster_item() :: #roster_item{}.

-record(roster_query, {items = [] :: [#roster_item{}],
                       ver :: 'undefined' | binary(),
                       mix_annotate = false :: boolean()}).
-type roster_query() :: #roster_query{}.

-record(push_notification, {xdata :: 'undefined' | #xdata{}}).
-type push_notification() :: #push_notification{}.

-record(muc_user, {decline :: 'undefined' | #muc_decline{},
                   destroy :: 'undefined' | #muc_destroy{},
                   invites = [] :: [#muc_invite{}],
                   items = [] :: [#muc_item{}],
                   status_codes = [] :: [pos_integer()],
                   password :: 'undefined' | binary()}).
-type muc_user() :: #muc_user{}.

-record(compression, {methods = [] :: [binary()]}).
-type compression() :: #compression{}.

-record(stat, {name = <<>> :: binary(),
               units = <<>> :: binary(),
               value = <<>> :: binary(),
               error :: 'undefined' | #stat_error{}}).
-type stat() :: #stat{}.

-record(stats, {list = [] :: [#stat{}],
                node = <<>> :: binary()}).
-type stats() :: #stats{}.

-record(sasl2_authenticate, {mechanism = <<>> :: binary(),
                             initial_response :: 'undefined' | binary(),
                             user_agent :: 'undefined' | #sasl2_user_agent{},
                             sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_authenticate() :: #sasl2_authenticate{}.

-record(delay, {stamp :: erlang:timestamp(),
                from :: undefined | jid:jid(),
                desc = <<>> :: binary()}).
-type delay() :: #delay{}.

-record(forwarded, {delay :: 'undefined' | #delay{},
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type forwarded() :: #forwarded{}.

-record(delivery_received, {origin_id :: 'undefined' | #origin_id{},
                            stanza_id :: 'undefined' | #stanza_id{},
                            time :: 'undefined' | #delivery_time{},
                            forwarded :: 'undefined' | #forwarded{}}).
-type delivery_received() :: #delivery_received{}.

-record(delegation, {delegated = [] :: [#delegated{}],
                     forwarded :: 'undefined' | #forwarded{}}).
-type delegation() :: #delegation{}.

-record(privilege, {perms = [] :: [#privilege_perm{}],
                    forwarded :: 'undefined' | #forwarded{}}).
-type privilege() :: #privilege{}.

-record(carbons_sent, {forwarded :: #forwarded{}}).
-type carbons_sent() :: #carbons_sent{}.

-record(jingle_accept, {id = <<>> :: binary()}).
-type jingle_accept() :: #jingle_accept{}.

-record(sm_failed, {reason :: atom() | #gone{} | #redirect{},
                    text = [] :: [#text{}],
                    h :: 'undefined' | non_neg_integer(),
                    xmlns = <<>> :: binary()}).
-type sm_failed() :: #sm_failed{}.

-record(stanza_error, {type :: 'auth' | 'cancel' | 'continue' | 'modify' | 'wait',
                       by :: undefined | jid:jid(),
                       reason :: atom() | #gone{} | #redirect{},
                       text = [] :: [#text{}],
                       sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type stanza_error() :: #stanza_error{}.

-record(legacy_auth, {username :: 'undefined' | binary(),
                      password :: 'undefined' | binary(),
                      digest :: 'undefined' | binary(),
                      resource :: 'undefined' | binary()}).
-type legacy_auth() :: #legacy_auth{}.

-record(report, {reason :: 'abuse' | 'spam',
                 text = [] :: [#text{}]}).
-type report() :: #report{}.

-record(block_item, {jid :: jid:jid(),
                     spam_report :: 'undefined' | #report{}}).
-type block_item() :: #block_item{}.

-record(block_list, {items = [] :: [#block_item{}]}).
-type block_list() :: #block_list{}.

-record(unblock, {items = [] :: [#block_item{}]}).
-type unblock() :: #unblock{}.

-record(block, {items = [] :: [#block_item{}]}).
-type block() :: #block{}.

-record(handshake, {data = <<>> :: binary()}).
-type handshake() :: #handshake{}.

-record(vcard_adr, {home = false :: boolean(),
                    work = false :: boolean(),
                    postal = false :: boolean(),
                    parcel = false :: boolean(),
                    dom = false :: boolean(),
                    intl = false :: boolean(),
                    pref = false :: boolean(),
                    pobox :: 'undefined' | binary(),
                    extadd :: 'undefined' | binary(),
                    street :: 'undefined' | binary(),
                    locality :: 'undefined' | binary(),
                    region :: 'undefined' | binary(),
                    pcode :: 'undefined' | binary(),
                    ctry :: 'undefined' | binary()}).
-type vcard_adr() :: #vcard_adr{}.

-record(stream_error, {reason :: atom() | #'see-other-host'{},
                       text = [] :: [#text{}]}).
-type stream_error() :: #stream_error{}.

-record(vcard_sound, {phonetic :: 'undefined' | binary(),
                      binval :: 'undefined' | binary(),
                      extval :: 'undefined' | binary()}).
-type vcard_sound() :: #vcard_sound{}.

-record(starttls, {required = false :: boolean()}).
-type starttls() :: #starttls{}.

-record(groups_user, {id = <<>> :: binary(),
                      jid :: undefined | jid:jid(),
                      role :: 'undefined' | binary(),
                      badge :: 'undefined' | binary(),
                      nickname :: 'undefined' | binary(),
                      avatar :: 'undefined' | #groups_avatar{},
                      last :: 'undefined' | #groups_last{},
                      p2p = false :: boolean()}).
-type groups_user() :: #groups_user{}.

-record(groups_sys_msg, {type = <<>> :: binary(),
                         actor :: 'undefined' | #groups_user{}}).
-type groups_sys_msg() :: #groups_sys_msg{}.

-record(groups_x, {author :: 'undefined' | #groups_user{},
                   sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type groups_x() :: #groups_x{}.

-record(groups_invite, {jid :: undefined | jid:jid(),
                        target :: undefined | jid:jid(),
                        send :: 'false' | 'true' | 'undefined',
                        reason :: 'undefined' | binary(),
                        user :: 'undefined' | #groups_user{}}).
-type groups_invite() :: #groups_invite{}.

-record(groups_members, {members = [] :: [#groups_user{}],
                         id :: 'undefined' | binary(),
                         version :: 'undefined' | binary(),
                         xdata :: 'undefined' | #xdata{}}).
-type groups_members() :: #groups_members{}.

-record(ps_subscribe, {node = <<>> :: binary(),
                       jid :: jid:jid()}).
-type ps_subscribe() :: #ps_subscribe{}.

-record(sasl2_authenticaton, {mechanisms = [] :: [binary()],
                              inline :: 'undefined' | [xmpp_element() | fxml:xmlel()],
                              sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_authenticaton() :: #sasl2_authenticaton{}.

-record(vcard_email, {home = false :: boolean(),
                      work = false :: boolean(),
                      internet = false :: boolean(),
                      pref = false :: boolean(),
                      x400 = false :: boolean(),
                      userid :: 'undefined' | binary()}).
-type vcard_email() :: #vcard_email{}.

-record(db_result, {from = <<>> :: binary(),
                    to = <<>> :: binary(),
                    type :: 'error' | 'invalid' | 'undefined' | 'valid',
                    key = <<>> :: binary(),
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type db_result() :: #db_result{}.

-record(carbons_received, {forwarded :: #forwarded{}}).
-type carbons_received() :: #carbons_received{}.

-record(ps_retract, {node = <<>> :: binary(),
                     notify = false :: boolean(),
                     items = [] :: [#ps_item{}]}).
-type ps_retract() :: #ps_retract{}.

-record(mam_query, {xmlns = <<>> :: binary(),
                    id = <<>> :: binary(),
                    start :: undefined | erlang:timestamp(),
                    'end' :: undefined | erlang:timestamp(),
                    with :: undefined | jid:jid(),
                    withtext :: 'undefined' | binary(),
                    rsm :: 'undefined' | #rsm_set{},
                    flippage = false :: boolean(),
                    xdata :: 'undefined' | #xdata{}}).
-type mam_query() :: #mam_query{}.

-record(vcard_xupdate, {hash :: 'undefined' | binary()}).
-type vcard_xupdate() :: #vcard_xupdate{}.

-record(groups_settings, {membership :: 'open' | 'private' | 'undefined',
                          contacts :: 'undefined' | #groups_contacts{},
                          domains :: 'undefined' | #groups_domains{},
                          index :: 'global' | 'local' | 'none' | 'undefined',
                          state :: 'active' | 'inactive' | 'undefined'}).
-type groups_settings() :: #groups_settings{}.

-record(vcard_name, {family :: 'undefined' | binary(),
                     given :: 'undefined' | binary(),
                     middle :: 'undefined' | binary(),
                     prefix :: 'undefined' | binary(),
                     suffix :: 'undefined' | binary()}).
-type vcard_name() :: #vcard_name{}.

-record(xmpp_session, {optional = false :: boolean()}).
-type xmpp_session() :: #xmpp_session{}.

-record(bookmark_url, {name = <<>> :: binary(),
                       url = <<>> :: binary()}).
-type bookmark_url() :: #bookmark_url{}.

-record(bookmark_storage, {conference = [] :: [#bookmark_conference{}],
                           url = [] :: [#bookmark_url{}]}).
-type bookmark_storage() :: #bookmark_storage{}.

-record(xabber_push_notification, {xdata :: 'undefined' | #xdata{},
                                   sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabber_push_notification() :: #xabber_push_notification{}.

-record(mix_join, {id = <<>> :: binary(),
                   jid :: undefined | jid:jid(),
                   nick = <<>> :: binary(),
                   subscribe = [] :: [binary()],
                   xmlns = <<>> :: binary()}).
-type mix_join() :: #mix_join{}.

-record(mix_client_join, {channel :: undefined | jid:jid(),
                          join :: #mix_join{},
                          xmlns = <<>> :: binary()}).
-type mix_client_join() :: #mix_client_join{}.

-record(upload_request_0, {filename = <<>> :: binary(),
                           size :: pos_integer(),
                           'content-type' = <<>> :: binary(),
                           purpose :: 'ephemeral' | 'message' | 'permanent' | 'profile' | 'undefined',
                           xmlns = <<>> :: binary()}).
-type upload_request_0() :: #upload_request_0{}.

-record(markup_italic, {}).
-type markup_italic() :: #markup_italic{}.

-record(sasl_success, {text = <<>> :: binary()}).
-type sasl_success() :: #sasl_success{}.

-record(sync_retract, {version :: 'undefined' | non_neg_integer()}).
-type sync_retract() :: #sync_retract{}.

-record(streamhost, {jid :: jid:jid(),
                     host = <<>> :: binary(),
                     port = 1080 :: non_neg_integer()}).
-type streamhost() :: #streamhost{}.

-record(x509_challenge, {transaction = <<>> :: binary(),
                         uri = <<>> :: binary(),
                         signature :: binary()}).
-type x509_challenge() :: #x509_challenge{}.

-record(x509_revoke, {cert :: binary(),
                      signature :: binary()}).
-type x509_revoke() :: #x509_revoke{}.

-record(x509_request, {transaction = <<>> :: binary(),
                       csr :: #x509_csr{},
                       cert :: 'undefined' | binary(),
                       signature :: 'undefined' | binary()}).
-type x509_request() :: #x509_request{}.

-record(push_enable, {jid :: jid:jid(),
                      node = <<>> :: binary(),
                      xdata :: 'undefined' | #xdata{}}).
-type push_enable() :: #push_enable{}.

-record(jingle_reason, {reason :: atom(),
                        text = [] :: [#text{}],
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_reason() :: #jingle_reason{}.

-record(jingle, {action :: 'content-accept' | 'content-add' | 'content-modify' | 'content-reject' | 'content-remove' | 'description-info' | 'security-info' | 'session-accept' | 'session-info' | 'session-initiate' | 'session-terminate' | 'transport-accept' | 'transport-info' | 'transport-reject' | 'transport-replace',
                 sid = <<>> :: binary(),
                 initiator :: undefined | jid:jid(),
                 responder :: undefined | jid:jid(),
                 content = [] :: [#jingle_content{}],
                 reason :: 'undefined' | #jingle_reason{},
                 sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle() :: #jingle{}.

-record(bytestreams, {hosts = [] :: [#streamhost{}],
                      used :: undefined | jid:jid(),
                      activate :: undefined | jid:jid(),
                      dstaddr = <<>> :: binary(),
                      mode = tcp :: 'tcp' | 'udp',
                      sid = <<>> :: binary()}).
-type bytestreams() :: #bytestreams{}.

-record(x_conference, {jid :: jid:jid(),
                       password = <<>> :: binary(),
                       reason = <<>> :: binary(),
                       continue :: 'false' | 'true' | 'undefined',
                       thread = <<>> :: binary()}).
-type x_conference() :: #x_conference{}.

-record(offline, {items = [] :: [#offline_item{}],
                  purge = false :: boolean(),
                  fetch = false :: boolean()}).
-type offline() :: #offline{}.

-record(sync_metadata, {node = <<>> :: binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_metadata() :: #sync_metadata{}.

-record(sasl2_failure, {reason :: 'aborted' | 'account-disabled' | 'bad-protocol' | 'credentials-expired' | 'encryption-required' | 'incorrect-encoding' | 'invalid-authzid' | 'invalid-mechanism' | 'malformed-request' | 'mechanism-too-weak' | 'not-authorized' | 'temporary-auth-failure' | 'undefined',
                        text :: 'undefined' | binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sasl2_failure() :: #sasl2_failure{}.

-record(sasl_failure, {reason :: 'aborted' | 'account-disabled' | 'bad-protocol' | 'credentials-expired' | 'encryption-required' | 'incorrect-encoding' | 'invalid-authzid' | 'invalid-mechanism' | 'malformed-request' | 'mechanism-too-weak' | 'not-authorized' | 'temporary-auth-failure' | 'undefined',
                       text = [] :: [#text{}]}).
-type sasl_failure() :: #sasl_failure{}.

-record(privacy_item, {order :: non_neg_integer(),
                       action :: 'allow' | 'deny',
                       type :: 'group' | 'jid' | 'subscription' | 'undefined',
                       value = <<>> :: binary(),
                       message = false :: boolean(),
                       iq = false :: boolean(),
                       presence_in = false :: boolean(),
                       presence_out = false :: boolean()}).
-type privacy_item() :: #privacy_item{}.

-record(privacy_list, {name = <<>> :: binary(),
                       items = [] :: [#privacy_item{}]}).
-type privacy_list() :: #privacy_list{}.

-record(privacy_query, {lists = [] :: [#privacy_list{}],
                        default :: 'none' | 'undefined' | binary(),
                        active :: 'none' | 'undefined' | binary()}).
-type privacy_query() :: #privacy_query{}.

-record(jingle_ft_file, {date :: undefined | erlang:timestamp(),
                         desc = [] :: [#text{}],
                         hash = [] :: [#hash{}],
                         'hash-used' :: 'undefined' | #hash_used{},
                         'media-type' :: 'undefined' | binary(),
                         name :: 'undefined' | binary(),
                         size :: 'undefined' | non_neg_integer(),
                         range :: 'undefined' | #jingle_ft_range{}}).
-type jingle_ft_file() :: #jingle_ft_file{}.

-record(jingle_ft_checksum, {creator :: 'initiator' | 'responder' | 'undefined',
                             name = <<>> :: binary(),
                             file :: #jingle_ft_file{}}).
-type jingle_ft_checksum() :: #jingle_ft_checksum{}.

-record(jingle_ft_description, {file :: 'undefined' | #jingle_ft_file{}}).
-type jingle_ft_description() :: #jingle_ft_description{}.

-record(mix_presence, {xmlns = <<>> :: binary(),
                       jid :: undefined | jid:jid(),
                       nick = <<>> :: binary()}).
-type mix_presence() :: #mix_presence{}.

-record(register, {registered = false :: boolean(),
                   remove = false :: boolean(),
                   instructions :: 'undefined' | binary(),
                   username :: 'undefined' | binary(),
                   nick :: 'undefined' | binary(),
                   password :: 'undefined' | binary(),
                   name :: 'undefined' | binary(),
                   first :: 'undefined' | binary(),
                   last :: 'undefined' | binary(),
                   email :: 'undefined' | binary(),
                   address :: 'undefined' | binary(),
                   city :: 'undefined' | binary(),
                   state :: 'undefined' | binary(),
                   zip :: 'undefined' | binary(),
                   phone :: 'undefined' | binary(),
                   url :: 'undefined' | binary(),
                   date :: 'undefined' | binary(),
                   misc :: 'undefined' | binary(),
                   text :: 'undefined' | binary(),
                   key :: 'undefined' | binary(),
                   xdata :: 'undefined' | #xdata{},
                   sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type register() :: #register{}.

-record(xevent, {offline = false :: boolean(),
                 delivered = false :: boolean(),
                 displayed = false :: boolean(),
                 composing = false :: boolean(),
                 id :: 'undefined' | binary()}).
-type xevent() :: #xevent{}.

-record(vcard_tel, {home = false :: boolean(),
                    work = false :: boolean(),
                    voice = false :: boolean(),
                    fax = false :: boolean(),
                    pager = false :: boolean(),
                    msg = false :: boolean(),
                    cell = false :: boolean(),
                    video = false :: boolean(),
                    bbs = false :: boolean(),
                    modem = false :: boolean(),
                    isdn = false :: boolean(),
                    pcs = false :: boolean(),
                    pref = false :: boolean(),
                    number :: 'undefined' | binary()}).
-type vcard_tel() :: #vcard_tel{}.

-record(devices_device, {id :: 'undefined' | binary(),
                         secret :: 'undefined' | binary(),
                         validation_key :: 'undefined' | binary(),
                         expire :: 'undefined' | non_neg_integer(),
                         client :: 'undefined' | binary(),
                         info :: 'undefined' | binary(),
                         public_label :: 'undefined' | binary(),
                         ip :: 'undefined' | binary(),
                         last_auth :: 'undefined' | binary(),
                         omemo_id :: 'undefined' | binary(),
                         device_type :: 'undefined' | binary()}).
-type devices_device() :: #devices_device{}.

-record(devices_query_items, {devices = [] :: [#devices_device{}]}).
-type devices_query_items() :: #devices_query_items{}.

-record(devices_query, {device :: #devices_device{}}).
-type devices_query() :: #devices_query{}.

-record(devices_revoke, {devices = [] :: [#devices_device{}]}).
-type devices_revoke() :: #devices_revoke{}.

-record(device_register, {device :: #devices_device{}}).
-type device_register() :: #device_register{}.

-record(upload_retry, {stamp :: undefined | erlang:timestamp()}).
-type upload_retry() :: #upload_retry{}.

-record(ps_subscription, {xmlns = <<>> :: binary(),
                          jid :: jid:jid(),
                          type :: 'none' | 'pending' | 'subscribed' | 'unconfigured' | 'undefined',
                          node = <<>> :: binary(),
                          subid = <<>> :: binary(),
                          expiry :: undefined | erlang:timestamp()}).
-type ps_subscription() :: #ps_subscription{}.

-record(pubsub_owner, {affiliations :: 'undefined' | {binary(),[#ps_affiliation{}]},
                       configure :: 'undefined' | {binary(),'undefined' | #xdata{}},
                       default :: 'undefined' | {binary(),'undefined' | #xdata{}},
                       delete :: 'undefined' | {binary(),binary()},
                       purge :: 'undefined' | binary(),
                       subscriptions :: 'undefined' | {binary(),[#ps_subscription{}]}}).
-type pubsub_owner() :: #pubsub_owner{}.

-record(encrypted_message_omemo, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type encrypted_message_omemo() :: #encrypted_message_omemo{}.

-record(groups_p2p, {parent :: jid:jid(),
                     with = <<>> :: binary()}).
-type groups_p2p() :: #groups_p2p{}.

-record(media, {height :: 'undefined' | non_neg_integer(),
                width :: 'undefined' | non_neg_integer(),
                uri = [] :: [#media_uri{}]}).
-type media() :: #media{}.

-record(shim, {headers = [] :: [{binary(),binary()}]}).
-type shim() :: #shim{}.

-record(perms_newbies, {perms :: 'undefined' | #perms_permissions{}}).
-type perms_newbies() :: #perms_newbies{}.

-record(groups_mentions, {members = [] :: [#groups_user{}]}).
-type groups_mentions() :: #groups_mentions{}.

-record(ps_items, {xmlns = <<>> :: binary(),
                   node = <<>> :: binary(),
                   items = [] :: [#ps_item{}],
                   max_items :: 'undefined' | non_neg_integer(),
                   subid = <<>> :: binary(),
                   retract = [] :: [binary()]}).
-type ps_items() :: #ps_items{}.

-record(pubsub, {subscriptions :: 'undefined' | {binary(),[#ps_subscription{}]},
                 subscription :: 'undefined' | #ps_subscription{},
                 affiliations :: 'undefined' | {binary(),[#ps_affiliation{}]},
                 publish :: 'undefined' | #ps_publish{},
                 publish_options :: 'undefined' | #xdata{},
                 subscribe :: 'undefined' | #ps_subscribe{},
                 unsubscribe :: 'undefined' | #ps_unsubscribe{},
                 options :: 'undefined' | #ps_options{},
                 items :: 'undefined' | #ps_items{},
                 retract :: 'undefined' | #ps_retract{},
                 create :: 'undefined' | binary(),
                 configure :: 'undefined' | {binary(),'undefined' | #xdata{}},
                 default :: 'undefined' | {binary(),'undefined' | #xdata{}},
                 delete :: 'undefined' | {binary(),binary()},
                 purge :: 'undefined' | binary(),
                 rsm :: 'undefined' | #rsm_set{}}).
-type pubsub() :: #pubsub{}.

-record(ps_event, {items :: 'undefined' | #ps_items{},
                   purge :: 'undefined' | binary(),
                   subscription :: 'undefined' | #ps_subscription{},
                   delete :: 'undefined' | {binary(),binary()},
                   create :: 'undefined' | binary(),
                   configuration :: 'undefined' | {binary(),'undefined' | #xdata{}}}).
-type ps_event() :: #ps_event{}.

-record(version, {name :: 'undefined' | binary(),
                  ver :: 'undefined' | binary(),
                  os :: 'undefined' | binary()}).
-type version() :: #version{}.

-record(muc_hat, {title = <<>> :: binary(),
                  uri = <<>> :: binary(),
                  hue = <<>> :: binary()}).
-type muc_hat() :: #muc_hat{}.

-record(muc_hats, {hats = [] :: [#muc_hat{}]}).
-type muc_hats() :: #muc_hats{}.

-record(encrypted, {'iv-length' :: non_neg_integer(),
                    data = <<>> :: binary()}).
-type encrypted() :: #encrypted{}.

-record(upload_slot, {get :: 'undefined' | binary(),
                      put :: 'undefined' | binary(),
                      xmlns = <<>> :: binary()}).
-type upload_slot() :: #upload_slot{}.

-record(vcard_temp, {version :: 'undefined' | binary(),
                     fn :: 'undefined' | binary(),
                     n :: 'undefined' | #vcard_name{},
                     nickname :: 'undefined' | binary(),
                     photo :: 'undefined' | #vcard_photo{},
                     bday :: 'undefined' | binary(),
                     adr = [] :: [#vcard_adr{}],
                     label = [] :: [#vcard_label{}],
                     tel = [] :: [#vcard_tel{}],
                     email = [] :: [#vcard_email{}],
                     jabberid :: 'undefined' | binary(),
                     mailer :: 'undefined' | binary(),
                     tz :: 'undefined' | binary(),
                     geo :: 'undefined' | #vcard_geo{},
                     title :: 'undefined' | binary(),
                     role :: 'undefined' | binary(),
                     logo :: 'undefined' | #vcard_logo{},
                     org :: 'undefined' | #vcard_org{},
                     categories = [] :: [binary()],
                     note :: 'undefined' | binary(),
                     prodid :: 'undefined' | binary(),
                     rev :: 'undefined' | binary(),
                     sort_string :: 'undefined' | binary(),
                     sound :: 'undefined' | #vcard_sound{},
                     uid :: 'undefined' | binary(),
                     url :: 'undefined' | binary(),
                     class :: 'confidential' | 'private' | 'public' | 'undefined',
                     key :: 'undefined' | #vcard_key{},
                     desc :: 'undefined' | binary(),
                     privacy :: 'undefined' | binary(),
                     index :: 'undefined' | binary(),
                     membership :: 'undefined' | binary(),
                     status :: 'undefined' | binary(),
                     parent :: 'undefined' | binary(),
                     members :: 'undefined' | binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type vcard_temp() :: #vcard_temp{}.

-record(groups_search, {name :: 'undefined' | binary(),
                        description :: 'undefined' | binary(),
                        model :: 'open' | 'private' | 'undefined',
                        anonymous :: 'global' | 'local' | 'none' | 'undefined',
                        rsm :: 'undefined' | #rsm_set{}}).
-type groups_search() :: #groups_search{}.

-record(groups_info, {name :: 'undefined' | binary(),
                      description :: 'undefined' | binary(),
                      avatar :: 'undefined' | #groups_avatar{},
                      status :: 'undefined' | binary()}).
-type groups_info() :: #groups_info{}.

-record(groups_group, {privacy :: 'incognito' | 'public' | 'undefined',
                       parent :: undefined | jid:jid(),
                       jid :: undefined | jid:jid(),
                       members :: 'undefined' | non_neg_integer(),
                       localpart :: 'undefined' | binary(),
                       info :: 'undefined' | #groups_info{},
                       settings :: 'undefined' | #groups_settings{},
                       pinned :: 'undefined' | #groups_pinned{},
                       present :: 'undefined' | binary()}).
-type groups_group() :: #groups_group{}.

-record(groups_create, {group :: 'undefined' | #groups_group{},
                        p2p :: 'undefined' | #groups_p2p{}}).
-type groups_create() :: #groups_create{}.

-type xmpp_element() :: address() |
                        addresses() |
                        adhoc_actions() |
                        adhoc_command() |
                        adhoc_note() |
                        avatar_data() |
                        avatar_info() |
                        avatar_meta() |
                        avatar_pointer() |
                        bind() |
                        bind2_bind() |
                        bind2_bound() |
                        bind2_feature() |
                        block() |
                        block_item() |
                        block_list() |
                        bob_data() |
                        bookmark_conference() |
                        bookmark_storage() |
                        bookmark_url() |
                        bytestreams() |
                        caps() |
                        carbons_disable() |
                        carbons_enable() |
                        carbons_private() |
                        carbons_received() |
                        carbons_sent() |
                        chatstate() |
                        compress() |
                        compress_failure() |
                        compressed() |
                        compression() |
                        credentials() |
                        csi() |
                        db_feature() |
                        db_result() |
                        db_verify() |
                        delay() |
                        delegated() |
                        delegation() |
                        delegation_query() |
                        delivery_received() |
                        delivery_retry() |
                        delivery_time() |
                        delivery_x() |
                        device_register() |
                        devices_device() |
                        devices_feature() |
                        devices_query() |
                        devices_query_items() |
                        devices_revoke() |
                        devices_revoke_all() |
                        disco_info() |
                        disco_item() |
                        disco_items() |
                        encrypted() |
                        encrypted_message_omemo() |
                        expire() |
                        fast() |
                        fast_request_token() |
                        fast_token() |
                        fasten_apply_to() |
                        fasten_external() |
                        feature_csi() |
                        feature_pre_approval() |
                        feature_register() |
                        feature_register_ibr_token() |
                        feature_sm() |
                        files_file() |
                        files_file_sharing() |
                        files_sources() |
                        forwarded() |
                        geoloc() |
                        gone() |
                        groups_avatar() |
                        groups_block() |
                        groups_contacts() |
                        groups_create() |
                        groups_decline() |
                        groups_delete() |
                        groups_deny_user_avatar() |
                        groups_details() |
                        groups_domains() |
                        groups_group() |
                        groups_info() |
                        groups_invite() |
                        groups_invites() |
                        groups_kick() |
                        groups_last() |
                        groups_members() |
                        groups_mentions() |
                        groups_owner() |
                        groups_p2p() |
                        groups_pinned() |
                        groups_pinned_message() |
                        groups_resend() |
                        groups_revoke() |
                        groups_search() |
                        groups_settings() |
                        groups_sys_msg() |
                        groups_unblock() |
                        groups_user() |
                        groups_x() |
                        handshake() |
                        hash() |
                        hash_used() |
                        hint() |
                        ibb_close() |
                        ibb_data() |
                        ibb_open() |
                        identity() |
                        idle() |
                        inbox_entry() |
                        inbox_fin() |
                        inbox_query() |
                        iq() |
                        jidprep() |
                        jingle() |
                        jingle_accept() |
                        jingle_content() |
                        jingle_error() |
                        jingle_ft_checksum() |
                        jingle_ft_description() |
                        jingle_ft_error() |
                        jingle_ft_file() |
                        jingle_ft_range() |
                        jingle_ft_received() |
                        jingle_ibb_transport() |
                        jingle_propose() |
                        jingle_reason() |
                        jingle_reject() |
                        jingle_s5b_candidate() |
                        jingle_s5b_transport() |
                        last() |
                        legacy_auth() |
                        legacy_auth_feature() |
                        mam_archived() |
                        mam_fin() |
                        mam_prefs() |
                        mam_query() |
                        mam_result() |
                        mark_displayed() |
                        mark_markable() |
                        mark_received() |
                        markup_bold() |
                        markup_italic() |
                        markup_link() |
                        markup_mention() |
                        markup_quote() |
                        markup_strike() |
                        markup_underline() |
                        media() |
                        media_uri() |
                        message() |
                        message_moderate() |
                        message_moderate_21() |
                        message_moderated() |
                        message_moderated_21() |
                        message_retract() |
                        message_retract_30() |
                        message_retracted() |
                        message_retracted_30() |
                        message_thread() |
                        mix() |
                        mix_client_join() |
                        mix_client_leave() |
                        mix_create() |
                        mix_destroy() |
                        mix_join() |
                        mix_leave() |
                        mix_participant() |
                        mix_presence() |
                        mix_roster_channel() |
                        mix_setnick() |
                        mix_update_subscription() |
                        muc() |
                        muc_actor() |
                        muc_admin() |
                        muc_decline() |
                        muc_destroy() |
                        muc_hat() |
                        muc_hats() |
                        muc_history() |
                        muc_invite() |
                        muc_item() |
                        muc_owner() |
                        muc_subscribe() |
                        muc_subscription() |
                        muc_subscriptions() |
                        muc_unique() |
                        muc_unsubscribe() |
                        muc_user() |
                        nick() |
                        occupant_id() |
                        offline() |
                        offline_item() |
                        oob_x() |
                        origin_id() |
                        pep_bookmarks_conference() |
                        perms_defaults() |
                        perms_delete() |
                        perms_newbies() |
                        perms_permission() |
                        perms_permissions() |
                        ping() |
                        preauth() |
                        presence() |
                        privacy_item() |
                        privacy_list() |
                        privacy_query() |
                        private() |
                        privilege() |
                        privilege_namespace() |
                        privilege_perm() |
                        privileged_iq() |
                        ps_affiliation() |
                        ps_error() |
                        ps_event() |
                        ps_item() |
                        ps_items() |
                        ps_options() |
                        ps_publish() |
                        ps_retract() |
                        ps_subscribe() |
                        ps_subscription() |
                        ps_unsubscribe() |
                        pubsub() |
                        pubsub_owner() |
                        pubsub_serverinfo() |
                        pubsub_serverinfo_domain() |
                        pubsub_serverinfo_remote_domain() |
                        push_call() |
                        push_disable() |
                        push_enable() |
                        push_notification() |
                        receipt_request() |
                        receipt_response() |
                        redirect() |
                        referenced_stanza() |
                        register() |
                        replace() |
                        replace_message() |
                        replaced() |
                        report() |
                        retract_all() |
                        retract_invalidate() |
                        retract_message() |
                        retract_query() |
                        retract_user() |
                        roster_item() |
                        roster_query() |
                        rosterver_feature() |
                        rsm_first() |
                        rsm_set() |
                        s2s_bidi() |
                        s2s_bidi_feature() |
                        sasl2_abort() |
                        sasl2_authenticate() |
                        sasl2_authenticaton() |
                        sasl2_challenge() |
                        sasl2_continue() |
                        sasl2_failure() |
                        sasl2_next() |
                        sasl2_response() |
                        sasl2_success() |
                        sasl2_task_data() |
                        sasl2_user_agent() |
                        sasl_abort() |
                        sasl_auth() |
                        sasl_challenge() |
                        sasl_channel_binding() |
                        sasl_failure() |
                        sasl_mechanisms() |
                        sasl_response() |
                        sasl_success() |
                        sasl_upgrade() |
                        scram_upgrade_hash() |
                        scram_upgrade_salt() |
                        search() |
                        search_item() |
                        'see-other-host'() |
                        service() |
                        services() |
                        shim() |
                        sic() |
                        sm_a() |
                        sm_enable() |
                        sm_enabled() |
                        sm_failed() |
                        sm_r() |
                        sm_resume() |
                        sm_resumed() |
                        stanza_error() |
                        stanza_id() |
                        starttls() |
                        starttls_failure() |
                        starttls_proceed() |
                        stat() |
                        stat_error() |
                        stats() |
                        sticker() |
                        stream_error() |
                        stream_features() |
                        stream_start() |
                        streamhost() |
                        sync_call() |
                        sync_conversation() |
                        sync_delivered() |
                        sync_displayed() |
                        sync_last() |
                        sync_metadata() |
                        sync_query() |
                        sync_retract() |
                        sync_synchronization() |
                        sync_unread() |
                        text() |
                        thumbnail() |
                        time() |
                        unblock() |
                        unified_push_push() |
                        unified_push_register() |
                        unified_push_registered() |
                        upload_file_too_large() |
                        upload_request() |
                        upload_request_0() |
                        upload_retry() |
                        upload_slot() |
                        upload_slot_0() |
                        vcard_adr() |
                        vcard_email() |
                        vcard_geo() |
                        vcard_key() |
                        vcard_label() |
                        vcard_logo() |
                        vcard_name() |
                        vcard_org() |
                        vcard_photo() |
                        vcard_sound() |
                        vcard_tel() |
                        vcard_temp() |
                        vcard_xupdate() |
                        version() |
                        voice_message() |
                        x509_ca_list() |
                        x509_cert_chain() |
                        x509_challenge() |
                        x509_challenge_failed() |
                        x509_csr() |
                        x509_register() |
                        x509_request() |
                        x509_revoke() |
                        x_conference() |
                        xabber_encryption_key() |
                        xabber_push_disable() |
                        xabber_push_enable() |
                        xabber_push_notification() |
                        xabber_push_security() |
                        xcaptcha() |
                        xdata() |
                        xdata_field() |
                        xdata_option() |
                        xen_jid() |
                        xen_notification() |
                        xen_notify() |
                        xen_prefs() |
                        xevent() |
                        xmpp_session() |
                        xmppreference().
