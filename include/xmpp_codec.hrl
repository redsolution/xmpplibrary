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
                  thread :: undefined | binary(),
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
		      'multi-items'.
-record(ps_error, {type :: ps_error_type(), feature :: ps_feature()}).
-type ps_error() :: #ps_error{}.

-record(chatstate, {type :: active | composing | gone | inactive | paused}).
-type chatstate() :: #chatstate{}.

-record(csi, {type :: active | inactive}).
-type csi() :: #csi{}.

-record(hint, {type :: 'no-copy' | 'no-store' | 'no-storage' | 'store' |
		       'no-permanent-store' | 'no-permanent-storage'}).
-type hint() :: #hint{}.

-record(avatar_data, {data = <<>> :: binary()}).
-type avatar_data() :: #avatar_data{}.

-record(feature_register, {}).
-type feature_register() :: #feature_register{}.

-record(files_sources, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type files_sources() :: #files_sources{}.

-record(markup_italic, {}).
-type markup_italic() :: #markup_italic{}.

-record(address, {type :: 'bcc' | 'cc' | 'noreply' | 'ofrom' | 'replyroom' | 'replyto' | 'to',
                  jid :: undefined | jid:jid(),
                  desc = <<>> :: binary(),
                  node = <<>> :: binary(),
                  delivered :: 'false' | 'true' | 'undefined'}).
-type address() :: #address{}.

-record(sasl_success, {text = <<>> :: binary()}).
-type sasl_success() :: #sasl_success{}.

-record(adhoc_note, {type = info :: 'error' | 'info' | 'warn',
                     data = <<>> :: binary()}).
-type adhoc_note() :: #adhoc_note{}.

-record(mam_result, {xmlns = <<>> :: binary(),
                     queryid = <<>> :: binary(),
                     id = <<>> :: binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mam_result() :: #mam_result{}.

-record(rsm_first, {index :: 'undefined' | non_neg_integer(),
                    data = <<>> :: binary()}).
-type rsm_first() :: #rsm_first{}.

-record(xen_jid, {rule :: 'allow' | 'reject' | 'remove',
                  jid :: jid:jid()}).
-type xen_jid() :: #xen_jid{}.

-record(sync_retract, {version :: 'undefined' | non_neg_integer()}).
-type sync_retract() :: #sync_retract{}.

-record(streamhost, {jid :: jid:jid(),
                     host = <<>> :: binary(),
                     port = 1080 :: non_neg_integer()}).
-type streamhost() :: #streamhost{}.

-record(sync_displayed, {id = <<>> :: binary()}).
-type sync_displayed() :: #sync_displayed{}.

-record(bmarkup_bold, {}).
-type bmarkup_bold() :: #bmarkup_bold{}.

-record(jingle_reject, {id = <<>> :: binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_reject() :: #jingle_reject{}.

-record(mark_displayed, {id = <<>> :: binary(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mark_displayed() :: #mark_displayed{}.

-record(mark_received, {id = <<>> :: binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mark_received() :: #mark_received{}.

-record(carbons_enable, {}).
-type carbons_enable() :: #carbons_enable{}.

-record(receipt_response, {id = <<>> :: binary()}).
-type receipt_response() :: #receipt_response{}.

-record(expire, {seconds :: non_neg_integer(),
                 stored :: 'undefined' | non_neg_integer()}).
-type expire() :: #expire{}.

-record(mix_leave, {}).
-type mix_leave() :: #mix_leave{}.

-record(muc_unsubscribe, {nick = <<>> :: binary(),
                          jid :: undefined | jid:jid()}).
-type muc_unsubscribe() :: #muc_unsubscribe{}.

-record(ps_unsubscribe, {node = <<>> :: binary(),
                         jid :: jid:jid(),
                         subid = <<>> :: binary()}).
-type ps_unsubscribe() :: #ps_unsubscribe{}.

-record(sm_resume, {h :: non_neg_integer(),
                    previd = <<>> :: binary(),
                    xmlns = <<>> :: binary()}).
-type sm_resume() :: #sm_resume{}.

-record(carbons_private, {}).
-type carbons_private() :: #carbons_private{}.

-record(ping, {}).
-type ping() :: #ping{}.

-record(delay, {stamp :: erlang:timestamp(),
                from :: undefined | jid:jid(),
                desc = <<>> :: binary()}).
-type delay() :: #delay{}.

-record(retract_query, {version :: 'undefined' | non_neg_integer(),
                        'less-than' :: 'undefined' | non_neg_integer(),
                        type = <<>> :: binary()}).
-type retract_query() :: #retract_query{}.

-record(muc_history, {maxchars :: 'undefined' | non_neg_integer(),
                      maxstanzas :: 'undefined' | non_neg_integer(),
                      seconds :: 'undefined' | non_neg_integer(),
                      since :: undefined | erlang:timestamp()}).
-type muc_history() :: #muc_history{}.

-record(thumbnail, {uri = <<>> :: binary(),
                    'media-type' = <<>> :: binary(),
                    width :: 'undefined' | non_neg_integer(),
                    height :: 'undefined' | non_neg_integer()}).
-type thumbnail() :: #thumbnail{}.

-record(xabbertoken_revoke_all, {}).
-type xabbertoken_revoke_all() :: #xabbertoken_revoke_all{}.

-record(privilege_perm, {access :: 'message' | 'presence' | 'roster',
                         type :: 'both' | 'get' | 'managed_entity' | 'none' | 'outgoing' | 'roster' | 'set'}).
-type privilege_perm() :: #privilege_perm{}.

-record(sync_conversation, {type = <<>> :: binary(),
                            jid :: jid:jid(),
                            status :: 'active' | 'archived' | 'deleted' | 'undefined',
                            stamp = <<>> :: binary(),
                            thread = <<>> :: binary(),
                            mute :: 'undefined' | binary(),
                            pinned :: 'undefined' | binary(),
                            sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_conversation() :: #sync_conversation{}.

-record(groups_description, {cdata = <<>> :: binary()}).
-type groups_description() :: #groups_description{}.

-record(muc_decline, {reason = <<>> :: binary(),
                      from :: undefined | jid:jid(),
                      to :: undefined | jid:jid()}).
-type muc_decline() :: #muc_decline{}.

-record(groups_ptp, {jid :: undefined | jid:jid(),
                     id = <<>> :: binary(),
                     cdata = <<>> :: binary()}).
-type groups_ptp() :: #groups_ptp{}.

-record(upload_slot_0, {get :: binary(),
                        put :: binary(),
                        xmlns = <<>> :: binary()}).
-type upload_slot_0() :: #upload_slot_0{}.

-record(upload_request_0, {filename = <<>> :: binary(),
                           size :: pos_integer(),
                           'content-type' = <<>> :: binary(),
                           xmlns = <<>> :: binary()}).
-type upload_request_0() :: #upload_request_0{}.

-record(sm_a, {h :: non_neg_integer(),
               xmlns = <<>> :: binary()}).
-type sm_a() :: #sm_a{}.

-record(xen_prefs, {default :: 'allow' | 'reject' | 'remove' | 'roster' | 'undefined',
                    jids = [] :: [#xen_jid{}]}).
-type xen_prefs() :: #xen_prefs{}.

-record(geoloc, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type geoloc() :: #geoloc{}.

-record(groups_query_rights, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type groups_query_rights() :: #groups_query_rights{}.

-record(groups_collect, {cdata = <<>> :: binary()}).
-type groups_collect() :: #groups_collect{}.

-record(starttls_proceed, {}).
-type starttls_proceed() :: #starttls_proceed{}.

-record(jingle_accept, {id = <<>> :: binary()}).
-type jingle_accept() :: #jingle_accept{}.

-record(block_id, {cdata = <<>> :: binary()}).
-type block_id() :: #block_id{}.

-record(sm_resumed, {h :: non_neg_integer(),
                     previd = <<>> :: binary(),
                     xmlns = <<>> :: binary()}).
-type sm_resumed() :: #sm_resumed{}.

-record(stream_start, {from :: undefined | jid:jid(),
                       to :: undefined | jid:jid(),
                       id = <<>> :: binary(),
                       version :: 'undefined' | {non_neg_integer(),non_neg_integer()},
                       xmlns = <<>> :: binary(),
                       stream_xmlns = <<>> :: binary(),
                       db_xmlns = <<>> :: binary(),
                       lang = <<>> :: binary()}).
-type stream_start() :: #stream_start{}.

-record(muc_subscribe, {nick = <<>> :: binary(),
                        password = <<>> :: binary(),
                        jid :: undefined | jid:jid(),
                        events = [] :: [binary()]}).
-type muc_subscribe() :: #muc_subscribe{}.

-record(stanza_id, {by :: jid:jid(),
                    id = <<>> :: binary()}).
-type stanza_id() :: #stanza_id{}.

-record(groups_x, {xmlns = <<>> :: binary(),
                   type = <<>> :: binary(),
                   version = <<>> :: binary(),
                   members :: 'undefined' | binary(),
                   present :: 'undefined' | binary(),
                   parent :: undefined | jid:jid(),
                   jid :: undefined | jid:jid(),
                   sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type groups_x() :: #groups_x{}.

-record(forwarded, {delay :: 'undefined' | #delay{},
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type forwarded() :: #forwarded{}.

-record(privilege, {perms = [] :: [#privilege_perm{}],
                    forwarded :: 'undefined' | #forwarded{}}).
-type privilege() :: #privilege{}.

-record(xmppreference, {type = <<>> :: binary(),
                        'begin' :: 'undefined' | non_neg_integer(),
                        'end' :: 'undefined' | non_neg_integer(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xmppreference() :: #xmppreference{}.

-record(markup_underline, {}).
-type markup_underline() :: #markup_underline{}.

-record(delivery_time, {stamp :: erlang:timestamp(),
                        by :: jid:jid()}).
-type delivery_time() :: #delivery_time{}.

-record(handshake, {data = <<>> :: binary()}).
-type handshake() :: #handshake{}.

-record(db_feature, {errors = false :: boolean()}).
-type db_feature() :: #db_feature{}.

-record(x_conference, {jid :: jid:jid(),
                       password = <<>> :: binary(),
                       reason = <<>> :: binary(),
                       continue :: 'false' | 'true' | 'undefined',
                       thread = <<>> :: binary()}).
-type x_conference() :: #x_conference{}.

-record(private, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type private() :: #private{}.

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

-record(starttls_failure, {}).
-type starttls_failure() :: #starttls_failure{}.

-record(gone, {uri = <<>> :: binary()}).
-type gone() :: #gone{}.

-record(sasl_challenge, {text = <<>> :: binary()}).
-type sasl_challenge() :: #sasl_challenge{}.

-record(delivery_x, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type delivery_x() :: #delivery_x{}.

-record(delegation_query, {to :: jid:jid(),
                           delegate = [] :: [binary()]}).
-type delegation_query() :: #delegation_query{}.

-record(db_verify, {from = <<>> :: binary(),
                    to = <<>> :: binary(),
                    id = <<>> :: binary(),
                    type :: 'error' | 'invalid' | 'undefined' | 'valid',
                    key = <<>> :: binary(),
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type db_verify() :: #db_verify{}.

-record(nick, {name = <<>> :: binary()}).
-type nick() :: #nick{}.

-record(devices_revoke_all, {}).
-type devices_revoke_all() :: #devices_revoke_all{}.

-record(roster_item, {jid :: jid:jid(),
                      name = <<>> :: binary(),
                      groups = [] :: [binary()],
                      subscription = none :: 'both' | 'from' | 'none' | 'remove' | 'to',
                      ask :: 'subscribe' | 'undefined',
                      approved = <<>> :: binary()}).
-type roster_item() :: #roster_item{}.

-record(roster_query, {items = [] :: [#roster_item{}],
                       ver :: 'undefined' | binary()}).
-type roster_query() :: #roster_query{}.

-record(feature_sm, {xmlns = <<>> :: binary()}).
-type feature_sm() :: #feature_sm{}.

-record(ps_item, {xmlns = <<>> :: binary(),
                  id = <<>> :: binary(),
                  sub_els = [] :: [xmpp_element() | fxml:xmlel()],
                  node = <<>> :: binary(),
                  publisher = <<>> :: binary()}).
-type ps_item() :: #ps_item{}.

-record(ps_publish, {node = <<>> :: binary(),
                     items = [] :: [#ps_item{}]}).
-type ps_publish() :: #ps_publish{}.

-record(xen_notification, {alert = false :: boolean(),
                           category = <<>> :: binary(),
                           sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xen_notification() :: #xen_notification{}.

-record(sync_metadata, {node = <<>> :: binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_metadata() :: #sync_metadata{}.

-record(avatar_pointer, {bytes :: 'undefined' | non_neg_integer(),
                         id = <<>> :: binary(),
                         type = <<>> :: binary(),
                         height :: 'undefined' | non_neg_integer(),
                         width :: 'undefined' | non_neg_integer(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type avatar_pointer() :: #avatar_pointer{}.

-record(sm_r, {xmlns = <<>> :: binary()}).
-type sm_r() :: #sm_r{}.

-record(muc_actor, {jid :: undefined | jid:jid(),
                    nick = <<>> :: binary()}).
-type muc_actor() :: #muc_actor{}.

-record(stat_error, {code :: integer(),
                     reason = <<>> :: binary()}).
-type stat_error() :: #stat_error{}.

-record(stat, {name = <<>> :: binary(),
               units = <<>> :: binary(),
               value = <<>> :: binary(),
               error :: 'undefined' | #stat_error{}}).
-type stat() :: #stat{}.

-record(addresses, {list = [] :: [#address{}]}).
-type addresses() :: #addresses{}.

-record(xen_notify, {notification :: #xen_notification{},
                     fallback = [] :: [#text{}],
                     addresses :: #addresses{}}).
-type xen_notify() :: #xen_notify{}.

-record(groups_contacts, {contacts = [] :: [binary()]}).
-type groups_contacts() :: #groups_contacts{}.

-record(groups_domains, {domains = [] :: [binary()]}).
-type groups_domains() :: #groups_domains{}.

-record(groups_localpart, {cdata = <<>> :: binary()}).
-type groups_localpart() :: #groups_localpart{}.

-record(block_jid, {cdata = <<>> :: binary()}).
-type block_jid() :: #block_jid{}.

-record(starttls, {required = false :: boolean()}).
-type starttls() :: #starttls{}.

-record(last, {seconds :: 'undefined' | non_neg_integer(),
               status = <<>> :: binary()}).
-type last() :: #last{}.

-record(sync_last, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_last() :: #sync_last{}.

-record(sync_delivered, {id = <<>> :: binary()}).
-type sync_delivered() :: #sync_delivered{}.

-record('see-other-host', {host :: binary() | inet:ip_address() | {binary() | inet:ip_address(),non_neg_integer()}}).
-type 'see-other-host'() :: #'see-other-host'{}.

-record(compress, {methods = [] :: [binary()]}).
-type compress() :: #compress{}.

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

-record(markup_strike, {}).
-type markup_strike() :: #markup_strike{}.

-record(markup_quote, {}).
-type markup_quote() :: #markup_quote{}.

-record(legacy_auth, {username :: 'undefined' | binary(),
                      password :: 'undefined' | binary(),
                      digest :: 'undefined' | binary(),
                      resource :: 'undefined' | binary()}).
-type legacy_auth() :: #legacy_auth{}.

-record(ps_subscribe, {node = <<>> :: binary(),
                       jid :: jid:jid()}).
-type ps_subscribe() :: #ps_subscribe{}.

-record(jingle_propose, {id = <<>> :: binary(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_propose() :: #jingle_propose{}.

-record(voice_message, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type voice_message() :: #voice_message{}.

-record(idle, {since :: erlang:timestamp()}).
-type idle() :: #idle{}.

-record(muc_unique, {name = <<>> :: binary()}).
-type muc_unique() :: #muc_unique{}.

-record(mark_markable, {}).
-type mark_markable() :: #mark_markable{}.

-record(groups_pinned_message, {cdata = <<>> :: binary()}).
-type groups_pinned_message() :: #groups_pinned_message{}.

-record(groups_update, {pinned :: 'undefined' | #groups_pinned_message{}}).
-type groups_update() :: #groups_update{}.

-record(xabber_push_disable, {jid :: jid:jid(),
                              node = <<>> :: binary()}).
-type xabber_push_disable() :: #xabber_push_disable{}.

-record(sasl_response, {text = <<>> :: binary()}).
-type sasl_response() :: #sasl_response{}.

-record(files_file, {type :: 'undefined' | binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type files_file() :: #files_file{}.

-record(groups_revoke, {jid :: binary()}).
-type groups_revoke() :: #groups_revoke{}.

-record(sasl_auth, {mechanism = <<>> :: binary(),
                    text = <<>> :: binary()}).
-type sasl_auth() :: #sasl_auth{}.

-record(groups_privacy, {cdata = <<>> :: binary()}).
-type groups_privacy() :: #groups_privacy{}.

-record(xabber_encryption_key, {data = <<>> :: binary()}).
-type xabber_encryption_key() :: #xabber_encryption_key{}.

-record(xabber_push_security, {cipher = <<>> :: binary(),
                               encryption_key :: 'undefined' | #xabber_encryption_key{}}).
-type xabber_push_security() :: #xabber_push_security{}.

-record(delivery_retry, {to :: undefined | jid:jid()}).
-type delivery_retry() :: #delivery_retry{}.

-record(feature_csi, {xmlns = <<>> :: binary()}).
-type feature_csi() :: #feature_csi{}.

-record(markup_link, {cdata = <<>> :: binary()}).
-type markup_link() :: #markup_link{}.

-record(sync_call, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_call() :: #sync_call{}.

-record(retract_all, {xmlns = <<>> :: binary(),
                      symmetric :: 'false' | 'true' | 'undefined',
                      version :: 'undefined' | non_neg_integer(),
                      conversation :: undefined | jid:jid(),
                      type = <<>> :: binary()}).
-type retract_all() :: #retract_all{}.

-record(push_call, {}).
-type push_call() :: #push_call{}.

-record(unblock, {items = [] :: [jid:jid()]}).
-type unblock() :: #unblock{}.

-record(block, {items = [] :: [jid:jid()]}).
-type block() :: #block{}.

-record(disco_item, {jid :: jid:jid(),
                     name = <<>> :: binary(),
                     node = <<>> :: binary()}).
-type disco_item() :: #disco_item{}.

-record(compression, {methods = [] :: [binary()]}).
-type compression() :: #compression{}.

-record(muc_subscriptions, {list = [] :: [jid:jid()]}).
-type muc_subscriptions() :: #muc_subscriptions{}.

-record(xabbertoken_issue, {client :: 'undefined' | binary(),
                            device :: 'undefined' | binary(),
                            description :: 'undefined' | binary(),
                            expire :: 'undefined' | binary()}).
-type xabbertoken_issue() :: #xabbertoken_issue{}.

-record(ps_subscription, {xmlns = <<>> :: binary(),
                          jid :: jid:jid(),
                          type :: 'none' | 'pending' | 'subscribed' | 'unconfigured' | 'undefined',
                          node = <<>> :: binary(),
                          subid = <<>> :: binary(),
                          expiry :: undefined | erlang:timestamp()}).
-type ps_subscription() :: #ps_subscription{}.

-record(markup_mention, {node = <<>> :: binary(),
                         cdata = <<>> :: binary()}).
-type markup_mention() :: #markup_mention{}.

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

-record(groups_user, {id = <<>> :: binary(),
                      jid :: undefined | jid:jid(),
                      role :: 'undefined' | binary(),
                      badge :: 'undefined' | binary(),
                      nickname :: 'undefined' | binary(),
                      avatar :: 'undefined' | #avatar_meta{},
                      present :: 'undefined' | binary(),
                      subscription :: 'undefined' | binary()}).
-type groups_user() :: #groups_user{}.

-record(encrypted_message_omemo, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type encrypted_message_omemo() :: #encrypted_message_omemo{}.

-record(groups_echo, {message :: #message{}}).
-type groups_echo() :: #groups_echo{}.

-record(groups_membership, {cdata = <<>> :: binary()}).
-type groups_membership() :: #groups_membership{}.

-record(bob_data, {cid = <<>> :: binary(),
                   'max-age' :: 'undefined' | non_neg_integer(),
                   type = <<>> :: binary(),
                   data = <<>> :: binary()}).
-type bob_data() :: #bob_data{}.

-record(groups_invite_user, {jid = <<>> :: binary(),
                             id = <<>> :: binary()}).
-type groups_invite_user() :: #groups_invite_user{}.

-record(groups_query_invites, {users = [] :: [#groups_invite_user{}]}).
-type groups_query_invites() :: #groups_query_invites{}.

-record(shim, {headers = [] :: [{binary(),binary()}]}).
-type shim() :: #shim{}.

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

-record(groups_status, {cdata = <<>> :: binary()}).
-type groups_status() :: #groups_status{}.

-record(caps, {node = <<>> :: binary(),
               version = <<>> :: binary(),
               hash = <<>> :: binary(),
               exts = [] :: [binary()]}).
-type caps() :: #caps{}.

-record(muc, {history :: 'undefined' | #muc_history{},
              password :: 'undefined' | binary()}).
-type muc() :: #muc{}.

-record(stats, {list = [] :: [#stat{}],
                node = <<>> :: binary()}).
-type stats() :: #stats{}.

-record(groups_mentions, {members = [] :: [#groups_user{}]}).
-type groups_mentions() :: #groups_mentions{}.

-record(ps_items, {xmlns = <<>> :: binary(),
                   node = <<>> :: binary(),
                   items = [] :: [#ps_item{}],
                   max_items :: 'undefined' | non_neg_integer(),
                   subid = <<>> :: binary(),
                   retract :: 'undefined' | binary()}).
-type ps_items() :: #ps_items{}.

-record(mam_prefs, {xmlns = <<>> :: binary(),
                    default :: 'always' | 'never' | 'roster' | 'undefined',
                    always :: undefined | [jid:jid()],
                    never :: undefined | [jid:jid()]}).
-type mam_prefs() :: #mam_prefs{}.

-record(stream_features, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type stream_features() :: #stream_features{}.

-record(sic, {ip :: undefined | inet:ip_address(),
              port :: 'undefined' | non_neg_integer(),
              xmlns = <<>> :: binary()}).
-type sic() :: #sic{}.

-record(groups_user_id, {cdata = <<>> :: binary()}).
-type groups_user_id() :: #groups_user_id{}.

-record(groups_kick, {ids = [] :: [#groups_user_id{}],
                      jids = [] :: [jid:jid()]}).
-type groups_kick() :: #groups_kick{}.

-record(receipt_request, {}).
-type receipt_request() :: #receipt_request{}.

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

-record(encrypted, {'iv-length' :: non_neg_integer(),
                    data = <<>> :: binary()}).
-type encrypted() :: #encrypted{}.

-record(vcard_geo, {lat :: 'undefined' | binary(),
                    lon :: 'undefined' | binary()}).
-type vcard_geo() :: #vcard_geo{}.

-record(sasl_failure, {reason :: 'aborted' | 'account-disabled' | 'bad-protocol' | 'credentials-expired' | 'encryption-required' | 'incorrect-encoding' | 'invalid-authzid' | 'invalid-mechanism' | 'malformed-request' | 'mechanism-too-weak' | 'not-authorized' | 'temporary-auth-failure' | 'undefined',
                       text = [] :: [#text{}]}).
-type sasl_failure() :: #sasl_failure{}.

-record(carbons_sent, {forwarded :: #forwarded{}}).
-type carbons_sent() :: #carbons_sent{}.

-record(mam_archived, {by :: jid:jid(),
                       id = <<>> :: binary()}).
-type mam_archived() :: #mam_archived{}.

-record(compress_failure, {reason :: 'processing-failed' | 'setup-failed' | 'undefined' | 'unsupported-method'}).
-type compress_failure() :: #compress_failure{}.

-record(origin_id, {id = <<>> :: binary()}).
-type origin_id() :: #origin_id{}.

-record(delivery_received, {origin_id :: 'undefined' | #origin_id{},
                            stanza_id :: 'undefined' | #stanza_id{},
                            time :: 'undefined' | #delivery_time{},
                            forwarded :: 'undefined' | #forwarded{}}).
-type delivery_received() :: #delivery_received{}.

-record(mix_participant, {jid :: jid:jid(),
                          nick = <<>> :: binary()}).
-type mix_participant() :: #mix_participant{}.

-record(compressed, {}).
-type compressed() :: #compressed{}.

-record(block_list, {items = [] :: [jid:jid()]}).
-type block_list() :: #block_list{}.

-record(replaced, {stamp :: erlang:timestamp(),
                   body = <<>> :: binary()}).
-type replaced() :: #replaced{}.

-record(upload_slot, {get :: 'undefined' | binary(),
                      put :: 'undefined' | binary(),
                      xmlns = <<>> :: binary()}).
-type upload_slot() :: #upload_slot{}.

-record(xevent, {offline = false :: boolean(),
                 delivered = false :: boolean(),
                 displayed = false :: boolean(),
                 composing = false :: boolean(),
                 id :: 'undefined' | binary()}).
-type xevent() :: #xevent{}.

-record(sasl_abort, {}).
-type sasl_abort() :: #sasl_abort{}.

-record(xabbertoken_feature, {}).
-type xabbertoken_feature() :: #xabbertoken_feature{}.

-record(legacy_auth_feature, {}).
-type legacy_auth_feature() :: #legacy_auth_feature{}.

-record(bind, {jid :: undefined | jid:jid(),
               resource = <<>> :: binary()}).
-type bind() :: #bind{}.

-record(rosterver_feature, {}).
-type rosterver_feature() :: #rosterver_feature{}.

-record(muc_invite, {reason = <<>> :: binary(),
                     from :: undefined | jid:jid(),
                     to :: undefined | jid:jid(),
                     continue :: 'undefined' | binary()}).
-type muc_invite() :: #muc_invite{}.

-record(vcard_xupdate, {hash :: 'undefined' | binary()}).
-type vcard_xupdate() :: #vcard_xupdate{}.

-record(groups_name, {cdata = <<>> :: binary()}).
-type groups_name() :: #groups_name{}.

-record(bytestreams, {hosts = [] :: [#streamhost{}],
                      used :: undefined | jid:jid(),
                      activate :: undefined | jid:jid(),
                      dstaddr = <<>> :: binary(),
                      mode = tcp :: 'tcp' | 'udp',
                      sid = <<>> :: binary()}).
-type bytestreams() :: #bytestreams{}.

-record(upload_request, {filename :: binary(),
                         size :: non_neg_integer(),
                         'content-type' = <<>> :: binary(),
                         xmlns = <<>> :: binary()}).
-type upload_request() :: #upload_request{}.

-record(xdata_option, {label = <<>> :: binary(),
                       value :: binary()}).
-type xdata_option() :: #xdata_option{}.

-record(xdata_field, {label = <<>> :: binary(),
                      type :: 'boolean' | 'fixed' | 'hidden' | 'jid-multi' | 'jid-single' | 'list-multi' | 'list-single' | 'text-multi' | 'text-private' | 'text-single' | 'undefined',
                      var = <<>> :: binary(),
                      required = false :: boolean(),
                      desc = <<>> :: binary(),
                      values = [] :: [binary()],
                      options = [] :: [#xdata_option{}],
                      sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xdata_field() :: #xdata_field{}.

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

-record(groups_decline, {}).
-type groups_decline() :: #groups_decline{}.

-record(delegated, {ns = <<>> :: binary(),
                    attrs = [] :: [binary()]}).
-type delegated() :: #delegated{}.

-record(carbons_disable, {}).
-type carbons_disable() :: #carbons_disable{}.

-record(version, {name :: 'undefined' | binary(),
                  ver :: 'undefined' | binary(),
                  os :: 'undefined' | binary()}).
-type version() :: #version{}.

-record(adhoc_actions, {execute :: 'complete' | 'next' | 'prev' | 'undefined',
                        prev = false :: boolean(),
                        next = false :: boolean(),
                        complete = false :: boolean()}).
-type adhoc_actions() :: #adhoc_actions{}.

-record(vcard_org, {name :: 'undefined' | binary(),
                    units = [] :: [binary()]}).
-type vcard_org() :: #vcard_org{}.

-record(files_file_sharing, {file :: #files_file{},
                             sources :: #files_sources{}}).
-type files_file_sharing() :: #files_file_sharing{}.

-record(groups_index, {cdata = <<>> :: binary()}).
-type groups_index() :: #groups_index{}.

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

-record(rsm_set, {'after' :: 'undefined' | binary(),
                  before :: 'undefined' | binary(),
                  count :: 'undefined' | non_neg_integer(),
                  first :: 'undefined' | #rsm_first{},
                  index :: 'undefined' | non_neg_integer(),
                  last :: 'undefined' | binary(),
                  max :: 'undefined' | non_neg_integer()}).
-type rsm_set() :: #rsm_set{}.

-record(groups_query, {xmlns = <<>> :: binary(),
                       id = <<>> :: binary(),
                       version :: 'undefined' | non_neg_integer(),
                       rsm :: 'undefined' | #rsm_set{},
                       sub_els = [] :: [xmpp_element() | fxml:xmlel()],
                       cdata = <<>> :: binary()}).
-type groups_query() :: #groups_query{}.

-record(groups_search, {name :: 'undefined' | #groups_name{},
                        description :: 'undefined' | #groups_description{},
                        model :: 'undefined' | #groups_membership{},
                        anonymous :: 'undefined' | #groups_index{},
                        rsm :: 'undefined' | #rsm_set{}}).
-type groups_search() :: #groups_search{}.

-record(mam_fin, {xmlns = <<>> :: binary(),
                  id = <<>> :: binary(),
                  rsm :: 'undefined' | #rsm_set{},
                  stable :: 'false' | 'true' | 'undefined',
                  complete :: 'false' | 'true' | 'undefined'}).
-type mam_fin() :: #mam_fin{}.

-record(disco_items, {node = <<>> :: binary(),
                      items = [] :: [#disco_item{}],
                      rsm :: 'undefined' | #rsm_set{}}).
-type disco_items() :: #disco_items{}.

-record(vcard_name, {family :: 'undefined' | binary(),
                     given :: 'undefined' | binary(),
                     middle :: 'undefined' | binary(),
                     prefix :: 'undefined' | binary(),
                     suffix :: 'undefined' | binary()}).
-type vcard_name() :: #vcard_name{}.

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

-record(media_uri, {type = <<>> :: binary(),
                    uri = <<>> :: binary()}).
-type media_uri() :: #media_uri{}.

-record(media, {height :: 'undefined' | non_neg_integer(),
                width :: 'undefined' | non_neg_integer(),
                uri = [] :: [#media_uri{}]}).
-type media() :: #media{}.

-record(vcard_key, {type :: 'undefined' | binary(),
                    cred :: 'undefined' | binary()}).
-type vcard_key() :: #vcard_key{}.

-record(identity, {category = <<>> :: binary(),
                   type = <<>> :: binary(),
                   lang = <<>> :: binary(),
                   name = <<>> :: binary()}).
-type identity() :: #identity{}.

-record(muc_destroy, {xmlns = <<>> :: binary(),
                      jid :: undefined | jid:jid(),
                      reason = <<>> :: binary(),
                      password :: 'undefined' | binary()}).
-type muc_destroy() :: #muc_destroy{}.

-record(muc_user, {decline :: 'undefined' | #muc_decline{},
                   destroy :: 'undefined' | #muc_destroy{},
                   invites = [] :: [#muc_invite{}],
                   items = [] :: [#muc_item{}],
                   status_codes = [] :: [pos_integer()],
                   password :: 'undefined' | binary()}).
-type muc_user() :: #muc_user{}.

-record(bookmark_conference, {name = <<>> :: binary(),
                              jid :: jid:jid(),
                              autojoin = false :: boolean(),
                              nick :: 'undefined' | binary(),
                              password :: 'undefined' | binary()}).
-type bookmark_conference() :: #bookmark_conference{}.

-record(xmpp_session, {optional = false :: boolean()}).
-type xmpp_session() :: #xmpp_session{}.

-record(bookmark_url, {name = <<>> :: binary(),
                       url = <<>> :: binary()}).
-type bookmark_url() :: #bookmark_url{}.

-record(bookmark_storage, {conference = [] :: [#bookmark_conference{}],
                           url = [] :: [#bookmark_url{}]}).
-type bookmark_storage() :: #bookmark_storage{}.

-record(oob_x, {url :: binary(),
                desc = <<>> :: binary(),
                sid = <<>> :: binary()}).
-type oob_x() :: #oob_x{}.

-record(vcard_sound, {phonetic :: 'undefined' | binary(),
                      binval :: 'undefined' | binary(),
                      extval :: 'undefined' | binary()}).
-type vcard_sound() :: #vcard_sound{}.

-record(vcard_photo, {type :: 'undefined' | binary(),
                      binval :: 'undefined' | binary(),
                      extval :: 'undefined' | binary()}).
-type vcard_photo() :: #vcard_photo{}.

-record(vcard_label, {home = false :: boolean(),
                      work = false :: boolean(),
                      postal = false :: boolean(),
                      parcel = false :: boolean(),
                      dom = false :: boolean(),
                      intl = false :: boolean(),
                      pref = false :: boolean(),
                      line = [] :: [binary()]}).
-type vcard_label() :: #vcard_label{}.

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

-record(xdata, {type :: 'cancel' | 'form' | 'result' | 'submit',
                instructions = [] :: [binary()],
                title :: 'undefined' | binary(),
                reported :: 'undefined' | [#xdata_field{}],
                items = [] :: [[#xdata_field{}]],
                fields = [] :: [#xdata_field{}]}).
-type xdata() :: #xdata{}.

-record(sync_query, {stamp = <<>> :: binary(),
                     rsm :: 'undefined' | #rsm_set{},
                     xdata :: 'undefined' | #xdata{},
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type sync_query() :: #sync_query{}.

-record(xabber_push_enable, {jid :: jid:jid(),
                             node = <<>> :: binary(),
                             xdata :: 'undefined' | #xdata{},
                             push_security :: 'undefined' | #xabber_push_security{}}).
-type xabber_push_enable() :: #xabber_push_enable{}.

-record(push_enable, {jid :: jid:jid(),
                      node = <<>> :: binary(),
                      xdata :: 'undefined' | #xdata{}}).
-type push_enable() :: #push_enable{}.

-record(xcaptcha, {xdata :: #xdata{}}).
-type xcaptcha() :: #xcaptcha{}.

-record(adhoc_command, {node = <<>> :: binary(),
                        action = execute :: 'cancel' | 'complete' | 'execute' | 'next' | 'prev',
                        sid = <<>> :: binary(),
                        status :: 'canceled' | 'completed' | 'executing' | 'undefined',
                        lang = <<>> :: binary(),
                        actions :: 'undefined' | #adhoc_actions{},
                        notes = [] :: [#adhoc_note{}],
                        xdata :: 'undefined' | #xdata{}}).
-type adhoc_command() :: #adhoc_command{}.

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

-record(pubsub_owner, {affiliations :: 'undefined' | {binary(),[#ps_affiliation{}]},
                       configure :: 'undefined' | {binary(),'undefined' | #xdata{}},
                       default :: 'undefined' | {binary(),'undefined' | #xdata{}},
                       delete :: 'undefined' | {binary(),binary()},
                       purge :: 'undefined' | binary(),
                       subscriptions :: 'undefined' | {binary(),[#ps_subscription{}]}}).
-type pubsub_owner() :: #pubsub_owner{}.

-record(ps_options, {node = <<>> :: binary(),
                     jid :: jid:jid(),
                     subid = <<>> :: binary(),
                     xdata :: 'undefined' | #xdata{}}).
-type ps_options() :: #ps_options{}.

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

-record(disco_info, {node = <<>> :: binary(),
                     identities = [] :: [#identity{}],
                     features = [] :: [binary()],
                     xdata = [] :: [#xdata{}]}).
-type disco_info() :: #disco_info{}.

-record(sasl_mechanisms, {list = [] :: [binary()]}).
-type sasl_mechanisms() :: #sasl_mechanisms{}.

-record(offline_item, {node = <<>> :: binary(),
                       action :: 'remove' | 'undefined' | 'view'}).
-type offline_item() :: #offline_item{}.

-record(offline, {items = [] :: [#offline_item{}],
                  purge = false :: boolean(),
                  fetch = false :: boolean()}).
-type offline() :: #offline{}.

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

-record(delegation, {delegated = [] :: [#delegated{}],
                     forwarded :: 'undefined' | #forwarded{}}).
-type delegation() :: #delegation{}.

-record(push_notification, {xdata :: 'undefined' | #xdata{}}).
-type push_notification() :: #push_notification{}.

-record(xabber_push_notification, {xdata :: 'undefined' | #xdata{},
                                   sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabber_push_notification() :: #xabber_push_notification{}.

-record(mix_join, {jid :: undefined | jid:jid(),
                   subscribe = [] :: [binary()]}).
-type mix_join() :: #mix_join{}.

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

-record(xabbertoken_xtoken, {token :: 'undefined' | binary(),
                             uid = <<>> :: binary(),
                             expire :: 'undefined' | binary(),
                             client :: 'undefined' | binary(),
                             device :: 'undefined' | binary(),
                             description :: 'undefined' | binary(),
                             ip :: 'undefined' | binary(),
                             last_auth :: 'undefined' | binary()}).
-type xabbertoken_xtoken() :: #xabbertoken_xtoken{}.

-record(xabbertoken_query_items, {xtokens = [] :: [#xabbertoken_xtoken{}]}).
-type xabbertoken_query_items() :: #xabbertoken_query_items{}.

-record(xabbertoken_query, {xtoken :: #xabbertoken_xtoken{}}).
-type xabbertoken_query() :: #xabbertoken_query{}.

-record(xabbertoken_revoke, {xtokens = [] :: [#xabbertoken_xtoken{}]}).
-type xabbertoken_revoke() :: #xabbertoken_revoke{}.

-record(sm_failed, {reason :: atom() | #gone{} | #redirect{},
                    text = [] :: [#text{}],
                    h :: 'undefined' | non_neg_integer(),
                    xmlns = <<>> :: binary()}).
-type sm_failed() :: #sm_failed{}.

-record(stanza_error, {type :: 'auth' | 'cancel' | 'continue' | 'modify' | 'wait',
                       code :: 'undefined' | non_neg_integer(),
                       by = <<>> :: binary(),
                       reason :: atom() | #gone{} | #redirect{},
                       text = [] :: [#text{}],
                       sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type stanza_error() :: #stanza_error{}.

-record(sync_synchronization, {}).
-type sync_synchronization() :: #sync_synchronization{}.

-record(groups_invite, {jid :: undefined | jid:jid(),
                        invite_jid :: 'undefined' | binary(),
                        send :: 'undefined' | binary(),
                        reason :: 'undefined' | binary(),
                        user :: 'undefined' | #groups_invite_user{}}).
-type groups_invite() :: #groups_invite{}.

-record(block_domain, {cdata = <<>> :: binary()}).
-type block_domain() :: #block_domain{}.

-record(groups_unblock, {id = [] :: [#block_id{}],
                         jid = [] :: [#block_jid{}],
                         domain = [] :: [#block_domain{}]}).
-type groups_unblock() :: #groups_unblock{}.

-record(groups_block, {id = [] :: [#block_id{}],
                       jid = [] :: [#block_jid{}],
                       domain = [] :: [#block_domain{}]}).
-type groups_block() :: #groups_block{}.

-record(stream_error, {reason :: atom() | #'see-other-host'{},
                       text = [] :: [#text{}]}).
-type stream_error() :: #stream_error{}.

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

-record(time, {tzo :: 'undefined' | {integer(),integer()},
               utc :: undefined | erlang:timestamp()}).
-type time() :: #time{}.

-record(vcard_logo, {type :: 'undefined' | binary(),
                     binval :: 'undefined' | binary(),
                     extval :: 'undefined' | binary()}).
-type vcard_logo() :: #vcard_logo{}.

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
                     members :: 'undefined' | binary()}).
-type vcard_temp() :: #vcard_temp{}.

-type xmpp_element() :: forwarded() |
                        sic() |
                        message() |
                        roster_item() |
                        carbons_sent() |
                        disco_info() |
                        feature_sm() |
                        vcard_geo() |
                        xabbertoken_query() |
                        mam_result() |
                        delegated() |
                        mark_displayed() |
                        xen_notify() |
                        adhoc_command() |
                        groups_kick() |
                        register() |
                        vcard_org() |
                        sync_delivered() |
                        starttls_proceed() |
                        push_enable() |
                        markup_italic() |
                        groups_name() |
                        ps_subscription() |
                        devices_revoke_all() |
                        stanza_id() |
                        rsm_set() |
                        rsm_first() |
                        sm_resume() |
                        retract_user() |
                        sasl_abort() |
                        mix_participant() |
                        xdata_option() |
                        replace_message() |
                        sm_enable() |
                        upload_request_0() |
                        version() |
                        groups_mentions() |
                        sm_resumed() |
                        voice_message() |
                        push_disable() |
                        nick() |
                        bmarkup_bold() |
                        bind() |
                        xabber_push_disable() |
                        devices_query_items() |
                        starttls_failure() |
                        muc_item() |
                        retract_message() |
                        bytestreams() |
                        sasl_success() |
                        address() |
                        avatar_data() |
                        markup_link() |
                        groups_user() |
                        groups_search() |
                        ps_unsubscribe() |
                        sync_metadata() |
                        groups_update() |
                        csi() |
                        stream_features() |
                        handshake() |
                        sm_r() |
                        adhoc_note() |
                        upload_slot() |
                        groups_membership() |
                        groups_index() |
                        presence() |
                        db_verify() |
                        offline_item() |
                        stat() |
                        vcard_tel() |
                        feature_csi() |
                        private() |
                        carbons_received() |
                        thumbnail() |
                        media() |
                        devices_feature() |
                        block_domain() |
                        delivery_time() |
                        caps() |
                        sasl_mechanisms() |
                        compress_failure() |
                        ping() |
                        delivery_x() |
                        shim() |
                        sasl_response() |
                        groups_query_rights() |
                        ps_retract() |
                        legacy_auth() |
                        groups_contacts() |
                        ps_affiliation() |
                        mam_fin() |
                        xdata_field() |
                        groups_query() |
                        muc_unique() |
                        muc_history() |
                        ps_error() |
                        markup_mention() |
                        muc_decline() |
                        xmpp_session() |
                        encrypted_message_omemo() |
                        sync_unread() |
                        media_uri() |
                        ps_publish() |
                        delivery_retry() |
                        ps_options() |
                        privacy_list() |
                        rosterver_feature() |
                        delivery_received() |
                        delegation_query() |
                        stream_error() |
                        xabber_push_security() |
                        xevent() |
                        xen_jid() |
                        files_sources() |
                        sync_conversation() |
                        groups_description() |
                        replaced() |
                        ps_subscribe() |
                        pubsub() |
                        vcard_temp() |
                        retract_query() |
                        origin_id() |
                        devices_device() |
                        groups_echo() |
                        groups_query_invites() |
                        mix_leave() |
                        adhoc_actions() |
                        privacy_query() |
                        mix_join() |
                        xabbertoken_feature() |
                        stream_start() |
                        muc_invite() |
                        delay() |
                        groups_pinned_message() |
                        receipt_request() |
                        disco_item() |
                        mark_markable() |
                        files_file() |
                        markup_strike() |
                        ps_items() |
                        sasl_failure() |
                        groups_localpart() |
                        oob_x() |
                        sync_call() |
                        carbons_private() |
                        starttls() |
                        groups_user_id() |
                        muc() |
                        vcard_photo() |
                        compressed() |
                        sm_enabled() |
                        groups_revoke() |
                        xdata() |
                        hint() |
                        sm_failed() |
                        mam_query() |
                        sync_synchronization() |
                        last() |
                        iq() |
                        groups_ptp() |
                        sync_displayed() |
                        ps_event() |
                        sm_a() |
                        sticker() |
                        stats() |
                        xabbertoken_issue() |
                        muc_subscribe() |
                        jingle_accept() |
                        vcard_key() |
                        block_list() |
                        sync_retract() |
                        muc_subscriptions() |
                        upload_request() |
                        vcard_name() |
                        sync_query() |
                        receipt_response() |
                        roster_query() |
                        bookmark_storage() |
                        text() |
                        pubsub_owner() |
                        xabber_encryption_key() |
                        privilege() |
                        xen_notification() |
                        compress() |
                        groups_unblock() |
                        privacy_item() |
                        groups_domains() |
                        'see-other-host'() |
                        vcard_logo() |
                        stanza_error() |
                        offline() |
                        streamhost() |
                        encrypted() |
                        vcard_xupdate() |
                        stat_error() |
                        avatar_pointer() |
                        addresses() |
                        avatar_info() |
                        privilege_perm() |
                        sasl_challenge() |
                        xabbertoken_revoke() |
                        expire() |
                        sync_last() |
                        db_result() |
                        mam_archived() |
                        unblock() |
                        xen_prefs() |
                        gone() |
                        xcaptcha() |
                        geoloc() |
                        groups_block() |
                        bob_data() |
                        idle() |
                        bookmark_conference() |
                        groups_decline() |
                        carbons_enable() |
                        carbons_disable() |
                        xmppreference() |
                        vcard_label() |
                        legacy_auth_feature() |
                        identity() |
                        xabbertoken_xtoken() |
                        devices_revoke() |
                        devices_query() |
                        mark_received() |
                        block() |
                        time() |
                        muc_destroy() |
                        bookmark_url() |
                        disco_items() |
                        markup_quote() |
                        chatstate() |
                        x_conference() |
                        upload_slot_0() |
                        groups_x() |
                        files_file_sharing() |
                        muc_user() |
                        retract_all() |
                        mam_prefs() |
                        groups_privacy() |
                        groups_collect() |
                        muc_unsubscribe() |
                        push_notification() |
                        delegation() |
                        ps_item() |
                        markup_underline() |
                        retract_invalidate() |
                        groups_invite() |
                        redirect() |
                        xabbertoken_revoke_all() |
                        jingle_reject() |
                        vcard_email() |
                        muc_owner() |
                        groups_status() |
                        search() |
                        avatar_meta() |
                        sasl_auth() |
                        block_jid() |
                        push_call() |
                        groups_invite_user() |
                        replace() |
                        search_item() |
                        vcard_sound() |
                        muc_admin() |
                        block_id() |
                        jingle_propose() |
                        db_feature() |
                        xabber_push_enable() |
                        device_register() |
                        muc_actor() |
                        xabber_push_notification() |
                        xabbertoken_query_items() |
                        vcard_adr() |
                        compression() |
                        feature_register().
