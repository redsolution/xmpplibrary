%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbergroupchat).

-compile(export_all).

do_decode(<<"reason">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_reason(<<"https://xabber.com/protocol/groups">>,
				  Opts, El);
do_decode(<<"recipient">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_recipient(<<"https://xabber.com/protocol/groups">>,
				     Opts, El);
do_decode(<<"disclosure">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_disclosure(<<"https://xabber.com/protocol/groups">>,
				      Opts, El);
do_decode(<<"disclosed">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_disclosed(<<"https://xabber.com/protocol/groups">>,
				     Opts, El);
do_decode(<<"body">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replace_message_body(<<"https://xabber.com/protocol/groups#history">>,
						Opts, El);
do_decode(<<"message">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replace_message(<<"https://xabber.com/protocol/groups#history">>,
					   Opts, El);
do_decode(<<"replace">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replace(<<"https://xabber.com/protocol/groups#history">>,
				   Opts, El);
do_decode(<<"replaced">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_replaced(<<"https://xabber.com/protocol/groups#history">>,
				    Opts, El);
do_decode(<<"invalidate">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_invalidate(<<"https://xabber.com/protocol/groups#history">>,
					      Opts, El);
do_decode(<<"retract-all">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_all(<<"https://xabber.com/protocol/groups#history">>,
				       Opts, El);
do_decode(<<"retract-user">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_user(<<"https://xabber.com/protocol/groups#history">>,
					Opts, El);
do_decode(<<"retract-message">>,
	  <<"https://xabber.com/protocol/groups#history">>, El,
	  Opts) ->
    decode_xabbergroupchat_retract_message(<<"https://xabber.com/protocol/groups#history">>,
					   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/retract">>, El, Opts) ->
    decode_xabbergroupchat_retract_query(<<"https://xabber.com/protocol/retract">>,
					 Opts, El);
do_decode(<<"localpart">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_localpart(<<"https://xabber.com/protocol/groups">>,
					   Opts, El);
do_decode(<<"localpart">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_localpart(<<"https://xabber.com/protocol/groups#create">>,
					   Opts, El);
do_decode(<<"membership">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_membership(<<"https://xabber.com/protocol/groups">>,
					    Opts, El);
do_decode(<<"membership">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_membership(<<"https://xabber.com/protocol/groups#create">>,
					    Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_description(<<"https://xabber.com/protocol/groups">>,
					     Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_description(<<"https://xabber.com/protocol/groups#create">>,
					     Opts, El);
do_decode(<<"privacy">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_privacy(<<"https://xabber.com/protocol/groups">>,
					 Opts, El);
do_decode(<<"privacy">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_privacy(<<"https://xabber.com/protocol/groups#create">>,
					 Opts, El);
do_decode(<<"status">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_status(<<"https://xabber.com/protocol/groups">>,
					Opts, El);
do_decode(<<"status">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_status(<<"https://xabber.com/protocol/groups#create">>,
					Opts, El);
do_decode(<<"name">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_name(<<"https://xabber.com/protocol/groups">>,
				      Opts, El);
do_decode(<<"name">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_name(<<"https://xabber.com/protocol/groups#create">>,
				      Opts, El);
do_decode(<<"index">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_index(<<"https://xabber.com/protocol/groups">>,
				       Opts, El);
do_decode(<<"index">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_index(<<"https://xabber.com/protocol/groups#create">>,
				       Opts, El);
do_decode(<<"pinned-message">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_message(<<"https://xabber.com/protocol/groups">>,
					 Opts, El);
do_decode(<<"pinned-message">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_message(<<"https://xabber.com/protocol/groups#create">>,
					 Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_domain(<<"https://xabber.com/protocol/groups">>,
					Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_domain(<<"https://xabber.com/protocol/groups#create">>,
					Opts, El);
do_decode(<<"domains">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_domains(<<"https://xabber.com/protocol/groups">>,
					 Opts, El);
do_decode(<<"domains">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_domains(<<"https://xabber.com/protocol/groups#create">>,
					 Opts, El);
do_decode(<<"contact">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_contact(<<"https://xabber.com/protocol/groups">>,
					 Opts, El);
do_decode(<<"contact">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_contact(<<"https://xabber.com/protocol/groups#create">>,
					 Opts, El);
do_decode(<<"contacts">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_query_contacts(<<"https://xabber.com/protocol/groups">>,
					  Opts, El);
do_decode(<<"contacts">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_contacts(<<"https://xabber.com/protocol/groups#create">>,
					  Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat(<<"https://xabber.com/protocol/groups#create">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#default-ri"
	    "ghts">>,
	  El, Opts) ->
    decode_xabbergroupchat(<<"https://xabber.com/protocol/groups#default-ri"
			     "ghts">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#members">>, El,
	  Opts) ->
    decode_xabbergroupchat(<<"https://xabber.com/protocol/groups#members">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#delete">>, El,
	  Opts) ->
    decode_xabbergroupchat(<<"https://xabber.com/protocol/groups#delete">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#status">>, El,
	  Opts) ->
    decode_xabbergroupchat(<<"https://xabber.com/protocol/groups#status">>,
			   Opts, El);
do_decode(<<"badge">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_user_badge(<<"https://xabber.com/protocol/groups">>,
				      Opts, El);
do_decode(<<"nickname">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_user_nickname(<<"https://xabber.com/protocol/groups">>,
					 Opts, El);
do_decode(<<"subscription">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_subscription(<<"https://xabber.com/protocol/groups">>,
					Opts, El);
do_decode(<<"role">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_user_role(<<"https://xabber.com/protocol/groups">>,
				     Opts, El);
do_decode(<<"user">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_user_card(<<"https://xabber.com/protocol/groups">>,
				     Opts, El);
do_decode(<<"kicked">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_kicked(<<"https://xabber.com/protocol/groups">>,
				  Opts, El);
do_decode(<<"user-updated">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_user_updated(<<"https://xabber.com/protocol/groups">>,
					Opts, El);
do_decode(<<"no-permission">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_no_permission(<<"https://xabber.com/protocol/groups">>,
					 Opts, El);
do_decode(<<"left">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_left(<<"https://xabber.com/protocol/groups">>,
				Opts, El);
do_decode(<<"join">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_join(<<"https://xabber.com/protocol/groups">>,
				Opts, El);
do_decode(<<"search">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_search(<<"https://xabber.com/protocol/groups">>,
				  Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_domain(<<"https://xabber.com/protocol/groups#block">>,
				  Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups">>,
				     Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups#block">>,
				     Opts, El);
do_decode(<<"id">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups">>,
			      Opts, El);
do_decode(<<"id">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups#block">>,
			      Opts, El);
do_decode(<<"unblock">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_unblock(<<"https://xabber.com/protocol/groups#block">>,
				   Opts, El);
do_decode(<<"block">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_xabbergroupchat_block(<<"https://xabber.com/protocol/groups#block">>,
				 Opts, El);
do_decode(<<"kick">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_kick(<<"https://xabber.com/protocol/groups">>,
				Opts, El);
do_decode(<<"present">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_online(<<"https://xabber.com/protocol/groups">>,
				  Opts, El);
do_decode(<<"members">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_members(<<"https://xabber.com/protocol/groups">>,
				   Opts, El);
do_decode(<<"body">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_x_body(<<"https://xabber.com/protocol/groups">>,
				  Opts, El);
do_decode(<<"peer-to-peer">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_peer(<<"https://xabber.com/protocol/groups">>,
				Opts, El);
do_decode(<<"peer-to-peer">>, <<"jabber:client">>, El,
	  Opts) ->
    decode_xabbergroupchat_peer(<<"jabber:client">>, Opts,
				El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_jid(<<"https://xabber.com/protocol/groups">>,
			       Opts, El);
do_decode(<<"parent-chat">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_parent_chat(<<"https://xabber.com/protocol/groups">>,
				       Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#system-mes"
	    "sage">>,
	  El, Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups#system-mes"
			       "sage">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups#create">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#left">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups#left">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#join">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups#join">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#kick">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups#kick">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#update">>, El,
	  Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups#update">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#user-updated">>,
	  El, Opts) ->
    decode_xabbergroupchat_x(<<"https://xabber.com/protocol/groups#user-updated">>,
			     Opts, El);
do_decode(<<"update">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_update(<<"https://xabber.com/protocol/groups">>,
				  Opts, El);
do_decode(<<"item">>,
	  <<"https://xabber.com/protocol/groups#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_item(<<"https://xabber.com/protocol/groups#rights">>,
				      Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_query_rights(<<"https://xabber.com/protocol/groups#rights">>,
					Opts, El);
do_decode(<<"user">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_user(<<"https://xabber.com/protocol/groups#invite">>,
				       Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_jid(<<"https://xabber.com/protocol/groups#invite">>,
				      Opts, El);
do_decode(<<"send">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_send(<<"https://xabber.com/protocol/groups#invite">>,
				       Opts, El);
do_decode(<<"reason">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_reason(<<"https://xabber.com/protocol/groups#invite">>,
					 Opts, El);
do_decode(<<"decline">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroup_decline(<<"https://xabber.com/protocol/groups#invite">>,
			       Opts, El);
do_decode(<<"revoke">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_revoke(<<"https://xabber.com/protocol/groups#invite">>,
				  Opts, El);
do_decode(<<"invite">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite(<<"https://xabber.com/protocol/groups#invite">>,
				  Opts, El);
do_decode(<<"invite">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_invite(<<"https://xabber.com/protocol/groups">>,
				  Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_xabbergroupchat_invite_query(<<"https://xabber.com/protocol/groups#invite">>,
					Opts, El);
do_decode(<<"owner">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_owner(<<"https://xabber.com/protocol/groups">>,
				 Opts, El);
do_decode(<<"collect">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_collect(<<"https://xabber.com/protocol/groups">>,
				   Opts, El);
do_decode(<<"restriction">>,
	  <<"https://xabber.com/protocol/groups#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_restriction_set(<<"https://xabber.com/protocol/groups#rights">>,
					   Opts, El);
do_decode(<<"permission">>,
	  <<"https://xabber.com/protocol/groups#rights">>, El,
	  Opts) ->
    decode_xabbergroupchat_permission_set(<<"https://xabber.com/protocol/groups#rights">>,
					  Opts, El);
do_decode(<<"restriction">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_restriction(<<"https://xabber.com/protocol/groups">>,
				       Opts, El);
do_decode(<<"permission">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_xabbergroupchat_permission(<<"https://xabber.com/protocol/groups">>,
				      Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#not-present">>,
	  El, Opts) ->
    decode_xabbergroupchat_not_present(<<"https://xabber.com/protocol/groups#not-present">>,
				       Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#present">>, El,
	  Opts) ->
    decode_xabbergroupchat_present(<<"https://xabber.com/protocol/groups#present">>,
				   Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"reason">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"recipient">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"disclosure">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"disclosed">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"body">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"message">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"replace">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"replaced">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"invalidate">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"retract-all">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"retract-user">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"retract-message">>,
      <<"https://xabber.com/protocol/groups#history">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/retract">>},
     {<<"localpart">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"localpart">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"membership">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"membership">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"description">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"description">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"privacy">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"privacy">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"status">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"status">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"name">>, <<"https://xabber.com/protocol/groups">>},
     {<<"name">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"index">>, <<"https://xabber.com/protocol/groups">>},
     {<<"index">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"pinned-message">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"pinned-message">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"domain">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"domain">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"domains">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"domains">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"contact">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"contact">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"contacts">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"contacts">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"query">>, <<"https://xabber.com/protocol/groups">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#default-ri"
	"ghts">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#members">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#delete">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#status">>},
     {<<"badge">>, <<"https://xabber.com/protocol/groups">>},
     {<<"nickname">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"subscription">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"role">>, <<"https://xabber.com/protocol/groups">>},
     {<<"user">>, <<"https://xabber.com/protocol/groups">>},
     {<<"kicked">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"user-updated">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"no-permission">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"left">>, <<"https://xabber.com/protocol/groups">>},
     {<<"join">>, <<"https://xabber.com/protocol/groups">>},
     {<<"search">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"domain">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"jid">>, <<"https://xabber.com/protocol/groups">>},
     {<<"jid">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"id">>, <<"https://xabber.com/protocol/groups">>},
     {<<"id">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"unblock">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"block">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"kick">>, <<"https://xabber.com/protocol/groups">>},
     {<<"present">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"members">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"body">>, <<"https://xabber.com/protocol/groups">>},
     {<<"peer-to-peer">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"peer-to-peer">>, <<"jabber:client">>},
     {<<"jid">>, <<"https://xabber.com/protocol/groups">>},
     {<<"parent-chat">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"x">>, <<"https://xabber.com/protocol/groups">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#system-mes"
	"sage">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#left">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#join">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#kick">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#update">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#user-updated">>},
     {<<"update">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"item">>,
      <<"https://xabber.com/protocol/groups#rights">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#rights">>},
     {<<"user">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"jid">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"send">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"reason">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"decline">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"revoke">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"invite">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"invite">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"owner">>, <<"https://xabber.com/protocol/groups">>},
     {<<"collect">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"restriction">>,
      <<"https://xabber.com/protocol/groups#rights">>},
     {<<"permission">>,
      <<"https://xabber.com/protocol/groups#rights">>},
     {<<"restriction">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"permission">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#not-present">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#present">>}].

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
do_encode({xabbergroup_decline} = Decline, TopXMLNS) ->
    encode_xabbergroup_decline(Decline, TopXMLNS);
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
do_encode({xabbergroupchat_update, _, _} = Update,
	  TopXMLNS) ->
    encode_xabbergroupchat_update(Update, TopXMLNS);
do_encode({xabbergroupchat_x, _, _, _, _, _, _, _, _,
	   _} =
	      X,
	  TopXMLNS) ->
    encode_xabbergroupchat_x(X, TopXMLNS);
do_encode({xabbergroup_peer, _, _, _} = Peer_to_peer,
	  TopXMLNS) ->
    encode_xabbergroupchat_peer(Peer_to_peer, TopXMLNS);
do_encode({body_x, _, _} = Body, TopXMLNS) ->
    encode_xabbergroupchat_x_body(Body, TopXMLNS);
do_encode({xabbergroup_kick, _, _} = Kick, TopXMLNS) ->
    encode_xabbergroupchat_kick(Kick, TopXMLNS);
do_encode({xabbergroup_block, _, _, _} = Block,
	  TopXMLNS) ->
    encode_xabbergroupchat_block(Block, TopXMLNS);
do_encode({xabbergroup_unblock, _, _, _} = Unblock,
	  TopXMLNS) ->
    encode_xabbergroupchat_unblock(Unblock, TopXMLNS);
do_encode({block_id, _} = Id, TopXMLNS) ->
    encode_xabbergroupchat_id(Id, TopXMLNS);
do_encode({block_jid, _} = Jid, TopXMLNS) ->
    encode_xabbergroupchat_block_jid(Jid, TopXMLNS);
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
do_encode({xabbergroupchat_user_card, _, _, _, _, _, _,
	   _, _} =
	      User,
	  TopXMLNS) ->
    encode_xabbergroupchat_user_card(User, TopXMLNS);
do_encode({xabbergroupchat, _, _, _, _, _, _} = Query,
	  TopXMLNS) ->
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
do_get_name({xabbergroup_decline}) -> <<"decline">>;
do_get_name({xabbergroup_domains, _}) -> <<"domains">>;
do_get_name({xabbergroup_invite_user, _, _}) ->
    <<"user">>;
do_get_name({xabbergroup_kick, _, _}) -> <<"kick">>;
do_get_name({xabbergroup_peer, _, _, _}) ->
    <<"peer-to-peer">>;
do_get_name({xabbergroup_unblock, _, _, _}) ->
    <<"unblock">>;
do_get_name({xabbergroupchat, _, _, _, _, _, _}) ->
    <<"query">>;
do_get_name({xabbergroupchat_description, _}) ->
    <<"description">>;
do_get_name({xabbergroupchat_index, _}) -> <<"index">>;
do_get_name({xabbergroupchat_invite, _, _, _, _, _}) ->
    <<"invite">>;
do_get_name({xabbergroupchat_invite_query, _}) ->
    <<"query">>;
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
do_get_name({xabbergroupchat_update, _, _}) ->
    <<"update">>;
do_get_name({xabbergroupchat_user_card, _, _, _, _, _,
	     _, _, _}) ->
    <<"user">>;
do_get_name({xabbergroupchat_user_updated, _}) ->
    <<"user-updated">>;
do_get_name({xabbergroupchat_x, _, _, _, _, _, _, _, _,
	     _}) ->
    <<"x">>.

do_get_ns({block_domain, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({block_id, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({block_jid, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({body_x, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({collect, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({disclosed, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({disclosure, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({recipient, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({x_not_present}) ->
    <<"https://xabber.com/protocol/groups#not-present">>;
do_get_ns({x_present}) ->
    <<"https://xabber.com/protocol/groups#present">>;
do_get_ns({xabbergroup_block, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({xabbergroup_contacts, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroup_decline}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({xabbergroup_domains, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroup_invite_user, _, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({xabbergroup_kick, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroup_peer, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroup_unblock, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({xabbergroupchat, Xmlns, _, _, _, _, _}) ->
    Xmlns;
do_get_ns({xabbergroupchat_description, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_index, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_invite, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({xabbergroupchat_invite_query, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({xabbergroupchat_kicked, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_localpart, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_membership, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_name, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_pinned_message, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_privacy, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_query_item, _}) ->
    <<"https://xabber.com/protocol/groups#rights">>;
do_get_ns({xabbergroupchat_query_rights, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#rights">>;
do_get_ns({xabbergroupchat_replace, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#history">>;
do_get_ns({xabbergroupchat_replace_message, _, _, _, _,
	   _}) ->
    <<"https://xabber.com/protocol/groups#history">>;
do_get_ns({xabbergroupchat_replaced, _}) ->
    <<"https://xabber.com/protocol/groups#history">>;
do_get_ns({xabbergroupchat_retract_all, _}) ->
    <<"https://xabber.com/protocol/groups#history">>;
do_get_ns({xabbergroupchat_retract_invalidate, _}) ->
    <<"https://xabber.com/protocol/groups#history">>;
do_get_ns({xabbergroupchat_retract_message, _, _}) ->
    <<"https://xabber.com/protocol/groups#history">>;
do_get_ns({xabbergroupchat_retract_query, _, _}) ->
    <<"https://xabber.com/protocol/retract">>;
do_get_ns({xabbergroupchat_retract_user, _, _}) ->
    <<"https://xabber.com/protocol/groups#history">>;
do_get_ns({xabbergroupchat_revoke, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({xabbergroupchat_search, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_status, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_update, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_user_card, _, _, _, _, _, _,
	   _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_user_updated, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({xabbergroupchat_x, Xmlns, _, _, _, _, _, _,
	   _, _}) ->
    Xmlns.

get_els({xabbergroupchat_query_rights, _item,
	 _restriction, _sub_els}) ->
    _sub_els;
get_els({xabbergroupchat_x, _xmlns, _type, _version,
	 _no_permission, _members, _present, _parent, _jid,
	 _sub_els}) ->
    _sub_els;
get_els({xabbergroupchat, _xmlns, _id, _version, _rsm,
	 _sub_els, _cdata}) ->
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
	 _no_permission, _members, _present, _parent, _jid, _},
	_sub_els) ->
    {xabbergroupchat_x, _xmlns, _type, _version,
     _no_permission, _members, _present, _parent, _jid,
     _sub_els};
set_els({xabbergroupchat, _xmlns, _id, _version, _rsm,
	 _, _cdata},
	_sub_els) ->
    {xabbergroupchat, _xmlns, _id, _version, _rsm, _sub_els,
     _cdata};
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
pp(xabbergroupchat_invite_query, 1) -> [user];
pp(xabbergroupchat_invite, 5) ->
    [jid, invite_jid, send, reason, user];
pp(xabbergroupchat_revoke, 1) -> [jid];
pp(xabbergroup_decline, 0) -> [];
pp(xabbergroup_invite_user, 2) -> [jid, id];
pp(xabbergroupchat_query_rights, 3) ->
    [item, restriction, sub_els];
pp(xabbergroupchat_query_item, 1) -> [id];
pp(xabbergroupchat_update, 2) -> [owner, pinned];
pp(xabbergroupchat_x, 9) ->
    [xmlns, type, version, no_permission, members, present,
     parent, jid, sub_els];
pp(xabbergroup_peer, 3) -> [jid, id, cdata];
pp(body_x, 2) -> [lang, data];
pp(xabbergroup_kick, 2) -> [id, jid];
pp(xabbergroup_block, 3) -> [id, jid, domain];
pp(xabbergroup_unblock, 3) -> [id, jid, domain];
pp(block_id, 1) -> [cdata];
pp(block_jid, 1) -> [cdata];
pp(block_domain, 1) -> [cdata];
pp(xabbergroupchat_search, 5) ->
    [name, description, model, anonymous, rsm];
pp(xabbergroupchat_user_updated, 1) -> [user];
pp(xabbergroupchat_kicked, 1) -> [users];
pp(xabbergroupchat_user_card, 8) ->
    [id, jid, role, badge, nickname, avatar, present,
     subscription];
pp(xabbergroupchat, 6) ->
    [xmlns, id, version, rsm, sub_els, cdata];
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
     {xabbergroupchat_invite_query, 1},
     {xabbergroupchat_invite, 5},
     {xabbergroupchat_revoke, 1}, {xabbergroup_decline, 0},
     {xabbergroup_invite_user, 2},
     {xabbergroupchat_query_rights, 3},
     {xabbergroupchat_query_item, 1},
     {xabbergroupchat_update, 2}, {xabbergroupchat_x, 9},
     {xabbergroup_peer, 3}, {body_x, 2},
     {xabbergroup_kick, 2}, {xabbergroup_block, 3},
     {xabbergroup_unblock, 3}, {block_id, 1}, {block_jid, 1},
     {block_domain, 1}, {xabbergroupchat_search, 5},
     {xabbergroupchat_user_updated, 1},
     {xabbergroupchat_kicked, 1},
     {xabbergroupchat_user_card, 8}, {xabbergroupchat, 6},
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

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_int(Int) -> erlang:integer_to_binary(Int).

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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_disclosure_els(__TopXMLNS,
						__Opts, _els,
						decode_xabbergroupchat_recipient(<<"https://xabber.com/protocol/groups">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_disclosure_els(__TopXMLNS,
						__Opts, _els, Recipient,
						decode_xabbergroupchat_reason(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					       _els,
					       decode_xabbergroupchat_user_card(<<"https://xabber.com/protocol/groups">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_disclosed_els(__TopXMLNS, __Opts,
					       _els, User_card,
					       decode_xabbergroupchat_reason(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
      <<"https://xabber.com/protocol/groups#history">> ->
	  decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						     __Opts, _els, Replaced,
						     decode_xabbergroupchat_replace_message_body(<<"https://xabber.com/protocol/groups#history">>,
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
      <<"https://xabber.com/protocol/groups#history">> ->
	  decode_xabbergroupchat_replace_message_els(__TopXMLNS,
						     __Opts, _els,
						     decode_xabbergroupchat_replaced(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
      <<"https://xabber.com/protocol/groups#history">> ->
	  decode_xabbergroupchat_replace_els(__TopXMLNS, __Opts,
					     _els,
					     decode_xabbergroupchat_replace_message(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#history">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/retract">>,
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_query_domains_els(__TopXMLNS,
						   __Opts, _els,
						   [decode_xabbergroupchat_query_domain(<<"https://xabber.com/protocol/groups">>,
											__Opts,
											_el)
						    | Domain]);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_xabbergroupchat_query_domains_els(__TopXMLNS,
						   __Opts, _els,
						   [decode_xabbergroupchat_query_domain(<<"https://xabber.com/protocol/groups#create">>,
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
						    __Opts, _els,
						    [decode_xabbergroupchat_query_contact(<<"https://xabber.com/protocol/groups">>,
											  __Opts,
											  _el)
						     | Contact]);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_xabbergroupchat_query_contacts_els(__TopXMLNS,
						    __Opts, _els,
						    [decode_xabbergroupchat_query_contact(<<"https://xabber.com/protocol/groups#create">>,
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
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
    {Cdata, Rsm, __Els} =
	decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
				   <<>>, undefined, []),
    {Xmlns, Version, Id} =
	decode_xabbergroupchat_attrs(__TopXMLNS, _attrs,
				     undefined, undefined, undefined),
    {xabbergroupchat, Xmlns, Id, Version, Rsm, __Els,
     Cdata}.

decode_xabbergroupchat_els(__TopXMLNS, __Opts, [],
			   Cdata, Rsm, __Els) ->
    {decode_xabbergroupchat_cdata(__TopXMLNS, Cdata), Rsm,
     lists:reverse(__Els)};
decode_xabbergroupchat_els(__TopXMLNS, __Opts,
			   [{xmlcdata, _data} | _els], Cdata, Rsm, __Els) ->
    decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
			       <<Cdata/binary, _data/binary>>, Rsm, __Els);
decode_xabbergroupchat_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"set">>, _attrs, _} = _el | _els], Cdata,
			   Rsm, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
				     Cdata,
				     xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
							    __Opts, _el),
				     __Els);
      _ ->
	  decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
				     Cdata, Rsm, [_el | __Els])
    end;
decode_xabbergroupchat_els(__TopXMLNS, __Opts,
			   [{xmlel, _name, _attrs, _} = _el | _els], Cdata, Rsm,
			   __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
				     Cdata, Rsm, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
					   Cdata, Rsm, [_el | __Els]);
	    Mod ->
		decode_xabbergroupchat_els(__TopXMLNS, __Opts, _els,
					   Cdata, Rsm,
					   [Mod:do_decode(_name, __XMLNS, _el,
							  __Opts)
					    | __Els])
	  end
    end.

decode_xabbergroupchat_attrs(__TopXMLNS,
			     [{<<"xmlns">>, _val} | _attrs], _Xmlns, Version,
			     Id) ->
    decode_xabbergroupchat_attrs(__TopXMLNS, _attrs, _val,
				 Version, Id);
decode_xabbergroupchat_attrs(__TopXMLNS,
			     [{<<"version">>, _val} | _attrs], Xmlns, _Version,
			     Id) ->
    decode_xabbergroupchat_attrs(__TopXMLNS, _attrs, Xmlns,
				 _val, Id);
decode_xabbergroupchat_attrs(__TopXMLNS,
			     [{<<"id">>, _val} | _attrs], Xmlns, Version,
			     _Id) ->
    decode_xabbergroupchat_attrs(__TopXMLNS, _attrs, Xmlns,
				 Version, _val);
decode_xabbergroupchat_attrs(__TopXMLNS, [_ | _attrs],
			     Xmlns, Version, Id) ->
    decode_xabbergroupchat_attrs(__TopXMLNS, _attrs, Xmlns,
				 Version, Id);
decode_xabbergroupchat_attrs(__TopXMLNS, [], Xmlns,
			     Version, Id) ->
    {decode_xabbergroupchat_attr_xmlns(__TopXMLNS, Xmlns),
     decode_xabbergroupchat_attr_version(__TopXMLNS,
					 Version),
     decode_xabbergroupchat_attr_id(__TopXMLNS, Id)}.

encode_xabbergroupchat({xabbergroupchat, Xmlns, Id,
			Version, Rsm, __Els, Cdata},
		       __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>,
						 <<"https://xabber.com/protocol/groups#default-ri"
						   "ghts">>,
						 <<"https://xabber.com/protocol/groups#members">>,
						 <<"https://xabber.com/protocol/groups#delete">>,
						 <<"https://xabber.com/protocol/groups#status">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse(encode_xabbergroupchat_cdata(Cdata,
							'encode_xabbergroupchat_$rsm'(Rsm,
										      __NewTopXMLNS,
										      []))),
    _attrs = encode_xabbergroupchat_attr_id(Id,
					    encode_xabbergroupchat_attr_version(Version,
										xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
													   __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabbergroupchat_$rsm'(undefined, __TopXMLNS,
			      _acc) ->
    _acc;
'encode_xabbergroupchat_$rsm'(Rsm, __TopXMLNS, _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

decode_xabbergroupchat_attr_xmlns(__TopXMLNS,
				  undefined) ->
    <<>>;
decode_xabbergroupchat_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_xabbergroupchat_attr_version(__TopXMLNS,
				    undefined) ->
    undefined;
decode_xabbergroupchat_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"query">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabbergroupchat_attr_version(undefined, _acc) ->
    _acc;
encode_xabbergroupchat_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_xabbergroupchat_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_xabbergroupchat_attr_id(__TopXMLNS, _val) ->
    _val.

encode_xabbergroupchat_attr_id(<<>>, _acc) -> _acc;
encode_xabbergroupchat_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabbergroupchat_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_xabbergroupchat_cdata(__TopXMLNS, _val) -> _val.

encode_xabbergroupchat_cdata(<<>>, _acc) -> _acc;
encode_xabbergroupchat_cdata(_val, _acc) ->
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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

decode_xabbergroupchat_user_card(__TopXMLNS, __Opts,
				 {xmlel, <<"user">>, _attrs, _els}) ->
    {Avatar, Present, Jid, Badge, Nickname, Role,
     Subscription} =
	decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					     _els, undefined, undefined,
					     undefined, undefined, undefined,
					     undefined, undefined),
    Id = decode_xabbergroupchat_user_card_attrs(__TopXMLNS,
						_attrs, undefined),
    {xabbergroupchat_user_card, Id, Jid, Role, Badge,
     Nickname, Avatar, Present, Subscription}.

decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [], Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    {Avatar, Present, Jid, Badge, Nickname, Role,
     Subscription};
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"jid">>, _attrs, _} = _el
				      | _els],
				     Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present,
					       decode_xabbergroupchat_jid(<<"https://xabber.com/protocol/groups">>,
									  __Opts,
									  _el),
					       Badge, Nickname, Role,
					       Subscription);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       Subscription)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"role">>, _attrs, _} = _el
				      | _els],
				     Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname,
					       decode_xabbergroupchat_user_role(<<"https://xabber.com/protocol/groups">>,
										__Opts,
										_el),
					       Subscription);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       Subscription)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"nickname">>, _attrs, _} = _el
				      | _els],
				     Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge,
					       decode_xabbergroupchat_user_nickname(<<"https://xabber.com/protocol/groups">>,
										    __Opts,
										    _el),
					       Role, Subscription);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       Subscription)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"metadata">>, _attrs, _} = _el
				      | _els],
				     Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:avatar:metadata">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els,
					       xep0084:decode_avatar_meta(<<"urn:xmpp:avatar:metadata">>,
									  __Opts,
									  _el),
					       Present, Jid, Badge, Nickname,
					       Role, Subscription);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       Subscription)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"badge">>, _attrs, _} = _el
				      | _els],
				     Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       decode_xabbergroupchat_user_badge(<<"https://xabber.com/protocol/groups">>,
										 __Opts,
										 _el),
					       Nickname, Role, Subscription);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       Subscription)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"present">>, _attrs, _} = _el
				      | _els],
				     Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar,
					       decode_xabbergroupchat_online(<<"https://xabber.com/protocol/groups">>,
									     __Opts,
									     _el),
					       Jid, Badge, Nickname, Role,
					       Subscription);
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       Subscription)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [{xmlel, <<"subscription">>, _attrs, _} =
					  _el
				      | _els],
				     Avatar, Present, Jid, Badge, Nickname,
				     Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       decode_xabbergroupchat_subscription(<<"https://xabber.com/protocol/groups">>,
										   __Opts,
										   _el));
      _ ->
	  decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					       _els, Avatar, Present, Jid,
					       Badge, Nickname, Role,
					       Subscription)
    end;
decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
				     [_ | _els], Avatar, Present, Jid, Badge,
				     Nickname, Role, Subscription) ->
    decode_xabbergroupchat_user_card_els(__TopXMLNS, __Opts,
					 _els, Avatar, Present, Jid, Badge,
					 Nickname, Role, Subscription).

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
				  Id, Jid, Role, Badge, Nickname, Avatar,
				  Present, Subscription},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_user_card_$avatar'(Avatar,
								 __NewTopXMLNS,
								 'encode_xabbergroupchat_user_card_$present'(Present,
													     __NewTopXMLNS,
													     'encode_xabbergroupchat_user_card_$jid'(Jid,
																		     __NewTopXMLNS,
																		     'encode_xabbergroupchat_user_card_$badge'(Badge,
																							       __NewTopXMLNS,
																							       'encode_xabbergroupchat_user_card_$nickname'(Nickname,
																													    __NewTopXMLNS,
																													    'encode_xabbergroupchat_user_card_$role'(Role,
																																		     __NewTopXMLNS,
																																		     'encode_xabbergroupchat_user_card_$subscription'(Subscription,
																																								      __NewTopXMLNS,
																																								      [])))))))),
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

'encode_xabbergroupchat_user_card_$present'(undefined,
					    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$present'(Present,
					    __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_online(Present, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_user_card_$jid'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$jid'(Jid, __TopXMLNS,
					_acc) ->
    [encode_xabbergroupchat_jid(Jid, __TopXMLNS) | _acc].

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

'encode_xabbergroupchat_user_card_$subscription'(undefined,
						 __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_user_card_$subscription'(Subscription,
						 __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_subscription(Subscription,
					 __TopXMLNS)
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_kicked_els(__TopXMLNS, __Opts,
					    _els,
					    [decode_xabbergroupchat_user_card(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_user_updated_els(__TopXMLNS,
						  __Opts, _els,
						  decode_xabbergroupchat_user_card(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous,
					    decode_xabbergroupchat_query_name(<<"https://xabber.com/protocol/groups">>,
									      __Opts,
									      _el),
					    Model, Rsm, Description);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous,
					    decode_xabbergroupchat_query_name(<<"https://xabber.com/protocol/groups#create">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    decode_xabbergroupchat_query_description(<<"https://xabber.com/protocol/groups">>,
										     __Opts,
										     _el));
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    decode_xabbergroupchat_query_description(<<"https://xabber.com/protocol/groups#create">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name,
					    decode_xabbergroupchat_query_membership(<<"https://xabber.com/protocol/groups">>,
										    __Opts,
										    _el),
					    Rsm, Description);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name,
					    decode_xabbergroupchat_query_membership(<<"https://xabber.com/protocol/groups#create">>,
										    __Opts,
										    _el),
					    Rsm, Description);
      _ ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els, Anonymous, Name, Model, Rsm,
					    Description)
    end;
decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"index">>, _attrs, _} = _el
				   | _els],
				  Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_query_index(<<"https://xabber.com/protocol/groups">>,
									       __Opts,
									       _el),
					    Name, Model, Rsm, Description);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_xabbergroupchat_search_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_query_index(<<"https://xabber.com/protocol/groups#create">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
    [encode_xabbergroupchat_query_index(Anonymous,
					__TopXMLNS)
     | _acc].

'encode_xabbergroupchat_search_$name'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_search_$name'(Name, __TopXMLNS,
				      _acc) ->
    [encode_xabbergroupchat_query_name(Name, __TopXMLNS)
     | _acc].

'encode_xabbergroupchat_search_$model'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_search_$model'(Model,
				       __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_query_membership(Model,
					     __TopXMLNS)
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
    [encode_xabbergroupchat_query_description(Description,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
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

decode_xabbergroupchat_block_jid(__TopXMLNS, __Opts,
				 {xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_block_jid_els(__TopXMLNS,
						 __Opts, _els, <<>>),
    {block_jid, Cdata}.

decode_xabbergroupchat_block_jid_els(__TopXMLNS, __Opts,
				     [], Cdata) ->
    decode_xabbergroupchat_block_jid_cdata(__TopXMLNS,
					   Cdata);
decode_xabbergroupchat_block_jid_els(__TopXMLNS, __Opts,
				     [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbergroupchat_block_jid_els(__TopXMLNS, __Opts,
					 _els, <<Cdata/binary, _data/binary>>);
decode_xabbergroupchat_block_jid_els(__TopXMLNS, __Opts,
				     [_ | _els], Cdata) ->
    decode_xabbergroupchat_block_jid_els(__TopXMLNS, __Opts,
					 _els, Cdata).

encode_xabbergroupchat_block_jid({block_jid, Cdata},
				 __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#block">>],
						__TopXMLNS),
    _els = encode_xabbergroupchat_block_jid_cdata(Cdata,
						  []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_xabbergroupchat_block_jid_cdata(__TopXMLNS,
				       <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_xabbergroupchat_block_jid_cdata(__TopXMLNS,
				       _val) ->
    _val.

encode_xabbergroupchat_block_jid_cdata(_val, _acc) ->
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
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#block">>],
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid,
					     [decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups">>,
									__Opts,
									_el)
					      | Id],
					     Domain);
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid,
					     [decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups#block">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els,
					     [decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups">>,
									       __Opts,
									       _el)
					      | Jid],
					     Id, Domain);
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els,
					     [decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups#block">>,
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
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_unblock_els(__TopXMLNS, __Opts,
					     _els, Jid, Id,
					     [decode_xabbergroupchat_domain(<<"https://xabber.com/protocol/groups#block">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
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
					  [encode_xabbergroupchat_block_jid(Jid,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid,
					   [decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups">>,
								      __Opts,
								      _el)
					    | Id],
					   Domain);
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid,
					   [decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups#block">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els,
					   [decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups">>,
									     __Opts,
									     _el)
					    | Jid],
					   Id, Domain);
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els,
					   [decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups#block">>,
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
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_block_els(__TopXMLNS, __Opts,
					   _els, Jid, Id,
					   [decode_xabbergroupchat_domain(<<"https://xabber.com/protocol/groups#block">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
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
					[encode_xabbergroupchat_block_jid(Jid,
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

decode_xabbergroupchat_kick(__TopXMLNS, __Opts,
			    {xmlel, <<"kick">>, _attrs, _els}) ->
    {Jid, Id} = decode_xabbergroupchat_kick_els(__TopXMLNS,
						__Opts, _els, [], []),
    {xabbergroup_kick, Id, Jid}.

decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts, [],
				Jid, Id) ->
    {lists:reverse(Jid), lists:reverse(Id)};
decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
				[{xmlel, <<"id">>, _attrs, _} = _el | _els],
				Jid, Id) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
					  _els, Jid,
					  [decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups">>,
								     __Opts,
								     _el)
					   | Id]);
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
					  _els, Jid,
					  [decode_xabbergroupchat_id(<<"https://xabber.com/protocol/groups#block">>,
								     __Opts,
								     _el)
					   | Id]);
      _ ->
	  decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
					  _els, Jid, Id)
    end;
decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
				[{xmlel, <<"jid">>, _attrs, _} = _el | _els],
				Jid, Id) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
					  _els,
					  [decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups">>,
									    __Opts,
									    _el)
					   | Jid],
					  Id);
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
					  _els,
					  [decode_xabbergroupchat_block_jid(<<"https://xabber.com/protocol/groups#block">>,
									    __Opts,
									    _el)
					   | Jid],
					  Id);
      _ ->
	  decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
					  _els, Jid, Id)
    end;
decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
				[_ | _els], Jid, Id) ->
    decode_xabbergroupchat_kick_els(__TopXMLNS, __Opts,
				    _els, Jid, Id).

encode_xabbergroupchat_kick({xabbergroup_kick, Id, Jid},
			    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_kick_$jid'(Jid,
							 __NewTopXMLNS,
							 'encode_xabbergroupchat_kick_$id'(Id,
											   __NewTopXMLNS,
											   []))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"kick">>, _attrs, _els}.

'encode_xabbergroupchat_kick_$jid'([], __TopXMLNS,
				   _acc) ->
    _acc;
'encode_xabbergroupchat_kick_$jid'([Jid | _els],
				   __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_kick_$jid'(_els, __TopXMLNS,
				       [encode_xabbergroupchat_block_jid(Jid,
									 __TopXMLNS)
					| _acc]).

'encode_xabbergroupchat_kick_$id'([], __TopXMLNS,
				  _acc) ->
    _acc;
'encode_xabbergroupchat_kick_$id'([Id | _els],
				  __TopXMLNS, _acc) ->
    'encode_xabbergroupchat_kick_$id'(_els, __TopXMLNS,
				      [encode_xabbergroupchat_id(Id, __TopXMLNS)
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
						[<<"https://xabber.com/protocol/groups">>,
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

decode_xabbergroupchat_jid(__TopXMLNS, __Opts,
			   {xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_xabbergroupchat_jid_els(__TopXMLNS,
					   __Opts, _els, <<>>),
    Cdata.

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

encode_xabbergroupchat_jid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_xabbergroupchat_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_xabbergroupchat_jid_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_xabbergroupchat_jid_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"jid">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabbergroupchat_jid_cdata(undefined, _acc) ->
    _acc;
encode_xabbergroupchat_jid_cdata(_val, _acc) ->
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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

decode_xabbergroupchat_x(__TopXMLNS, __Opts,
			 {xmlel, <<"x">>, _attrs, _els}) ->
    {Members, Jid, Parent, Present, No_permission, __Els} =
	decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				     undefined, undefined, undefined, undefined,
				     undefined, []),
    {Xmlns, Type, Version} =
	decode_xabbergroupchat_x_attrs(__TopXMLNS, _attrs,
				       undefined, undefined, undefined),
    {xabbergroupchat_x, Xmlns, Type, Version, No_permission,
     Members, Present, Parent, Jid, __Els}.

decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, [],
			     Members, Jid, Parent, Present, No_permission,
			     __Els) ->
    {Members, Jid, Parent, Present, No_permission,
     lists:reverse(__Els)};
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"no-permission">>, _attrs, _} = _el
			      | _els],
			     Members, Jid, Parent, Present, No_permission,
			     __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent, Present,
				       decode_xabbergroupchat_no_permission(<<"https://xabber.com/protocol/groups">>,
									    __Opts,
									    _el),
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent, Present,
				       No_permission, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"members">>, _attrs, _} = _el | _els],
			     Members, Jid, Parent, Present, No_permission,
			     __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       decode_xabbergroupchat_members(<<"https://xabber.com/protocol/groups">>,
								      __Opts,
								      _el),
				       Jid, Parent, Present, No_permission,
				       __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent, Present,
				       No_permission, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"present">>, _attrs, _} = _el | _els],
			     Members, Jid, Parent, Present, No_permission,
			     __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent,
				       decode_xabbergroupchat_online(<<"https://xabber.com/protocol/groups">>,
								     __Opts,
								     _el),
				       No_permission, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent, Present,
				       No_permission, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"parent-chat">>, _attrs, _} = _el
			      | _els],
			     Members, Jid, Parent, Present, No_permission,
			     __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid,
				       decode_xabbergroupchat_parent_chat(<<"https://xabber.com/protocol/groups">>,
									  __Opts,
									  _el),
				       Present, No_permission, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent, Present,
				       No_permission, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
			     Members, Jid, Parent, Present, No_permission,
			     __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members,
				       decode_xabbergroupchat_jid(<<"https://xabber.com/protocol/groups">>,
								  __Opts, _el),
				       Parent, Present, No_permission, __Els);
      _ ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent, Present,
				       No_permission, [_el | __Els])
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [{xmlel, _name, _attrs, _} = _el | _els], Members,
			     Jid, Parent, Present, No_permission, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				       Members, Jid, Parent, Present,
				       No_permission, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
					     Members, Jid, Parent, Present,
					     No_permission, [_el | __Els]);
	    Mod ->
		decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
					     Members, Jid, Parent, Present,
					     No_permission,
					     [Mod:do_decode(_name, __XMLNS, _el,
							    __Opts)
					      | __Els])
	  end
    end;
decode_xabbergroupchat_x_els(__TopXMLNS, __Opts,
			     [_ | _els], Members, Jid, Parent, Present,
			     No_permission, __Els) ->
    decode_xabbergroupchat_x_els(__TopXMLNS, __Opts, _els,
				 Members, Jid, Parent, Present, No_permission,
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
			  Type, Version, No_permission, Members, Present,
			  Parent, Jid, __Els},
			 __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#system-mes"
						   "sage">>,
						 <<"https://xabber.com/protocol/groups#create">>,
						 <<"https://xabber.com/protocol/groups#left">>,
						 <<"https://xabber.com/protocol/groups#join">>,
						 <<"https://xabber.com/protocol/groups#kick">>,
						 <<"https://xabber.com/protocol/groups#update">>,
						 <<"https://xabber.com/protocol/groups#user-updated">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_xabbergroupchat_x_$members'(Members,
							       __NewTopXMLNS,
							       'encode_xabbergroupchat_x_$jid'(Jid,
											       __NewTopXMLNS,
											       'encode_xabbergroupchat_x_$parent'(Parent,
																  __NewTopXMLNS,
																  'encode_xabbergroupchat_x_$present'(Present,
																				      __NewTopXMLNS,
																				      'encode_xabbergroupchat_x_$no_permission'(No_permission,
																										__NewTopXMLNS,
																										[])))))),
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

'encode_xabbergroupchat_x_$jid'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_xabbergroupchat_x_$jid'(Jid, __TopXMLNS,
				_acc) ->
    [encode_xabbergroupchat_jid(Jid, __TopXMLNS) | _acc].

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

'encode_xabbergroupchat_x_$no_permission'(undefined,
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_x_$no_permission'(No_permission,
					  __TopXMLNS, _acc) ->
    [encode_xabbergroupchat_no_permission(No_permission,
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
    {Owner, Pinned} =
	decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					  _els, undefined, undefined),
    {xabbergroupchat_update, Owner, Pinned}.

decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [], Owner, Pinned) ->
    {Owner, Pinned};
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"owner">>, _attrs, _} = _el
				   | _els],
				  Owner, Pinned) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_owner(<<"https://xabber.com/protocol/groups">>,
									 __Opts,
									 _el),
					    Pinned);
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Pinned)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"pinned-message">>, _attrs, _} =
				       _el
				   | _els],
				  Owner, Pinned) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner,
					    decode_xabbergroupchat_query_message(<<"https://xabber.com/protocol/groups">>,
										 __Opts,
										 _el));
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner,
					    decode_xabbergroupchat_query_message(<<"https://xabber.com/protocol/groups#create">>,
										 __Opts,
										 _el));
      _ ->
	  decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
					    _els, Owner, Pinned)
    end;
decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				  [_ | _els], Owner, Pinned) ->
    decode_xabbergroupchat_update_els(__TopXMLNS, __Opts,
				      _els, Owner, Pinned).

encode_xabbergroupchat_update({xabbergroupchat_update,
			       Owner, Pinned},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbergroupchat_update_$owner'(Owner,
							     __NewTopXMLNS,
							     'encode_xabbergroupchat_update_$pinned'(Pinned,
												     __NewTopXMLNS,
												     []))),
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

'encode_xabbergroupchat_update_$pinned'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbergroupchat_update_$pinned'(Pinned,
					__TopXMLNS, _acc) ->
    [encode_xabbergroupchat_query_message(Pinned,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#rights">>,
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
      <<"https://xabber.com/protocol/groups#rights">> ->
	  decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						  __Opts, _els,
						  decode_xabbergroupchat_query_item(<<"https://xabber.com/protocol/groups#rights">>,
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
      <<"https://xabber.com/protocol/groups#rights">> ->
	  decode_xabbergroupchat_query_rights_els(__TopXMLNS,
						  __Opts, _els, Item,
						  [decode_xabbergroupchat_restriction_set(<<"https://xabber.com/protocol/groups#rights">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#rights">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
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

decode_xabbergroup_decline(__TopXMLNS, __Opts,
			   {xmlel, <<"decline">>, _attrs, _els}) ->
    {xabbergroup_decline}.

encode_xabbergroup_decline({xabbergroup_decline},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"decline">>, _attrs, _els}.

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
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_xabbergroupchat_revoke_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_invite_jid(<<"https://xabber.com/protocol/groups#invite">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
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
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send,
					    decode_xabbergroupchat_invite_jid(<<"https://xabber.com/protocol/groups#invite">>,
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
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User,
					    decode_xabbergroupchat_invite_send(<<"https://xabber.com/protocol/groups#invite">>,
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
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els,
					    decode_xabbergroupchat_invite_user(<<"https://xabber.com/protocol/groups#invite">>,
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
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_xabbergroupchat_invite_els(__TopXMLNS, __Opts,
					    _els, User, Send, Invite_jid,
					    decode_xabbergroupchat_invite_reason(<<"https://xabber.com/protocol/groups#invite">>,
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
						[<<"https://xabber.com/protocol/groups#invite">>,
						 <<"https://xabber.com/protocol/groups">>],
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
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_xabbergroupchat_invite_query_els(__TopXMLNS,
						  __Opts, _els,
						  [decode_xabbergroupchat_invite_user(<<"https://xabber.com/protocol/groups#invite">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#rights">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#rights">>,
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#not-present">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#present">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x">>, _attrs, _els}.
