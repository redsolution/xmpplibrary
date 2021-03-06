%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbergroupchat).

-compile(export_all).

do_decode(<<"reason">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_reason(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"recipient">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_recipient(<<"http://xabber.com/protocol/groupchat">>,
				     Opts, El);
do_decode(<<"disclosure">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_disclosure(<<"http://xabber.com/protocol/groupchat">>,
				      Opts, El);
do_decode(<<"disclosed">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_disclosed(<<"http://xabber.com/protocol/groupchat">>,
				     Opts, El);
do_decode(<<"body">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replace_message_body(<<"http://xabber.com/protocol/groupchat#history">>,
						Opts, El);
do_decode(<<"message">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replace_message(<<"http://xabber.com/protocol/groupchat#history">>,
					   Opts, El);
do_decode(<<"replace">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replace(<<"http://xabber.com/protocol/groupchat#history">>,
				   Opts, El);
do_decode(<<"replaced">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replaced(<<"http://xabber.com/protocol/groupchat#history">>,
				    Opts, El);
do_decode(<<"invalidate">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_invalidate(<<"http://xabber.com/protocol/groupchat#history">>,
					      Opts, El);
do_decode(<<"retract-all">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_all(<<"http://xabber.com/protocol/groupchat#history">>,
				       Opts, El);
do_decode(<<"retract-user">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_user(<<"http://xabber.com/protocol/groupchat#history">>,
					Opts, El);
do_decode(<<"retract-message">>,
	  <<"http://xabber.com/protocol/groupchat#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_message(<<"http://xabber.com/protocol/groupchat#history">>,
					   Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/retract">>, El, Opts) ->
    decode_xabbergroupchat_retract_query(<<"http://xabber.com/protocol/retract">>,
					 Opts, El);
do_decode(<<"localpart">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_localpart(<<"http://xabber.com/protocol/groupchat">>,
					   Opts, El);
do_decode(<<"localpart">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_localpart(<<"http://xabber.com/protocol/groupchat#create">>,
					   Opts, El);
do_decode(<<"membership">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_membership(<<"http://xabber.com/protocol/groupchat">>,
					    Opts, El);
do_decode(<<"membership">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_membership(<<"http://xabber.com/protocol/groupchat#create">>,
					    Opts, El);
do_decode(<<"description">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_description(<<"http://xabber.com/protocol/groupchat">>,
					     Opts, El);
do_decode(<<"description">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_description(<<"http://xabber.com/protocol/groupchat#create">>,
					     Opts, El);
do_decode(<<"privacy">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_privacy(<<"http://xabber.com/protocol/groupchat">>,
					 Opts, El);
do_decode(<<"privacy">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_privacy(<<"http://xabber.com/protocol/groupchat#create">>,
					 Opts, El);
do_decode(<<"status">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_status(<<"http://xabber.com/protocol/groupchat">>,
					Opts, El);
do_decode(<<"status">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_status(<<"http://xabber.com/protocol/groupchat#create">>,
					Opts, El);
do_decode(<<"name">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_name(<<"http://xabber.com/protocol/groupchat">>,
				      Opts, El);
do_decode(<<"name">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_name(<<"http://xabber.com/protocol/groupchat#create">>,
				      Opts, El);
do_decode(<<"index">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_index(<<"http://xabber.com/protocol/groupchat">>,
				       Opts, El);
do_decode(<<"index">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_index(<<"http://xabber.com/protocol/groupchat#create">>,
				       Opts, El);
do_decode(<<"pinned-message">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_message(<<"http://xabber.com/protocol/groupchat">>,
					 Opts, El);
do_decode(<<"pinned-message">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_message(<<"http://xabber.com/protocol/groupchat#create">>,
					 Opts, El);
do_decode(<<"domain">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_domain(<<"http://xabber.com/protocol/groupchat">>,
					Opts, El);
do_decode(<<"domain">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_domain(<<"http://xabber.com/protocol/groupchat#create">>,
					Opts, El);
do_decode(<<"domains">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_domains(<<"http://xabber.com/protocol/groupchat">>,
					 Opts, El);
do_decode(<<"domains">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_domains(<<"http://xabber.com/protocol/groupchat#create">>,
					 Opts, El);
do_decode(<<"contact">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_contact(<<"http://xabber.com/protocol/groupchat">>,
					 Opts, El);
do_decode(<<"contact">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_contact(<<"http://xabber.com/protocol/groupchat#create">>,
					 Opts, El);
do_decode(<<"contacts">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_query_contacts(<<"http://xabber.com/protocol/groupchat">>,
					  Opts, El);
do_decode(<<"contacts">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_contacts(<<"http://xabber.com/protocol/groupchat#create">>,
					  Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat(<<"http://xabber.com/protocol/groupchat">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat(<<"http://xabber.com/protocol/groupchat#create">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/groupchat#default-"
	    "rights">>,
	  El, Opts) ->
    decode_xabbergroupchat(<<"http://xabber.com/protocol/groupchat#default-"
			     "rights">>,
			   Opts, El);
do_decode(<<"id">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_user_id(<<"http://xabber.com/protocol/groupchat">>,
				   Opts, El);
do_decode(<<"id">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_user_id(<<"http://xabber.com/protocol/groupchat#members">>,
				   Opts, El);
do_decode(<<"badge">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_user_badge(<<"http://xabber.com/protocol/groupchat">>,
				      Opts, El);
do_decode(<<"badge">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_user_badge(<<"http://xabber.com/protocol/groupchat#members">>,
				      Opts, El);
do_decode(<<"nickname">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_user_nickname(<<"http://xabber.com/protocol/groupchat">>,
					 Opts, El);
do_decode(<<"nickname">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_user_nickname(<<"http://xabber.com/protocol/groupchat#members">>,
					 Opts, El);
do_decode(<<"subscription">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_subscription(<<"http://xabber.com/protocol/groupchat">>,
					Opts, El);
do_decode(<<"subscription">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_subscription(<<"http://xabber.com/protocol/groupchat#members">>,
					Opts, El);
do_decode(<<"role">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_user_role(<<"http://xabber.com/protocol/groupchat">>,
				     Opts, El);
do_decode(<<"role">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_user_role(<<"http://xabber.com/protocol/groupchat#members">>,
				     Opts, El);
do_decode(<<"jid">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_user_jid(<<"http://xabber.com/protocol/groupchat">>,
				    Opts, El);
do_decode(<<"jid">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_user_jid(<<"http://xabber.com/protocol/groupchat#members">>,
				    Opts, El);
do_decode(<<"user">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_user_card(<<"http://xabber.com/protocol/groupchat">>,
				     Opts, El);
do_decode(<<"item">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_item(<<"http://xabber.com/protocol/groupchat#members">>,
				Opts, El);
do_decode(<<"kicked">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_kicked(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"user-updated">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_user_updated(<<"http://xabber.com/protocol/groupchat">>,
					Opts, El);
do_decode(<<"no-permission">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_no_permission(<<"http://xabber.com/protocol/groupchat">>,
					 Opts, El);
do_decode(<<"left">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_left(<<"http://xabber.com/protocol/groupchat">>,
				Opts, El);
do_decode(<<"join">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_join(<<"http://xabber.com/protocol/groupchat">>,
				Opts, El);
do_decode(<<"search">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_search(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"domain">>,
	  <<"http://xabber.com/protocol/groupchat#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_domain(<<"http://xabber.com/protocol/groupchat#block">>,
				  Opts, El);
do_decode(<<"jid">>,
	  <<"http://xabber.com/protocol/groupchat#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_jid(<<"http://xabber.com/protocol/groupchat#block">>,
			       Opts, El);
do_decode(<<"id">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_id(<<"http://xabber.com/protocol/groupchat">>,
			      Opts, El);
do_decode(<<"id">>,
	  <<"http://xabber.com/protocol/groupchat#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_id(<<"http://xabber.com/protocol/groupchat#block">>,
			      Opts, El);
do_decode(<<"unblock">>,
	  <<"http://xabber.com/protocol/groupchat#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_unblock(<<"http://xabber.com/protocol/groupchat#block">>,
				   Opts, El);
do_decode(<<"block">>,
	  <<"http://xabber.com/protocol/groupchat#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_block(<<"http://xabber.com/protocol/groupchat#block">>,
				 Opts, El);
do_decode(<<"localpart">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_localpart(<<"http://xabber.com/protocol/groupchat">>,
				     Opts, El);
do_decode(<<"membership">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_model(<<"http://xabber.com/protocol/groupchat">>,
				 Opts, El);
do_decode(<<"description">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_description(<<"http://xabber.com/protocol/groupchat">>,
				       Opts, El);
do_decode(<<"privacy">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_anonymous(<<"http://xabber.com/protocol/groupchat">>,
				     Opts, El);
do_decode(<<"name">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_name(<<"http://xabber.com/protocol/groupchat">>,
				Opts, El);
do_decode(<<"index">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_searchable(<<"http://xabber.com/protocol/groupchat">>,
				      Opts, El);
do_decode(<<"pinned-message">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_message(<<"http://xabber.com/protocol/groupchat">>,
				   Opts, El);
do_decode(<<"domain">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_domain_create(<<"http://xabber.com/protocol/groupchat">>,
					 Opts, El);
do_decode(<<"domains">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_domains(<<"http://xabber.com/protocol/groupchat">>,
				   Opts, El);
do_decode(<<"contact">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_contact_create(<<"http://xabber.com/protocol/groupchat">>,
					  Opts, El);
do_decode(<<"contacts">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_contacts(<<"http://xabber.com/protocol/groupchat">>,
				    Opts, El);
do_decode(<<"present">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_online(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"members">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_members(<<"http://xabber.com/protocol/groupchat">>,
				   Opts, El);
do_decode(<<"body">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_x_body(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"peer-to-peer">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_peer(<<"http://xabber.com/protocol/groupchat">>,
				Opts, El);
do_decode(<<"peer-to-peer">>, <<"jabber:client">>, El,
	  Opts) ->
    decode_xabbergroupchat_peer(<<"jabber:client">>, Opts,
				El);
do_decode(<<"jid">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_chat_jid(<<"http://xabber.com/protocol/groupchat">>,
				    Opts, El);
do_decode(<<"parent-chat">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_parent_chat(<<"http://xabber.com/protocol/groupchat">>,
				       Opts, El);
do_decode(<<"create">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_create(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#system-m"
	    "essage">>,
	  El, Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat#system-m"
			       "essage">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat#create">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#left">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat#left">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#join">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat#join">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#kick">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat#kick">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#update">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat#update">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#user-upd"
	    "ated">>,
	  El, Opts) ->
    decode_xabbergroupchat_x(<<"http://xabber.com/protocol/groupchat#user-upd"
			       "ated">>,
			     Opts, El);
do_decode(<<"update">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_update(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"item">>,
	  <<"http://xabber.com/protocol/groupchat#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_item(<<"http://xabber.com/protocol/groupchat#rights">>,
				      Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/groupchat#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_rights(<<"http://xabber.com/protocol/groupchat#rights">>,
					Opts, El);
do_decode(<<"user">>,
	  <<"http://xabber.com/protocol/groupchat#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_user(<<"http://xabber.com/protocol/groupchat#invite">>,
				       Opts, El);
do_decode(<<"jid">>,
	  <<"http://xabber.com/protocol/groupchat#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_jid(<<"http://xabber.com/protocol/groupchat#invite">>,
				      Opts, El);
do_decode(<<"send">>,
	  <<"http://xabber.com/protocol/groupchat#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_send(<<"http://xabber.com/protocol/groupchat#invite">>,
				       Opts, El);
do_decode(<<"reason">>,
	  <<"http://xabber.com/protocol/groupchat#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_reason(<<"http://xabber.com/protocol/groupchat#invite">>,
					 Opts, El);
do_decode(<<"revoke">>,
	  <<"http://xabber.com/protocol/groupchat#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_revoke(<<"http://xabber.com/protocol/groupchat#invite">>,
				  Opts, El);
do_decode(<<"invite">>,
	  <<"http://xabber.com/protocol/groupchat#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite(<<"http://xabber.com/protocol/groupchat#invite">>,
				  Opts, El);
do_decode(<<"invite">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_invite(<<"http://xabber.com/protocol/groupchat">>,
				  Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/groupchat#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_query(<<"http://xabber.com/protocol/groupchat#invite">>,
					Opts, El);
do_decode(<<"nickname">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_nickname(<<"http://xabber.com/protocol/groupchat#members">>,
				    Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_members(<<"http://xabber.com/protocol/groupchat#members">>,
					 Opts, El);
do_decode(<<"owner">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_owner(<<"http://xabber.com/protocol/groupchat">>,
				 Opts, El);
do_decode(<<"badge">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_badge(<<"http://xabber.com/protocol/groupchat#members">>,
				 Opts, El);
do_decode(<<"collect">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_collect(<<"http://xabber.com/protocol/groupchat">>,
				   Opts, El);
do_decode(<<"restriction">>,
	  <<"http://xabber.com/protocol/groupchat#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_restriction_set(<<"http://xabber.com/protocol/groupchat#rights">>,
					   Opts, El);
do_decode(<<"permission">>,
	  <<"http://xabber.com/protocol/groupchat#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_permission_set(<<"http://xabber.com/protocol/groupchat#rights">>,
					  Opts, El);
do_decode(<<"restriction">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_restriction(<<"http://xabber.com/protocol/groupchat">>,
				       Opts, El);
do_decode(<<"restriction">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_restriction(<<"http://xabber.com/protocol/groupchat#members">>,
				       Opts, El);
do_decode(<<"permission">>,
	  <<"http://xabber.com/protocol/groupchat">>, El, Opts) ->
    decode_xabbergroupchat_permission(<<"http://xabber.com/protocol/groupchat">>,
				      Opts, El);
do_decode(<<"permission">>,
	  <<"http://xabber.com/protocol/groupchat#members">>, El,
	  Opts) ->
    decode_xabbergroupchat_permission(<<"http://xabber.com/protocol/groupchat#members">>,
				      Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#not-present">>,
	  El, Opts) ->
    decode_xabbergroupchat_not_present(<<"http://xabber.com/protocol/groupchat#not-present">>,
				       Opts, El);
do_decode(<<"x">>,
	  <<"http://xabber.com/protocol/groupchat#present">>, El,
	  Opts) ->
    decode_xabbergroupchat_present(<<"http://xabber.com/protocol/groupchat#present">>,
				   Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"reason">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"recipient">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"disclosure">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"disclosed">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"body">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"message">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"replace">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"replaced">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"invalidate">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"retract-all">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"retract-user">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"retract-message">>,
      <<"http://xabber.com/protocol/groupchat#history">>},
     {<<"query">>, <<"http://xabber.com/protocol/retract">>},
     {<<"localpart">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"localpart">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"membership">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"membership">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"description">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"description">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"privacy">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"privacy">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"status">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"status">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"name">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"name">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"index">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"index">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"pinned-message">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"pinned-message">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"domain">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"domain">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"domains">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"domains">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"contact">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"contact">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"contacts">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"contacts">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"query">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"query">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"query">>,
      <<"http://xabber.com/protocol/groupchat#default-"
	"rights">>},
     {<<"id">>, <<"http://xabber.com/protocol/groupchat">>},
     {<<"id">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"badge">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"badge">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"nickname">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"nickname">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"subscription">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"subscription">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"role">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"role">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"jid">>, <<"http://xabber.com/protocol/groupchat">>},
     {<<"jid">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"user">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"item">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"kicked">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"user-updated">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"no-permission">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"left">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"join">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"search">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"domain">>,
      <<"http://xabber.com/protocol/groupchat#block">>},
     {<<"jid">>,
      <<"http://xabber.com/protocol/groupchat#block">>},
     {<<"id">>, <<"http://xabber.com/protocol/groupchat">>},
     {<<"id">>,
      <<"http://xabber.com/protocol/groupchat#block">>},
     {<<"unblock">>,
      <<"http://xabber.com/protocol/groupchat#block">>},
     {<<"block">>,
      <<"http://xabber.com/protocol/groupchat#block">>},
     {<<"localpart">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"membership">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"description">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"privacy">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"name">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"index">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"pinned-message">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"domain">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"domains">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"contact">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"contacts">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"present">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"members">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"body">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"peer-to-peer">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"peer-to-peer">>, <<"jabber:client">>},
     {<<"jid">>, <<"http://xabber.com/protocol/groupchat">>},
     {<<"parent-chat">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"create">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"x">>, <<"http://xabber.com/protocol/groupchat">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#system-m"
	"essage">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#create">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#left">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#join">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#kick">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#update">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#user-upd"
	"ated">>},
     {<<"update">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"item">>,
      <<"http://xabber.com/protocol/groupchat#rights">>},
     {<<"query">>,
      <<"http://xabber.com/protocol/groupchat#rights">>},
     {<<"user">>,
      <<"http://xabber.com/protocol/groupchat#invite">>},
     {<<"jid">>,
      <<"http://xabber.com/protocol/groupchat#invite">>},
     {<<"send">>,
      <<"http://xabber.com/protocol/groupchat#invite">>},
     {<<"reason">>,
      <<"http://xabber.com/protocol/groupchat#invite">>},
     {<<"revoke">>,
      <<"http://xabber.com/protocol/groupchat#invite">>},
     {<<"invite">>,
      <<"http://xabber.com/protocol/groupchat#invite">>},
     {<<"invite">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"query">>,
      <<"http://xabber.com/protocol/groupchat#invite">>},
     {<<"nickname">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"query">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"owner">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"badge">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"collect">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"restriction">>,
      <<"http://xabber.com/protocol/groupchat#rights">>},
     {<<"permission">>,
      <<"http://xabber.com/protocol/groupchat#rights">>},
     {<<"restriction">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"restriction">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"permission">>,
      <<"http://xabber.com/protocol/groupchat">>},
     {<<"permission">>,
      <<"http://xabber.com/protocol/groupchat#members">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#not-present">>},
     {<<"x">>,
      <<"http://xabber.com/protocol/groupchat#present">>}].

do_encode({x_present} = X, TopXMLNS) ->
    encode_xabbergroupchat_present(X, TopXMLNS);
do_encode({x_not_present} = X, TopXMLNS) ->
    encode_xabbergroupchat_not_present(X, TopXMLNS);
do_encode({xabbergroupchat_permission, _, _} =
	      Permission,
	  TopXMLNS) ->
    encode_xabbergroupchat_permission_set(Permission,
					  TopXMLNS);
do_encode({xabbergroupchat_restriction, _, _} =
	      Restriction,
	  TopXMLNS) ->
    encode_xabbergroupchat_restriction_set(Restriction,
					   TopXMLNS);
do_encode({collect, _} = Collect, TopXMLNS) ->
    encode_xabbergroupchat_collect(Collect, TopXMLNS);
do_encode({xabbergroupchat_query_members, _, _, _} =
	      Query,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_members(Query, TopXMLNS);
do_encode({xabbergroupchat_invite_query, _} = Query,
	  TopXMLNS) ->
    encode_xabbergroupchat_invite_query(Query, TopXMLNS);
do_encode({xabbergroupchat_invite, _, _, _, _, _} =
	      Invite,
	  TopXMLNS) ->
    encode_xabbergroupchat_invite(Invite, TopXMLNS);
do_encode({xabbergroupchat_revoke, _} = Revoke,
	  TopXMLNS) ->
    encode_xabbergroupchat_revoke(Revoke, TopXMLNS);
do_encode({xabbergroup_invite_user, _, _} = User,
	  TopXMLNS) ->
    encode_xabbergroupchat_invite_user(User, TopXMLNS);
do_encode({xabbergroupchat_query_rights, _, _, _} =
	      Query,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_rights(Query, TopXMLNS);
do_encode({xabbergroupchat_query_item, _} = Item,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_item(Item, TopXMLNS);
do_encode({xabbergroupchat_update, _, _, _, _, _, _, _,
	   _} =
	      Update,
	  TopXMLNS) ->
    encode_xabbergroupchat_update(Update, TopXMLNS);
do_encode({xabbergroupchat_x, _, _, _, _, _, _, _, _, _,
	   _, _, _, _, _, _, _, _, _} =
	      X,
	  TopXMLNS) ->
    encode_xabbergroupchat_x(X, TopXMLNS);
do_encode({xabbergroupchat_create, _, _, _, _, _, _, _,
	   _, _, _} =
	      Create,
	  TopXMLNS) ->
    encode_xabbergroupchat_create(Create, TopXMLNS);
do_encode({xabbergroup_peer, _, _, _} = Peer_to_peer,
	  TopXMLNS) ->
    encode_xabbergroupchat_peer(Peer_to_peer, TopXMLNS);
do_encode({body_x, _, _} = Body, TopXMLNS) ->
    encode_xabbergroupchat_x_body(Body, TopXMLNS);
do_encode({xabbergroup_block, _, _, _} = Block,
	  TopXMLNS) ->
    encode_xabbergroupchat_block(Block, TopXMLNS);
do_encode({xabbergroup_unblock, _, _, _} = Unblock,
	  TopXMLNS) ->
    encode_xabbergroupchat_unblock(Unblock, TopXMLNS);
do_encode({block_id, _} = Id, TopXMLNS) ->
    encode_xabbergroupchat_id(Id, TopXMLNS);
do_encode({block_jid, _} = Jid, TopXMLNS) ->
    encode_xabbergroupchat_jid(Jid, TopXMLNS);
do_encode({block_domain, _} = Domain, TopXMLNS) ->
    encode_xabbergroupchat_domain(Domain, TopXMLNS);
do_encode({xabbergroupchat_search, _, _, _, _, _} =
	      Search,
	  TopXMLNS) ->
    encode_xabbergroupchat_search(Search, TopXMLNS);
do_encode({xabbergroupchat_user_updated, _} =
	      User_updated,
	  TopXMLNS) ->
    encode_xabbergroupchat_user_updated(User_updated,
					TopXMLNS);
do_encode({xabbergroupchat_kicked, _} = Kicked,
	  TopXMLNS) ->
    encode_xabbergroupchat_kicked(Kicked, TopXMLNS);
do_encode({xabbergroupchat_item, _, _, _, _, _, _, _,
	   _} =
	      Item,
	  TopXMLNS) ->
    encode_xabbergroupchat_item(Item, TopXMLNS);
do_encode({xabbergroupchat_user_card, _, _, _, _, _,
	   _} =
	      User,
	  TopXMLNS) ->
    encode_xabbergroupchat_user_card(User, TopXMLNS);
do_encode({xabbergroupchat, _, _} = Query, TopXMLNS) ->
    encode_xabbergroupchat(Query, TopXMLNS);
do_encode({xabbergroup_contacts, _} = Contacts,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_contacts(Contacts,
					  TopXMLNS);
do_encode({xabbergroup_domains, _} = Domains,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_domains(Domains, TopXMLNS);
do_encode({xabbergroupchat_pinned_message, _} =
	      Pinned_message,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_message(Pinned_message,
					 TopXMLNS);
do_encode({xabbergroupchat_index, _} = Index,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_index(Index, TopXMLNS);
do_encode({xabbergroupchat_name, _} = Name, TopXMLNS) ->
    encode_xabbergroupchat_query_name(Name, TopXMLNS);
do_encode({xabbergroupchat_status, _} = Status,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_status(Status, TopXMLNS);
do_encode({xabbergroupchat_privacy, _} = Privacy,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_privacy(Privacy, TopXMLNS);
do_encode({xabbergroupchat_description, _} =
	      Description,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_description(Description,
					     TopXMLNS);
do_encode({xabbergroupchat_membership, _} = Membership,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_membership(Membership,
					    TopXMLNS);
do_encode({xabbergroupchat_localpart, _} = Localpart,
	  TopXMLNS) ->
    encode_xabbergroupchat_query_localpart(Localpart,
					   TopXMLNS);
do_encode({xabbergroupchat_retract_query, _, _} = Query,
	  TopXMLNS) ->
    encode_xabbergroupchat_retract_query(Query, TopXMLNS);
do_encode({xabbergroupchat_retract_message, _, _} =
	      Retract_message,
	  TopXMLNS) ->
    encode_xabbergroupchat_retract_message(Retract_message,
					   TopXMLNS);
do_encode({xabbergroupchat_retract_user, _, _} =
	      Retract_user,
	  TopXMLNS) ->
    encode_xabbergroupchat_retract_user(Retract_user,
					TopXMLNS);
do_encode({xabbergroupchat_retract_all, _} =
	      Retract_all,
	  TopXMLNS) ->
    encode_xabbergroupchat_retract_all(Retract_all,
				       TopXMLNS);
do_encode({xabbergroupchat_retract_invalidate, _} =
	      Invalidate,
	  TopXMLNS) ->
    encode_xabbergroupchat_retract_invalidate(Invalidate,
					      TopXMLNS);
do_encode({xabbergroupchat_replaced, _} = Replaced,
	  TopXMLNS) ->
    encode_xabbergroupchat_replaced(Replaced, TopXMLNS);
do_encode({xabbergroupchat_replace, _, _, _} = Replace,
	  TopXMLNS) ->
    encode_xabbergroupchat_replace(Replace, TopXMLNS);
do_encode({xabbergroupchat_replace_message, _, _, _, _,
	   _} =
	      Message,
	  TopXMLNS) ->
    encode_xabbergroupchat_replace_message(Message,
					   TopXMLNS);
do_encode({disclosed, _, _, _} = Disclosed, TopXMLNS) ->
    encode_xabbergroupchat_disclosed(Disclosed, TopXMLNS);
do_encode({disclosure, _, _, _} = Disclosure,
	  TopXMLNS) ->
    encode_xabbergroupchat_disclosure(Disclosure, TopXMLNS);
do_encode({recipient, _} = Recipient, TopXMLNS) ->
    encode_xabbergroupchat_recipient(Recipient, TopXMLNS).

do_get_name({block_domain, _}) -> <<"domain">>;
do_get_name({block_id, _}) -> <<"id">>;
do_get_name({block_jid, _}) -> <<"jid">>;
do_get_name({body_x, _, _}) -> <<"body">>;
do_get_name({collect, _}) -> <<"collect">>;
do_get_name({disclosed, _, _, _}) -> <<"disclosed">>;
do_get_name({disclosure, _, _, _}) -> <<"disclosure">>;
do_get_name({recipient, _}) -> <<"recipient">>;
do_get_name({x_not_present}) -> <<"x">>;
do_get_name({x_present}) -> <<"x">>;
do_get_name({xabbergroup_block, _, _, _}) ->
    <<"block">>;
do_get_name({xabbergroup_contacts, _}) ->
    <<"contacts">>;
do_get_name({xabbergroup_domains, _}) -> <<"domains">>;
do_get_name({xabbergroup_invite_user, _, _}) ->
    <<"user">>;
do_get_name({xabbergroup_peer, _, _, _}) ->
    <<"peer-to-peer">>;
do_get_name({xabbergroup_unblock, _, _, _}) ->
    <<"unblock">>;
do_get_name({xabbergroupchat, _, _}) -> <<"query">>;
do_get_name({xabbergroupchat_create, _, _, _, _, _, _,
	     _, _, _, _}) ->
    <<"create">>;
do_get_name({xabbergroupchat_description, _}) ->
    <<"description">>;
do_get_name({xabbergroupchat_index, _}) -> <<"index">>;
do_get_name({xabbergroupchat_invite, _, _, _, _, _}) ->
    <<"invite">>;
do_get_name({xabbergroupchat_invite_query, _}) ->
    <<"query">>;
do_get_name({xabbergroupchat_item, _, _, _, _, _, _, _,
	     _}) ->
    <<"item">>;
do_get_name({xabbergroupchat_kicked, _}) ->
    <<"kicked">>;
do_get_name({xabbergroupchat_localpart, _}) ->
    <<"localpart">>;
do_get_name({xabbergroupchat_membership, _}) ->
    <<"membership">>;
do_get_name({xabbergroupchat_name, _}) -> <<"name">>;
do_get_name({xabbergroupchat_permission, _, _}) ->
    <<"permission">>;
do_get_name({xabbergroupchat_pinned_message, _}) ->
    <<"pinned-message">>;
do_get_name({xabbergroupchat_privacy, _}) ->
    <<"privacy">>;
do_get_name({xabbergroupchat_query_item, _}) ->
    <<"item">>;
do_get_name({xabbergroupchat_query_members, _, _, _}) ->
    <<"query">>;
do_get_name({xabbergroupchat_query_rights, _, _, _}) ->
    <<"query">>;
do_get_name({xabbergroupchat_replace, _, _, _}) ->
    <<"replace">>;
do_get_name({xabbergroupchat_replace_message, _, _, _,
	     _, _}) ->
    <<"message">>;
do_get_name({xabbergroupchat_replaced, _}) ->
    <<"replaced">>;
do_get_name({xabbergroupchat_restriction, _, _}) ->
    <<"restriction">>;
do_get_name({xabbergroupchat_retract_all, _}) ->
    <<"retract-all">>;
do_get_name({xabbergroupchat_retract_invalidate, _}) ->
    <<"invalidate">>;
do_get_name({xabbergroupchat_retract_message, _, _}) ->
    <<"retract-message">>;
do_get_name({xabbergroupchat_retract_query, _, _}) ->
    <<"query">>;
do_get_name({xabbergroupchat_retract_user, _, _}) ->
    <<"retract-user">>;
do_get_name({xabbergroupchat_revoke, _}) ->
    <<"revoke">>;
do_get_name({xabbergroupchat_search, _, _, _, _, _}) ->
    <<"search">>;
do_get_name({xabbergroupchat_status, _}) ->
    <<"status">>;
do_get_name({xabbergroupchat_update, _, _, _, _, _, _,
	     _, _}) ->
    <<"update">>;
do_get_name({xabbergroupchat_user_card, _, _, _, _, _,
	     _}) ->
    <<"user">>;
do_get_name({xabbergroupchat_user_updated, _}) ->
    <<"user-updated">>;
do_get_name({xabbergroupchat_x, _, _, _, _, _, _, _, _,
	     _, _, _, _, _, _, _, _, _, _}) ->
    <<"x">>.

do_get_ns({block_domain, _}) ->
    <<"http://xabber.com/protocol/groupchat#block">>;
do_get_ns({block_id, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({block_jid, _}) ->
    <<"http://xabber.com/protocol/groupchat#block">>;
do_get_ns({body_x, _, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({collect, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({disclosed, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({disclosure, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({recipient, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({x_not_present}) ->
    <<"http://xabber.com/protocol/groupchat#not-present">>;
do_get_ns({x_present}) ->
    <<"http://xabber.com/protocol/groupchat#present">>;
do_get_ns({xabbergroup_block, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#block">>;
do_get_ns({xabbergroup_invite_user, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#invite">>;
do_get_ns({xabbergroup_peer, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroup_unblock, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#block">>;
do_get_ns({xabbergroupchat, Xmlns, _}) -> Xmlns;
do_get_ns({xabbergroupchat_create, _, _, _, _, _, _, _,
	   _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_description, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_index, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_invite, _, _, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#invite">>;
do_get_ns({xabbergroupchat_invite_query, _}) ->
    <<"http://xabber.com/protocol/groupchat#invite">>;
do_get_ns({xabbergroupchat_item, _, _, _, _, _, _, _,
	   _}) ->
    <<"http://xabber.com/protocol/groupchat#members">>;
do_get_ns({xabbergroupchat_kicked, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_localpart, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_membership, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_name, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_pinned_message, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_privacy, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_query_item, _}) ->
    <<"http://xabber.com/protocol/groupchat#rights">>;
do_get_ns({xabbergroupchat_query_members, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#members">>;
do_get_ns({xabbergroupchat_query_rights, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#rights">>;
do_get_ns({xabbergroupchat_replace, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#history">>;
do_get_ns({xabbergroupchat_replace_message, _, _, _, _,
	   _}) ->
    <<"http://xabber.com/protocol/groupchat#history">>;
do_get_ns({xabbergroupchat_replaced, _}) ->
    <<"http://xabber.com/protocol/groupchat#history">>;
do_get_ns({xabbergroupchat_retract_all, _}) ->
    <<"http://xabber.com/protocol/groupchat#history">>;
do_get_ns({xabbergroupchat_retract_invalidate, _}) ->
    <<"http://xabber.com/protocol/groupchat#history">>;
do_get_ns({xabbergroupchat_retract_message, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#history">>;
do_get_ns({xabbergroupchat_retract_query, _, _}) ->
    <<"http://xabber.com/protocol/retract">>;
do_get_ns({xabbergroupchat_retract_user, _, _}) ->
    <<"http://xabber.com/protocol/groupchat#history">>;
do_get_ns({xabbergroupchat_revoke, _}) ->
    <<"http://xabber.com/protocol/groupchat#invite">>;
do_get_ns({xabbergroupchat_search, _, _, _, _, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_status, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_update, _, _, _, _, _, _, _,
	   _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_user_card, _, _, _, _, _,
	   _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_user_updated, _}) ->
    <<"http://xabber.com/protocol/groupchat">>;
do_get_ns({xabbergroupchat_x, Xmlns, _, _, _, _, _, _,
	   _, _, _, _, _, _, _, _, _, _, _}) ->
    Xmlns.

get_els({xabbergroupchat_query_rights, _item,
	 _restriction, _sub_els}) ->
    _sub_els;
get_els({xabbergroupchat_x, _xmlns, _type, _version,
	 _no_permission, _name, _description, _model,
	 _searchable, _anonymous, _localpart, _pinned, _domains,
	 _contacts, _members, _present, _parent, _jid,
	 _sub_els}) ->
    _sub_els;
get_els({xabbergroupchat, _xmlns, _sub_els}) ->
    _sub_els;
get_els({xabbergroupchat_replace_message, _from, _to,
	 _body, _replaced, _sub_els}) ->
    _sub_els.

set_els({xabbergroupchat_query_rights, _item,
	 _restriction, _},
	_sub_els) ->
    {xabbergroupchat_query_rights, _item, _restriction,
     _sub_els};
set_els({xabbergroupchat_x, _xmlns, _type, _version,
	 _no_permission, _name, _description, _model,
	 _searchable, _anonymous, _localpart, _pinned, _domains,
	 _contacts, _members, _present, _parent, _jid, _},
	_sub_els) ->
    {xabbergroupchat_x, _xmlns, _type, _version,
     _no_permission, _name, _description, _model,
     _searchable, _anonymous, _localpart, _pinned, _domains,
     _contacts, _members, _present, _parent, _jid, _sub_els};
set_els({xabbergroupchat, _xmlns, _}, _sub_els) ->
    {xabbergroupchat, _xmlns, _sub_els};
set_els({xabbergroupchat_replace_message, _from, _to,
	 _body, _replaced, _},
	_sub_els) ->
    {xabbergroupchat_replace_message, _from, _to, _body,
     _replaced, _sub_els}.

pp(x_present, 0) -> [];
pp(x_not_present, 0) -> [];
pp(xabbergroupchat_permission, 2) -> [name, expires];
pp(xabbergroupchat_restriction, 2) -> [name, expires];
pp(collect, 1) -> [cdata];
pp(xabbergroupchat_query_members, 3) ->
    [id, version, item];
pp(xabbergroupchat_invite_query, 1) -> [user];
pp(xabbergroupchat_invite, 5) ->
    [jid, invite_jid, send, reason, user];
pp(xabbergroupchat_revoke, 1) -> [jid];
pp(xabbergroup_invite_user, 2) -> [jid, id];
pp(xabbergroupchat_query_rights, 3) ->
    [item, restriction, sub_els];
pp(xabbergroupchat_query_item, 1) -> [id];
pp(xabbergroupchat_update, 8) ->
    [name, description, model, searchable, owner, pinned,
     domains, contacts];
pp(xabbergroupchat_x, 18) ->
    [xmlns, type, version, no_permission, name, description,
     model, searchable, anonymous, localpart, pinned,
     domains, contacts, members, present, parent, jid,
     sub_els];
pp(xabbergroupchat_create, 10) ->
    [name, description, model, searchable, anonymous,
     localpart, pinned, domains, contacts, peer];
pp(xabbergroup_peer, 3) -> [jid, id, cdata];
pp(body_x, 2) -> [lang, data];
pp(xabbergroup_block, 3) -> [id, jid, domain];
pp(xabbergroup_unblock, 3) -> [id, jid, domain];
pp(block_id, 1) -> [cdata];
pp(block_jid, 1) -> [cdata];
pp(block_domain, 1) -> [cdata];
pp(xabbergroupchat_search, 5) ->
    [name, description, model, anonymous, rsm];
pp(xabbergroupchat_user_updated, 1) -> [user];
pp(xabbergroupchat_kicked, 1) -> [users];
pp(xabbergroupchat_item, 8) ->
    [id, jid, role, badge, nickname, avatar, permission,
     restriction];
pp(xabbergroupchat_user_card, 6) ->
    [id, jid, role, badge, nickname, avatar];
pp(xabbergroupchat, 2) -> [xmlns, sub_els];
pp(xabbergroup_contacts, 1) -> [contact];
pp(xabbergroup_domains, 1) -> [domain];
pp(xabbergroupchat_pinned_message, 1) -> [cdata];
pp(xabbergroupchat_index, 1) -> [cdata];
pp(xabbergroupchat_name, 1) -> [cdata];
pp(xabbergroupchat_status, 1) -> [cdata];
pp(xabbergroupchat_privacy, 1) -> [cdata];
pp(xabbergroupchat_description, 1) -> [cdata];
pp(xabbergroupchat_membership, 1) -> [cdata];
pp(xabbergroupchat_localpart, 1) -> [cdata];
pp(xabbergroupchat_retract_query, 2) ->
    [version, less_than];
pp(xabbergroupchat_retract_message, 2) -> [id, version];
pp(xabbergroupchat_retract_user, 2) -> [id, version];
pp(xabbergroupchat_retract_all, 1) -> [version];
pp(xabbergroupchat_retract_invalidate, 1) -> [version];
pp(xabbergroupchat_replaced, 1) -> [stamp];
pp(xabbergroupchat_replace, 3) ->
    [id, version, message];
pp(xabbergroupchat_replace_message, 5) ->
    [from, to, body, replaced, sub_els];
pp(disclosed, 3) -> [user_card, reason, type];
pp(disclosure, 3) -> [recipient, reason, type];
pp(recipient, 1) -> [id];
pp(_, _) -> no.

records() ->
    [{x_present, 0}, {x_not_present, 0},
     {xabbergroupchat_permission, 2},
     {xabbergroupchat_restriction, 2}, {collect, 1},
     {xabbergroupchat_query_members, 3},
     {xabbergroupchat_invite_query, 1},
     {xabbergroupchat_invite, 5},
     {xabbergroupchat_revoke, 1},
     {xabbergroup_invite_user, 2},
     {xabbergroupchat_query_rights, 3},
     {xabbergroupchat_query_item, 1},
     {xabbergroupchat_update, 8}, {xabbergroupchat_x, 18},
     {xabbergroupchat_create, 10}, {xabbergroup_peer, 3},
     {body_x, 2}, {xabbergroup_block, 3},
     {xabbergroup_unblock, 3}, {block_id, 1}, {block_jid, 1},
     {block_domain, 1}, {xabbergroupchat_search, 5},
     {xabbergroupchat_user_updated, 1},
     {xabbergroupchat_kicked, 1}, {xabbergroupchat_item, 8},
     {xabbergroupchat_user_card, 6}, {xabbergroupchat, 2},
     {xabbergroup_contacts, 1}, {xabbergroup_domains, 1},
     {xabbergroupchat_pinned_message, 1},
     {xabbergroupchat_index, 1}, {xabbergroupchat_name, 1},
     {xabbergroupchat_status, 1},
     {xabbergroupchat_privacy, 1},
     {xabbergroupchat_description, 1},
     {xabbergroupchat_membership, 1},
     {xabbergroupchat_localpart, 1},
     {xabbergroupchat_retract_query, 2},
     {xabbergroupchat_retract_message, 2},
     {xabbergroupchat_retract_user, 2},
     {xabbergroupchat_retract_all, 1},
     {xabbergroupchat_retract_invalidate, 1},
     {xabbergroupchat_replaced, 1},
     {xabbergroupchat_replace, 3},
     {xabbergroupchat_replace_message, 5}, {disclosed, 3},
     {disclosure, 3}, {recipient, 1}].

decode_xabbergroupchat_reason(__TopXMLNS, __Opts,
			      {xmlel, <<"reason">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_reason_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_reason_els(__TopXMLNS, __Opts,
				  [], Cdata) ->
    decode_xabbergroupchat_reason_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_reason_els(__TopXMLNS, __Opts,
				  [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_reason_els(__TopXMLNS, __Opts,
				      _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_reason_els(__TopXMLNS, __Opts,
				  [_ | _els], Cdata) ->
    decode_xabbergroupchat_reason_els(__TopXMLNS, __Opts,
				      _els, Cdata).

encode_xabbergroupchat_reason(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_reason_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"reason">>, _attrs, _els}.

decode_xabbergroupchat_reason_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_reason_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_reason_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_reason_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_recipient(__TopXMLNS, __Opts,
				 {xmlel, <<"recipient">>, _attrs, _els}) ->
    Id = decode_xabbergroupchat_recipient_attrs(__TopXMLNS,
						_attrs, undefined),
    {recipient, Id}.

decode_xabbergroupchat_recipient_attrs(__TopXMLNS,
				       [{<<"id">>, _val} | _attrs], _Id) ->
    decode_xabbergroupchat_recipient_attrs(__TopXMLNS,
					   _attrs, _val);
decode_xabbergroupchat_recipient_attrs(__TopXMLNS,
				       [_ | _attrs], Id) ->
    decode_xabbergroupchat_recipient_attrs(__TopXMLNS,
					   _attrs, Id);
decode_xabbergroupchat_recipient_attrs(__TopXMLNS, [],
				       Id) ->
    decode_xabbergroupchat_recipient_attr_id(__TopXMLNS,
					     Id).

encode_xabbergroupchat_recipient({recipient, Id},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_xabbergroupchat_recipient_attr_id(Id,
						      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										 __TopXMLNS)),
    {xmlel, <<"recipient">>, _attrs, _els}.

decode_xabbergroupchat_recipient_attr_id(__TopXMLNS,
					 undefined) ->
    <<>>;
decode_xabbergroupchat_recipient_attr_id(__TopXMLNS,
					 _val) ->
    _val.

encode_xabbergroupchat_recipient_attr_id(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_recipient_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_disclosure(__TopXMLNS, __Opts,
				  {xmlel, <<"disclosure">>, _attrs, _els}) ->
    {Recipient, Reason} =
	decode_xabbergroupchat_disclosure_els(__TopXMLNS,
					      __Opts, _els, undefined,
					      undefined),
    Type =
	decode_xabbergroupchat_disclosure_attrs(__TopXMLNS,
						_attrs, undefined),
    {disclosure, Recipient, Reason, Type}.

decode_xabbergroupchat_disclosure_els(__TopXMLNS,
				      __Opts, [], Recipient, Reason) ->
    {Recipient, Reason};
decode_xabbergroupchat_disclosure_els(__TopXMLNS,
				      __Opts,
				      [{xmlel, <<"recipient">>, _attrs, _} = _el
				       | _els],
				      Recipient, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_disclosure_els(__TopXMLNS,
						__Opts, _els,
						decode_xabbergroupchat_recipient(<<"http://xabber.com/protocol/groupchat">>,
										 __Opts,
										 _el),
						Reason);
      _ ->
	  decode_xabbergroupchat_disclosure_els(__TopXMLNS,
						__Opts, _els, Recipient, Reason)
    end;
decode_xabbergroupchat_disclosure_els(__TopXMLNS,
				      __Opts,
				      [{xmlel, <<"reason">>, _attrs, _} = _el
				       | _els],
				      Recipient, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_disclosure_els(__TopXMLNS,
						__Opts, _els, Recipient,
						decode_xabbergroupchat_reason(<<"http://xabber.com/protocol/groupchat">>,
									      __Opts,
									      _el));
      _ ->
	  decode_xabbergroupchat_disclosure_els(__TopXMLNS,
						__Opts, _els, Recipient, Reason)
    end;
decode_xabbergroupchat_disclosure_els(__TopXMLNS,
				      __Opts, [_ | _els], Recipient, Reason) ->
    decode_xabbergroupchat_disclosure_els(__TopXMLNS,
					  __Opts, _els, Recipient, Reason).

decode_xabbergroupchat_disclosure_attrs(__TopXMLNS,
					[{<<"type">>, _val} | _attrs], _Type) ->
    decode_xabbergroupchat_disclosure_attrs(__TopXMLNS,
					    _attrs, _val);
decode_xabbergroupchat_disclosure_attrs(__TopXMLNS,
					[_ | _attrs], Type) ->
    decode_xabbergroupchat_disclosure_attrs(__TopXMLNS,
					    _attrs, Type);
decode_xabbergroupchat_disclosure_attrs(__TopXMLNS, [],
					Type) ->
    decode_xabbergroupchat_disclosure_attr_type(__TopXMLNS,
						Type).

encode_xabbergroupchat_disclosure({disclosure,
				   Recipient, Reason, Type},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_disclosure_$recipient'(Recipient,
								     __NewTopXMLNS,
								     'encode_xabbergroupchat_disclosure_$reason'(Reason,
														 __NewTopXMLNS,
														 []))),
    _attrs =
	encode_xabbergroupchat_disclosure_attr_type(Type,
						    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									       __TopXMLNS)),
    {xmlel, <<"disclosure">>, _attrs, _els}.

'encode_xabbergroupchat_disclosure_$recipient'(undefined,
					       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_disclosure_$recipient'(Recipient,
					       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_recipient(Recipient, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_disclosure_$reason'(undefined,
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_disclosure_$reason'(Reason,
					    __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_reason(Reason, __TopXMLNS)
     | _acc].

decode_xabbergroupchat_disclosure_attr_type(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_xabbergroupchat_disclosure_attr_type(__TopXMLNS,
					    _val) ->
    _val.

encode_xabbergroupchat_disclosure_attr_type(<<>>,
					    _acc) ->
    _acc;
encode_xabbergroupchat_disclosure_attr_type(_val,
					    _acc) ->
    [{<<"type">>, _val} | _acc].

decode_xabbergroupchat_disclosed(__TopXMLNS, __Opts,
				 {xmlel, <<"disclosed">>, _attrs, _els}) ->
    {User_card, Reason} =
	decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					     _els, undefined, undefined),
    Type =
	decode_xabbergroupchat_disclosed_attrs(__TopXMLNS,
					       _attrs, undefined),
    {disclosed, User_card, Reason, Type}.

decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
				     [], User_card, Reason) ->
    {User_card, Reason};
decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"user">>, _attrs, _} = _el
				      | _els],
				     User_card, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					       _els,
					       decode_xabbergroupchat_user_card(<<"http://xabber.com/protocol/groupchat">>,
										__Opts,
										_el),
					       Reason);
      _ ->
	  decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					       _els, User_card, Reason)
    end;
decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"reason">>, _attrs, _} = _el
				      | _els],
				     User_card, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					       _els, User_card,
					       decode_xabbergroupchat_reason(<<"http://xabber.com/protocol/groupchat">>,
									     __Opts,
									     _el));
      _ ->
	  decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					       _els, User_card, Reason)
    end;
decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
				     [_ | _els], User_card, Reason) ->
    decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					 _els, User_card, Reason).

decode_xabbergroupchat_disclosed_attrs(__TopXMLNS,
				       [{<<"type">>, _val} | _attrs], _Type) ->
    decode_xabbergroupchat_disclosed_attrs(__TopXMLNS,
					   _attrs, _val);
decode_xabbergroupchat_disclosed_attrs(__TopXMLNS,
				       [_ | _attrs], Type) ->
    decode_xabbergroupchat_disclosed_attrs(__TopXMLNS,
					   _attrs, Type);
decode_xabbergroupchat_disclosed_attrs(__TopXMLNS, [],
				       Type) ->
    decode_xabbergroupchat_disclosed_attr_type(__TopXMLNS,
					       Type).

encode_xabbergroupchat_disclosed({disclosed, User_card,
				  Reason, Type},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_disclosed_$user_card'(User_card,
								    __NewTopXMLNS,
								    'encode_xabbergroupchat_disclosed_$reason'(Reason,
													       __NewTopXMLNS,
													       []))),
    _attrs =
	encode_xabbergroupchat_disclosed_attr_type(Type,
						   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									      __TopXMLNS)),
    {xmlel, <<"disclosed">>, _attrs, _els}.

'encode_xabbergroupchat_disclosed_$user_card'(undefined,
					      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_disclosed_$user_card'(User_card,
					      __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_user_card(User_card, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_disclosed_$reason'(undefined,
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_disclosed_$reason'(Reason,
					   __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_reason(Reason, __TopXMLNS)
     | _acc].

decode_xabbergroupchat_disclosed_attr_type(__TopXMLNS,
					   undefined) ->
    <<>>;
decode_xabbergroupchat_disclosed_attr_type(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_disclosed_attr_type(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_disclosed_attr_type(_val,
					   _acc) ->
    [{<<"type">>, _val} | _acc].

decode_xabbergroupchat_replace_message_body(__TopXMLNS,
					    __Opts,
					    {xmlel, <<"body">>, _attrs,
					     _els}) ->
    Cdata =
	decode_xabbergroupchat_replace_message_body_els(__TopXMLNS,
							__Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_replace_message_body_els(__TopXMLNS,
						__Opts, [], Cdata) ->
    decode_xabbergroupchat_replace_message_body_cdata(__TopXMLNS,
						      Cdata);
decode_xabbergroupchat_replace_message_body_els(__TopXMLNS,
						__Opts,
						[{xmlcdata, _data} | _els],
						Cdata) ->
    decode_xabbergroupchat_replace_message_body_els(__TopXMLNS,
						    __Opts, _els,
						    <<Cdata/binary,
						      _data/binary>>);
decode_xabbergroupchat_replace_message_body_els(__TopXMLNS,
						__Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_replace_message_body_els(__TopXMLNS,
						    __Opts, _els, Cdata).

encode_xabbergroupchat_replace_message_body(Cdata,
					    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els =
	encode_xabbergroupchat_replace_message_body_cdata(Cdata,
							  []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"body">>, _attrs, _els}.

decode_xabbergroupchat_replace_message_body_cdata(__TopXMLNS,
						  <<>>) ->
    <<>>;
decode_xabbergroupchat_replace_message_body_cdata(__TopXMLNS,
						  _val) ->
    _val.

encode_xabbergroupchat_replace_message_body_cdata(<<>>,
						  _acc) ->
    _acc;
encode_xabbergroupchat_replace_message_body_cdata(_val,
						  _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_replace_message(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"message">>, _attrs, _els}) ->
    {Replaced, Body, __Els} =
	decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						   __Opts, _els, undefined,
						   undefined, []),
    {From, To} =
	decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
						     _attrs, undefined,
						     undefined),
    {xabbergroupchat_replace_message, From, To, Body,
     Replaced, __Els}.

decode_xabbergroupchat_replace_message_els(__TopXMLNS,
					   __Opts, [], Replaced, Body, __Els) ->
    {Replaced, Body, lists:reverse(__Els)};
decode_xabbergroupchat_replace_message_els(__TopXMLNS,
					   __Opts,
					   [{xmlel, <<"body">>, _attrs, _} = _el
					    | _els],
					   Replaced, Body, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#history">> ->
	  decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						     __Opts, _els, Replaced,
						     decode_xabbergroupchat_replace_message_body(<<"http://xabber.com/protocol/groupchat#history">>,
												 __Opts,
												 _el),
						     __Els);
      _ ->
	  decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						     __Opts, _els, Replaced,
						     Body, [_el | __Els])
    end;
decode_xabbergroupchat_replace_message_els(__TopXMLNS,
					   __Opts,
					   [{xmlel, <<"replaced">>, _attrs, _} =
						_el
					    | _els],
					   Replaced, Body, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#history">> ->
	  decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						     __Opts, _els,
						     decode_xabbergroupchat_replaced(<<"http://xabber.com/protocol/groupchat#history">>,
										     __Opts,
										     _el),
						     Body, __Els);
      _ ->
	  decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						     __Opts, _els, Replaced,
						     Body, [_el | __Els])
    end;
decode_xabbergroupchat_replace_message_els(__TopXMLNS,
					   __Opts,
					   [{xmlel, _name, _attrs, _} = _el
					    | _els],
					   Replaced, Body, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						     __Opts, _els, Replaced,
						     Body, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabbergroupchat_replace_message_els(__TopXMLNS,
							   __Opts, _els,
							   Replaced, Body,
							   [_el | __Els]);
	    Mod ->
		decode_xabbergroupchat_replace_message_els(__TopXMLNS,
							   __Opts, _els,
							   Replaced, Body,
							   [Mod:do_decode(_name,
									  __XMLNS,
									  _el,
									  __Opts)
							    | __Els])
	  end
    end;
decode_xabbergroupchat_replace_message_els(__TopXMLNS,
					   __Opts, [_ | _els], Replaced, Body,
					   __Els) ->
    decode_xabbergroupchat_replace_message_els(__TopXMLNS,
					       __Opts, _els, Replaced, Body,
					       __Els).

decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
					     [{<<"from">>, _val} | _attrs],
					     _From, To) ->
    decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
						 _attrs, _val, To);
decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
					     [{<<"to">>, _val} | _attrs], From,
					     _To) ->
    decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
						 _attrs, From, _val);
decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
					     [_ | _attrs], From, To) ->
    decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
						 _attrs, From, To);
decode_xabbergroupchat_replace_message_attrs(__TopXMLNS,
					     [], From, To) ->
    {decode_xabbergroupchat_replace_message_attr_from(__TopXMLNS,
						      From),
     decode_xabbergroupchat_replace_message_attr_to(__TopXMLNS,
						    To)}.

encode_xabbergroupchat_replace_message({xabbergroupchat_replace_message,
					From, To, Body, Replaced, __Els},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_xabbergroupchat_replace_message_$replaced'(Replaced,
									      __NewTopXMLNS,
									      'encode_xabbergroupchat_replace_message_$body'(Body,
															     __NewTopXMLNS,
															     []))),
    _attrs =
	encode_xabbergroupchat_replace_message_attr_to(To,
						       encode_xabbergroupchat_replace_message_attr_from(From,
													xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																   __TopXMLNS))),
    {xmlel, <<"message">>, _attrs, _els}.

'encode_xabbergroupchat_replace_message_$replaced'(undefined,
						   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_replace_message_$replaced'(Replaced,
						   __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_replaced(Replaced, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_replace_message_$body'(undefined,
					       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_replace_message_$body'(Body,
					       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_replace_message_body(Body,
						 __TopXMLNS)
     | _acc].

decode_xabbergroupchat_replace_message_attr_from(__TopXMLNS,
						 undefined) ->
    <<>>;
decode_xabbergroupchat_replace_message_attr_from(__TopXMLNS,
						 _val) ->
    _val.

encode_xabbergroupchat_replace_message_attr_from(<<>>,
						 _acc) ->
    _acc;
encode_xabbergroupchat_replace_message_attr_from(_val,
						 _acc) ->
    [{<<"from">>, _val} | _acc].

decode_xabbergroupchat_replace_message_attr_to(__TopXMLNS,
					       undefined) ->
    <<>>;
decode_xabbergroupchat_replace_message_attr_to(__TopXMLNS,
					       _val) ->
    _val.

encode_xabbergroupchat_replace_message_attr_to(<<>>,
					       _acc) ->
    _acc;
encode_xabbergroupchat_replace_message_attr_to(_val,
					       _acc) ->
    [{<<"to">>, _val} | _acc].

decode_xabbergroupchat_replace(__TopXMLNS, __Opts,
			       {xmlel, <<"replace">>, _attrs, _els}) ->
    Message = decode_xabbergroupchat_replace_els(__TopXMLNS,
						 __Opts, _els, undefined),
    {Id, Version} =
	decode_xabbergroupchat_replace_attrs(__TopXMLNS, _attrs,
					     undefined, undefined),
    {xabbergroupchat_replace, Id, Version, Message}.

decode_xabbergroupchat_replace_els(__TopXMLNS, __Opts,
				   [], Message) ->
    Message;
decode_xabbergroupchat_replace_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"message">>, _attrs, _} = _el
				    | _els],
				   Message) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#history">> ->
	  decode_xabbergroupchat_replace_els(__TopXMLNS, __Opts,
					     _els,
					     decode_xabbergroupchat_replace_message(<<"http://xabber.com/protocol/groupchat#history">>,
										    __Opts,
										    _el));
      _ ->
	  decode_xabbergroupchat_replace_els(__TopXMLNS, __Opts,
					     _els, Message)
    end;
decode_xabbergroupchat_replace_els(__TopXMLNS, __Opts,
				   [_ | _els], Message) ->
    decode_xabbergroupchat_replace_els(__TopXMLNS, __Opts,
				       _els, Message).

decode_xabbergroupchat_replace_attrs(__TopXMLNS,
				     [{<<"id">>, _val} | _attrs], _Id,
				     Version) ->
    decode_xabbergroupchat_replace_attrs(__TopXMLNS, _attrs,
					 _val, Version);
decode_xabbergroupchat_replace_attrs(__TopXMLNS,
				     [{<<"version">>, _val} | _attrs], Id,
				     _Version) ->
    decode_xabbergroupchat_replace_attrs(__TopXMLNS, _attrs,
					 Id, _val);
decode_xabbergroupchat_replace_attrs(__TopXMLNS,
				     [_ | _attrs], Id, Version) ->
    decode_xabbergroupchat_replace_attrs(__TopXMLNS, _attrs,
					 Id, Version);
decode_xabbergroupchat_replace_attrs(__TopXMLNS, [], Id,
				     Version) ->
    {decode_xabbergroupchat_replace_attr_id(__TopXMLNS, Id),
     decode_xabbergroupchat_replace_attr_version(__TopXMLNS,
						 Version)}.

encode_xabbergroupchat_replace({xabbergroupchat_replace,
				Id, Version, Message},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_replace_$message'(Message,
								__NewTopXMLNS,
								[])),
    _attrs =
	encode_xabbergroupchat_replace_attr_version(Version,
						    encode_xabbergroupchat_replace_attr_id(Id,
											   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
														      __TopXMLNS))),
    {xmlel, <<"replace">>, _attrs, _els}.

'encode_xabbergroupchat_replace_$message'(undefined,
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_replace_$message'(Message,
					  __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_replace_message(Message,
					    __TopXMLNS)
     | _acc].

decode_xabbergroupchat_replace_attr_id(__TopXMLNS,
				       undefined) ->
    <<>>;
decode_xabbergroupchat_replace_attr_id(__TopXMLNS,
				       _val) ->
    _val.

encode_xabbergroupchat_replace_attr_id(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_replace_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_replace_attr_version(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_xabbergroupchat_replace_attr_version(__TopXMLNS,
					    _val) ->
    _val.

encode_xabbergroupchat_replace_attr_version(<<>>,
					    _acc) ->
    _acc;
encode_xabbergroupchat_replace_attr_version(_val,
					    _acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_replaced(__TopXMLNS, __Opts,
				{xmlel, <<"replaced">>, _attrs, _els}) ->
    Stamp =
	decode_xabbergroupchat_replaced_attrs(__TopXMLNS,
					      _attrs, undefined),
    {xabbergroupchat_replaced, Stamp}.

decode_xabbergroupchat_replaced_attrs(__TopXMLNS,
				      [{<<"stamp">>, _val} | _attrs], _Stamp) ->
    decode_xabbergroupchat_replaced_attrs(__TopXMLNS,
					  _attrs, _val);
decode_xabbergroupchat_replaced_attrs(__TopXMLNS,
				      [_ | _attrs], Stamp) ->
    decode_xabbergroupchat_replaced_attrs(__TopXMLNS,
					  _attrs, Stamp);
decode_xabbergroupchat_replaced_attrs(__TopXMLNS, [],
				      Stamp) ->
    decode_xabbergroupchat_replaced_attr_stamp(__TopXMLNS,
					       Stamp).

encode_xabbergroupchat_replaced({xabbergroupchat_replaced,
				 Stamp},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_replaced_attr_stamp(Stamp,
						   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									      __TopXMLNS)),
    {xmlel, <<"replaced">>, _attrs, _els}.

decode_xabbergroupchat_replaced_attr_stamp(__TopXMLNS,
					   undefined) ->
    <<>>;
decode_xabbergroupchat_replaced_attr_stamp(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_replaced_attr_stamp(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_replaced_attr_stamp(_val,
					   _acc) ->
    [{<<"stamp">>, _val} | _acc].

decode_xabbergroupchat_retract_invalidate(__TopXMLNS,
					  __Opts,
					  {xmlel, <<"invalidate">>, _attrs,
					   _els}) ->
    Version =
	decode_xabbergroupchat_retract_invalidate_attrs(__TopXMLNS,
							_attrs, undefined),
    {xabbergroupchat_retract_invalidate, Version}.

decode_xabbergroupchat_retract_invalidate_attrs(__TopXMLNS,
						[{<<"version">>, _val}
						 | _attrs],
						_Version) ->
    decode_xabbergroupchat_retract_invalidate_attrs(__TopXMLNS,
						    _attrs, _val);
decode_xabbergroupchat_retract_invalidate_attrs(__TopXMLNS,
						[_ | _attrs], Version) ->
    decode_xabbergroupchat_retract_invalidate_attrs(__TopXMLNS,
						    _attrs, Version);
decode_xabbergroupchat_retract_invalidate_attrs(__TopXMLNS,
						[], Version) ->
    decode_xabbergroupchat_retract_invalidate_attr_version(__TopXMLNS,
							   Version).

encode_xabbergroupchat_retract_invalidate({xabbergroupchat_retract_invalidate,
					   Version},
					  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_retract_invalidate_attr_version(Version,
							       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
											  __TopXMLNS)),
    {xmlel, <<"invalidate">>, _attrs, _els}.

decode_xabbergroupchat_retract_invalidate_attr_version(__TopXMLNS,
						       undefined) ->
    <<>>;
decode_xabbergroupchat_retract_invalidate_attr_version(__TopXMLNS,
						       _val) ->
    _val.

encode_xabbergroupchat_retract_invalidate_attr_version(<<>>,
						       _acc) ->
    _acc;
encode_xabbergroupchat_retract_invalidate_attr_version(_val,
						       _acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_retract_all(__TopXMLNS, __Opts,
				   {xmlel, <<"retract-all">>, _attrs, _els}) ->
    Version =
	decode_xabbergroupchat_retract_all_attrs(__TopXMLNS,
						 _attrs, undefined),
    {xabbergroupchat_retract_all, Version}.

decode_xabbergroupchat_retract_all_attrs(__TopXMLNS,
					 [{<<"version">>, _val} | _attrs],
					 _Version) ->
    decode_xabbergroupchat_retract_all_attrs(__TopXMLNS,
					     _attrs, _val);
decode_xabbergroupchat_retract_all_attrs(__TopXMLNS,
					 [_ | _attrs], Version) ->
    decode_xabbergroupchat_retract_all_attrs(__TopXMLNS,
					     _attrs, Version);
decode_xabbergroupchat_retract_all_attrs(__TopXMLNS, [],
					 Version) ->
    decode_xabbergroupchat_retract_all_attr_version(__TopXMLNS,
						    Version).

encode_xabbergroupchat_retract_all({xabbergroupchat_retract_all,
				    Version},
				   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_retract_all_attr_version(Version,
							xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										   __TopXMLNS)),
    {xmlel, <<"retract-all">>, _attrs, _els}.

decode_xabbergroupchat_retract_all_attr_version(__TopXMLNS,
						undefined) ->
    <<>>;
decode_xabbergroupchat_retract_all_attr_version(__TopXMLNS,
						_val) ->
    _val.

encode_xabbergroupchat_retract_all_attr_version(<<>>,
						_acc) ->
    _acc;
encode_xabbergroupchat_retract_all_attr_version(_val,
						_acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_retract_user(__TopXMLNS, __Opts,
				    {xmlel, <<"retract-user">>, _attrs,
				     _els}) ->
    {Id, Version} =
	decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
						  _attrs, undefined, undefined),
    {xabbergroupchat_retract_user, Id, Version}.

decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
					  [{<<"id">>, _val} | _attrs], _Id,
					  Version) ->
    decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
					      _attrs, _val, Version);
decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
					  [{<<"version">>, _val} | _attrs], Id,
					  _Version) ->
    decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
					      _attrs, Id, _val);
decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
					  [_ | _attrs], Id, Version) ->
    decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
					      _attrs, Id, Version);
decode_xabbergroupchat_retract_user_attrs(__TopXMLNS,
					  [], Id, Version) ->
    {decode_xabbergroupchat_retract_user_attr_id(__TopXMLNS,
						 Id),
     decode_xabbergroupchat_retract_user_attr_version(__TopXMLNS,
						      Version)}.

encode_xabbergroupchat_retract_user({xabbergroupchat_retract_user,
				     Id, Version},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_retract_user_attr_version(Version,
							 encode_xabbergroupchat_retract_user_attr_id(Id,
												     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																__TopXMLNS))),
    {xmlel, <<"retract-user">>, _attrs, _els}.

decode_xabbergroupchat_retract_user_attr_id(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_xabbergroupchat_retract_user_attr_id(__TopXMLNS,
					    _val) ->
    _val.

encode_xabbergroupchat_retract_user_attr_id(<<>>,
					    _acc) ->
    _acc;
encode_xabbergroupchat_retract_user_attr_id(_val,
					    _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_retract_user_attr_version(__TopXMLNS,
						 undefined) ->
    <<>>;
decode_xabbergroupchat_retract_user_attr_version(__TopXMLNS,
						 _val) ->
    _val.

encode_xabbergroupchat_retract_user_attr_version(<<>>,
						 _acc) ->
    _acc;
encode_xabbergroupchat_retract_user_attr_version(_val,
						 _acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_retract_message(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"retract-message">>, _attrs,
					_els}) ->
    {Id, Version} =
	decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
						     _attrs, undefined,
						     undefined),
    {xabbergroupchat_retract_message, Id, Version}.

decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
					     [{<<"id">>, _val} | _attrs], _Id,
					     Version) ->
    decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
						 _attrs, _val, Version);
decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
					     [{<<"version">>, _val} | _attrs],
					     Id, _Version) ->
    decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
						 _attrs, Id, _val);
decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
					     [_ | _attrs], Id, Version) ->
    decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
						 _attrs, Id, Version);
decode_xabbergroupchat_retract_message_attrs(__TopXMLNS,
					     [], Id, Version) ->
    {decode_xabbergroupchat_retract_message_attr_id(__TopXMLNS,
						    Id),
     decode_xabbergroupchat_retract_message_attr_version(__TopXMLNS,
							 Version)}.

encode_xabbergroupchat_retract_message({xabbergroupchat_retract_message,
					Id, Version},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#history">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_retract_message_attr_version(Version,
							    encode_xabbergroupchat_retract_message_attr_id(Id,
													   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																      __TopXMLNS))),
    {xmlel, <<"retract-message">>, _attrs, _els}.

decode_xabbergroupchat_retract_message_attr_id(__TopXMLNS,
					       undefined) ->
    <<>>;
decode_xabbergroupchat_retract_message_attr_id(__TopXMLNS,
					       _val) ->
    _val.

encode_xabbergroupchat_retract_message_attr_id(<<>>,
					       _acc) ->
    _acc;
encode_xabbergroupchat_retract_message_attr_id(_val,
					       _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_retract_message_attr_version(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_xabbergroupchat_retract_message_attr_version(__TopXMLNS,
						    _val) ->
    _val.

encode_xabbergroupchat_retract_message_attr_version(<<>>,
						    _acc) ->
    _acc;
encode_xabbergroupchat_retract_message_attr_version(_val,
						    _acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_retract_query(__TopXMLNS, __Opts,
				     {xmlel, <<"query">>, _attrs, _els}) ->
    {Version, Less_than} =
	decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
						   _attrs, undefined,
						   undefined),
    {xabbergroupchat_retract_query, Version, Less_than}.

decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
					   [{<<"version">>, _val} | _attrs],
					   _Version, Less_than) ->
    decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
					       _attrs, _val, Less_than);
decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
					   [{<<"less_than">>, _val} | _attrs],
					   Version, _Less_than) ->
    decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
					       _attrs, Version, _val);
decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
					   [_ | _attrs], Version, Less_than) ->
    decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
					       _attrs, Version, Less_than);
decode_xabbergroupchat_retract_query_attrs(__TopXMLNS,
					   [], Version, Less_than) ->
    {decode_xabbergroupchat_retract_query_attr_version(__TopXMLNS,
						       Version),
     decode_xabbergroupchat_retract_query_attr_less_than(__TopXMLNS,
							 Less_than)}.

encode_xabbergroupchat_retract_query({xabbergroupchat_retract_query,
				      Version, Less_than},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/retract">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_retract_query_attr_less_than(Less_than,
							    encode_xabbergroupchat_retract_query_attr_version(Version,
													      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																	 __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

decode_xabbergroupchat_retract_query_attr_version(__TopXMLNS,
						  undefined) ->
    <<>>;
decode_xabbergroupchat_retract_query_attr_version(__TopXMLNS,
						  _val) ->
    _val.

encode_xabbergroupchat_retract_query_attr_version(<<>>,
						  _acc) ->
    _acc;
encode_xabbergroupchat_retract_query_attr_version(_val,
						  _acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_retract_query_attr_less_than(__TopXMLNS,
						    undefined) ->
    <<>>;
decode_xabbergroupchat_retract_query_attr_less_than(__TopXMLNS,
						    _val) ->
    _val.

encode_xabbergroupchat_retract_query_attr_less_than(<<>>,
						    _acc) ->
    _acc;
encode_xabbergroupchat_retract_query_attr_less_than(_val,
						    _acc) ->
    [{<<"less_than">>, _val} | _acc].

decode_xabbergroupchat_query_localpart(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"localpart">>, _attrs,
					_els}) ->
    Cdata =
	decode_xabbergroupchat_query_localpart_els(__TopXMLNS,
						   __Opts, _els, <<>>),
    {xabbergroupchat_localpart, Cdata}.

decode_xabbergroupchat_query_localpart_els(__TopXMLNS,
					   __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_localpart_cdata(__TopXMLNS,
						 Cdata);
decode_xabbergroupchat_query_localpart_els(__TopXMLNS,
					   __Opts, [{xmlcdata, _data} | _els],
					   Cdata) ->
    decode_xabbergroupchat_query_localpart_els(__TopXMLNS,
					       __Opts, _els,
					       <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_localpart_els(__TopXMLNS,
					   __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_localpart_els(__TopXMLNS,
					       __Opts, _els, Cdata).

encode_xabbergroupchat_query_localpart({xabbergroupchat_localpart,
					Cdata},
				       __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els =
	encode_xabbergroupchat_query_localpart_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"localpart">>, _attrs, _els}.

decode_xabbergroupchat_query_localpart_cdata(__TopXMLNS,
					     <<>>) ->
    <<>>;
decode_xabbergroupchat_query_localpart_cdata(__TopXMLNS,
					     _val) ->
    _val.

encode_xabbergroupchat_query_localpart_cdata(<<>>,
					     _acc) ->
    _acc;
encode_xabbergroupchat_query_localpart_cdata(_val,
					     _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_membership(__TopXMLNS,
					__Opts,
					{xmlel, <<"membership">>, _attrs,
					 _els}) ->
    Cdata =
	decode_xabbergroupchat_query_membership_els(__TopXMLNS,
						    __Opts, _els, <<>>),
    {xabbergroupchat_membership, Cdata}.

decode_xabbergroupchat_query_membership_els(__TopXMLNS,
					    __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_membership_cdata(__TopXMLNS,
						  Cdata);
decode_xabbergroupchat_query_membership_els(__TopXMLNS,
					    __Opts, [{xmlcdata, _data} | _els],
					    Cdata) ->
    decode_xabbergroupchat_query_membership_els(__TopXMLNS,
						__Opts, _els,
						<<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_membership_els(__TopXMLNS,
					    __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_membership_els(__TopXMLNS,
						__Opts, _els, Cdata).

encode_xabbergroupchat_query_membership({xabbergroupchat_membership,
					 Cdata},
					__TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els =
	encode_xabbergroupchat_query_membership_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"membership">>, _attrs, _els}.

decode_xabbergroupchat_query_membership_cdata(__TopXMLNS,
					      <<>>) ->
    <<>>;
decode_xabbergroupchat_query_membership_cdata(__TopXMLNS,
					      _val) ->
    _val.

encode_xabbergroupchat_query_membership_cdata(<<>>,
					      _acc) ->
    _acc;
encode_xabbergroupchat_query_membership_cdata(_val,
					      _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_description(__TopXMLNS,
					 __Opts,
					 {xmlel, <<"description">>, _attrs,
					  _els}) ->
    Cdata =
	decode_xabbergroupchat_query_description_els(__TopXMLNS,
						     __Opts, _els, <<>>),
    {xabbergroupchat_description, Cdata}.

decode_xabbergroupchat_query_description_els(__TopXMLNS,
					     __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_description_cdata(__TopXMLNS,
						   Cdata);
decode_xabbergroupchat_query_description_els(__TopXMLNS,
					     __Opts, [{xmlcdata, _data} | _els],
					     Cdata) ->
    decode_xabbergroupchat_query_description_els(__TopXMLNS,
						 __Opts, _els,
						 <<Cdata/binary,
						   _data/binary>>);
decode_xabbergroupchat_query_description_els(__TopXMLNS,
					     __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_description_els(__TopXMLNS,
						 __Opts, _els, Cdata).

encode_xabbergroupchat_query_description({xabbergroupchat_description,
					  Cdata},
					 __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els =
	encode_xabbergroupchat_query_description_cdata(Cdata,
						       []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"description">>, _attrs, _els}.

decode_xabbergroupchat_query_description_cdata(__TopXMLNS,
					       <<>>) ->
    <<>>;
decode_xabbergroupchat_query_description_cdata(__TopXMLNS,
					       _val) ->
    _val.

encode_xabbergroupchat_query_description_cdata(<<>>,
					       _acc) ->
    _acc;
encode_xabbergroupchat_query_description_cdata(_val,
					       _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_privacy(__TopXMLNS, __Opts,
				     {xmlel, <<"privacy">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_query_privacy_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    {xabbergroupchat_privacy, Cdata}.

decode_xabbergroupchat_query_privacy_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_privacy_cdata(__TopXMLNS,
					       Cdata);
decode_xabbergroupchat_query_privacy_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_xabbergroupchat_query_privacy_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_privacy_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_privacy_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_xabbergroupchat_query_privacy({xabbergroupchat_privacy,
				      Cdata},
				     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_query_privacy_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"privacy">>, _attrs, _els}.

decode_xabbergroupchat_query_privacy_cdata(__TopXMLNS,
					   <<>>) ->
    <<>>;
decode_xabbergroupchat_query_privacy_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_query_privacy_cdata(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_query_privacy_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_status(__TopXMLNS, __Opts,
				    {xmlel, <<"status">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_query_status_els(__TopXMLNS,
						__Opts, _els, <<>>),
    {xabbergroupchat_status, Cdata}.

decode_xabbergroupchat_query_status_els(__TopXMLNS,
					__Opts, [], Cdata) ->
    decode_xabbergroupchat_query_status_cdata(__TopXMLNS,
					      Cdata);
decode_xabbergroupchat_query_status_els(__TopXMLNS,
					__Opts, [{xmlcdata, _data} | _els],
					Cdata) ->
    decode_xabbergroupchat_query_status_els(__TopXMLNS,
					    __Opts, _els,
					    <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_status_els(__TopXMLNS,
					__Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_status_els(__TopXMLNS,
					    __Opts, _els, Cdata).

encode_xabbergroupchat_query_status({xabbergroupchat_status,
				     Cdata},
				    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_query_status_cdata(Cdata,
						     []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"status">>, _attrs, _els}.

decode_xabbergroupchat_query_status_cdata(__TopXMLNS,
					  <<>>) ->
    <<>>;
decode_xabbergroupchat_query_status_cdata(__TopXMLNS,
					  _val) ->
    _val.

encode_xabbergroupchat_query_status_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_query_status_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_name(__TopXMLNS, __Opts,
				  {xmlel, <<"name">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_query_name_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    {xabbergroupchat_name, Cdata}.

decode_xabbergroupchat_query_name_els(__TopXMLNS,
				      __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_name_cdata(__TopXMLNS,
					    Cdata);
decode_xabbergroupchat_query_name_els(__TopXMLNS,
				      __Opts, [{xmlcdata, _data} | _els],
				      Cdata) ->
    decode_xabbergroupchat_query_name_els(__TopXMLNS,
					  __Opts, _els,
					  <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_name_els(__TopXMLNS,
				      __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_name_els(__TopXMLNS,
					  __Opts, _els, Cdata).

encode_xabbergroupchat_query_name({xabbergroupchat_name,
				   Cdata},
				  __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_query_name_cdata(Cdata,
						   []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"name">>, _attrs, _els}.

decode_xabbergroupchat_query_name_cdata(__TopXMLNS,
					<<>>) ->
    <<>>;
decode_xabbergroupchat_query_name_cdata(__TopXMLNS,
					_val) ->
    _val.

encode_xabbergroupchat_query_name_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_query_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_index(__TopXMLNS, __Opts,
				   {xmlel, <<"index">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_query_index_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    {xabbergroupchat_index, Cdata}.

decode_xabbergroupchat_query_index_els(__TopXMLNS,
				       __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_index_cdata(__TopXMLNS,
					     Cdata);
decode_xabbergroupchat_query_index_els(__TopXMLNS,
				       __Opts, [{xmlcdata, _data} | _els],
				       Cdata) ->
    decode_xabbergroupchat_query_index_els(__TopXMLNS,
					   __Opts, _els,
					   <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_index_els(__TopXMLNS,
				       __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_index_els(__TopXMLNS,
					   __Opts, _els, Cdata).

encode_xabbergroupchat_query_index({xabbergroupchat_index,
				    Cdata},
				   __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_query_index_cdata(Cdata,
						    []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"index">>, _attrs, _els}.

decode_xabbergroupchat_query_index_cdata(__TopXMLNS,
					 <<>>) ->
    <<>>;
decode_xabbergroupchat_query_index_cdata(__TopXMLNS,
					 _val) ->
    _val.

encode_xabbergroupchat_query_index_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_query_index_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_message(__TopXMLNS, __Opts,
				     {xmlel, <<"pinned-message">>, _attrs,
				      _els}) ->
    Cdata =
	decode_xabbergroupchat_query_message_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    {xabbergroupchat_pinned_message, Cdata}.

decode_xabbergroupchat_query_message_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_message_cdata(__TopXMLNS,
					       Cdata);
decode_xabbergroupchat_query_message_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_xabbergroupchat_query_message_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_message_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_message_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_xabbergroupchat_query_message({xabbergroupchat_pinned_message,
				      Cdata},
				     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_query_message_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"pinned-message">>, _attrs, _els}.

decode_xabbergroupchat_query_message_cdata(__TopXMLNS,
					   <<>>) ->
    <<>>;
decode_xabbergroupchat_query_message_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_query_message_cdata(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_query_message_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_domain(__TopXMLNS, __Opts,
				    {xmlel, <<"domain">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_query_domain_els(__TopXMLNS,
						__Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_query_domain_els(__TopXMLNS,
					__Opts, [], Cdata) ->
    decode_xabbergroupchat_query_domain_cdata(__TopXMLNS,
					      Cdata);
decode_xabbergroupchat_query_domain_els(__TopXMLNS,
					__Opts, [{xmlcdata, _data} | _els],
					Cdata) ->
    decode_xabbergroupchat_query_domain_els(__TopXMLNS,
					    __Opts, _els,
					    <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_domain_els(__TopXMLNS,
					__Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_domain_els(__TopXMLNS,
					    __Opts, _els, Cdata).

encode_xabbergroupchat_query_domain(Cdata,
				    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_query_domain_cdata(Cdata,
						     []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domain">>, _attrs, _els}.

decode_xabbergroupchat_query_domain_cdata(__TopXMLNS,
					  <<>>) ->
    <<>>;
decode_xabbergroupchat_query_domain_cdata(__TopXMLNS,
					  _val) ->
    _val.

encode_xabbergroupchat_query_domain_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_query_domain_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_domains(__TopXMLNS, __Opts,
				     {xmlel, <<"domains">>, _attrs, _els}) ->
    Domain =
	decode_xabbergroupchat_query_domains_els(__TopXMLNS,
						 __Opts, _els, []),
    {xabbergroup_domains, Domain}.

decode_xabbergroupchat_query_domains_els(__TopXMLNS,
					 __Opts, [], Domain) ->
    lists:reverse(Domain);
decode_xabbergroupchat_query_domains_els(__TopXMLNS,
					 __Opts,
					 [{xmlel, <<"domain">>, _attrs, _} = _el
					  | _els],
					 Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_query_domains_els(__TopXMLNS,
						   __Opts, _els,
						   [decode_xabbergroupchat_query_domain(<<"http://xabber.com/protocol/groupchat">>,
											__Opts,
											_el)
						    | Domain]);
      <<"http://xabber.com/protocol/groupchat#create">> ->
	  decode_xabbergroupchat_query_domains_els(__TopXMLNS,
						   __Opts, _els,
						   [decode_xabbergroupchat_query_domain(<<"http://xabber.com/protocol/groupchat#create">>,
											__Opts,
											_el)
						    | Domain]);
      _ ->
	  decode_xabbergroupchat_query_domains_els(__TopXMLNS,
						   __Opts, _els, Domain)
    end;
decode_xabbergroupchat_query_domains_els(__TopXMLNS,
					 __Opts, [_ | _els], Domain) ->
    decode_xabbergroupchat_query_domains_els(__TopXMLNS,
					     __Opts, _els, Domain).

encode_xabbergroupchat_query_domains({xabbergroup_domains,
				      Domain},
				     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_query_domains_$domain'(Domain,
								     __NewTopXMLNS,
								     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domains">>, _attrs, _els}.

'encode_xabbergroupchat_query_domains_$domain'([],
					       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_query_domains_$domain'([Domain
						| _els],
					       __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_query_domains_$domain'(_els,
						   __TopXMLNS,
						   [encode_xabbergroupchat_query_domain(Domain,
											__TopXMLNS)
						    | _acc]).

decode_xabbergroupchat_query_contact(__TopXMLNS, __Opts,
				     {xmlel, <<"contact">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_query_contact_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_query_contact_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_xabbergroupchat_query_contact_cdata(__TopXMLNS,
					       Cdata);
decode_xabbergroupchat_query_contact_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_xabbergroupchat_query_contact_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_query_contact_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_query_contact_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_xabbergroupchat_query_contact(Cdata,
				     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_query_contact_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contact">>, _attrs, _els}.

decode_xabbergroupchat_query_contact_cdata(__TopXMLNS,
					   <<>>) ->
    <<>>;
decode_xabbergroupchat_query_contact_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_query_contact_cdata(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_query_contact_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_contacts(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"contacts">>, _attrs, _els}) ->
    Contact =
	decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
						  __Opts, _els, []),
    {xabbergroup_contacts, Contact}.

decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
					  __Opts, [], Contact) ->
    lists:reverse(Contact);
decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
					  __Opts,
					  [{xmlel, <<"contact">>, _attrs, _} =
					       _el
					   | _els],
					  Contact) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
						    __Opts, _els,
						    [decode_xabbergroupchat_query_contact(<<"http://xabber.com/protocol/groupchat">>,
											  __Opts,
											  _el)
						     | Contact]);
      <<"http://xabber.com/protocol/groupchat#create">> ->
	  decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
						    __Opts, _els,
						    [decode_xabbergroupchat_query_contact(<<"http://xabber.com/protocol/groupchat#create">>,
											  __Opts,
											  _el)
						     | Contact]);
      _ ->
	  decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
						    __Opts, _els, Contact)
    end;
decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
					  __Opts, [_ | _els], Contact) ->
    decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
					      __Opts, _els, Contact).

encode_xabbergroupchat_query_contacts({xabbergroup_contacts,
				       Contact},
				      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_query_contacts_$contact'(Contact,
								       __NewTopXMLNS,
								       [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contacts">>, _attrs, _els}.

'encode_xabbergroupchat_query_contacts_$contact'([],
						 __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_query_contacts_$contact'([Contact
						  | _els],
						 __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_query_contacts_$contact'(_els,
						     __TopXMLNS,
						     [encode_xabbergroupchat_query_contact(Contact,
											   __TopXMLNS)
						      | _acc]).

decode_xabbergroupchat(__TopXMLNS, __Opts,
		       {xmlel, <<"query">>, _attrs, _els}) ->
    __Els = decode_xabbergroupchat_els(__TopXMLNS, __Opts,
				       _els, []),
    Xmlns = decode_xabbergroupchat_attrs(__TopXMLNS, _attrs,
					 undefined),
    {xabbergroupchat, Xmlns, __Els}.

decode_xabbergroupchat_els(__TopXMLNS, __Opts, [],
			   __Els) ->
    lists:reverse(__Els);
decode_xabbergroupchat_els(__TopXMLNS, __Opts,
			   [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
				     [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
					   [_el | __Els]);
	    Mod ->
		decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
					   [Mod:do_decode(_name, __XMLNS, _el,
							  __Opts)
					    | __Els])
	  end
    end;
decode_xabbergroupchat_els(__TopXMLNS, __Opts,
			   [_ | _els], __Els) ->
    decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
			       __Els).

decode_xabbergroupchat_attrs(__TopXMLNS,
			     [{<<"xmlns">>, _val} | _attrs], _Xmlns) ->
    decode_xabbergroupchat_attrs(__TopXMLNS, _attrs, _val);
decode_xabbergroupchat_attrs(__TopXMLNS, [_ | _attrs],
			     Xmlns) ->
    decode_xabbergroupchat_attrs(__TopXMLNS, _attrs, Xmlns);
decode_xabbergroupchat_attrs(__TopXMLNS, [], Xmlns) ->
    decode_xabbergroupchat_attr_xmlns(__TopXMLNS, Xmlns).

encode_xabbergroupchat({xabbergroupchat, Xmlns, __Els},
		       __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#create">>,
						 <<"http://xabber.com/protocol/groupchat#default-"
						   "rights">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

decode_xabbergroupchat_attr_xmlns(__TopXMLNS,
				  undefined) ->
    <<>>;
decode_xabbergroupchat_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_xabbergroupchat_user_id(__TopXMLNS, __Opts,
			       {xmlel, <<"id">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_user_id_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_user_id_els(__TopXMLNS, __Opts,
				   [], Cdata) ->
    decode_xabbergroupchat_user_id_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_user_id_els(__TopXMLNS, __Opts,
				   [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_user_id_els(__TopXMLNS, __Opts,
				       _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_user_id_els(__TopXMLNS, __Opts,
				   [_ | _els], Cdata) ->
    decode_xabbergroupchat_user_id_els(__TopXMLNS, __Opts,
				       _els, Cdata).

encode_xabbergroupchat_user_id(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_user_id_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"id">>, _attrs, _els}.

decode_xabbergroupchat_user_id_cdata(__TopXMLNS,
				     <<>>) ->
    <<>>;
decode_xabbergroupchat_user_id_cdata(__TopXMLNS,
				     _val) ->
    _val.

encode_xabbergroupchat_user_id_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_user_id_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_user_badge(__TopXMLNS, __Opts,
				  {xmlel, <<"badge">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_user_badge_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_user_badge_els(__TopXMLNS,
				      __Opts, [], Cdata) ->
    decode_xabbergroupchat_user_badge_cdata(__TopXMLNS,
					    Cdata);
decode_xabbergroupchat_user_badge_els(__TopXMLNS,
				      __Opts, [{xmlcdata, _data} | _els],
				      Cdata) ->
    decode_xabbergroupchat_user_badge_els(__TopXMLNS,
					  __Opts, _els,
					  <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_user_badge_els(__TopXMLNS,
				      __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_user_badge_els(__TopXMLNS,
					  __Opts, _els, Cdata).

encode_xabbergroupchat_user_badge(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_user_badge_cdata(Cdata,
						   []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"badge">>, _attrs, _els}.

decode_xabbergroupchat_user_badge_cdata(__TopXMLNS,
					<<>>) ->
    <<>>;
decode_xabbergroupchat_user_badge_cdata(__TopXMLNS,
					_val) ->
    _val.

encode_xabbergroupchat_user_badge_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_user_badge_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_user_nickname(__TopXMLNS, __Opts,
				     {xmlel, <<"nickname">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_user_nickname_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_user_nickname_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_xabbergroupchat_user_nickname_cdata(__TopXMLNS,
					       Cdata);
decode_xabbergroupchat_user_nickname_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_xabbergroupchat_user_nickname_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_user_nickname_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_user_nickname_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_xabbergroupchat_user_nickname(Cdata,
				     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_user_nickname_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"nickname">>, _attrs, _els}.

decode_xabbergroupchat_user_nickname_cdata(__TopXMLNS,
					   <<>>) ->
    <<>>;
decode_xabbergroupchat_user_nickname_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_user_nickname_cdata(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_user_nickname_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_subscription(__TopXMLNS, __Opts,
				    {xmlel, <<"subscription">>, _attrs,
				     _els}) ->
    Cdata =
	decode_xabbergroupchat_subscription_els(__TopXMLNS,
						__Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_subscription_els(__TopXMLNS,
					__Opts, [], Cdata) ->
    decode_xabbergroupchat_subscription_cdata(__TopXMLNS,
					      Cdata);
decode_xabbergroupchat_subscription_els(__TopXMLNS,
					__Opts, [{xmlcdata, _data} | _els],
					Cdata) ->
    decode_xabbergroupchat_subscription_els(__TopXMLNS,
					    __Opts, _els,
					    <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_subscription_els(__TopXMLNS,
					__Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_subscription_els(__TopXMLNS,
					    __Opts, _els, Cdata).

encode_xabbergroupchat_subscription(Cdata,
				    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_subscription_cdata(Cdata,
						     []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"subscription">>, _attrs, _els}.

decode_xabbergroupchat_subscription_cdata(__TopXMLNS,
					  <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"subscription">>, __TopXMLNS}});
decode_xabbergroupchat_subscription_cdata(__TopXMLNS,
					  _val) ->
    _val.

encode_xabbergroupchat_subscription_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_user_role(__TopXMLNS, __Opts,
				 {xmlel, <<"role">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_user_role_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_user_role_els(__TopXMLNS, __Opts,
				     [], Cdata) ->
    decode_xabbergroupchat_user_role_cdata(__TopXMLNS,
					   Cdata);
decode_xabbergroupchat_user_role_els(__TopXMLNS, __Opts,
				     [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_user_role_els(__TopXMLNS, __Opts,
					 _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_user_role_els(__TopXMLNS, __Opts,
				     [_ | _els], Cdata) ->
    decode_xabbergroupchat_user_role_els(__TopXMLNS, __Opts,
					 _els, Cdata).

encode_xabbergroupchat_user_role(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_user_role_cdata(Cdata,
						  []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"role">>, _attrs, _els}.

decode_xabbergroupchat_user_role_cdata(__TopXMLNS,
				       <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"role">>, __TopXMLNS}});
decode_xabbergroupchat_user_role_cdata(__TopXMLNS,
				       _val) ->
    _val.

encode_xabbergroupchat_user_role_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_user_jid(__TopXMLNS, __Opts,
				{xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_user_jid_els(__TopXMLNS,
						__Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_user_jid_els(__TopXMLNS, __Opts,
				    [], Cdata) ->
    decode_xabbergroupchat_user_jid_cdata(__TopXMLNS,
					  Cdata);
decode_xabbergroupchat_user_jid_els(__TopXMLNS, __Opts,
				    [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_user_jid_els(__TopXMLNS, __Opts,
					_els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_user_jid_els(__TopXMLNS, __Opts,
				    [_ | _els], Cdata) ->
    decode_xabbergroupchat_user_jid_els(__TopXMLNS, __Opts,
					_els, Cdata).

encode_xabbergroupchat_user_jid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_user_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_xabbergroupchat_user_jid_cdata(__TopXMLNS,
				      <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_xabbergroupchat_user_jid_cdata(__TopXMLNS,
				      _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"jid">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabbergroupchat_user_jid_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_xabbergroupchat_user_card(__TopXMLNS, __Opts,
				 {xmlel, <<"user">>, _attrs, _els}) ->
    {Avatar, Jid, Badge, Nickname, Role} =
	decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					     _els, undefined, undefined,
					     undefined, undefined, undefined),
    Id = decode_xabbergroupchat_user_card_attrs(__TopXMLNS,
						_attrs, undefined),
    {xabbergroupchat_user_card, Id, Jid, Role, Badge,
     Nickname, Avatar}.

decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [], Avatar, Jid, Badge, Nickname, Role) ->
    {Avatar, Jid, Badge, Nickname, Role};
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"jid">>, _attrs, _} = _el
				      | _els],
				     Avatar, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar,
					       decode_xabbergroupchat_user_jid(<<"http://xabber.com/protocol/groupchat">>,
									       __Opts,
									       _el),
					       Badge, Nickname, Role);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar,
					       decode_xabbergroupchat_user_jid(<<"http://xabber.com/protocol/groupchat#members">>,
									       __Opts,
									       _el),
					       Badge, Nickname, Role);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       Nickname, Role)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"role">>, _attrs, _} = _el
				      | _els],
				     Avatar, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       Nickname,
					       decode_xabbergroupchat_user_role(<<"http://xabber.com/protocol/groupchat">>,
										__Opts,
										_el));
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       Nickname,
					       decode_xabbergroupchat_user_role(<<"http://xabber.com/protocol/groupchat#members">>,
										__Opts,
										_el));
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       Nickname, Role)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"nickname">>, _attrs, _} = _el
				      | _els],
				     Avatar, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       decode_xabbergroupchat_user_nickname(<<"http://xabber.com/protocol/groupchat">>,
										    __Opts,
										    _el),
					       Role);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       decode_xabbergroupchat_user_nickname(<<"http://xabber.com/protocol/groupchat#members">>,
										    __Opts,
										    _el),
					       Role);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       Nickname, Role)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"metadata">>, _attrs, _} = _el
				      | _els],
				     Avatar, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:avatar:metadata">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els,
					       xep0084:decode_avatar_meta(<<"urn:xmpp:avatar:metadata">>,
									  __Opts,
									  _el),
					       Jid, Badge, Nickname, Role);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       Nickname, Role)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"badge">>, _attrs, _} = _el
				      | _els],
				     Avatar, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid,
					       decode_xabbergroupchat_user_badge(<<"http://xabber.com/protocol/groupchat">>,
										 __Opts,
										 _el),
					       Nickname, Role);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid,
					       decode_xabbergroupchat_user_badge(<<"http://xabber.com/protocol/groupchat#members">>,
										 __Opts,
										 _el),
					       Nickname, Role);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Jid, Badge,
					       Nickname, Role)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [_ | _els], Avatar, Jid, Badge, Nickname,
				     Role) ->
    decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					 _els, Avatar, Jid, Badge, Nickname,
					 Role).

decode_xabbergroupchat_user_card_attrs(__TopXMLNS,
				       [{<<"id">>, _val} | _attrs], _Id) ->
    decode_xabbergroupchat_user_card_attrs(__TopXMLNS,
					   _attrs, _val);
decode_xabbergroupchat_user_card_attrs(__TopXMLNS,
				       [_ | _attrs], Id) ->
    decode_xabbergroupchat_user_card_attrs(__TopXMLNS,
					   _attrs, Id);
decode_xabbergroupchat_user_card_attrs(__TopXMLNS, [],
				       Id) ->
    decode_xabbergroupchat_user_card_attr_id(__TopXMLNS,
					     Id).

encode_xabbergroupchat_user_card({xabbergroupchat_user_card,
				  Id, Jid, Role, Badge, Nickname, Avatar},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_user_card_$avatar'(Avatar,
								 __NewTopXMLNS,
								 'encode_xabbergroupchat_user_card_$jid'(Jid,
													 __NewTopXMLNS,
													 'encode_xabbergroupchat_user_card_$badge'(Badge,
																		   __NewTopXMLNS,
																		   'encode_xabbergroupchat_user_card_$nickname'(Nickname,
																								__NewTopXMLNS,
																								'encode_xabbergroupchat_user_card_$role'(Role,
																													 __NewTopXMLNS,
																													 [])))))),
    _attrs = encode_xabbergroupchat_user_card_attr_id(Id,
						      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										 __TopXMLNS)),
    {xmlel, <<"user">>, _attrs, _els}.

'encode_xabbergroupchat_user_card_$avatar'(undefined,
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$avatar'(Avatar,
					   __TopXMLNS, _acc) ->
    [xep0084:encode_avatar_meta(Avatar, __TopXMLNS) | _acc].

'encode_xabbergroupchat_user_card_$jid'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$jid'(Jid, __TopXMLNS,
					_acc) ->
    [encode_xabbergroupchat_user_jid(Jid, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_user_card_$badge'(undefined,
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$badge'(Badge,
					  __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_user_badge(Badge, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_user_card_$nickname'(undefined,
					     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$nickname'(Nickname,
					     __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_user_nickname(Nickname,
					  __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_user_card_$role'(undefined,
					 __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$role'(Role,
					 __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_user_role(Role, __TopXMLNS)
     | _acc].

decode_xabbergroupchat_user_card_attr_id(__TopXMLNS,
					 undefined) ->
    <<>>;
decode_xabbergroupchat_user_card_attr_id(__TopXMLNS,
					 _val) ->
    _val.

encode_xabbergroupchat_user_card_attr_id(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_user_card_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_item(__TopXMLNS, __Opts,
			    {xmlel, <<"item">>, _attrs, _els}) ->
    {Avatar, Jid, Badge, Nickname, Role, Restriction,
     Permission} =
	decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					_els, undefined, undefined, undefined,
					undefined, undefined, [], []),
    Id = decode_xabbergroupchat_item_attrs(__TopXMLNS,
					   _attrs, undefined),
    {xabbergroupchat_item, Id, Jid, Role, Badge, Nickname,
     Avatar, Permission, Restriction}.

decode_xabbergroupchat_item_els(__TopXMLNS, __Opts, [],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    {Avatar, Jid, Badge, Nickname, Role,
     lists:reverse(Restriction), lists:reverse(Permission)};
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[{xmlel, <<"jid">>, _attrs, _} = _el | _els],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar,
					  decode_xabbergroupchat_user_jid(<<"http://xabber.com/protocol/groupchat">>,
									  __Opts,
									  _el),
					  Badge, Nickname, Role, Restriction,
					  Permission);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar,
					  decode_xabbergroupchat_user_jid(<<"http://xabber.com/protocol/groupchat#members">>,
									  __Opts,
									  _el),
					  Badge, Nickname, Role, Restriction,
					  Permission);
      _ ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction, Permission)
    end;
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[{xmlel, <<"role">>, _attrs, _} = _el | _els],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  decode_xabbergroupchat_user_role(<<"http://xabber.com/protocol/groupchat">>,
									   __Opts,
									   _el),
					  Restriction, Permission);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  decode_xabbergroupchat_user_role(<<"http://xabber.com/protocol/groupchat#members">>,
									   __Opts,
									   _el),
					  Restriction, Permission);
      _ ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction, Permission)
    end;
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[{xmlel, <<"nickname">>, _attrs, _} = _el
				 | _els],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge,
					  decode_xabbergroupchat_user_nickname(<<"http://xabber.com/protocol/groupchat">>,
									       __Opts,
									       _el),
					  Role, Restriction, Permission);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge,
					  decode_xabbergroupchat_user_nickname(<<"http://xabber.com/protocol/groupchat#members">>,
									       __Opts,
									       _el),
					  Role, Restriction, Permission);
      _ ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction, Permission)
    end;
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[{xmlel, <<"metadata">>, _attrs, _} = _el
				 | _els],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:avatar:metadata">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els,
					  xep0084:decode_avatar_meta(<<"urn:xmpp:avatar:metadata">>,
								     __Opts,
								     _el),
					  Jid, Badge, Nickname, Role,
					  Restriction, Permission);
      _ ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction, Permission)
    end;
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[{xmlel, <<"badge">>, _attrs, _} = _el | _els],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid,
					  decode_xabbergroupchat_user_badge(<<"http://xabber.com/protocol/groupchat">>,
									    __Opts,
									    _el),
					  Nickname, Role, Restriction,
					  Permission);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid,
					  decode_xabbergroupchat_user_badge(<<"http://xabber.com/protocol/groupchat#members">>,
									    __Opts,
									    _el),
					  Nickname, Role, Restriction,
					  Permission);
      _ ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction, Permission)
    end;
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[{xmlel, <<"permission">>, _attrs, _} = _el
				 | _els],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction,
					  [decode_xabbergroupchat_permission(<<"http://xabber.com/protocol/groupchat">>,
									     __Opts,
									     _el)
					   | Permission]);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction,
					  [decode_xabbergroupchat_permission(<<"http://xabber.com/protocol/groupchat#members">>,
									     __Opts,
									     _el)
					   | Permission]);
      _ ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction, Permission)
    end;
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[{xmlel, <<"restriction">>, _attrs, _} = _el
				 | _els],
				Avatar, Jid, Badge, Nickname, Role, Restriction,
				Permission) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role,
					  [decode_xabbergroupchat_restriction(<<"http://xabber.com/protocol/groupchat">>,
									      __Opts,
									      _el)
					   | Restriction],
					  Permission);
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role,
					  [decode_xabbergroupchat_restriction(<<"http://xabber.com/protocol/groupchat#members">>,
									      __Opts,
									      _el)
					   | Restriction],
					  Permission);
      _ ->
	  decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
					  _els, Avatar, Jid, Badge, Nickname,
					  Role, Restriction, Permission)
    end;
decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				[_ | _els], Avatar, Jid, Badge, Nickname, Role,
				Restriction, Permission) ->
    decode_xabbergroupchat_item_els(__TopXMLNS, __Opts,
				    _els, Avatar, Jid, Badge, Nickname, Role,
				    Restriction, Permission).

decode_xabbergroupchat_item_attrs(__TopXMLNS,
				  [{<<"id">>, _val} | _attrs], _Id) ->
    decode_xabbergroupchat_item_attrs(__TopXMLNS, _attrs,
				      _val);
decode_xabbergroupchat_item_attrs(__TopXMLNS,
				  [_ | _attrs], Id) ->
    decode_xabbergroupchat_item_attrs(__TopXMLNS, _attrs,
				      Id);
decode_xabbergroupchat_item_attrs(__TopXMLNS, [], Id) ->
    decode_xabbergroupchat_item_attr_id(__TopXMLNS, Id).

encode_xabbergroupchat_item({xabbergroupchat_item, Id,
			     Jid, Role, Badge, Nickname, Avatar, Permission,
			     Restriction},
			    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#members">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_item_$avatar'(Avatar,
							    __NewTopXMLNS,
							    'encode_xabbergroupchat_item_$jid'(Jid,
											       __NewTopXMLNS,
											       'encode_xabbergroupchat_item_$badge'(Badge,
																    __NewTopXMLNS,
																    'encode_xabbergroupchat_item_$nickname'(Nickname,
																					    __NewTopXMLNS,
																					    'encode_xabbergroupchat_item_$role'(Role,
																										__NewTopXMLNS,
																										'encode_xabbergroupchat_item_$restriction'(Restriction,
																															   __NewTopXMLNS,
																															   'encode_xabbergroupchat_item_$permission'(Permission,
																																				     __NewTopXMLNS,
																																				     [])))))))),
    _attrs = encode_xabbergroupchat_item_attr_id(Id,
						 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									    __TopXMLNS)),
    {xmlel, <<"item">>, _attrs, _els}.

'encode_xabbergroupchat_item_$avatar'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_item_$avatar'(Avatar,
				      __TopXMLNS, _acc) ->
    [xep0084:encode_avatar_meta(Avatar, __TopXMLNS) | _acc].

'encode_xabbergroupchat_item_$jid'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_item_$jid'(Jid, __TopXMLNS,
				   _acc) ->
    [encode_xabbergroupchat_user_jid(Jid, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_item_$badge'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_item_$badge'(Badge, __TopXMLNS,
				     _acc) ->
    [encode_xabbergroupchat_user_badge(Badge, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_item_$nickname'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_item_$nickname'(Nickname,
					__TopXMLNS, _acc) ->
    [encode_xabbergroupchat_user_nickname(Nickname,
					  __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_item_$role'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_item_$role'(Role, __TopXMLNS,
				    _acc) ->
    [encode_xabbergroupchat_user_role(Role, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_item_$restriction'([],
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_item_$restriction'([Restriction
					    | _els],
					   __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_item_$restriction'(_els,
					       __TopXMLNS,
					       [encode_xabbergroupchat_restriction(Restriction,
										   __TopXMLNS)
						| _acc]).

'encode_xabbergroupchat_item_$permission'([],
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_item_$permission'([Permission
					   | _els],
					  __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_item_$permission'(_els,
					      __TopXMLNS,
					      [encode_xabbergroupchat_permission(Permission,
										 __TopXMLNS)
					       | _acc]).

decode_xabbergroupchat_item_attr_id(__TopXMLNS,
				    undefined) ->
    <<>>;
decode_xabbergroupchat_item_attr_id(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_item_attr_id(<<>>, _acc) -> _acc;
encode_xabbergroupchat_item_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_kicked(__TopXMLNS, __Opts,
			      {xmlel, <<"kicked">>, _attrs, _els}) ->
    Users = decode_xabbergroupchat_kicked_els(__TopXMLNS,
					      __Opts, _els, []),
    {xabbergroupchat_kicked, Users}.

decode_xabbergroupchat_kicked_els(__TopXMLNS, __Opts,
				  [], Users) ->
    lists:reverse(Users);
decode_xabbergroupchat_kicked_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"user">>, _attrs, _} = _el | _els],
				  Users) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_kicked_els(__TopXMLNS, __Opts,
					    _els,
					    [decode_xabbergroupchat_user_card(<<"http://xabber.com/protocol/groupchat">>,
									      __Opts,
									      _el)
					     | Users]);
      _ ->
	  decode_xabbergroupchat_kicked_els(__TopXMLNS, __Opts,
					    _els, Users)
    end;
decode_xabbergroupchat_kicked_els(__TopXMLNS, __Opts,
				  [_ | _els], Users) ->
    decode_xabbergroupchat_kicked_els(__TopXMLNS, __Opts,
				      _els, Users).

encode_xabbergroupchat_kicked({xabbergroupchat_kicked,
			       Users},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_kicked_$users'(Users,
							     __NewTopXMLNS,
							     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"kicked">>, _attrs, _els}.

'encode_xabbergroupchat_kicked_$users'([], __TopXMLNS,
				       _acc) ->
    _acc;
'encode_xabbergroupchat_kicked_$users'([Users | _els],
				       __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_kicked_$users'(_els, __TopXMLNS,
					   [encode_xabbergroupchat_user_card(Users,
									     __TopXMLNS)
					    | _acc]).

decode_xabbergroupchat_user_updated(__TopXMLNS, __Opts,
				    {xmlel, <<"user-updated">>, _attrs,
				     _els}) ->
    User =
	decode_xabbergroupchat_user_updated_els(__TopXMLNS,
						__Opts, _els, undefined),
    {xabbergroupchat_user_updated, User}.

decode_xabbergroupchat_user_updated_els(__TopXMLNS,
					__Opts, [], User) ->
    User;
decode_xabbergroupchat_user_updated_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"user">>, _attrs, _} = _el
					 | _els],
					User) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_user_updated_els(__TopXMLNS,
						  __Opts, _els,
						  decode_xabbergroupchat_user_card(<<"http://xabber.com/protocol/groupchat">>,
										   __Opts,
										   _el));
      _ ->
	  decode_xabbergroupchat_user_updated_els(__TopXMLNS,
						  __Opts, _els, User)
    end;
decode_xabbergroupchat_user_updated_els(__TopXMLNS,
					__Opts, [_ | _els], User) ->
    decode_xabbergroupchat_user_updated_els(__TopXMLNS,
					    __Opts, _els, User).

encode_xabbergroupchat_user_updated({xabbergroupchat_user_updated,
				     User},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_user_updated_$user'(User,
								  __NewTopXMLNS,
								  [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"user-updated">>, _attrs, _els}.

'encode_xabbergroupchat_user_updated_$user'(undefined,
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_updated_$user'(User,
					    __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_user_card(User, __TopXMLNS)
     | _acc].

decode_xabbergroupchat_no_permission(__TopXMLNS, __Opts,
				     {xmlel, <<"no-permission">>, _attrs,
				      _els}) ->
    Cdata =
	decode_xabbergroupchat_no_permission_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_no_permission_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_xabbergroupchat_no_permission_cdata(__TopXMLNS,
					       Cdata);
decode_xabbergroupchat_no_permission_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_xabbergroupchat_no_permission_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_no_permission_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_no_permission_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_xabbergroupchat_no_permission(Cdata,
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_no_permission_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"no-permission">>, _attrs, _els}.

decode_xabbergroupchat_no_permission_cdata(__TopXMLNS,
					   <<>>) ->
    <<>>;
decode_xabbergroupchat_no_permission_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_no_permission_cdata(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_no_permission_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_left(__TopXMLNS, __Opts,
			    {xmlel, <<"left">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_left_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_left_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_xabbergroupchat_left_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_left_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_left_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_left_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_xabbergroupchat_left_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_xabbergroupchat_left(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_left_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"left">>, _attrs, _els}.

decode_xabbergroupchat_left_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_left_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_left_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_left_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_join(__TopXMLNS, __Opts,
			    {xmlel, <<"join">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_join_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_join_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_xabbergroupchat_join_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_join_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_join_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_join_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_xabbergroupchat_join_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_xabbergroupchat_join(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_join_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"join">>, _attrs, _els}.

decode_xabbergroupchat_join_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_join_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_join_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_join_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_search(__TopXMLNS, __Opts,
			      {xmlel, <<"search">>, _attrs, _els}) ->
    {Anonymous, Name, Model, Rsm, Description} =
	decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					  _els, undefined, undefined, undefined,
					  undefined, undefined),
    {xabbergroupchat_search, Name, Description, Model,
     Anonymous, Rsm}.

decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [], Anonymous, Name, Model, Rsm,
				  Description) ->
    {Anonymous, Name, Model, Rsm, Description};
decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"name">>, _attrs, _} = _el | _els],
				  Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous,
					    decode_xabbergroupchat_name(<<"http://xabber.com/protocol/groupchat">>,
									__Opts,
									_el),
					    Model, Rsm, Description);
      _ ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    Description)
    end;
decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"description">>, _attrs, _} = _el
				   | _els],
				  Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    decode_xabbergroupchat_description(<<"http://xabber.com/protocol/groupchat">>,
									       __Opts,
									       _el));
      _ ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    Description)
    end;
decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"membership">>, _attrs, _} = _el
				   | _els],
				  Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name,
					    decode_xabbergroupchat_model(<<"http://xabber.com/protocol/groupchat">>,
									 __Opts,
									 _el),
					    Rsm, Description);
      _ ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    Description)
    end;
decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"privacy">>, _attrs, _} = _el
				   | _els],
				  Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_anonymous(<<"http://xabber.com/protocol/groupchat">>,
									     __Opts,
									     _el),
					    Name, Model, Rsm, Description);
      _ ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    Description)
    end;
decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"set">>, _attrs, _} = _el | _els],
				  Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model,
					    xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
								   __Opts, _el),
					    Description);
      _ ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    Description)
    end;
decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [_ | _els], Anonymous, Name, Model, Rsm,
				  Description) ->
    decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				      _els, Anonymous, Name, Model, Rsm,
				      Description).

encode_xabbergroupchat_search({xabbergroupchat_search,
			       Name, Description, Model, Anonymous, Rsm},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_search_$anonymous'(Anonymous,
								 __NewTopXMLNS,
								 'encode_xabbergroupchat_search_$name'(Name,
												       __NewTopXMLNS,
												       'encode_xabbergroupchat_search_$model'(Model,
																	      __NewTopXMLNS,
																	      'encode_xabbergroupchat_search_$rsm'(Rsm,
																						   __NewTopXMLNS,
																						   'encode_xabbergroupchat_search_$description'(Description,
																												__NewTopXMLNS,
																												[])))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"search">>, _attrs, _els}.

'encode_xabbergroupchat_search_$anonymous'(undefined,
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_search_$anonymous'(Anonymous,
					   __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_anonymous(Anonymous, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_search_$name'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_search_$name'(Name, __TopXMLNS,
				      _acc) ->
    [encode_xabbergroupchat_name(Name, __TopXMLNS) | _acc].

'encode_xabbergroupchat_search_$model'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_search_$model'(Model,
				       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_model(Model, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_search_$rsm'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_search_$rsm'(Rsm, __TopXMLNS,
				     _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

'encode_xabbergroupchat_search_$description'(undefined,
					     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_search_$description'(Description,
					     __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_description(Description,
					__TopXMLNS)
     | _acc].

decode_xabbergroupchat_domain(__TopXMLNS, __Opts,
			      {xmlel, <<"domain">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_domain_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    {block_domain, Cdata}.

decode_xabbergroupchat_domain_els(__TopXMLNS, __Opts,
				  [], Cdata) ->
    decode_xabbergroupchat_domain_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_domain_els(__TopXMLNS, __Opts,
				  [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_domain_els(__TopXMLNS, __Opts,
				      _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_domain_els(__TopXMLNS, __Opts,
				  [_ | _els], Cdata) ->
    decode_xabbergroupchat_domain_els(__TopXMLNS, __Opts,
				      _els, Cdata).

encode_xabbergroupchat_domain({block_domain, Cdata},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#block">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_domain_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domain">>, _attrs, _els}.

decode_xabbergroupchat_domain_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"domain">>, __TopXMLNS}});
decode_xabbergroupchat_domain_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_domain_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_jid(__TopXMLNS, __Opts,
			   {xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_jid_els(__TopXMLNS,
					   __Opts, _els, <<>>),
    {block_jid, Cdata}.

decode_xabbergroupchat_jid_els(__TopXMLNS, __Opts, [],
			       Cdata) ->
    decode_xabbergroupchat_jid_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_jid_els(__TopXMLNS, __Opts,
			       [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_jid_els(__TopXMLNS, __Opts, _els,
				   <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_jid_els(__TopXMLNS, __Opts,
			       [_ | _els], Cdata) ->
    decode_xabbergroupchat_jid_els(__TopXMLNS, __Opts, _els,
				   Cdata).

encode_xabbergroupchat_jid({block_jid, Cdata},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#block">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_xabbergroupchat_jid_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_xabbergroupchat_jid_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_jid_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_id(__TopXMLNS, __Opts,
			  {xmlel, <<"id">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_id_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    {block_id, Cdata}.

decode_xabbergroupchat_id_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_xabbergroupchat_id_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_id_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_id_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_id_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_xabbergroupchat_id_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_xabbergroupchat_id({block_id, Cdata},
			  __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#block">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_id_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"id">>, _attrs, _els}.

decode_xabbergroupchat_id_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"id">>, __TopXMLNS}});
decode_xabbergroupchat_id_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_id_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_unblock(__TopXMLNS, __Opts,
			       {xmlel, <<"unblock">>, _attrs, _els}) ->
    {Jid, Id, Domain} =
	decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					   _els, [], [], []),
    {xabbergroup_unblock, Id, Jid, Domain}.

decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
				   [], Jid, Id, Domain) ->
    {lists:reverse(Jid), lists:reverse(Id),
     lists:reverse(Domain)};
decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"id">>, _attrs, _} = _el | _els],
				   Jid, Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid,
					     [decode_xabbergroupchat_id(<<"http://xabber.com/protocol/groupchat">>,
									__Opts,
									_el)
					      | Id],
					     Domain);
      <<"http://xabber.com/protocol/groupchat#block">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid,
					     [decode_xabbergroupchat_id(<<"http://xabber.com/protocol/groupchat#block">>,
									__Opts,
									_el)
					      | Id],
					     Domain);
      _ ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid, Id, Domain)
    end;
decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
				   Jid, Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#block">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els,
					     [decode_xabbergroupchat_jid(<<"http://xabber.com/protocol/groupchat#block">>,
									 __Opts,
									 _el)
					      | Jid],
					     Id, Domain);
      _ ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid, Id, Domain)
    end;
decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"domain">>, _attrs, _} = _el
				    | _els],
				   Jid, Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#block">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid, Id,
					     [decode_xabbergroupchat_domain(<<"http://xabber.com/protocol/groupchat#block">>,
									    __Opts,
									    _el)
					      | Domain]);
      _ ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid, Id, Domain)
    end;
decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
				   [_ | _els], Jid, Id, Domain) ->
    decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
				       _els, Jid, Id, Domain).

encode_xabbergroupchat_unblock({xabbergroup_unblock, Id,
				Jid, Domain},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#block">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_unblock_$jid'(Jid,
							    __NewTopXMLNS,
							    'encode_xabbergroupchat_unblock_$id'(Id,
												 __NewTopXMLNS,
												 'encode_xabbergroupchat_unblock_$domain'(Domain,
																	  __NewTopXMLNS,
																	  [])))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unblock">>, _attrs, _els}.

'encode_xabbergroupchat_unblock_$jid'([], __TopXMLNS,
				      _acc) ->
    _acc;
'encode_xabbergroupchat_unblock_$jid'([Jid | _els],
				      __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_unblock_$jid'(_els, __TopXMLNS,
					  [encode_xabbergroupchat_jid(Jid,
								      __TopXMLNS)
					   | _acc]).

'encode_xabbergroupchat_unblock_$id'([], __TopXMLNS,
				     _acc) ->
    _acc;
'encode_xabbergroupchat_unblock_$id'([Id | _els],
				     __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_unblock_$id'(_els, __TopXMLNS,
					 [encode_xabbergroupchat_id(Id,
								    __TopXMLNS)
					  | _acc]).

'encode_xabbergroupchat_unblock_$domain'([], __TopXMLNS,
					 _acc) ->
    _acc;
'encode_xabbergroupchat_unblock_$domain'([Domain
					  | _els],
					 __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_unblock_$domain'(_els,
					     __TopXMLNS,
					     [encode_xabbergroupchat_domain(Domain,
									    __TopXMLNS)
					      | _acc]).

decode_xabbergroupchat_block(__TopXMLNS, __Opts,
			     {xmlel, <<"block">>, _attrs, _els}) ->
    {Jid, Id, Domain} =
	decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					 _els, [], [], []),
    {xabbergroup_block, Id, Jid, Domain}.

decode_xabbergroupchat_block_els(__TopXMLNS, __Opts, [],
				 Jid, Id, Domain) ->
    {lists:reverse(Jid), lists:reverse(Id),
     lists:reverse(Domain)};
decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"id">>, _attrs, _} = _el | _els],
				 Jid, Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid,
					   [decode_xabbergroupchat_id(<<"http://xabber.com/protocol/groupchat">>,
								      __Opts,
								      _el)
					    | Id],
					   Domain);
      <<"http://xabber.com/protocol/groupchat#block">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid,
					   [decode_xabbergroupchat_id(<<"http://xabber.com/protocol/groupchat#block">>,
								      __Opts,
								      _el)
					    | Id],
					   Domain);
      _ ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid, Id, Domain)
    end;
decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
				 Jid, Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#block">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els,
					   [decode_xabbergroupchat_jid(<<"http://xabber.com/protocol/groupchat#block">>,
								       __Opts,
								       _el)
					    | Jid],
					   Id, Domain);
      _ ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid, Id, Domain)
    end;
decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
				 [{xmlel, <<"domain">>, _attrs, _} = _el
				  | _els],
				 Jid, Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#block">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid, Id,
					   [decode_xabbergroupchat_domain(<<"http://xabber.com/protocol/groupchat#block">>,
									  __Opts,
									  _el)
					    | Domain]);
      _ ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid, Id, Domain)
    end;
decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
				 [_ | _els], Jid, Id, Domain) ->
    decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
				     _els, Jid, Id, Domain).

encode_xabbergroupchat_block({xabbergroup_block, Id,
			      Jid, Domain},
			     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#block">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_block_$jid'(Jid,
							  __NewTopXMLNS,
							  'encode_xabbergroupchat_block_$id'(Id,
											     __NewTopXMLNS,
											     'encode_xabbergroupchat_block_$domain'(Domain,
																    __NewTopXMLNS,
																    [])))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"block">>, _attrs, _els}.

'encode_xabbergroupchat_block_$jid'([], __TopXMLNS,
				    _acc) ->
    _acc;
'encode_xabbergroupchat_block_$jid'([Jid | _els],
				    __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_block_$jid'(_els, __TopXMLNS,
					[encode_xabbergroupchat_jid(Jid,
								    __TopXMLNS)
					 | _acc]).

'encode_xabbergroupchat_block_$id'([], __TopXMLNS,
				   _acc) ->
    _acc;
'encode_xabbergroupchat_block_$id'([Id | _els],
				   __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_block_$id'(_els, __TopXMLNS,
				       [encode_xabbergroupchat_id(Id,
								  __TopXMLNS)
					| _acc]).

'encode_xabbergroupchat_block_$domain'([], __TopXMLNS,
				       _acc) ->
    _acc;
'encode_xabbergroupchat_block_$domain'([Domain | _els],
				       __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_block_$domain'(_els, __TopXMLNS,
					   [encode_xabbergroupchat_domain(Domain,
									  __TopXMLNS)
					    | _acc]).

decode_xabbergroupchat_localpart(__TopXMLNS, __Opts,
				 {xmlel, <<"localpart">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_localpart_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_localpart_els(__TopXMLNS, __Opts,
				     [], Cdata) ->
    decode_xabbergroupchat_localpart_cdata(__TopXMLNS,
					   Cdata);
decode_xabbergroupchat_localpart_els(__TopXMLNS, __Opts,
				     [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_localpart_els(__TopXMLNS, __Opts,
					 _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_localpart_els(__TopXMLNS, __Opts,
				     [_ | _els], Cdata) ->
    decode_xabbergroupchat_localpart_els(__TopXMLNS, __Opts,
					 _els, Cdata).

encode_xabbergroupchat_localpart(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_localpart_cdata(Cdata,
						  []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"localpart">>, _attrs, _els}.

decode_xabbergroupchat_localpart_cdata(__TopXMLNS,
				       <<>>) ->
    <<>>;
decode_xabbergroupchat_localpart_cdata(__TopXMLNS,
				       _val) ->
    _val.

encode_xabbergroupchat_localpart_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_localpart_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_model(__TopXMLNS, __Opts,
			     {xmlel, <<"membership">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_model_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_model_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_xabbergroupchat_model_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_model_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_model_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_model_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_xabbergroupchat_model_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_xabbergroupchat_model(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_model_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"membership">>, _attrs, _els}.

decode_xabbergroupchat_model_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_model_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_model_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_model_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_description(__TopXMLNS, __Opts,
				   {xmlel, <<"description">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_description_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_description_els(__TopXMLNS,
				       __Opts, [], Cdata) ->
    decode_xabbergroupchat_description_cdata(__TopXMLNS,
					     Cdata);
decode_xabbergroupchat_description_els(__TopXMLNS,
				       __Opts, [{xmlcdata, _data} | _els],
				       Cdata) ->
    decode_xabbergroupchat_description_els(__TopXMLNS,
					   __Opts, _els,
					   <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_description_els(__TopXMLNS,
				       __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_description_els(__TopXMLNS,
					   __Opts, _els, Cdata).

encode_xabbergroupchat_description(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_description_cdata(Cdata,
						    []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"description">>, _attrs, _els}.

decode_xabbergroupchat_description_cdata(__TopXMLNS,
					 <<>>) ->
    <<>>;
decode_xabbergroupchat_description_cdata(__TopXMLNS,
					 _val) ->
    _val.

encode_xabbergroupchat_description_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_description_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_anonymous(__TopXMLNS, __Opts,
				 {xmlel, <<"privacy">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_anonymous_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_anonymous_els(__TopXMLNS, __Opts,
				     [], Cdata) ->
    decode_xabbergroupchat_anonymous_cdata(__TopXMLNS,
					   Cdata);
decode_xabbergroupchat_anonymous_els(__TopXMLNS, __Opts,
				     [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_anonymous_els(__TopXMLNS, __Opts,
					 _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_anonymous_els(__TopXMLNS, __Opts,
				     [_ | _els], Cdata) ->
    decode_xabbergroupchat_anonymous_els(__TopXMLNS, __Opts,
					 _els, Cdata).

encode_xabbergroupchat_anonymous(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_anonymous_cdata(Cdata,
						  []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"privacy">>, _attrs, _els}.

decode_xabbergroupchat_anonymous_cdata(__TopXMLNS,
				       <<>>) ->
    <<>>;
decode_xabbergroupchat_anonymous_cdata(__TopXMLNS,
				       _val) ->
    _val.

encode_xabbergroupchat_anonymous_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_anonymous_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_name(__TopXMLNS, __Opts,
			    {xmlel, <<"name">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_name_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_name_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_xabbergroupchat_name_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_name_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_name_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_name_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_xabbergroupchat_name_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_xabbergroupchat_name(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_name_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"name">>, _attrs, _els}.

decode_xabbergroupchat_name_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_name_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_name_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_searchable(__TopXMLNS, __Opts,
				  {xmlel, <<"index">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_searchable_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_searchable_els(__TopXMLNS,
				      __Opts, [], Cdata) ->
    decode_xabbergroupchat_searchable_cdata(__TopXMLNS,
					    Cdata);
decode_xabbergroupchat_searchable_els(__TopXMLNS,
				      __Opts, [{xmlcdata, _data} | _els],
				      Cdata) ->
    decode_xabbergroupchat_searchable_els(__TopXMLNS,
					  __Opts, _els,
					  <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_searchable_els(__TopXMLNS,
				      __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_searchable_els(__TopXMLNS,
					  __Opts, _els, Cdata).

encode_xabbergroupchat_searchable(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_searchable_cdata(Cdata,
						   []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"index">>, _attrs, _els}.

decode_xabbergroupchat_searchable_cdata(__TopXMLNS,
					<<>>) ->
    <<>>;
decode_xabbergroupchat_searchable_cdata(__TopXMLNS,
					_val) ->
    _val.

encode_xabbergroupchat_searchable_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_searchable_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_message(__TopXMLNS, __Opts,
			       {xmlel, <<"pinned-message">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_message_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_message_els(__TopXMLNS, __Opts,
				   [], Cdata) ->
    decode_xabbergroupchat_message_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_message_els(__TopXMLNS, __Opts,
				   [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_message_els(__TopXMLNS, __Opts,
				       _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_message_els(__TopXMLNS, __Opts,
				   [_ | _els], Cdata) ->
    decode_xabbergroupchat_message_els(__TopXMLNS, __Opts,
				       _els, Cdata).

encode_xabbergroupchat_message(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_message_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"pinned-message">>, _attrs, _els}.

decode_xabbergroupchat_message_cdata(__TopXMLNS,
				     <<>>) ->
    <<>>;
decode_xabbergroupchat_message_cdata(__TopXMLNS,
				     _val) ->
    _val.

encode_xabbergroupchat_message_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_message_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_domain_create(__TopXMLNS, __Opts,
				     {xmlel, <<"domain">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_domain_create_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_domain_create_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_xabbergroupchat_domain_create_cdata(__TopXMLNS,
					       Cdata);
decode_xabbergroupchat_domain_create_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_xabbergroupchat_domain_create_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_domain_create_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_domain_create_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_xabbergroupchat_domain_create(Cdata,
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_domain_create_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domain">>, _attrs, _els}.

decode_xabbergroupchat_domain_create_cdata(__TopXMLNS,
					   <<>>) ->
    <<>>;
decode_xabbergroupchat_domain_create_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_domain_create_cdata(<<>>,
					   _acc) ->
    _acc;
encode_xabbergroupchat_domain_create_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_domains(__TopXMLNS, __Opts,
			       {xmlel, <<"domains">>, _attrs, _els}) ->
    Domain = decode_xabbergroupchat_domains_els(__TopXMLNS,
						__Opts, _els, []),
    {xabbergroup_domains, Domain}.

decode_xabbergroupchat_domains_els(__TopXMLNS, __Opts,
				   [], Domain) ->
    lists:reverse(Domain);
decode_xabbergroupchat_domains_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"domain">>, _attrs, _} = _el
				    | _els],
				   Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_domains_els(__TopXMLNS, __Opts,
					     _els,
					     [decode_xabbergroupchat_domain_create(<<"http://xabber.com/protocol/groupchat">>,
										   __Opts,
										   _el)
					      | Domain]);
      _ ->
	  decode_xabbergroupchat_domains_els(__TopXMLNS, __Opts,
					     _els, Domain)
    end;
decode_xabbergroupchat_domains_els(__TopXMLNS, __Opts,
				   [_ | _els], Domain) ->
    decode_xabbergroupchat_domains_els(__TopXMLNS, __Opts,
				       _els, Domain).

encode_xabbergroupchat_domains({xabbergroup_domains,
				Domain},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_domains_$domain'(Domain,
							       __NewTopXMLNS,
							       [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domains">>, _attrs, _els}.

'encode_xabbergroupchat_domains_$domain'([], __TopXMLNS,
					 _acc) ->
    _acc;
'encode_xabbergroupchat_domains_$domain'([Domain
					  | _els],
					 __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_domains_$domain'(_els,
					     __TopXMLNS,
					     [encode_xabbergroupchat_domain_create(Domain,
										   __TopXMLNS)
					      | _acc]).

decode_xabbergroupchat_contact_create(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"contact">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_contact_create_els(__TopXMLNS,
						  __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_contact_create_els(__TopXMLNS,
					  __Opts, [], Cdata) ->
    decode_xabbergroupchat_contact_create_cdata(__TopXMLNS,
						Cdata);
decode_xabbergroupchat_contact_create_els(__TopXMLNS,
					  __Opts, [{xmlcdata, _data} | _els],
					  Cdata) ->
    decode_xabbergroupchat_contact_create_els(__TopXMLNS,
					      __Opts, _els,
					      <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_contact_create_els(__TopXMLNS,
					  __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_contact_create_els(__TopXMLNS,
					      __Opts, _els, Cdata).

encode_xabbergroupchat_contact_create(Cdata,
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	encode_xabbergroupchat_contact_create_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contact">>, _attrs, _els}.

decode_xabbergroupchat_contact_create_cdata(__TopXMLNS,
					    <<>>) ->
    <<>>;
decode_xabbergroupchat_contact_create_cdata(__TopXMLNS,
					    _val) ->
    _val.

encode_xabbergroupchat_contact_create_cdata(<<>>,
					    _acc) ->
    _acc;
encode_xabbergroupchat_contact_create_cdata(_val,
					    _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_contacts(__TopXMLNS, __Opts,
				{xmlel, <<"contacts">>, _attrs, _els}) ->
    Contact =
	decode_xabbergroupchat_contacts_els(__TopXMLNS, __Opts,
					    _els, []),
    {xabbergroup_contacts, Contact}.

decode_xabbergroupchat_contacts_els(__TopXMLNS, __Opts,
				    [], Contact) ->
    lists:reverse(Contact);
decode_xabbergroupchat_contacts_els(__TopXMLNS, __Opts,
				    [{xmlel, <<"contact">>, _attrs, _} = _el
				     | _els],
				    Contact) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_contacts_els(__TopXMLNS, __Opts,
					      _els,
					      [decode_xabbergroupchat_contact_create(<<"http://xabber.com/protocol/groupchat">>,
										     __Opts,
										     _el)
					       | Contact]);
      _ ->
	  decode_xabbergroupchat_contacts_els(__TopXMLNS, __Opts,
					      _els, Contact)
    end;
decode_xabbergroupchat_contacts_els(__TopXMLNS, __Opts,
				    [_ | _els], Contact) ->
    decode_xabbergroupchat_contacts_els(__TopXMLNS, __Opts,
					_els, Contact).

encode_xabbergroupchat_contacts({xabbergroup_contacts,
				 Contact},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_contacts_$contact'(Contact,
								 __NewTopXMLNS,
								 [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contacts">>, _attrs, _els}.

'encode_xabbergroupchat_contacts_$contact'([],
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_contacts_$contact'([Contact
					    | _els],
					   __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_contacts_$contact'(_els,
					       __TopXMLNS,
					       [encode_xabbergroupchat_contact_create(Contact,
										      __TopXMLNS)
						| _acc]).

decode_xabbergroupchat_online(__TopXMLNS, __Opts,
			      {xmlel, <<"present">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_online_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_online_els(__TopXMLNS, __Opts,
				  [], Cdata) ->
    decode_xabbergroupchat_online_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_online_els(__TopXMLNS, __Opts,
				  [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_online_els(__TopXMLNS, __Opts,
				      _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_online_els(__TopXMLNS, __Opts,
				  [_ | _els], Cdata) ->
    decode_xabbergroupchat_online_els(__TopXMLNS, __Opts,
				      _els, Cdata).

encode_xabbergroupchat_online(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_online_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"present">>, _attrs, _els}.

decode_xabbergroupchat_online_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_online_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_online_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_online_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_members(__TopXMLNS, __Opts,
			       {xmlel, <<"members">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_members_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_members_els(__TopXMLNS, __Opts,
				   [], Cdata) ->
    decode_xabbergroupchat_members_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_members_els(__TopXMLNS, __Opts,
				   [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_members_els(__TopXMLNS, __Opts,
				       _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_members_els(__TopXMLNS, __Opts,
				   [_ | _els], Cdata) ->
    decode_xabbergroupchat_members_els(__TopXMLNS, __Opts,
				       _els, Cdata).

encode_xabbergroupchat_members(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_members_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"members">>, _attrs, _els}.

decode_xabbergroupchat_members_cdata(__TopXMLNS,
				     <<>>) ->
    <<>>;
decode_xabbergroupchat_members_cdata(__TopXMLNS,
				     _val) ->
    _val.

encode_xabbergroupchat_members_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_members_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_x_body(__TopXMLNS, __Opts,
			      {xmlel, <<"body">>, _attrs, _els}) ->
    Data = decode_xabbergroupchat_x_body_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    Lang = decode_xabbergroupchat_x_body_attrs(__TopXMLNS,
					       _attrs, undefined),
    {body_x, Lang, Data}.

decode_xabbergroupchat_x_body_els(__TopXMLNS, __Opts,
				  [], Data) ->
    decode_xabbergroupchat_x_body_cdata(__TopXMLNS, Data);
decode_xabbergroupchat_x_body_els(__TopXMLNS, __Opts,
				  [{xmlcdata, _data} | _els], Data) ->
    decode_xabbergroupchat_x_body_els(__TopXMLNS, __Opts,
				      _els, <<Data/binary, _data/binary>>);
decode_xabbergroupchat_x_body_els(__TopXMLNS, __Opts,
				  [_ | _els], Data) ->
    decode_xabbergroupchat_x_body_els(__TopXMLNS, __Opts,
				      _els, Data).

decode_xabbergroupchat_x_body_attrs(__TopXMLNS,
				    [{<<"xml:lang">>, _val} | _attrs], _Lang) ->
    decode_xabbergroupchat_x_body_attrs(__TopXMLNS, _attrs,
					_val);
decode_xabbergroupchat_x_body_attrs(__TopXMLNS,
				    [_ | _attrs], Lang) ->
    decode_xabbergroupchat_x_body_attrs(__TopXMLNS, _attrs,
					Lang);
decode_xabbergroupchat_x_body_attrs(__TopXMLNS, [],
				    Lang) ->
    'decode_xabbergroupchat_x_body_attr_xml:lang'(__TopXMLNS,
						  Lang).

encode_xabbergroupchat_x_body({body_x, Lang, Data},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_x_body_cdata(Data, []),
    _attrs =
	'encode_xabbergroupchat_x_body_attr_xml:lang'(Lang,
						      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										 __TopXMLNS)),
    {xmlel, <<"body">>, _attrs, _els}.

'decode_xabbergroupchat_x_body_attr_xml:lang'(__TopXMLNS,
					      undefined) ->
    <<>>;
'decode_xabbergroupchat_x_body_attr_xml:lang'(__TopXMLNS,
					      _val) ->
    _val.

'encode_xabbergroupchat_x_body_attr_xml:lang'(<<>>,
					      _acc) ->
    _acc;
'encode_xabbergroupchat_x_body_attr_xml:lang'(_val,
					      _acc) ->
    [{<<"xml:lang">>, _val} | _acc].

decode_xabbergroupchat_x_body_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_x_body_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_x_body_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_x_body_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_peer(__TopXMLNS, __Opts,
			    {xmlel, <<"peer-to-peer">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_peer_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    {Jid, Id} =
	decode_xabbergroupchat_peer_attrs(__TopXMLNS, _attrs,
					  undefined, undefined),
    {xabbergroup_peer, Jid, Id, Cdata}.

decode_xabbergroupchat_peer_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_xabbergroupchat_peer_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_peer_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_peer_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_peer_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_xabbergroupchat_peer_els(__TopXMLNS, __Opts,
				    _els, Cdata).

decode_xabbergroupchat_peer_attrs(__TopXMLNS,
				  [{<<"jid">>, _val} | _attrs], _Jid, Id) ->
    decode_xabbergroupchat_peer_attrs(__TopXMLNS, _attrs,
				      _val, Id);
decode_xabbergroupchat_peer_attrs(__TopXMLNS,
				  [{<<"id">>, _val} | _attrs], Jid, _Id) ->
    decode_xabbergroupchat_peer_attrs(__TopXMLNS, _attrs,
				      Jid, _val);
decode_xabbergroupchat_peer_attrs(__TopXMLNS,
				  [_ | _attrs], Jid, Id) ->
    decode_xabbergroupchat_peer_attrs(__TopXMLNS, _attrs,
				      Jid, Id);
decode_xabbergroupchat_peer_attrs(__TopXMLNS, [], Jid,
				  Id) ->
    {decode_xabbergroupchat_peer_attr_jid(__TopXMLNS, Jid),
     decode_xabbergroupchat_peer_attr_id(__TopXMLNS, Id)}.

encode_xabbergroupchat_peer({xabbergroup_peer, Jid, Id,
			     Cdata},
			    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"jabber:client">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_peer_cdata(Cdata, []),
    _attrs = encode_xabbergroupchat_peer_attr_id(Id,
						 encode_xabbergroupchat_peer_attr_jid(Jid,
										      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
														 __TopXMLNS))),
    {xmlel, <<"peer-to-peer">>, _attrs, _els}.

decode_xabbergroupchat_peer_attr_jid(__TopXMLNS,
				     undefined) ->
    undefined;
decode_xabbergroupchat_peer_attr_jid(__TopXMLNS,
				     _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"peer-to-peer">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabbergroupchat_peer_attr_jid(undefined, _acc) ->
    _acc;
encode_xabbergroupchat_peer_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_xabbergroupchat_peer_attr_id(__TopXMLNS,
				    undefined) ->
    <<>>;
decode_xabbergroupchat_peer_attr_id(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_peer_attr_id(<<>>, _acc) -> _acc;
encode_xabbergroupchat_peer_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_peer_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_peer_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_peer_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_peer_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_chat_jid(__TopXMLNS, __Opts,
				{xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_chat_jid_els(__TopXMLNS,
						__Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_chat_jid_els(__TopXMLNS, __Opts,
				    [], Cdata) ->
    decode_xabbergroupchat_chat_jid_cdata(__TopXMLNS,
					  Cdata);
decode_xabbergroupchat_chat_jid_els(__TopXMLNS, __Opts,
				    [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_chat_jid_els(__TopXMLNS, __Opts,
					_els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_chat_jid_els(__TopXMLNS, __Opts,
				    [_ | _els], Cdata) ->
    decode_xabbergroupchat_chat_jid_els(__TopXMLNS, __Opts,
					_els, Cdata).

encode_xabbergroupchat_chat_jid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_chat_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_xabbergroupchat_chat_jid_cdata(__TopXMLNS,
				      <<>>) ->
    undefined;
decode_xabbergroupchat_chat_jid_cdata(__TopXMLNS,
				      _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"jid">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabbergroupchat_chat_jid_cdata(undefined,
				      _acc) ->
    _acc;
encode_xabbergroupchat_chat_jid_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_xabbergroupchat_parent_chat(__TopXMLNS, __Opts,
				   {xmlel, <<"parent-chat">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_parent_chat_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_parent_chat_els(__TopXMLNS,
				       __Opts, [], Cdata) ->
    decode_xabbergroupchat_parent_chat_cdata(__TopXMLNS,
					     Cdata);
decode_xabbergroupchat_parent_chat_els(__TopXMLNS,
				       __Opts, [{xmlcdata, _data} | _els],
				       Cdata) ->
    decode_xabbergroupchat_parent_chat_els(__TopXMLNS,
					   __Opts, _els,
					   <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_parent_chat_els(__TopXMLNS,
				       __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_parent_chat_els(__TopXMLNS,
					   __Opts, _els, Cdata).

encode_xabbergroupchat_parent_chat(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_parent_chat_cdata(Cdata,
						    []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"parent-chat">>, _attrs, _els}.

decode_xabbergroupchat_parent_chat_cdata(__TopXMLNS,
					 <<>>) ->
    undefined;
decode_xabbergroupchat_parent_chat_cdata(__TopXMLNS,
					 _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"parent-chat">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabbergroupchat_parent_chat_cdata(undefined,
					 _acc) ->
    _acc;
encode_xabbergroupchat_parent_chat_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_xabbergroupchat_create(__TopXMLNS, __Opts,
			      {xmlel, <<"create">>, _attrs, _els}) ->
    {Peer, Contacts, Domains, Anonymous, Pinned, Localpart,
     Searchable, Name, Model, Description} =
	decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					  _els, undefined, undefined, undefined,
					  undefined, undefined, undefined,
					  undefined, undefined, undefined,
					  undefined),
    {xabbergroupchat_create, Name, Description, Model,
     Searchable, Anonymous, Localpart, Pinned, Domains,
     Contacts, Peer}.

decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [], Peer, Contacts, Domains, Anonymous,
				  Pinned, Localpart, Searchable, Name, Model,
				  Description) ->
    {Peer, Contacts, Domains, Anonymous, Pinned, Localpart,
     Searchable, Name, Model, Description};
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"name">>, _attrs, _} = _el | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable,
					    decode_xabbergroupchat_name(<<"http://xabber.com/protocol/groupchat">>,
									__Opts,
									_el),
					    Model, Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"description">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    decode_xabbergroupchat_description(<<"http://xabber.com/protocol/groupchat">>,
									       __Opts,
									       _el));
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"membership">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name,
					    decode_xabbergroupchat_model(<<"http://xabber.com/protocol/groupchat">>,
									 __Opts,
									 _el),
					    Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"privacy">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    decode_xabbergroupchat_anonymous(<<"http://xabber.com/protocol/groupchat">>,
									     __Opts,
									     _el),
					    Pinned, Localpart, Searchable, Name,
					    Model, Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"localpart">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned,
					    decode_xabbergroupchat_localpart(<<"http://xabber.com/protocol/groupchat">>,
									     __Opts,
									     _el),
					    Searchable, Name, Model,
					    Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"pinned-message">>, _attrs, _} =
				       _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous,
					    decode_xabbergroupchat_message(<<"http://xabber.com/protocol/groupchat">>,
									   __Opts,
									   _el),
					    Localpart, Searchable, Name, Model,
					    Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"domains">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts,
					    decode_xabbergroupchat_domains(<<"http://xabber.com/protocol/groupchat">>,
									   __Opts,
									   _el),
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"contacts">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer,
					    decode_xabbergroupchat_contacts(<<"http://xabber.com/protocol/groupchat">>,
									    __Opts,
									    _el),
					    Domains, Anonymous, Pinned,
					    Localpart, Searchable, Name, Model,
					    Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"peer-to-peer">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_peer(<<"http://xabber.com/protocol/groupchat">>,
									__Opts,
									_el),
					    Contacts, Domains, Anonymous,
					    Pinned, Localpart, Searchable, Name,
					    Model, Description);
      <<"jabber:client">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_peer(<<"jabber:client">>,
									__Opts,
									_el),
					    Contacts, Domains, Anonymous,
					    Pinned, Localpart, Searchable, Name,
					    Model, Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"index">>, _attrs, _} = _el
				   | _els],
				  Peer, Contacts, Domains, Anonymous, Pinned,
				  Localpart, Searchable, Name, Model,
				  Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    decode_xabbergroupchat_searchable(<<"http://xabber.com/protocol/groupchat">>,
									      __Opts,
									      _el),
					    Name, Model, Description);
      _ ->
	  decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
					    _els, Peer, Contacts, Domains,
					    Anonymous, Pinned, Localpart,
					    Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				  [_ | _els], Peer, Contacts, Domains,
				  Anonymous, Pinned, Localpart, Searchable,
				  Name, Model, Description) ->
    decode_xabbergroupchat_create_els(__TopXMLNS, __Opts,
				      _els, Peer, Contacts, Domains, Anonymous,
				      Pinned, Localpart, Searchable, Name,
				      Model, Description).

encode_xabbergroupchat_create({xabbergroupchat_create,
			       Name, Description, Model, Searchable, Anonymous,
			       Localpart, Pinned, Domains, Contacts, Peer},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_create_$peer'(Peer,
							    __NewTopXMLNS,
							    'encode_xabbergroupchat_create_$contacts'(Contacts,
												      __NewTopXMLNS,
												      'encode_xabbergroupchat_create_$domains'(Domains,
																	       __NewTopXMLNS,
																	       'encode_xabbergroupchat_create_$anonymous'(Anonymous,
																							  __NewTopXMLNS,
																							  'encode_xabbergroupchat_create_$pinned'(Pinned,
																												  __NewTopXMLNS,
																												  'encode_xabbergroupchat_create_$localpart'(Localpart,
																																	     __NewTopXMLNS,
																																	     'encode_xabbergroupchat_create_$searchable'(Searchable,
																																							 __NewTopXMLNS,
																																							 'encode_xabbergroupchat_create_$name'(Name,
																																											       __NewTopXMLNS,
																																											       'encode_xabbergroupchat_create_$model'(Model,
																																																      __NewTopXMLNS,
																																																      'encode_xabbergroupchat_create_$description'(Description,
																																																						   __NewTopXMLNS,
																																																						   []))))))))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"create">>, _attrs, _els}.

'encode_xabbergroupchat_create_$peer'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$peer'(Peer, __TopXMLNS,
				      _acc) ->
    [encode_xabbergroupchat_peer(Peer, __TopXMLNS) | _acc].

'encode_xabbergroupchat_create_$contacts'(undefined,
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$contacts'(Contacts,
					  __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_contacts(Contacts, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_create_$domains'(undefined,
					 __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$domains'(Domains,
					 __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_domains(Domains, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_create_$anonymous'(undefined,
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$anonymous'(Anonymous,
					   __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_anonymous(Anonymous, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_create_$pinned'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$pinned'(Pinned,
					__TopXMLNS, _acc) ->
    [encode_xabbergroupchat_message(Pinned, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_create_$localpart'(undefined,
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$localpart'(Localpart,
					   __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_localpart(Localpart, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_create_$searchable'(undefined,
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$searchable'(Searchable,
					    __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_searchable(Searchable,
				       __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_create_$name'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$name'(Name, __TopXMLNS,
				      _acc) ->
    [encode_xabbergroupchat_name(Name, __TopXMLNS) | _acc].

'encode_xabbergroupchat_create_$model'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$model'(Model,
				       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_model(Model, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_create_$description'(undefined,
					     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_create_$description'(Description,
					     __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_description(Description,
					__TopXMLNS)
     | _acc].

decode_xabbergroupchat_x(__TopXMLNS, __Opts,
			 {xmlel, <<"x">>, _attrs, _els}) ->
    {Members, Contacts, Domains, Anonymous, Jid, Parent,
     Present, Pinned, Localpart, Searchable, Name, Model,
     No_permission, Description, __Els} =
	decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				     undefined, undefined, undefined, undefined,
				     undefined, undefined, undefined, undefined,
				     undefined, undefined, undefined, undefined,
				     undefined, undefined, []),
    {Xmlns, Type, Version} =
	decode_xabbergroupchat_x_attrs(__TopXMLNS, _attrs,
				       undefined, undefined, undefined),
    {xabbergroupchat_x, Xmlns, Type, Version, No_permission,
     Name, Description, Model, Searchable, Anonymous,
     Localpart, Pinned, Domains, Contacts, Members, Present,
     Parent, Jid, __Els}.

decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, [],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    {Members, Contacts, Domains, Anonymous, Jid, Parent,
     Present, Pinned, Localpart, Searchable, Name, Model,
     No_permission, Description, lists:reverse(__Els)};
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"name">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable,
				       decode_xabbergroupchat_name(<<"http://xabber.com/protocol/groupchat">>,
								   __Opts, _el),
				       Model, No_permission, Description,
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"description">>, _attrs, _} = _el
			      | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       decode_xabbergroupchat_description(<<"http://xabber.com/protocol/groupchat">>,
									  __Opts,
									  _el),
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"membership">>, _attrs, _} = _el
			      | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name,
				       decode_xabbergroupchat_model(<<"http://xabber.com/protocol/groupchat">>,
								    __Opts,
								    _el),
				       No_permission, Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"privacy">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains,
				       decode_xabbergroupchat_anonymous(<<"http://xabber.com/protocol/groupchat">>,
									__Opts,
									_el),
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"localpart">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned,
				       decode_xabbergroupchat_localpart(<<"http://xabber.com/protocol/groupchat">>,
									__Opts,
									_el),
				       Searchable, Name, Model, No_permission,
				       Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"index">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       decode_xabbergroupchat_searchable(<<"http://xabber.com/protocol/groupchat">>,
									 __Opts,
									 _el),
				       Name, Model, No_permission, Description,
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"pinned-message">>, _attrs, _} = _el
			      | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present,
				       decode_xabbergroupchat_message(<<"http://xabber.com/protocol/groupchat">>,
								      __Opts,
								      _el),
				       Localpart, Searchable, Name, Model,
				       No_permission, Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"domains">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts,
				       decode_xabbergroupchat_domains(<<"http://xabber.com/protocol/groupchat">>,
								      __Opts,
								      _el),
				       Anonymous, Jid, Parent, Present, Pinned,
				       Localpart, Searchable, Name, Model,
				       No_permission, Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"contacts">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members,
				       decode_xabbergroupchat_contacts(<<"http://xabber.com/protocol/groupchat">>,
								       __Opts,
								       _el),
				       Domains, Anonymous, Jid, Parent, Present,
				       Pinned, Localpart, Searchable, Name,
				       Model, No_permission, Description,
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"no-permission">>, _attrs, _} = _el
			      | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model,
				       decode_xabbergroupchat_no_permission(<<"http://xabber.com/protocol/groupchat">>,
									    __Opts,
									    _el),
				       Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"members">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       decode_xabbergroupchat_members(<<"http://xabber.com/protocol/groupchat">>,
								      __Opts,
								      _el),
				       Contacts, Domains, Anonymous, Jid,
				       Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"present">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent,
				       decode_xabbergroupchat_online(<<"http://xabber.com/protocol/groupchat">>,
								     __Opts,
								     _el),
				       Pinned, Localpart, Searchable, Name,
				       Model, No_permission, Description,
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"parent-chat">>, _attrs, _} = _el
			      | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid,
				       decode_xabbergroupchat_parent_chat(<<"http://xabber.com/protocol/groupchat">>,
									  __Opts,
									  _el),
				       Present, Pinned, Localpart, Searchable,
				       Name, Model, No_permission, Description,
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
			     Members, Contacts, Domains, Anonymous, Jid, Parent,
			     Present, Pinned, Localpart, Searchable, Name,
			     Model, No_permission, Description, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       decode_xabbergroupchat_chat_jid(<<"http://xabber.com/protocol/groupchat">>,
								       __Opts,
								       _el),
				       Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, _name, _attrs, _} = _el | _els], Members,
			     Contacts, Domains, Anonymous, Jid, Parent, Present,
			     Pinned, Localpart, Searchable, Name, Model,
			     No_permission, Description, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Contacts, Domains, Anonymous,
				       Jid, Parent, Present, Pinned, Localpart,
				       Searchable, Name, Model, No_permission,
				       Description, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
					     Members, Contacts, Domains,
					     Anonymous, Jid, Parent, Present,
					     Pinned, Localpart, Searchable,
					     Name, Model, No_permission,
					     Description, [_el | __Els]);
	    Mod ->
		decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
					     Members, Contacts, Domains,
					     Anonymous, Jid, Parent, Present,
					     Pinned, Localpart, Searchable,
					     Name, Model, No_permission,
					     Description,
					     [Mod:do_decode(_name, __XMLNS, _el,
							    __Opts)
					      | __Els])
	  end
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [_ | _els], Members, Contacts, Domains, Anonymous,
			     Jid, Parent, Present, Pinned, Localpart,
			     Searchable, Name, Model, No_permission,
			     Description, __Els) ->
    decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				 Members, Contacts, Domains, Anonymous, Jid,
				 Parent, Present, Pinned, Localpart, Searchable,
				 Name, Model, No_permission, Description,
				 __Els).

decode_xabbergroupchat_x_attrs(__TopXMLNS,
			       [{<<"xmlns">>, _val} | _attrs], _Xmlns, Type,
			       Version) ->
    decode_xabbergroupchat_x_attrs(__TopXMLNS, _attrs, _val,
				   Type, Version);
decode_xabbergroupchat_x_attrs(__TopXMLNS,
			       [{<<"type">>, _val} | _attrs], Xmlns, _Type,
			       Version) ->
    decode_xabbergroupchat_x_attrs(__TopXMLNS, _attrs,
				   Xmlns, _val, Version);
decode_xabbergroupchat_x_attrs(__TopXMLNS,
			       [{<<"version">>, _val} | _attrs], Xmlns, Type,
			       _Version) ->
    decode_xabbergroupchat_x_attrs(__TopXMLNS, _attrs,
				   Xmlns, Type, _val);
decode_xabbergroupchat_x_attrs(__TopXMLNS, [_ | _attrs],
			       Xmlns, Type, Version) ->
    decode_xabbergroupchat_x_attrs(__TopXMLNS, _attrs,
				   Xmlns, Type, Version);
decode_xabbergroupchat_x_attrs(__TopXMLNS, [], Xmlns,
			       Type, Version) ->
    {decode_xabbergroupchat_x_attr_xmlns(__TopXMLNS, Xmlns),
     decode_xabbergroupchat_x_attr_type(__TopXMLNS, Type),
     decode_xabbergroupchat_x_attr_version(__TopXMLNS,
					   Version)}.

encode_xabbergroupchat_x({xabbergroupchat_x, Xmlns,
			  Type, Version, No_permission, Name, Description,
			  Model, Searchable, Anonymous, Localpart, Pinned,
			  Domains, Contacts, Members, Present, Parent, Jid,
			  __Els},
			 __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#system-m"
						   "essage">>,
						 <<"http://xabber.com/protocol/groupchat#create">>,
						 <<"http://xabber.com/protocol/groupchat#left">>,
						 <<"http://xabber.com/protocol/groupchat#join">>,
						 <<"http://xabber.com/protocol/groupchat#kick">>,
						 <<"http://xabber.com/protocol/groupchat#update">>,
						 <<"http://xabber.com/protocol/groupchat#user-upd"
						   "ated">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_xabbergroupchat_x_$members'(Members,
							       __NewTopXMLNS,
							       'encode_xabbergroupchat_x_$contacts'(Contacts,
												    __NewTopXMLNS,
												    'encode_xabbergroupchat_x_$domains'(Domains,
																	__NewTopXMLNS,
																	'encode_xabbergroupchat_x_$anonymous'(Anonymous,
																					      __NewTopXMLNS,
																					      'encode_xabbergroupchat_x_$jid'(Jid,
																									      __NewTopXMLNS,
																									      'encode_xabbergroupchat_x_$parent'(Parent,
																														 __NewTopXMLNS,
																														 'encode_xabbergroupchat_x_$present'(Present,
																																		     __NewTopXMLNS,
																																		     'encode_xabbergroupchat_x_$pinned'(Pinned,
																																							__NewTopXMLNS,
																																							'encode_xabbergroupchat_x_$localpart'(Localpart,
																																											      __NewTopXMLNS,
																																											      'encode_xabbergroupchat_x_$searchable'(Searchable,
																																																     __NewTopXMLNS,
																																																     'encode_xabbergroupchat_x_$name'(Name,
																																																				      __NewTopXMLNS,
																																																				      'encode_xabbergroupchat_x_$model'(Model,
																																																									__NewTopXMLNS,
																																																									'encode_xabbergroupchat_x_$no_permission'(No_permission,
																																																														  __NewTopXMLNS,
																																																														  'encode_xabbergroupchat_x_$description'(Description,
																																																																			  __NewTopXMLNS,
																																																																			  []))))))))))))))),
    _attrs = encode_xabbergroupchat_x_attr_version(Version,
						   encode_xabbergroupchat_x_attr_type(Type,
										      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
														 __TopXMLNS))),
    {xmlel, <<"x">>, _attrs, _els}.

'encode_xabbergroupchat_x_$members'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$members'(Members, __TopXMLNS,
				    _acc) ->
    [encode_xabbergroupchat_members(Members, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$contacts'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$contacts'(Contacts,
				     __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_contacts(Contacts, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$domains'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$domains'(Domains, __TopXMLNS,
				    _acc) ->
    [encode_xabbergroupchat_domains(Domains, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$anonymous'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$anonymous'(Anonymous,
				      __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_anonymous(Anonymous, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$jid'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_xabbergroupchat_x_$jid'(Jid, __TopXMLNS,
				_acc) ->
    [encode_xabbergroupchat_chat_jid(Jid, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$parent'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$parent'(Parent, __TopXMLNS,
				   _acc) ->
    [encode_xabbergroupchat_parent_chat(Parent, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$present'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$present'(Present, __TopXMLNS,
				    _acc) ->
    [encode_xabbergroupchat_online(Present, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$pinned'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$pinned'(Pinned, __TopXMLNS,
				   _acc) ->
    [encode_xabbergroupchat_message(Pinned, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$localpart'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$localpart'(Localpart,
				      __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_localpart(Localpart, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$searchable'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$searchable'(Searchable,
				       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_searchable(Searchable,
				       __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$name'(undefined, __TopXMLNS,
				 _acc) ->
    _acc;
'encode_xabbergroupchat_x_$name'(Name, __TopXMLNS,
				 _acc) ->
    [encode_xabbergroupchat_name(Name, __TopXMLNS) | _acc].

'encode_xabbergroupchat_x_$model'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_xabbergroupchat_x_$model'(Model, __TopXMLNS,
				  _acc) ->
    [encode_xabbergroupchat_model(Model, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$no_permission'(undefined,
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$no_permission'(No_permission,
					  __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_no_permission(No_permission,
					  __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_x_$description'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$description'(Description,
					__TopXMLNS, _acc) ->
    [encode_xabbergroupchat_description(Description,
					__TopXMLNS)
     | _acc].

decode_xabbergroupchat_x_attr_xmlns(__TopXMLNS,
				    undefined) ->
    <<>>;
decode_xabbergroupchat_x_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_xabbergroupchat_x_attr_type(__TopXMLNS,
				   undefined) ->
    <<>>;
decode_xabbergroupchat_x_attr_type(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_x_attr_type(<<>>, _acc) -> _acc;
encode_xabbergroupchat_x_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_xabbergroupchat_x_attr_version(__TopXMLNS,
				      undefined) ->
    <<>>;
decode_xabbergroupchat_x_attr_version(__TopXMLNS,
				      _val) ->
    _val.

encode_xabbergroupchat_x_attr_version(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_x_attr_version(_val, _acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_update(__TopXMLNS, __Opts,
			      {xmlel, <<"update">>, _attrs, _els}) ->
    {Owner, Contacts, Domains, Pinned, Searchable, Name,
     Model, Description} =
	decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					  _els, undefined, undefined, undefined,
					  undefined, undefined, undefined,
					  undefined, undefined),
    {xabbergroupchat_update, Name, Description, Model,
     Searchable, Owner, Pinned, Domains, Contacts}.

decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [], Owner, Contacts, Domains, Pinned,
				  Searchable, Name, Model, Description) ->
    {Owner, Contacts, Domains, Pinned, Searchable, Name,
     Model, Description};
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"name">>, _attrs, _} = _el | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable,
					    decode_xabbergroupchat_name(<<"http://xabber.com/protocol/groupchat">>,
									__Opts,
									_el),
					    Model, Description);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"description">>, _attrs, _} = _el
				   | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    decode_xabbergroupchat_description(<<"http://xabber.com/protocol/groupchat">>,
									       __Opts,
									       _el));
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"membership">>, _attrs, _} = _el
				   | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name,
					    decode_xabbergroupchat_model(<<"http://xabber.com/protocol/groupchat">>,
									 __Opts,
									 _el),
					    Description);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"owner">>, _attrs, _} = _el
				   | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_owner(<<"http://xabber.com/protocol/groupchat">>,
									 __Opts,
									 _el),
					    Contacts, Domains, Pinned,
					    Searchable, Name, Model,
					    Description);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"pinned-message">>, _attrs, _} =
				       _el
				   | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    decode_xabbergroupchat_message(<<"http://xabber.com/protocol/groupchat">>,
									   __Opts,
									   _el),
					    Searchable, Name, Model,
					    Description);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"domains">>, _attrs, _} = _el
				   | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts,
					    decode_xabbergroupchat_domains(<<"http://xabber.com/protocol/groupchat">>,
									   __Opts,
									   _el),
					    Pinned, Searchable, Name, Model,
					    Description);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"contacts">>, _attrs, _} = _el
				   | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner,
					    decode_xabbergroupchat_contacts(<<"http://xabber.com/protocol/groupchat">>,
									    __Opts,
									    _el),
					    Domains, Pinned, Searchable, Name,
					    Model, Description);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"index">>, _attrs, _} = _el
				   | _els],
				  Owner, Contacts, Domains, Pinned, Searchable,
				  Name, Model, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned,
					    decode_xabbergroupchat_searchable(<<"http://xabber.com/protocol/groupchat">>,
									      __Opts,
									      _el),
					    Name, Model, Description);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Contacts, Domains,
					    Pinned, Searchable, Name, Model,
					    Description)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [_ | _els], Owner, Contacts, Domains, Pinned,
				  Searchable, Name, Model, Description) ->
    decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				      _els, Owner, Contacts, Domains, Pinned,
				      Searchable, Name, Model, Description).

encode_xabbergroupchat_update({xabbergroupchat_update,
			       Name, Description, Model, Searchable, Owner,
			       Pinned, Domains, Contacts},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_update_$owner'(Owner,
							     __NewTopXMLNS,
							     'encode_xabbergroupchat_update_$contacts'(Contacts,
												       __NewTopXMLNS,
												       'encode_xabbergroupchat_update_$domains'(Domains,
																		__NewTopXMLNS,
																		'encode_xabbergroupchat_update_$pinned'(Pinned,
																							__NewTopXMLNS,
																							'encode_xabbergroupchat_update_$searchable'(Searchable,
																												    __NewTopXMLNS,
																												    'encode_xabbergroupchat_update_$name'(Name,
																																	  __NewTopXMLNS,
																																	  'encode_xabbergroupchat_update_$model'(Model,
																																						 __NewTopXMLNS,
																																						 'encode_xabbergroupchat_update_$description'(Description,
																																											      __NewTopXMLNS,
																																											      []))))))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"update">>, _attrs, _els}.

'encode_xabbergroupchat_update_$owner'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$owner'(Owner,
				       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_owner(Owner, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_update_$contacts'(undefined,
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$contacts'(Contacts,
					  __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_contacts(Contacts, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_update_$domains'(undefined,
					 __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$domains'(Domains,
					 __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_domains(Domains, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_update_$pinned'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$pinned'(Pinned,
					__TopXMLNS, _acc) ->
    [encode_xabbergroupchat_message(Pinned, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_update_$searchable'(undefined,
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$searchable'(Searchable,
					    __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_searchable(Searchable,
				       __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_update_$name'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$name'(Name, __TopXMLNS,
				      _acc) ->
    [encode_xabbergroupchat_name(Name, __TopXMLNS) | _acc].

'encode_xabbergroupchat_update_$model'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$model'(Model,
				       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_model(Model, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_update_$description'(undefined,
					     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$description'(Description,
					     __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_description(Description,
					__TopXMLNS)
     | _acc].

decode_xabbergroupchat_query_item(__TopXMLNS, __Opts,
				  {xmlel, <<"item">>, _attrs, _els}) ->
    Id = decode_xabbergroupchat_query_item_attrs(__TopXMLNS,
						 _attrs, undefined),
    {xabbergroupchat_query_item, Id}.

decode_xabbergroupchat_query_item_attrs(__TopXMLNS,
					[{<<"id">>, _val} | _attrs], _Id) ->
    decode_xabbergroupchat_query_item_attrs(__TopXMLNS,
					    _attrs, _val);
decode_xabbergroupchat_query_item_attrs(__TopXMLNS,
					[_ | _attrs], Id) ->
    decode_xabbergroupchat_query_item_attrs(__TopXMLNS,
					    _attrs, Id);
decode_xabbergroupchat_query_item_attrs(__TopXMLNS, [],
					Id) ->
    decode_xabbergroupchat_query_item_attr_id(__TopXMLNS,
					      Id).

encode_xabbergroupchat_query_item({xabbergroupchat_query_item,
				   Id},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#rights">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_xabbergroupchat_query_item_attr_id(Id,
						       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										  __TopXMLNS)),
    {xmlel, <<"item">>, _attrs, _els}.

decode_xabbergroupchat_query_item_attr_id(__TopXMLNS,
					  undefined) ->
    <<>>;
decode_xabbergroupchat_query_item_attr_id(__TopXMLNS,
					  _val) ->
    _val.

encode_xabbergroupchat_query_item_attr_id(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_query_item_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_query_rights(__TopXMLNS, __Opts,
				    {xmlel, <<"query">>, _attrs, _els}) ->
    {Item, Restriction, __Els} =
	decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						__Opts, _els, undefined, [],
						[]),
    {xabbergroupchat_query_rights, Item, Restriction,
     __Els}.

decode_xabbergroupchat_query_rights_els(__TopXMLNS,
					__Opts, [], Item, Restriction, __Els) ->
    {Item, lists:reverse(Restriction),
     lists:reverse(__Els)};
decode_xabbergroupchat_query_rights_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"item">>, _attrs, _} = _el
					 | _els],
					Item, Restriction, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#rights">> ->
	  decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						  __Opts, _els,
						  decode_xabbergroupchat_query_item(<<"http://xabber.com/protocol/groupchat#rights">>,
										    __Opts,
										    _el),
						  Restriction, __Els);
      _ ->
	  decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						  __Opts, _els, Item,
						  Restriction, [_el | __Els])
    end;
decode_xabbergroupchat_query_rights_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"restriction">>, _attrs, _} =
					     _el
					 | _els],
					Item, Restriction, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#rights">> ->
	  decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						  __Opts, _els, Item,
						  [decode_xabbergroupchat_restriction_set(<<"http://xabber.com/protocol/groupchat#rights">>,
											  __Opts,
											  _el)
						   | Restriction],
						  __Els);
      _ ->
	  decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						  __Opts, _els, Item,
						  Restriction, [_el | __Els])
    end;
decode_xabbergroupchat_query_rights_els(__TopXMLNS,
					__Opts,
					[{xmlel, _name, _attrs, _} = _el
					 | _els],
					Item, Restriction, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						  __Opts, _els, Item,
						  Restriction, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabbergroupchat_query_rights_els(__TopXMLNS,
							__Opts, _els, Item,
							Restriction,
							[_el | __Els]);
	    Mod ->
		decode_xabbergroupchat_query_rights_els(__TopXMLNS,
							__Opts, _els, Item,
							Restriction,
							[Mod:do_decode(_name,
								       __XMLNS,
								       _el,
								       __Opts)
							 | __Els])
	  end
    end;
decode_xabbergroupchat_query_rights_els(__TopXMLNS,
					__Opts, [_ | _els], Item, Restriction,
					__Els) ->
    decode_xabbergroupchat_query_rights_els(__TopXMLNS,
					    __Opts, _els, Item, Restriction,
					    __Els).

encode_xabbergroupchat_query_rights({xabbergroupchat_query_rights,
				     Item, Restriction, __Els},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#rights">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_xabbergroupchat_query_rights_$item'(Item,
								       __NewTopXMLNS,
								       'encode_xabbergroupchat_query_rights_$restriction'(Restriction,
															  __NewTopXMLNS,
															  []))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabbergroupchat_query_rights_$item'(undefined,
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_query_rights_$item'(Item,
					    __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_query_item(Item, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_query_rights_$restriction'([],
						   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_query_rights_$restriction'([Restriction
						    | _els],
						   __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_query_rights_$restriction'(_els,
						       __TopXMLNS,
						       [encode_xabbergroupchat_restriction_set(Restriction,
											       __TopXMLNS)
							| _acc]).

decode_xabbergroupchat_invite_user(__TopXMLNS, __Opts,
				   {xmlel, <<"user">>, _attrs, _els}) ->
    {Id, Jid} =
	decode_xabbergroupchat_invite_user_attrs(__TopXMLNS,
						 _attrs, undefined, undefined),
    {xabbergroup_invite_user, Jid, Id}.

decode_xabbergroupchat_invite_user_attrs(__TopXMLNS,
					 [{<<"id">>, _val} | _attrs], _Id,
					 Jid) ->
    decode_xabbergroupchat_invite_user_attrs(__TopXMLNS,
					     _attrs, _val, Jid);
decode_xabbergroupchat_invite_user_attrs(__TopXMLNS,
					 [{<<"jid">>, _val} | _attrs], Id,
					 _Jid) ->
    decode_xabbergroupchat_invite_user_attrs(__TopXMLNS,
					     _attrs, Id, _val);
decode_xabbergroupchat_invite_user_attrs(__TopXMLNS,
					 [_ | _attrs], Id, Jid) ->
    decode_xabbergroupchat_invite_user_attrs(__TopXMLNS,
					     _attrs, Id, Jid);
decode_xabbergroupchat_invite_user_attrs(__TopXMLNS, [],
					 Id, Jid) ->
    {decode_xabbergroupchat_invite_user_attr_id(__TopXMLNS,
						Id),
     decode_xabbergroupchat_invite_user_attr_jid(__TopXMLNS,
						 Jid)}.

encode_xabbergroupchat_invite_user({xabbergroup_invite_user,
				    Jid, Id},
				   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#invite">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_invite_user_attr_jid(Jid,
						    encode_xabbergroupchat_invite_user_attr_id(Id,
											       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															  __TopXMLNS))),
    {xmlel, <<"user">>, _attrs, _els}.

decode_xabbergroupchat_invite_user_attr_id(__TopXMLNS,
					   undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"user">>, __TopXMLNS}});
decode_xabbergroupchat_invite_user_attr_id(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_invite_user_attr_id(_val,
					   _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_invite_user_attr_jid(__TopXMLNS,
					    undefined) ->
    <<>>;
decode_xabbergroupchat_invite_user_attr_jid(__TopXMLNS,
					    _val) ->
    _val.

encode_xabbergroupchat_invite_user_attr_jid(<<>>,
					    _acc) ->
    _acc;
encode_xabbergroupchat_invite_user_attr_jid(_val,
					    _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_xabbergroupchat_invite_jid(__TopXMLNS, __Opts,
				  {xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_invite_jid_els(__TopXMLNS,
					      __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_invite_jid_els(__TopXMLNS,
				      __Opts, [], Cdata) ->
    decode_xabbergroupchat_invite_jid_cdata(__TopXMLNS,
					    Cdata);
decode_xabbergroupchat_invite_jid_els(__TopXMLNS,
				      __Opts, [{xmlcdata, _data} | _els],
				      Cdata) ->
    decode_xabbergroupchat_invite_jid_els(__TopXMLNS,
					  __Opts, _els,
					  <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_invite_jid_els(__TopXMLNS,
				      __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_invite_jid_els(__TopXMLNS,
					  __Opts, _els, Cdata).

encode_xabbergroupchat_invite_jid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#invite">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_invite_jid_cdata(Cdata,
						   []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_xabbergroupchat_invite_jid_cdata(__TopXMLNS,
					<<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_xabbergroupchat_invite_jid_cdata(__TopXMLNS,
					_val) ->
    _val.

encode_xabbergroupchat_invite_jid_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_invite_send(__TopXMLNS, __Opts,
				   {xmlel, <<"send">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_invite_send_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_invite_send_els(__TopXMLNS,
				       __Opts, [], Cdata) ->
    decode_xabbergroupchat_invite_send_cdata(__TopXMLNS,
					     Cdata);
decode_xabbergroupchat_invite_send_els(__TopXMLNS,
				       __Opts, [{xmlcdata, _data} | _els],
				       Cdata) ->
    decode_xabbergroupchat_invite_send_els(__TopXMLNS,
					   __Opts, _els,
					   <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_invite_send_els(__TopXMLNS,
				       __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_invite_send_els(__TopXMLNS,
					   __Opts, _els, Cdata).

encode_xabbergroupchat_invite_send(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#invite">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_invite_send_cdata(Cdata,
						    []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"send">>, _attrs, _els}.

decode_xabbergroupchat_invite_send_cdata(__TopXMLNS,
					 <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"send">>, __TopXMLNS}});
decode_xabbergroupchat_invite_send_cdata(__TopXMLNS,
					 _val) ->
    _val.

encode_xabbergroupchat_invite_send_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_invite_reason(__TopXMLNS, __Opts,
				     {xmlel, <<"reason">>, _attrs, _els}) ->
    Cdata =
	decode_xabbergroupchat_invite_reason_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_invite_reason_els(__TopXMLNS,
					 __Opts, [], Cdata) ->
    decode_xabbergroupchat_invite_reason_cdata(__TopXMLNS,
					       Cdata);
decode_xabbergroupchat_invite_reason_els(__TopXMLNS,
					 __Opts, [{xmlcdata, _data} | _els],
					 Cdata) ->
    decode_xabbergroupchat_invite_reason_els(__TopXMLNS,
					     __Opts, _els,
					     <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_invite_reason_els(__TopXMLNS,
					 __Opts, [_ | _els], Cdata) ->
    decode_xabbergroupchat_invite_reason_els(__TopXMLNS,
					     __Opts, _els, Cdata).

encode_xabbergroupchat_invite_reason(Cdata,
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#invite">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_invite_reason_cdata(Cdata,
						      []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"reason">>, _attrs, _els}.

decode_xabbergroupchat_invite_reason_cdata(__TopXMLNS,
					   <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"reason">>, __TopXMLNS}});
decode_xabbergroupchat_invite_reason_cdata(__TopXMLNS,
					   _val) ->
    _val.

encode_xabbergroupchat_invite_reason_cdata(_val,
					   _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_revoke(__TopXMLNS, __Opts,
			      {xmlel, <<"revoke">>, _attrs, _els}) ->
    Jid = decode_xabbergroupchat_revoke_els(__TopXMLNS,
					    __Opts, _els, undefined),
    {xabbergroupchat_revoke, Jid}.

decode_xabbergroupchat_revoke_els(__TopXMLNS, __Opts,
				  [], Jid) ->
    Jid;
decode_xabbergroupchat_revoke_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
				  Jid) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#invite">> ->
	  decode_xabbergroupchat_revoke_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_invite_jid(<<"http://xabber.com/protocol/groupchat#invite">>,
									      __Opts,
									      _el));
      _ ->
	  decode_xabbergroupchat_revoke_els(__TopXMLNS, __Opts,
					    _els, Jid)
    end;
decode_xabbergroupchat_revoke_els(__TopXMLNS, __Opts,
				  [_ | _els], Jid) ->
    decode_xabbergroupchat_revoke_els(__TopXMLNS, __Opts,
				      _els, Jid).

encode_xabbergroupchat_revoke({xabbergroupchat_revoke,
			       Jid},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#invite">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_revoke_$jid'(Jid,
							   __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"revoke">>, _attrs, _els}.

'encode_xabbergroupchat_revoke_$jid'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_revoke_$jid'(Jid, __TopXMLNS,
				     _acc) ->
    [encode_xabbergroupchat_invite_jid(Jid, __TopXMLNS)
     | _acc].

decode_xabbergroupchat_invite(__TopXMLNS, __Opts,
			      {xmlel, <<"invite">>, _attrs, _els}) ->
    {User, Send, Invite_jid, Reason} =
	decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					  _els, undefined, undefined, undefined,
					  undefined),
    Jid = decode_xabbergroupchat_invite_attrs(__TopXMLNS,
					      _attrs, undefined),
    {xabbergroupchat_invite, Jid, Invite_jid, Send, Reason,
     User}.

decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
				  [], User, Send, Invite_jid, Reason) ->
    {User, Send, Invite_jid, Reason};
decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
				  User, Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send,
					    decode_xabbergroupchat_invite_jid(<<"http://xabber.com/protocol/groupchat#invite">>,
									      __Opts,
									      _el),
					    Reason);
      _ ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send, Invite_jid,
					    Reason)
    end;
decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"send">>, _attrs, _} = _el | _els],
				  User, Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User,
					    decode_xabbergroupchat_invite_send(<<"http://xabber.com/protocol/groupchat#invite">>,
									       __Opts,
									       _el),
					    Invite_jid, Reason);
      _ ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send, Invite_jid,
					    Reason)
    end;
decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"user">>, _attrs, _} = _el | _els],
				  User, Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_invite_user(<<"http://xabber.com/protocol/groupchat#invite">>,
									       __Opts,
									       _el),
					    Send, Invite_jid, Reason);
      _ ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send, Invite_jid,
					    Reason)
    end;
decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"reason">>, _attrs, _} = _el
				   | _els],
				  User, Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send, Invite_jid,
					    decode_xabbergroupchat_invite_reason(<<"http://xabber.com/protocol/groupchat#invite">>,
										 __Opts,
										 _el));
      _ ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send, Invite_jid,
					    Reason)
    end;
decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
				  [_ | _els], User, Send, Invite_jid, Reason) ->
    decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
				      _els, User, Send, Invite_jid, Reason).

decode_xabbergroupchat_invite_attrs(__TopXMLNS,
				    [{<<"jid">>, _val} | _attrs], _Jid) ->
    decode_xabbergroupchat_invite_attrs(__TopXMLNS, _attrs,
					_val);
decode_xabbergroupchat_invite_attrs(__TopXMLNS,
				    [_ | _attrs], Jid) ->
    decode_xabbergroupchat_invite_attrs(__TopXMLNS, _attrs,
					Jid);
decode_xabbergroupchat_invite_attrs(__TopXMLNS, [],
				    Jid) ->
    decode_xabbergroupchat_invite_attr_jid(__TopXMLNS, Jid).

encode_xabbergroupchat_invite({xabbergroupchat_invite,
			       Jid, Invite_jid, Send, Reason, User},
			      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat#invite">>,
						 <<"http://xabber.com/protocol/groupchat">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_invite_$user'(User,
							    __NewTopXMLNS,
							    'encode_xabbergroupchat_invite_$send'(Send,
												  __NewTopXMLNS,
												  'encode_xabbergroupchat_invite_$invite_jid'(Invite_jid,
																	      __NewTopXMLNS,
																	      'encode_xabbergroupchat_invite_$reason'(Reason,
																						      __NewTopXMLNS,
																						      []))))),
    _attrs = encode_xabbergroupchat_invite_attr_jid(Jid,
						    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									       __TopXMLNS)),
    {xmlel, <<"invite">>, _attrs, _els}.

'encode_xabbergroupchat_invite_$user'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_invite_$user'(User, __TopXMLNS,
				      _acc) ->
    [encode_xabbergroupchat_invite_user(User, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_invite_$send'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_invite_$send'(Send, __TopXMLNS,
				      _acc) ->
    [encode_xabbergroupchat_invite_send(Send, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_invite_$invite_jid'(undefined,
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_invite_$invite_jid'(Invite_jid,
					    __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_invite_jid(Invite_jid,
				       __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_invite_$reason'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_invite_$reason'(Reason,
					__TopXMLNS, _acc) ->
    [encode_xabbergroupchat_invite_reason(Reason,
					  __TopXMLNS)
     | _acc].

decode_xabbergroupchat_invite_attr_jid(__TopXMLNS,
				       undefined) ->
    undefined;
decode_xabbergroupchat_invite_attr_jid(__TopXMLNS,
				       _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"invite">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabbergroupchat_invite_attr_jid(undefined,
				       _acc) ->
    _acc;
encode_xabbergroupchat_invite_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_xabbergroupchat_invite_query(__TopXMLNS, __Opts,
				    {xmlel, <<"query">>, _attrs, _els}) ->
    User =
	decode_xabbergroupchat_invite_query_els(__TopXMLNS,
						__Opts, _els, []),
    {xabbergroupchat_invite_query, User}.

decode_xabbergroupchat_invite_query_els(__TopXMLNS,
					__Opts, [], User) ->
    lists:reverse(User);
decode_xabbergroupchat_invite_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"user">>, _attrs, _} = _el
					 | _els],
					User) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#invite">> ->
	  decode_xabbergroupchat_invite_query_els(__TopXMLNS,
						  __Opts, _els,
						  [decode_xabbergroupchat_invite_user(<<"http://xabber.com/protocol/groupchat#invite">>,
										      __Opts,
										      _el)
						   | User]);
      _ ->
	  decode_xabbergroupchat_invite_query_els(__TopXMLNS,
						  __Opts, _els, User)
    end;
decode_xabbergroupchat_invite_query_els(__TopXMLNS,
					__Opts, [_ | _els], User) ->
    decode_xabbergroupchat_invite_query_els(__TopXMLNS,
					    __Opts, _els, User).

encode_xabbergroupchat_invite_query({xabbergroupchat_invite_query,
				     User},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#invite">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_invite_query_$user'(User,
								  __NewTopXMLNS,
								  [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabbergroupchat_invite_query_$user'([],
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_invite_query_$user'([User
					     | _els],
					    __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_invite_query_$user'(_els,
						__TopXMLNS,
						[encode_xabbergroupchat_invite_user(User,
										    __TopXMLNS)
						 | _acc]).

decode_xabbergroupchat_nickname(__TopXMLNS, __Opts,
				{xmlel, <<"nickname">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_nickname_els(__TopXMLNS,
						__Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_nickname_els(__TopXMLNS, __Opts,
				    [], Cdata) ->
    decode_xabbergroupchat_nickname_cdata(__TopXMLNS,
					  Cdata);
decode_xabbergroupchat_nickname_els(__TopXMLNS, __Opts,
				    [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_nickname_els(__TopXMLNS, __Opts,
					_els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_nickname_els(__TopXMLNS, __Opts,
				    [_ | _els], Cdata) ->
    decode_xabbergroupchat_nickname_els(__TopXMLNS, __Opts,
					_els, Cdata).

encode_xabbergroupchat_nickname(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#members">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_nickname_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"nickname">>, _attrs, _els}.

decode_xabbergroupchat_nickname_cdata(__TopXMLNS,
				      <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"nickname">>, __TopXMLNS}});
decode_xabbergroupchat_nickname_cdata(__TopXMLNS,
				      _val) ->
    _val.

encode_xabbergroupchat_nickname_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_query_members(__TopXMLNS, __Opts,
				     {xmlel, <<"query">>, _attrs, _els}) ->
    Item =
	decode_xabbergroupchat_query_members_els(__TopXMLNS,
						 __Opts, _els, undefined),
    {Id, Version} =
	decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
						   _attrs, undefined,
						   undefined),
    {xabbergroupchat_query_members, Id, Version, Item}.

decode_xabbergroupchat_query_members_els(__TopXMLNS,
					 __Opts, [], Item) ->
    Item;
decode_xabbergroupchat_query_members_els(__TopXMLNS,
					 __Opts,
					 [{xmlel, <<"item">>, _attrs, _} = _el
					  | _els],
					 Item) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/groupchat#members">> ->
	  decode_xabbergroupchat_query_members_els(__TopXMLNS,
						   __Opts, _els,
						   decode_xabbergroupchat_item(<<"http://xabber.com/protocol/groupchat#members">>,
									       __Opts,
									       _el));
      _ ->
	  decode_xabbergroupchat_query_members_els(__TopXMLNS,
						   __Opts, _els, Item)
    end;
decode_xabbergroupchat_query_members_els(__TopXMLNS,
					 __Opts, [_ | _els], Item) ->
    decode_xabbergroupchat_query_members_els(__TopXMLNS,
					     __Opts, _els, Item).

decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
					   [{<<"id">>, _val} | _attrs], _Id,
					   Version) ->
    decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
					       _attrs, _val, Version);
decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
					   [{<<"version">>, _val} | _attrs], Id,
					   _Version) ->
    decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
					       _attrs, Id, _val);
decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
					   [_ | _attrs], Id, Version) ->
    decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
					       _attrs, Id, Version);
decode_xabbergroupchat_query_members_attrs(__TopXMLNS,
					   [], Id, Version) ->
    {decode_xabbergroupchat_query_members_attr_id(__TopXMLNS,
						  Id),
     decode_xabbergroupchat_query_members_attr_version(__TopXMLNS,
						       Version)}.

encode_xabbergroupchat_query_members({xabbergroupchat_query_members,
				      Id, Version, Item},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#members">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_query_members_$item'(Item,
								   __NewTopXMLNS,
								   [])),
    _attrs =
	encode_xabbergroupchat_query_members_attr_version(Version,
							  encode_xabbergroupchat_query_members_attr_id(Id,
												       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																  __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabbergroupchat_query_members_$item'(undefined,
					     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_query_members_$item'(Item,
					     __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_item(Item, __TopXMLNS) | _acc].

decode_xabbergroupchat_query_members_attr_id(__TopXMLNS,
					     undefined) ->
    <<>>;
decode_xabbergroupchat_query_members_attr_id(__TopXMLNS,
					     _val) ->
    _val.

encode_xabbergroupchat_query_members_attr_id(<<>>,
					     _acc) ->
    _acc;
encode_xabbergroupchat_query_members_attr_id(_val,
					     _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_query_members_attr_version(__TopXMLNS,
						  undefined) ->
    <<>>;
decode_xabbergroupchat_query_members_attr_version(__TopXMLNS,
						  _val) ->
    _val.

encode_xabbergroupchat_query_members_attr_version(<<>>,
						  _acc) ->
    _acc;
encode_xabbergroupchat_query_members_attr_version(_val,
						  _acc) ->
    [{<<"version">>, _val} | _acc].

decode_xabbergroupchat_owner(__TopXMLNS, __Opts,
			     {xmlel, <<"owner">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_owner_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    {Cdata}.

decode_xabbergroupchat_owner_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_xabbergroupchat_owner_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_owner_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_owner_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_owner_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_xabbergroupchat_owner_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_xabbergroupchat_owner({Cdata}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_owner_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"owner">>, _attrs, _els}.

decode_xabbergroupchat_owner_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"owner">>, __TopXMLNS}});
decode_xabbergroupchat_owner_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_owner_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_badge(__TopXMLNS, __Opts,
			     {xmlel, <<"badge">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_badge_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    Cdata.

decode_xabbergroupchat_badge_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_xabbergroupchat_badge_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_badge_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_badge_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_badge_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_xabbergroupchat_badge_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_xabbergroupchat_badge(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#members">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_badge_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"badge">>, _attrs, _els}.

decode_xabbergroupchat_badge_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbergroupchat_badge_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_badge_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_badge_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_collect(__TopXMLNS, __Opts,
			       {xmlel, <<"collect">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_collect_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    {collect, Cdata}.

decode_xabbergroupchat_collect_els(__TopXMLNS, __Opts,
				   [], Cdata) ->
    decode_xabbergroupchat_collect_cdata(__TopXMLNS, Cdata);
decode_xabbergroupchat_collect_els(__TopXMLNS, __Opts,
				   [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_collect_els(__TopXMLNS, __Opts,
				       _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_collect_els(__TopXMLNS, __Opts,
				   [_ | _els], Cdata) ->
    decode_xabbergroupchat_collect_els(__TopXMLNS, __Opts,
				       _els, Cdata).

encode_xabbergroupchat_collect({collect, Cdata},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_collect_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"collect">>, _attrs, _els}.

decode_xabbergroupchat_collect_cdata(__TopXMLNS,
				     <<>>) ->
    <<>>;
decode_xabbergroupchat_collect_cdata(__TopXMLNS,
				     _val) ->
    _val.

encode_xabbergroupchat_collect_cdata(<<>>, _acc) ->
    _acc;
encode_xabbergroupchat_collect_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbergroupchat_restriction_set(__TopXMLNS,
				       __Opts,
				       {xmlel, <<"restriction">>, _attrs,
					_els}) ->
    {Name, Expires} =
	decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
						     _attrs, undefined,
						     undefined),
    {xabbergroupchat_restriction, Name, Expires}.

decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
					     [{<<"name">>, _val} | _attrs],
					     _Name, Expires) ->
    decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
						 _attrs, _val, Expires);
decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
					     [{<<"expires">>, _val} | _attrs],
					     Name, _Expires) ->
    decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
						 _attrs, Name, _val);
decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
					     [_ | _attrs], Name, Expires) ->
    decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
						 _attrs, Name, Expires);
decode_xabbergroupchat_restriction_set_attrs(__TopXMLNS,
					     [], Name, Expires) ->
    {decode_xabbergroupchat_restriction_set_attr_name(__TopXMLNS,
						      Name),
     decode_xabbergroupchat_restriction_set_attr_expires(__TopXMLNS,
							 Expires)}.

encode_xabbergroupchat_restriction_set({xabbergroupchat_restriction,
					Name, Expires},
				       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#rights">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_restriction_set_attr_expires(Expires,
							    encode_xabbergroupchat_restriction_set_attr_name(Name,
													     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																	__TopXMLNS))),
    {xmlel, <<"restriction">>, _attrs, _els}.

decode_xabbergroupchat_restriction_set_attr_name(__TopXMLNS,
						 undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"name">>, <<"restriction">>,
		   __TopXMLNS}});
decode_xabbergroupchat_restriction_set_attr_name(__TopXMLNS,
						 _val) ->
    _val.

encode_xabbergroupchat_restriction_set_attr_name(_val,
						 _acc) ->
    [{<<"name">>, _val} | _acc].

decode_xabbergroupchat_restriction_set_attr_expires(__TopXMLNS,
						    undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"expires">>, <<"restriction">>,
		   __TopXMLNS}});
decode_xabbergroupchat_restriction_set_attr_expires(__TopXMLNS,
						    _val) ->
    _val.

encode_xabbergroupchat_restriction_set_attr_expires(_val,
						    _acc) ->
    [{<<"expires">>, _val} | _acc].

decode_xabbergroupchat_permission_set(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"permission">>, _attrs,
				       _els}) ->
    {Name, Expires} =
	decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
						    _attrs, undefined,
						    undefined),
    {xabbergroupchat_permission, Name, Expires}.

decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
					    [{<<"name">>, _val} | _attrs],
					    _Name, Expires) ->
    decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
						_attrs, _val, Expires);
decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
					    [{<<"expires">>, _val} | _attrs],
					    Name, _Expires) ->
    decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
						_attrs, Name, _val);
decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
					    [_ | _attrs], Name, Expires) ->
    decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
						_attrs, Name, Expires);
decode_xabbergroupchat_permission_set_attrs(__TopXMLNS,
					    [], Name, Expires) ->
    {decode_xabbergroupchat_permission_set_attr_name(__TopXMLNS,
						     Name),
     decode_xabbergroupchat_permission_set_attr_expires(__TopXMLNS,
							Expires)}.

encode_xabbergroupchat_permission_set({xabbergroupchat_permission,
				       Name, Expires},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#rights">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_permission_set_attr_expires(Expires,
							   encode_xabbergroupchat_permission_set_attr_name(Name,
													   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																      __TopXMLNS))),
    {xmlel, <<"permission">>, _attrs, _els}.

decode_xabbergroupchat_permission_set_attr_name(__TopXMLNS,
						undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"name">>, <<"permission">>,
		   __TopXMLNS}});
decode_xabbergroupchat_permission_set_attr_name(__TopXMLNS,
						_val) ->
    _val.

encode_xabbergroupchat_permission_set_attr_name(_val,
						_acc) ->
    [{<<"name">>, _val} | _acc].

decode_xabbergroupchat_permission_set_attr_expires(__TopXMLNS,
						   undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"expires">>, <<"permission">>,
		   __TopXMLNS}});
decode_xabbergroupchat_permission_set_attr_expires(__TopXMLNS,
						   _val) ->
    _val.

encode_xabbergroupchat_permission_set_attr_expires(_val,
						   _acc) ->
    [{<<"expires">>, _val} | _acc].

decode_xabbergroupchat_restriction(__TopXMLNS, __Opts,
				   {xmlel, <<"restriction">>, _attrs, _els}) ->
    {Name, Expires} =
	decode_xabbergroupchat_restriction_attrs(__TopXMLNS,
						 _attrs, undefined, undefined),
    {xabbergroupchat_restriction, Name, Expires}.

decode_xabbergroupchat_restriction_attrs(__TopXMLNS,
					 [{<<"name">>, _val} | _attrs], _Name,
					 Expires) ->
    decode_xabbergroupchat_restriction_attrs(__TopXMLNS,
					     _attrs, _val, Expires);
decode_xabbergroupchat_restriction_attrs(__TopXMLNS,
					 [{<<"expires">>, _val} | _attrs], Name,
					 _Expires) ->
    decode_xabbergroupchat_restriction_attrs(__TopXMLNS,
					     _attrs, Name, _val);
decode_xabbergroupchat_restriction_attrs(__TopXMLNS,
					 [_ | _attrs], Name, Expires) ->
    decode_xabbergroupchat_restriction_attrs(__TopXMLNS,
					     _attrs, Name, Expires);
decode_xabbergroupchat_restriction_attrs(__TopXMLNS, [],
					 Name, Expires) ->
    {decode_xabbergroupchat_restriction_attr_name(__TopXMLNS,
						  Name),
     decode_xabbergroupchat_restriction_attr_expires(__TopXMLNS,
						     Expires)}.

encode_xabbergroupchat_restriction({xabbergroupchat_restriction,
				    Name, Expires},
				   __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_restriction_attr_expires(Expires,
							encode_xabbergroupchat_restriction_attr_name(Name,
												     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																__TopXMLNS))),
    {xmlel, <<"restriction">>, _attrs, _els}.

decode_xabbergroupchat_restriction_attr_name(__TopXMLNS,
					     undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"name">>, <<"restriction">>,
		   __TopXMLNS}});
decode_xabbergroupchat_restriction_attr_name(__TopXMLNS,
					     _val) ->
    _val.

encode_xabbergroupchat_restriction_attr_name(_val,
					     _acc) ->
    [{<<"name">>, _val} | _acc].

decode_xabbergroupchat_restriction_attr_expires(__TopXMLNS,
						undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"expires">>, <<"restriction">>,
		   __TopXMLNS}});
decode_xabbergroupchat_restriction_attr_expires(__TopXMLNS,
						_val) ->
    _val.

encode_xabbergroupchat_restriction_attr_expires(_val,
						_acc) ->
    [{<<"expires">>, _val} | _acc].

decode_xabbergroupchat_permission(__TopXMLNS, __Opts,
				  {xmlel, <<"permission">>, _attrs, _els}) ->
    {Name, Expires} =
	decode_xabbergroupchat_permission_attrs(__TopXMLNS,
						_attrs, undefined, undefined),
    {xabbergroupchat_permission, Name, Expires}.

decode_xabbergroupchat_permission_attrs(__TopXMLNS,
					[{<<"name">>, _val} | _attrs], _Name,
					Expires) ->
    decode_xabbergroupchat_permission_attrs(__TopXMLNS,
					    _attrs, _val, Expires);
decode_xabbergroupchat_permission_attrs(__TopXMLNS,
					[{<<"expires">>, _val} | _attrs], Name,
					_Expires) ->
    decode_xabbergroupchat_permission_attrs(__TopXMLNS,
					    _attrs, Name, _val);
decode_xabbergroupchat_permission_attrs(__TopXMLNS,
					[_ | _attrs], Name, Expires) ->
    decode_xabbergroupchat_permission_attrs(__TopXMLNS,
					    _attrs, Name, Expires);
decode_xabbergroupchat_permission_attrs(__TopXMLNS, [],
					Name, Expires) ->
    {decode_xabbergroupchat_permission_attr_name(__TopXMLNS,
						 Name),
     decode_xabbergroupchat_permission_attr_expires(__TopXMLNS,
						    Expires)}.

encode_xabbergroupchat_permission({xabbergroupchat_permission,
				   Name, Expires},
				  __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/groupchat">>,
						 <<"http://xabber.com/protocol/groupchat#members">>],
						__TopXMLNS),
    _els = [],
    _attrs =
	encode_xabbergroupchat_permission_attr_expires(Expires,
						       encode_xabbergroupchat_permission_attr_name(Name,
												   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															      __TopXMLNS))),
    {xmlel, <<"permission">>, _attrs, _els}.

decode_xabbergroupchat_permission_attr_name(__TopXMLNS,
					    undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"name">>, <<"permission">>,
		   __TopXMLNS}});
decode_xabbergroupchat_permission_attr_name(__TopXMLNS,
					    _val) ->
    _val.

encode_xabbergroupchat_permission_attr_name(_val,
					    _acc) ->
    [{<<"name">>, _val} | _acc].

decode_xabbergroupchat_permission_attr_expires(__TopXMLNS,
					       undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"expires">>, <<"permission">>,
		   __TopXMLNS}});
decode_xabbergroupchat_permission_attr_expires(__TopXMLNS,
					       _val) ->
    _val.

encode_xabbergroupchat_permission_attr_expires(_val,
					       _acc) ->
    [{<<"expires">>, _val} | _acc].

decode_xabbergroupchat_not_present(__TopXMLNS, __Opts,
				   {xmlel, <<"x">>, _attrs, _els}) ->
    {x_not_present}.

encode_xabbergroupchat_not_present({x_not_present},
				   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#not-present">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x">>, _attrs, _els}.

decode_xabbergroupchat_present(__TopXMLNS, __Opts,
			       {xmlel, <<"x">>, _attrs, _els}) ->
    {x_present}.

encode_xabbergroupchat_present({x_present},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/groupchat#present">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x">>, _attrs, _els}.
