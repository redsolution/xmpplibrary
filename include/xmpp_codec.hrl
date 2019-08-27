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

-record(xabbergroup_invite_user, {jid = <<>> :: binary(),
                                  id = <<>> :: binary()}).
-type xabbergroup_invite_user() :: #xabbergroup_invite_user{}.

-record(feature_register, {}).
-type feature_register() :: #feature_register{}.

-record(adhoc_note, {type = info :: 'error' | 'info' | 'warn',
                     data = <<>> :: binary()}).
-type adhoc_note() :: #adhoc_note{}.

-record(address, {type :: 'bcc' | 'cc' | 'noreply' | 'ofrom' | 'replyroom' | 'replyto' | 'to',
                  jid :: undefined | jid:jid(),
                  desc = <<>> :: binary(),
                  node = <<>> :: binary(),
                  delivered :: 'false' | 'true' | 'undefined'}).
-type address() :: #address{}.

-record(sasl_success, {text = <<>> :: binary()}).
-type sasl_success() :: #sasl_success{}.

-record(unique_request, {retry = <<>> :: binary(),
                         to :: undefined | jid:jid()}).
-type unique_request() :: #unique_request{}.

-record(mam_result, {xmlns = <<>> :: binary(),
                     queryid = <<>> :: binary(),
                     id = <<>> :: binary(),
                     sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type mam_result() :: #mam_result{}.

-record(rsm_first, {index :: 'undefined' | non_neg_integer(),
                    data = <<>> :: binary()}).
-type rsm_first() :: #rsm_first{}.

-record(jingle_reject, {id = <<>> :: binary(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type jingle_reject() :: #jingle_reject{}.

-record(replaced, {stamp :: erlang:timestamp(),
                   body = <<>> :: binary()}).
-type replaced() :: #replaced{}.

-record(recipient, {id = <<>> :: binary()}).
-type recipient() :: #recipient{}.

-record(xabbergroupchat_restriction, {name = <<>> :: binary(),
                                      expires = <<>> :: binary()}).
-type xabbergroupchat_restriction() :: #xabbergroupchat_restriction{}.

-record(streamhost, {jid :: jid:jid(),
                     host = <<>> :: binary(),
                     port = 1080 :: non_neg_integer()}).
-type streamhost() :: #streamhost{}.

-record(xabber_retract_invalidate, {version :: 'undefined' | non_neg_integer()}).
-type xabber_retract_invalidate() :: #xabber_retract_invalidate{}.

-record(sm_resume, {h :: non_neg_integer(),
                    previd = <<>> :: binary(),
                    xmlns = <<>> :: binary()}).
-type sm_resume() :: #sm_resume{}.

-record(carbons_enable, {}).
-type carbons_enable() :: #carbons_enable{}.

-record(carbons_private, {}).
-type carbons_private() :: #carbons_private{}.

-record(receipt_response, {id = <<>> :: binary()}).
-type receipt_response() :: #receipt_response{}.

-record(expire, {seconds :: non_neg_integer(),
                 stored :: 'undefined' | non_neg_integer()}).
-type expire() :: #expire{}.

-record(muc_unsubscribe, {nick = <<>> :: binary(),
                          jid :: undefined | jid:jid()}).
-type muc_unsubscribe() :: #muc_unsubscribe{}.

-record(ps_unsubscribe, {node = <<>> :: binary(),
                         jid :: jid:jid(),
                         subid = <<>> :: binary()}).
-type ps_unsubscribe() :: #ps_unsubscribe{}.

-record(mix_leave, {}).
-type mix_leave() :: #mix_leave{}.

-record(ping, {}).
-type ping() :: #ping{}.

-record(delay, {stamp :: erlang:timestamp(),
                from :: undefined | jid:jid(),
                desc = <<>> :: binary()}).
-type delay() :: #delay{}.

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

-record(xabbergroupchat_query_item, {id = <<>> :: binary()}).
-type xabbergroupchat_query_item() :: #xabbergroupchat_query_item{}.

-record(xabbergroupchat_query_rights, {item :: 'undefined' | #xabbergroupchat_query_item{},
                                       restriction = [] :: [#xabbergroupchat_restriction{}]}).
-type xabbergroupchat_query_rights() :: #xabbergroupchat_query_rights{}.

-record(muc_decline, {reason = <<>> :: binary(),
                      from :: undefined | jid:jid(),
                      to :: undefined | jid:jid()}).
-type muc_decline() :: #muc_decline{}.

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

-record(xabber_conversation_unread, {count :: 'undefined' | non_neg_integer(),
                                     'after' = <<>> :: binary()}).
-type xabber_conversation_unread() :: #xabber_conversation_unread{}.

-record(stanza_id, {by :: jid:jid(),
                    id = <<>> :: binary()}).
-type stanza_id() :: #stanza_id{}.

-record(block_id, {cdata = <<>> :: binary()}).
-type block_id() :: #block_id{}.

-record(starttls_proceed, {}).
-type starttls_proceed() :: #starttls_proceed{}.

-record(jingle_accept, {id = <<>> :: binary()}).
-type jingle_accept() :: #jingle_accept{}.

-record(message_received, {id = <<>> :: binary(),
                           sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type message_received() :: #message_received{}.

-record(xabbergroupchat_replaced, {stamp = <<>> :: binary()}).
-type xabbergroupchat_replaced() :: #xabbergroupchat_replaced{}.

-record(block_jid, {cdata = <<>> :: binary()}).
-type block_jid() :: #block_jid{}.

-record(xabbergroupchat_permission, {name = <<>> :: binary(),
                                     expires = <<>> :: binary()}).
-type xabbergroupchat_permission() :: #xabbergroupchat_permission{}.

-record(forwarded, {delay :: 'undefined' | #delay{},
                    sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type forwarded() :: #forwarded{}.

-record(privilege, {perms = [] :: [#privilege_perm{}],
                    forwarded :: 'undefined' | #forwarded{}}).
-type privilege() :: #privilege{}.

-record(sm_resumed, {h :: non_neg_integer(),
                     previd = <<>> :: binary(),
                     xmlns = <<>> :: binary()}).
-type sm_resumed() :: #sm_resumed{}.

-record(xabbertoken_revoke, {token_uid = [] :: [binary()]}).
-type xabbertoken_revoke() :: #xabbertoken_revoke{}.

-record(sm_enable, {max :: 'undefined' | non_neg_integer(),
                    resume = false :: boolean(),
                    xmlns = <<>> :: binary()}).
-type sm_enable() :: #sm_enable{}.

-record(xmppreference, {type = <<>> :: binary(),
                        uri = <<>> :: binary(),
                        'begin' :: 'undefined' | non_neg_integer(),
                        'end' :: 'undefined' | non_neg_integer(),
                        sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xmppreference() :: #xmppreference{}.

-record(starttls_failure, {}).
-type starttls_failure() :: #starttls_failure{}.

-record(sasl_challenge, {text = <<>> :: binary()}).
-type sasl_challenge() :: #sasl_challenge{}.

-record(xabbergroup_domains, {domain = [] :: [binary()]}).
-type xabbergroup_domains() :: #xabbergroup_domains{}.

-record(handshake, {data = <<>> :: binary()}).
-type handshake() :: #handshake{}.

-record(xabbergroupchat_retract_message, {id = <<>> :: binary(),
                                          version = <<>> :: binary()}).
-type xabbergroupchat_retract_message() :: #xabbergroupchat_retract_message{}.

-record(db_feature, {errors = false :: boolean()}).
-type db_feature() :: #db_feature{}.

-record(gone, {uri = <<>> :: binary()}).
-type gone() :: #gone{}.

-record(x_conference, {jid :: jid:jid(),
                       password = <<>> :: binary(),
                       reason = <<>> :: binary(),
                       continue :: 'false' | 'true' | 'undefined',
                       thread = <<>> :: binary()}).
-type x_conference() :: #x_conference{}.

-record(private, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type private() :: #private{}.

-record(xabbergroupchat_retract_query, {version = <<>> :: binary(),
                                        less_than = <<>> :: binary()}).
-type xabbergroupchat_retract_query() :: #xabbergroupchat_retract_query{}.

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

-record(roster_item, {jid :: jid:jid(),
                      name = <<>> :: binary(),
                      groups = [] :: [binary()],
                      subscription = none :: 'both' | 'from' | 'none' | 'remove' | 'to',
                      ask :: 'subscribe' | 'undefined'}).
-type roster_item() :: #roster_item{}.

-record(roster_query, {items = [] :: [#roster_item{}],
                       ver :: 'undefined' | binary()}).
-type roster_query() :: #roster_query{}.

-record(xabber_conversation_unread_mention, {id = <<>> :: binary()}).
-type xabber_conversation_unread_mention() :: #xabber_conversation_unread_mention{}.

-record(avatar_pointer, {bytes :: 'undefined' | non_neg_integer(),
                         id = <<>> :: binary(),
                         type = <<>> :: binary(),
                         height :: 'undefined' | non_neg_integer(),
                         width :: 'undefined' | non_neg_integer(),
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type avatar_pointer() :: #avatar_pointer{}.

-record(sm_r, {xmlns = <<>> :: binary()}).
-type sm_r() :: #sm_r{}.

-record(xabber_retract_user, {xmlns = <<>> :: binary(),
                              id = <<>> :: binary(),
                              by :: undefined | jid:jid(),
                              symmetric :: 'false' | 'true' | 'undefined',
                              version :: 'undefined' | non_neg_integer(),
                              conversation :: undefined | jid:jid()}).
-type xabber_retract_user() :: #xabber_retract_user{}.

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

-record(message_displayed, {id = <<>> :: binary(),
                            sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type message_displayed() :: #message_displayed{}.

-record(previous_id, {id = <<>> :: binary()}).
-type previous_id() :: #previous_id{}.

-record(xabber_conversation_last, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabber_conversation_last() :: #xabber_conversation_last{}.

-record(xabber_conversation_retract, {version :: 'undefined' | non_neg_integer()}).
-type xabber_conversation_retract() :: #xabber_conversation_retract{}.

-record('see-other-host', {host :: binary() | inet:ip_address() | {binary() | inet:ip_address(),non_neg_integer()}}).
-type 'see-other-host'() :: #'see-other-host'{}.

-record(compress, {methods = [] :: [binary()]}).
-type compress() :: #compress{}.

-record(starttls, {required = false :: boolean()}).
-type starttls() :: #starttls{}.

-record(last, {seconds :: 'undefined' | non_neg_integer(),
               status = <<>> :: binary()}).
-type last() :: #last{}.

-record(redirect, {uri = <<>> :: binary()}).
-type redirect() :: #redirect{}.

-record(sm_enabled, {id = <<>> :: binary(),
                     location = <<>> :: binary(),
                     max :: 'undefined' | non_neg_integer(),
                     resume = false :: boolean(),
                     xmlns = <<>> :: binary()}).
-type sm_enabled() :: #sm_enabled{}.

-record(idle, {since = <<>> :: binary()}).
-type idle() :: #idle{}.

-record(muc_unique, {name = <<>> :: binary()}).
-type muc_unique() :: #muc_unique{}.

-record(sasl_response, {text = <<>> :: binary()}).
-type sasl_response() :: #sasl_response{}.

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

-record(xabber_retract_activate, {version :: 'undefined' | non_neg_integer(),
                                  'less-than' :: 'undefined' | non_neg_integer()}).
-type xabber_retract_activate() :: #xabber_retract_activate{}.

-record(disclosure, {recipient :: 'undefined' | #recipient{},
                     reason :: 'undefined' | binary(),
                     type = <<>> :: binary()}).
-type disclosure() :: #disclosure{}.

-record(xabbergroupchat_retract_invalidate, {version = <<>> :: binary()}).
-type xabbergroupchat_retract_invalidate() :: #xabbergroupchat_retract_invalidate{}.

-record(xabbertoken_issue, {client :: 'undefined' | binary(),
                            device :: 'undefined' | binary(),
                            expire :: 'undefined' | binary()}).
-type xabbertoken_issue() :: #xabbertoken_issue{}.

-record(sasl_auth, {mechanism = <<>> :: binary(),
                    text = <<>> :: binary()}).
-type sasl_auth() :: #sasl_auth{}.

-record(feature_csi, {xmlns = <<>> :: binary()}).
-type feature_csi() :: #feature_csi{}.

-record(xabbergroupchat_replace_message, {from = <<>> :: binary(),
                                          to = <<>> :: binary(),
                                          body :: 'undefined' | binary(),
                                          replaced :: 'undefined' | #xabbergroupchat_replaced{},
                                          sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabbergroupchat_replace_message() :: #xabbergroupchat_replace_message{}.

-record(xabber_conversation_call, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabber_conversation_call() :: #xabber_conversation_call{}.

-record(xabbergroupchat_retract_all, {version = <<>> :: binary()}).
-type xabbergroupchat_retract_all() :: #xabbergroupchat_retract_all{}.

-record(xabber_retract_all, {xmlns = <<>> :: binary(),
                             symmetric :: 'false' | 'true' | 'undefined',
                             version :: 'undefined' | non_neg_integer(),
                             conversation :: undefined | jid:jid()}).
-type xabber_retract_all() :: #xabber_retract_all{}.

-record(disco_item, {jid :: jid:jid(),
                     name = <<>> :: binary(),
                     node = <<>> :: binary()}).
-type disco_item() :: #disco_item{}.

-record(unblock, {items = [] :: [jid:jid()]}).
-type unblock() :: #unblock{}.

-record(block, {items = [] :: [jid:jid()]}).
-type block() :: #block{}.

-record(compression, {methods = [] :: [binary()]}).
-type compression() :: #compression{}.

-record(muc_subscriptions, {list = [] :: [jid:jid()]}).
-type muc_subscriptions() :: #muc_subscriptions{}.

-record(ps_subscription, {xmlns = <<>> :: binary(),
                          jid :: jid:jid(),
                          type :: 'none' | 'pending' | 'subscribed' | 'unconfigured' | 'undefined',
                          node = <<>> :: binary(),
                          subid = <<>> :: binary(),
                          expiry :: undefined | erlang:timestamp()}).
-type ps_subscription() :: #ps_subscription{}.

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

-record(xabbergroupchat_item, {id = <<>> :: binary(),
                               jid :: undefined | jid:jid(),
                               role :: 'undefined' | binary(),
                               badge :: 'undefined' | binary(),
                               nickname :: 'undefined' | binary(),
                               avatar :: 'undefined' | #avatar_meta{},
                               permission = [] :: [#xabbergroupchat_permission{}],
                               restriction = [] :: [#xabbergroupchat_restriction{}]}).
-type xabbergroupchat_item() :: #xabbergroupchat_item{}.

-record(xabbergroupchat, {item :: 'undefined' | #xabbergroupchat_item{}}).
-type xabbergroupchat() :: #xabbergroupchat{}.

-record(xabbergroupchat_query_members, {id = <<>> :: binary(),
                                        version = <<>> :: binary(),
                                        item :: 'undefined' | #xabbergroupchat_item{}}).
-type xabbergroupchat_query_members() :: #xabbergroupchat_query_members{}.

-record(bob_data, {cid = <<>> :: binary(),
                   'max-age' :: 'undefined' | non_neg_integer(),
                   type = <<>> :: binary(),
                   data = <<>> :: binary()}).
-type bob_data() :: #bob_data{}.

-record(xabbergroupchat_retract_user, {id = <<>> :: binary(),
                                       version = <<>> :: binary()}).
-type xabbergroupchat_retract_user() :: #xabbergroupchat_retract_user{}.

-record(xabbergroup_peer, {jid :: undefined | jid:jid(),
                           id = <<>> :: binary(),
                           cdata = <<>> :: binary()}).
-type xabbergroup_peer() :: #xabbergroup_peer{}.

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

-record(shim, {headers = [] :: [{binary(),binary()}]}).
-type shim() :: #shim{}.

-record(mam_prefs, {xmlns = <<>> :: binary(),
                    default :: 'always' | 'never' | 'roster' | 'undefined',
                    always :: undefined | [jid:jid()],
                    never :: undefined | [jid:jid()]}).
-type mam_prefs() :: #mam_prefs{}.

-record(caps, {node = <<>> :: binary(),
               version = <<>> :: binary(),
               hash = <<>> :: binary(),
               exts = [] :: [binary()]}).
-type caps() :: #caps{}.

-record(muc, {history :: 'undefined' | #muc_history{},
              password :: 'undefined' | binary()}).
-type muc() :: #muc{}.

-record(stream_features, {sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type stream_features() :: #stream_features{}.

-record(stats, {list = [] :: [#stat{}],
                node = <<>> :: binary()}).
-type stats() :: #stats{}.

-record(xabbergroup_contacts, {contact = [] :: [binary()]}).
-type xabbergroup_contacts() :: #xabbergroup_contacts{}.

-record(sic, {ip :: undefined | inet:ip_address(),
              port :: 'undefined' | non_neg_integer(),
              xmlns = <<>> :: binary()}).
-type sic() :: #sic{}.

-record(ps_items, {xmlns = <<>> :: binary(),
                   node = <<>> :: binary(),
                   items = [] :: [#ps_item{}],
                   max_items :: 'undefined' | non_neg_integer(),
                   subid = <<>> :: binary(),
                   retract :: 'undefined' | binary()}).
-type ps_items() :: #ps_items{}.

-record(xabber_conversation_displayed, {id = <<>> :: binary()}).
-type xabber_conversation_displayed() :: #xabber_conversation_displayed{}.

-record(carbons_sent, {forwarded :: #forwarded{}}).
-type carbons_sent() :: #carbons_sent{}.

-record(mam_archived, {by :: jid:jid(),
                       id = <<>> :: binary()}).
-type mam_archived() :: #mam_archived{}.

-record(compress_failure, {reason :: 'processing-failed' | 'setup-failed' | 'undefined' | 'unsupported-method'}).
-type compress_failure() :: #compress_failure{}.

-record(sasl_abort, {}).
-type sasl_abort() :: #sasl_abort{}.

-record(xabbergroupchat_user_card, {id = <<>> :: binary(),
                                    jid :: undefined | jid:jid(),
                                    role :: 'undefined' | binary(),
                                    badge :: 'undefined' | binary(),
                                    nickname :: 'undefined' | binary(),
                                    avatar :: 'undefined' | #avatar_meta{}}).
-type xabbergroupchat_user_card() :: #xabbergroupchat_user_card{}.

-record(disclosed, {user_card :: 'undefined' | #xabbergroupchat_user_card{},
                    reason :: 'undefined' | binary(),
                    type = <<>> :: binary()}).
-type disclosed() :: #disclosed{}.

-record(xabbergroupchat_kicked, {users = [] :: [#xabbergroupchat_user_card{}]}).
-type xabbergroupchat_kicked() :: #xabbergroupchat_kicked{}.

-record(xabbergroupchat_user_updated, {user :: 'undefined' | #xabbergroupchat_user_card{}}).
-type xabbergroupchat_user_updated() :: #xabbergroupchat_user_updated{}.

-record(x_present, {}).
-type x_present() :: #x_present{}.

-record(origin_id, {id = <<>> :: binary()}).
-type origin_id() :: #origin_id{}.

-record(receipt_request, {}).
-type receipt_request() :: #receipt_request{}.

-record(xevent, {offline = false :: boolean(),
                 delivered = false :: boolean(),
                 displayed = false :: boolean(),
                 composing = false :: boolean(),
                 id :: 'undefined' | binary()}).
-type xevent() :: #xevent{}.

-record(vcard_email, {home = false :: boolean(),
                      work = false :: boolean(),
                      internet = false :: boolean(),
                      pref = false :: boolean(),
                      x400 = false :: boolean(),
                      userid :: 'undefined' | binary()}).
-type vcard_email() :: #vcard_email{}.

-record(xabbergroupchat_revoke, {jid :: 'undefined' | binary()}).
-type xabbergroupchat_revoke() :: #xabbergroupchat_revoke{}.

-record(xabbergroupchat_invite, {jid :: undefined | jid:jid(),
                                 invite_jid :: 'undefined' | binary(),
                                 send :: 'undefined' | binary(),
                                 reason :: 'undefined' | binary(),
                                 user :: 'undefined' | #xabbergroup_invite_user{}}).
-type xabbergroupchat_invite() :: #xabbergroupchat_invite{}.

-record(collect, {cdata = <<>> :: binary()}).
-type collect() :: #collect{}.

-record(x_not_present, {}).
-type x_not_present() :: #x_not_present{}.

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

-record(xabber_conversation_delivered, {id = <<>> :: binary()}).
-type xabber_conversation_delivered() :: #xabber_conversation_delivered{}.

-record(xabber_conversation, {type = <<>> :: binary(),
                              jid :: jid:jid(),
                              stamp = <<>> :: binary(),
                              thread = <<>> :: binary(),
                              retract :: 'undefined' | #xabber_conversation_retract{},
                              unread :: 'undefined' | #xabber_conversation_unread{},
                              unread_mention :: 'undefined' | #xabber_conversation_unread_mention{},
                              displayed :: 'undefined' | #xabber_conversation_displayed{},
                              delivered :: 'undefined' | #xabber_conversation_delivered{},
                              call :: 'undefined' | #xabber_conversation_call{},
                              last :: 'undefined' | #xabber_conversation_last{}}).
-type xabber_conversation() :: #xabber_conversation{}.

-record(xabber_delete, {conversation = [] :: [#xabber_conversation{}]}).
-type xabber_delete() :: #xabber_delete{}.

-record(upload_slot, {get :: 'undefined' | binary(),
                      put :: 'undefined' | binary(),
                      xmlns = <<>> :: binary()}).
-type upload_slot() :: #upload_slot{}.

-record(mix_participant, {jid :: jid:jid(),
                          nick = <<>> :: binary()}).
-type mix_participant() :: #mix_participant{}.

-record(vcard_geo, {lat :: 'undefined' | binary(),
                    lon :: 'undefined' | binary()}).
-type vcard_geo() :: #vcard_geo{}.

-record(compressed, {}).
-type compressed() :: #compressed{}.

-record(sasl_failure, {reason :: 'aborted' | 'account-disabled' | 'bad-protocol' | 'credentials-expired' | 'encryption-required' | 'incorrect-encoding' | 'invalid-authzid' | 'invalid-mechanism' | 'malformed-request' | 'mechanism-too-weak' | 'not-authorized' | 'temporary-auth-failure' | 'undefined',
                       text = [] :: [#text{}]}).
-type sasl_failure() :: #sasl_failure{}.

-record(block_list, {items = [] :: [jid:jid()]}).
-type block_list() :: #block_list{}.

-record(xabbertoken_feature, {}).
-type xabbertoken_feature() :: #xabbertoken_feature{}.

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

-record(version, {name :: 'undefined' | binary(),
                  ver :: 'undefined' | binary(),
                  os :: 'undefined' | binary()}).
-type version() :: #version{}.

-record(push_disable, {jid :: jid:jid(),
                       node = <<>> :: binary()}).
-type push_disable() :: #push_disable{}.

-record(legacy_auth_feature, {}).
-type legacy_auth_feature() :: #legacy_auth_feature{}.

-record(bind, {jid :: undefined | jid:jid(),
               resource = <<>> :: binary()}).
-type bind() :: #bind{}.

-record(rosterver_feature, {}).
-type rosterver_feature() :: #rosterver_feature{}.

-record(message_markable, {}).
-type message_markable() :: #message_markable{}.

-record(xabbergroupchat_replace, {id = <<>> :: binary(),
                                  version = <<>> :: binary(),
                                  message :: 'undefined' | #xabbergroupchat_replace_message{}}).
-type xabbergroupchat_replace() :: #xabbergroupchat_replace{}.

-record(unique_time, {stamp :: erlang:timestamp(),
                      by :: jid:jid()}).
-type unique_time() :: #unique_time{}.

-record(unique_received, {origin_id :: 'undefined' | #origin_id{},
                          stanza_id :: 'undefined' | #stanza_id{},
                          previous_id :: 'undefined' | #previous_id{},
                          time :: 'undefined' | #unique_time{},
                          forwarded :: 'undefined' | #forwarded{}}).
-type unique_received() :: #unique_received{}.

-record(muc_invite, {reason = <<>> :: binary(),
                     from :: undefined | jid:jid(),
                     to :: undefined | jid:jid(),
                     continue :: 'undefined' | binary()}).
-type muc_invite() :: #muc_invite{}.

-record(vcard_xupdate, {hash :: 'undefined' | binary()}).
-type vcard_xupdate() :: #vcard_xupdate{}.

-record(xabber_replace_message, {from :: undefined | jid:jid(),
                                 to :: undefined | jid:jid(),
                                 body :: 'undefined' | binary(),
                                 stanza_id :: 'undefined' | #stanza_id{},
                                 replaced :: 'undefined' | #replaced{},
                                 sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabber_replace_message() :: #xabber_replace_message{}.

-record(xabber_replace, {xmlns = <<>> :: binary(),
                         id :: 'undefined' | non_neg_integer(),
                         by :: undefined | jid:jid(),
                         version :: 'undefined' | non_neg_integer(),
                         conversation :: undefined | jid:jid(),
                         xabber_replace_message :: 'undefined' | #xabber_replace_message{},
                         sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabber_replace() :: #xabber_replace{}.

-record(xabber_retract_message, {xmlns = <<>> :: binary(),
                                 id :: 'undefined' | non_neg_integer(),
                                 by :: undefined | jid:jid(),
                                 symmetric :: 'false' | 'true' | 'undefined',
                                 version :: 'undefined' | non_neg_integer(),
                                 conversation :: undefined | jid:jid()}).
-type xabber_retract_message() :: #xabber_retract_message{}.

-record(delegated, {ns = <<>> :: binary(),
                    attrs = [] :: [binary()]}).
-type delegated() :: #delegated{}.

-record(carbons_disable, {}).
-type carbons_disable() :: #carbons_disable{}.

-record(bytestreams, {hosts = [] :: [#streamhost{}],
                      used :: undefined | jid:jid(),
                      activate :: undefined | jid:jid(),
                      dstaddr = <<>> :: binary(),
                      mode = tcp :: 'tcp' | 'udp',
                      sid = <<>> :: binary()}).
-type bytestreams() :: #bytestreams{}.

-record(adhoc_actions, {execute :: 'complete' | 'next' | 'prev' | 'undefined',
                        prev = false :: boolean(),
                        next = false :: boolean(),
                        complete = false :: boolean()}).
-type adhoc_actions() :: #adhoc_actions{}.

-record(vcard_org, {name :: 'undefined' | binary(),
                    units = [] :: [binary()]}).
-type vcard_org() :: #vcard_org{}.

-record(rsm_set, {'after' :: 'undefined' | binary(),
                  before :: 'undefined' | binary(),
                  count :: 'undefined' | non_neg_integer(),
                  first :: 'undefined' | #rsm_first{},
                  index :: 'undefined' | non_neg_integer(),
                  last :: 'undefined' | binary(),
                  max :: 'undefined' | non_neg_integer()}).
-type rsm_set() :: #rsm_set{}.

-record(xabber_synchronization_query, {stamp = <<>> :: binary(),
                                       rsm :: 'undefined' | #rsm_set{}}).
-type xabber_synchronization_query() :: #xabber_synchronization_query{}.

-record(xabber_synchronization, {stamp = <<>> :: binary(),
                                 conversation = [] :: [#xabber_conversation{}],
                                 rsm :: 'undefined' | #rsm_set{}}).
-type xabber_synchronization() :: #xabber_synchronization{}.

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

-record(body_x, {lang = <<>> :: binary(),
                 data = <<>> :: binary()}).
-type body_x() :: #body_x{}.

-record(media_uri, {type = <<>> :: binary(),
                    uri = <<>> :: binary()}).
-type media_uri() :: #media_uri{}.

-record(media, {height :: 'undefined' | non_neg_integer(),
                width :: 'undefined' | non_neg_integer(),
                uri = [] :: [#media_uri{}]}).
-type media() :: #media{}.

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

-record(vcard_key, {type :: 'undefined' | binary(),
                    cred :: 'undefined' | binary()}).
-type vcard_key() :: #vcard_key{}.

-record(xabbergroupchat_invite_query, {user = [] :: [#xabbergroup_invite_user{}]}).
-type xabbergroupchat_invite_query() :: #xabbergroupchat_invite_query{}.

-record(vcard_name, {family :: 'undefined' | binary(),
                     given :: 'undefined' | binary(),
                     middle :: 'undefined' | binary(),
                     prefix :: 'undefined' | binary(),
                     suffix :: 'undefined' | binary()}).
-type vcard_name() :: #vcard_name{}.

-record(identity, {category = <<>> :: binary(),
                   type = <<>> :: binary(),
                   lang = <<>> :: binary(),
                   name = <<>> :: binary()}).
-type identity() :: #identity{}.

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

-record(search_item, {jid :: jid:jid(),
                      first :: 'undefined' | binary(),
                      last :: 'undefined' | binary(),
                      nick :: 'undefined' | binary(),
                      email :: 'undefined' | binary()}).
-type search_item() :: #search_item{}.

-record(xdata, {type :: 'cancel' | 'form' | 'result' | 'submit',
                instructions = [] :: [binary()],
                title :: 'undefined' | binary(),
                reported :: 'undefined' | [#xdata_field{}],
                items = [] :: [[#xdata_field{}]],
                fields = [] :: [#xdata_field{}]}).
-type xdata() :: #xdata{}.

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

-record(search, {instructions :: 'undefined' | binary(),
                 first :: 'undefined' | binary(),
                 last :: 'undefined' | binary(),
                 nick :: 'undefined' | binary(),
                 email :: 'undefined' | binary(),
                 items = [] :: [#search_item{}],
                 xdata :: 'undefined' | #xdata{}}).
-type search() :: #search{}.

-record(mam_query, {xmlns = <<>> :: binary(),
                    id = <<>> :: binary(),
                    start :: undefined | erlang:timestamp(),
                    'end' :: undefined | erlang:timestamp(),
                    with :: undefined | jid:jid(),
                    withtext :: 'undefined' | binary(),
                    rsm :: 'undefined' | #rsm_set{},
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

-record(xabbertoken_field, {var = <<>> :: binary(),
                            token :: 'undefined' | binary(),
                            client :: 'undefined' | binary(),
                            device :: 'undefined' | binary(),
                            ip :: 'undefined' | binary(),
                            last :: 'undefined' | binary(),
                            expire :: 'undefined' | binary()}).
-type xabbertoken_field() :: #xabbertoken_field{}.

-record(xabbertoken_x_fields, {field = [] :: [#xabbertoken_field{}]}).
-type xabbertoken_x_fields() :: #xabbertoken_x_fields{}.

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

-record(sasl_mechanisms, {list = [] :: [binary()]}).
-type sasl_mechanisms() :: #sasl_mechanisms{}.

-record(xabbertoken_query, {token :: 'undefined' | binary()}).
-type xabbertoken_query() :: #xabbertoken_query{}.

-record(xabbertoken_x_token, {token :: 'undefined' | binary(),
                              token_uid :: 'undefined' | binary(),
                              expire :: 'undefined' | binary()}).
-type xabbertoken_x_token() :: #xabbertoken_x_token{}.

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

-record(xabbergroupchat_search, {name :: 'undefined' | binary(),
                                 description :: 'undefined' | binary(),
                                 model :: 'undefined' | binary(),
                                 anonymous :: 'undefined' | binary(),
                                 rsm :: 'undefined' | #rsm_set{}}).
-type xabbergroupchat_search() :: #xabbergroupchat_search{}.

-record(xabbergroupchat_create, {name :: 'undefined' | binary(),
                                 description :: 'undefined' | binary(),
                                 model :: 'undefined' | binary(),
                                 searchable :: 'undefined' | binary(),
                                 anonymous :: 'undefined' | binary(),
                                 localpart :: 'undefined' | binary(),
                                 pinned :: 'undefined' | binary(),
                                 domains :: 'undefined' | #xabbergroup_domains{},
                                 contacts :: 'undefined' | #xabbergroup_contacts{},
                                 peer :: 'undefined' | #xabbergroup_peer{}}).
-type xabbergroupchat_create() :: #xabbergroupchat_create{}.

-record(xabbergroupchat_x, {xmlns = <<>> :: binary(),
                            version = <<>> :: binary(),
                            no_permission :: 'undefined' | binary(),
                            name :: 'undefined' | binary(),
                            description :: 'undefined' | binary(),
                            model :: 'undefined' | binary(),
                            searchable :: 'undefined' | binary(),
                            anonymous :: 'undefined' | binary(),
                            localpart :: 'undefined' | binary(),
                            pinned :: 'undefined' | binary(),
                            domains :: 'undefined' | #xabbergroup_domains{},
                            contacts :: 'undefined' | #xabbergroup_contacts{},
                            members :: 'undefined' | binary(),
                            present :: 'undefined' | binary(),
                            parent :: undefined | jid:jid(),
                            jid :: undefined | jid:jid(),
                            sub_els = [] :: [xmpp_element() | fxml:xmlel()]}).
-type xabbergroupchat_x() :: #xabbergroupchat_x{}.

-record(xabbergroupchat_update, {name :: 'undefined' | binary(),
                                 description :: 'undefined' | binary(),
                                 model :: 'undefined' | binary(),
                                 searchable :: 'undefined' | binary(),
                                 owner :: 'undefined' | {binary()},
                                 pinned :: 'undefined' | binary(),
                                 domains :: 'undefined' | #xabbergroup_domains{},
                                 contacts :: 'undefined' | #xabbergroup_contacts{}}).
-type xabbergroupchat_update() :: #xabbergroupchat_update{}.

-record(block_domain, {cdata = <<>> :: binary()}).
-type block_domain() :: #block_domain{}.

-record(xabbergroup_unblock, {id = [] :: [#block_id{}],
                              jid = [] :: [#block_jid{}],
                              domain = [] :: [#block_domain{}]}).
-type xabbergroup_unblock() :: #xabbergroup_unblock{}.

-record(xabbergroup_block, {id = [] :: [#block_id{}],
                            jid = [] :: [#block_jid{}],
                            domain = [] :: [#block_domain{}]}).
-type xabbergroup_block() :: #xabbergroup_block{}.

-record(delegation, {delegated = [] :: [#delegated{}],
                     forwarded :: 'undefined' | #forwarded{}}).
-type delegation() :: #delegation{}.

-record(push_notification, {xdata :: 'undefined' | #xdata{}}).
-type push_notification() :: #push_notification{}.

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

-record(stream_error, {reason :: atom() | #'see-other-host'{},
                       text = [] :: [#text{}]}).
-type stream_error() :: #stream_error{}.

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
                     desc :: 'undefined' | binary()}).
-type vcard_temp() :: #vcard_temp{}.

-record(time, {tzo :: 'undefined' | {integer(),integer()},
               utc :: undefined | erlang:timestamp()}).
-type time() :: #time{}.

-type xmpp_element() :: ps_subscription() |
                        xabbergroupchat_restriction() |
                        block_domain() |
                        compression() |
                        xdata_option() |
                        version() |
                        sm_a() |
                        xabbergroupchat_user_card() |
                        x_present() |
                        origin_id() |
                        receipt_request() |
                        xabber_conversation_delivered() |
                        mix_participant() |
                        compressed() |
                        block_list() |
                        delegated() |
                        xabbertoken_field() |
                        disclosed() |
                        replaced() |
                        xabber_conversation_displayed() |
                        carbons_sent() |
                        mam_archived() |
                        sasl_abort() |
                        xabbergroupchat_kicked() |
                        db_result() |
                        carbons_received() |
                        upload_slot() |
                        rsm_set() |
                        text() |
                        vcard_org() |
                        feature_sm() |
                        roster_item() |
                        vcard_temp() |
                        xabbergroup_contacts() |
                        addresses() |
                        disco_items() |
                        xabbertoken_x_fields() |
                        muc_subscriptions() |
                        adhoc_actions() |
                        feature_csi() |
                        xabbertoken_revoke_all() |
                        thumbnail() |
                        avatar_info() |
                        vcard_geo() |
                        vcard_photo() |
                        muc_actor() |
                        ps_error() |
                        push_disable() |
                        legacy_auth_feature() |
                        rosterver_feature() |
                        muc_invite() |
                        xabber_replace_message() |
                        xabber_retract_message() |
                        carbons_disable() |
                        xabber_delete() |
                        vcard_name() |
                        xabbertoken_feature() |
                        message_markable() |
                        xabbergroupchat_replace() |
                        unique_time() |
                        vcard_xupdate() |
                        bookmark_conference() |
                        offline() |
                        time() |
                        ps_subscribe() |
                        legacy_auth() |
                        search() |
                        xabbergroupchat_search() |
                        xabber_conversation_unread_mention() |
                        xabbergroupchat_permission() |
                        avatar_data() |
                        iq() |
                        avatar_meta() |
                        xcaptcha() |
                        redirect() |
                        sm_enabled() |
                        unique_received() |
                        ps_event() |
                        block_id() |
                        streamhost() |
                        message_displayed() |
                        previous_id() |
                        xabber_conversation_last() |
                        xabber_conversation_retract() |
                        last() |
                        recipient() |
                        ping() |
                        privilege_perm() |
                        xabbergroupchat_item() |
                        privacy_item() |
                        disco_item() |
                        ps_item() |
                        xabbergroupchat_query_item() |
                        upload_slot_0() |
                        upload_request_0() |
                        caps() |
                        sic() |
                        ps_items() |
                        ps_options() |
                        mam_prefs() |
                        sasl_mechanisms() |
                        xabbergroup_domains() |
                        muc() |
                        stream_features() |
                        stats() |
                        starttls() |
                        xabbergroupchat_query_members() |
                        db_verify() |
                        roster_query() |
                        media_uri() |
                        muc_destroy() |
                        vcard_key() |
                        xabbergroupchat_invite_query() |
                        csi() |
                        xabbergroupchat_retract_query() |
                        delegation_query() |
                        mam_query() |
                        vcard_email() |
                        bookmark_url() |
                        vcard_label() |
                        disco_info() |
                        vcard_logo() |
                        sm_r() |
                        stat_error() |
                        stanza_error() |
                        stream_error() |
                        xabbergroup_invite_user() |
                        feature_register() |
                        register() |
                        xabbergroup_peer() |
                        avatar_pointer() |
                        xabber_retract_user() |
                        muc_user() |
                        vcard_adr() |
                        sasl_response() |
                        jingle_propose() |
                        xabber_retract_activate() |
                        xabbergroupchat_retract_invalidate() |
                        xabbertoken_issue() |
                        presence() |
                        gone() |
                        carbons_private() |
                        mix_leave() |
                        muc_subscribe() |
                        privilege() |
                        push_enable() |
                        idle() |
                        muc_unique() |
                        message() |
                        xabbergroupchat_invite() |
                        xabbergroupchat_create() |
                        xabbergroupchat_update() |
                        xabber_retract_invalidate() |
                        sm_resume() |
                        carbons_enable() |
                        receipt_response() |
                        expire() |
                        muc_unsubscribe() |
                        ps_unsubscribe() |
                        chatstate() |
                        oob_x() |
                        body_x() |
                        sasl_auth() |
                        xabbergroupchat_x() |
                        unblock() |
                        xabbergroup_unblock() |
                        muc_admin() |
                        ps_affiliation() |
                        xabber_conversation() |
                        xabber_synchronization() |
                        mam_fin() |
                        media() |
                        bob_data() |
                        xabber_conversation_unread() |
                        stanza_id() |
                        starttls_proceed() |
                        forwarded() |
                        sm_resumed() |
                        xabbergroupchat_user_updated() |
                        xevent() |
                        privacy_list() |
                        'see-other-host'() |
                        hint() |
                        stream_start() |
                        jingle_accept() |
                        message_received() |
                        xabbergroupchat_replaced() |
                        shim() |
                        search_item() |
                        offline_item() |
                        muc_item() |
                        address() |
                        sasl_success() |
                        xabbergroupchat_query_rights() |
                        compress() |
                        bytestreams() |
                        privacy_query() |
                        muc_history() |
                        xabbertoken_query() |
                        identity() |
                        delay() |
                        xabber_synchronization_query() |
                        xabber_retract_all() |
                        xabber_conversation_call() |
                        xabbergroupchat_retract_all() |
                        vcard_tel() |
                        pubsub_owner() |
                        muc_owner() |
                        xabbergroupchat_retract_user() |
                        pubsub() |
                        disclosure() |
                        xmppreference() |
                        starttls_failure() |
                        sasl_challenge() |
                        xabbergroupchat_retract_message() |
                        db_feature() |
                        x_conference() |
                        private() |
                        xabbergroupchat_replace_message() |
                        sasl_failure() |
                        adhoc_note() |
                        xabbertoken_revoke() |
                        sm_enable() |
                        handshake() |
                        compress_failure() |
                        xabbergroupchat_revoke() |
                        xabber_replace() |
                        bookmark_storage() |
                        muc_decline() |
                        ps_publish() |
                        nick() |
                        block() |
                        xabbergroup_block() |
                        xabbertoken_x_token() |
                        delegation() |
                        push_notification() |
                        mix_join() |
                        xmpp_session() |
                        xdata() |
                        jingle_reject() |
                        bind() |
                        collect() |
                        x_not_present() |
                        ps_retract() |
                        vcard_sound() |
                        block_jid() |
                        unique_request() |
                        mam_result() |
                        rsm_first() |
                        stat() |
                        xabbergroupchat() |
                        upload_request() |
                        xdata_field() |
                        adhoc_command() |
                        sm_failed().
