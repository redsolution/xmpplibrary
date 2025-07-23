%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_groups).

-compile(export_all).

do_decode(<<"mentions">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_mentions(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"localpart">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_localpart(<<"https://xabber.com/protocol/groups">>,
			    Opts, El);
do_decode(<<"localpart">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_localpart(<<"https://xabber.com/protocol/groups#create">>,
			    Opts, El);
do_decode(<<"membership">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_membership(<<"https://xabber.com/protocol/groups">>,
			     Opts, El);
do_decode(<<"membership">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_membership(<<"https://xabber.com/protocol/groups#create">>,
			     Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_description(<<"https://xabber.com/protocol/groups">>,
			      Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_description(<<"https://xabber.com/protocol/groups#create">>,
			      Opts, El);
do_decode(<<"privacy">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_privacy(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"privacy">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_privacy(<<"https://xabber.com/protocol/groups#create">>,
			  Opts, El);
do_decode(<<"status">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_status(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"status">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_status(<<"https://xabber.com/protocol/groups#create">>,
			 Opts, El);
do_decode(<<"name">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_name(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"name">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_name(<<"https://xabber.com/protocol/groups#create">>,
		       Opts, El);
do_decode(<<"index">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_index(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"index">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_index(<<"https://xabber.com/protocol/groups#create">>,
			Opts, El);
do_decode(<<"pinned-message">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_pinned_message(<<"https://xabber.com/protocol/groups">>,
				 Opts, El);
do_decode(<<"pinned-message">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_pinned_message(<<"https://xabber.com/protocol/groups#create">>,
				 Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_domain(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_domain(<<"https://xabber.com/protocol/groups#create">>,
			 Opts, El);
do_decode(<<"domains">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_domains(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"domains">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_domains(<<"https://xabber.com/protocol/groups#create">>,
			  Opts, El);
do_decode(<<"contact">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_contact(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"contact">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_contact(<<"https://xabber.com/protocol/groups#create">>,
			  Opts, El);
do_decode(<<"contacts">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_contacts(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"contacts">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_contacts(<<"https://xabber.com/protocol/groups#create">>,
			   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_query(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_query(<<"https://xabber.com/protocol/groups#create">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#default-ri"
	    "ghts">>,
	  El, Opts) ->
    decode_groups_query(<<"https://xabber.com/protocol/groups#default-ri"
			  "ghts">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#members">>, El,
	  Opts) ->
    decode_groups_query(<<"https://xabber.com/protocol/groups#members">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#delete">>, El,
	  Opts) ->
    decode_groups_query(<<"https://xabber.com/protocol/groups#delete">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#status">>, El,
	  Opts) ->
    decode_groups_query(<<"https://xabber.com/protocol/groups#status">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#info">>, El,
	  Opts) ->
    decode_groups_query(<<"https://xabber.com/protocol/groups#info">>,
			Opts, El);
do_decode(<<"badge">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_badge(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"nickname">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_nickname(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"subscription">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_subscription(<<"https://xabber.com/protocol/groups">>,
			       Opts, El);
do_decode(<<"role">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_role(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"user">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_user(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"search">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_search(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_groups_block_domain(<<"https://xabber.com/protocol/groups#block">>,
			       Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_groups_block_jid(<<"https://xabber.com/protocol/groups#block">>,
			    Opts, El);
do_decode(<<"id">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_groups_block_id(<<"https://xabber.com/protocol/groups#block">>,
			   Opts, El);
do_decode(<<"unblock">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_groups_unblock(<<"https://xabber.com/protocol/groups#block">>,
			  Opts, El);
do_decode(<<"block">>,
	  <<"https://xabber.com/protocol/groups#block">>, El,
	  Opts) ->
    decode_groups_block(<<"https://xabber.com/protocol/groups#block">>,
			Opts, El);
do_decode(<<"id">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_user_id(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"kick">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_kick(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"present">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_x_present(<<"https://xabber.com/protocol/groups">>,
			    Opts, El);
do_decode(<<"members">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_x_members(<<"https://xabber.com/protocol/groups">>,
			    Opts, El);
do_decode(<<"peer-to-peer">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_ptp(<<"https://xabber.com/protocol/groups#create">>,
		      Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
		      Opts, El);
do_decode(<<"parent-chat">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_x_parent_chat(<<"https://xabber.com/protocol/groups">>,
				Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_x(<<"https://xabber.com/protocol/groups">>,
		    Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#system-mes"
	    "sage">>,
	  El, Opts) ->
    decode_groups_x(<<"https://xabber.com/protocol/groups#system-mes"
		      "sage">>,
		    Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups#create">>, El,
	  Opts) ->
    decode_groups_x(<<"https://xabber.com/protocol/groups#create">>,
		    Opts, El);
do_decode(<<"update">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_update(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#rights">>, El,
	  Opts) ->
    decode_groups_query_rights(<<"https://xabber.com/protocol/groups#rights">>,
			       Opts, El);
do_decode(<<"user">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_invite_user(<<"https://xabber.com/protocol/groups#invite">>,
			      Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_invite_jid(<<"https://xabber.com/protocol/groups#invite">>,
			     Opts, El);
do_decode(<<"send">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_invite_send(<<"https://xabber.com/protocol/groups#invite">>,
			      Opts, El);
do_decode(<<"reason">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_invite_reason(<<"https://xabber.com/protocol/groups#invite">>,
				Opts, El);
do_decode(<<"decline">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_decline(<<"https://xabber.com/protocol/groups#invite">>,
			  Opts, El);
do_decode(<<"revoke">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_revoke(<<"https://xabber.com/protocol/groups#invite">>,
			 Opts, El);
do_decode(<<"invite">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_invite(<<"https://xabber.com/protocol/groups#invite">>,
			 Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_query_invites(<<"https://xabber.com/protocol/groups#invite">>,
				Opts, El);
do_decode(<<"collect">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_collect(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"echo">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_echo(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"mentions">>,
      <<"https://xabber.com/protocol/groups">>},
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
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#info">>},
     {<<"badge">>, <<"https://xabber.com/protocol/groups">>},
     {<<"nickname">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"subscription">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"role">>, <<"https://xabber.com/protocol/groups">>},
     {<<"user">>, <<"https://xabber.com/protocol/groups">>},
     {<<"search">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"domain">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"jid">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"id">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"unblock">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"block">>,
      <<"https://xabber.com/protocol/groups#block">>},
     {<<"id">>, <<"https://xabber.com/protocol/groups">>},
     {<<"kick">>, <<"https://xabber.com/protocol/groups">>},
     {<<"present">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"members">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"peer-to-peer">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"jid">>, <<"https://xabber.com/protocol/groups">>},
     {<<"parent-chat">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"x">>, <<"https://xabber.com/protocol/groups">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#system-mes"
	"sage">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/groups#create">>},
     {<<"update">>,
      <<"https://xabber.com/protocol/groups">>},
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
     {<<"query">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"collect">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"echo">>, <<"https://xabber.com/protocol/groups">>}].

do_encode({groups_echo, _} = Echo, TopXMLNS) ->
    encode_groups_echo(Echo, TopXMLNS);
do_encode({groups_collect, _} = Collect, TopXMLNS) ->
    encode_groups_collect(Collect, TopXMLNS);
do_encode({groups_query_invites, _} = Query,
	  TopXMLNS) ->
    encode_groups_query_invites(Query, TopXMLNS);
do_encode({groups_invite, _, _, _, _, _} = Invite,
	  TopXMLNS) ->
    encode_groups_invite(Invite, TopXMLNS);
do_encode({groups_revoke, _} = Revoke, TopXMLNS) ->
    encode_groups_revoke(Revoke, TopXMLNS);
do_encode({groups_decline} = Decline, TopXMLNS) ->
    encode_groups_decline(Decline, TopXMLNS);
do_encode({groups_invite_user, _, _} = User,
	  TopXMLNS) ->
    encode_groups_invite_user(User, TopXMLNS);
do_encode({groups_query_rights, _} = Query, TopXMLNS) ->
    encode_groups_query_rights(Query, TopXMLNS);
do_encode({groups_update, _} = Update, TopXMLNS) ->
    encode_groups_update(Update, TopXMLNS);
do_encode({groups_x, _, _, _, _, _, _, _, _} = X,
	  TopXMLNS) ->
    encode_groups_x(X, TopXMLNS);
do_encode({groups_ptp, _, _, _} = Peer_to_peer,
	  TopXMLNS) ->
    encode_groups_ptp(Peer_to_peer, TopXMLNS);
do_encode({groups_kick, _, _} = Kick, TopXMLNS) ->
    encode_groups_kick(Kick, TopXMLNS);
do_encode({groups_user_id, _} = Id, TopXMLNS) ->
    encode_groups_user_id(Id, TopXMLNS);
do_encode({groups_block, _, _, _} = Block, TopXMLNS) ->
    encode_groups_block(Block, TopXMLNS);
do_encode({groups_unblock, _, _, _} = Unblock,
	  TopXMLNS) ->
    encode_groups_unblock(Unblock, TopXMLNS);
do_encode({block_id, _} = Id, TopXMLNS) ->
    encode_groups_block_id(Id, TopXMLNS);
do_encode({block_jid, _} = Jid, TopXMLNS) ->
    encode_groups_block_jid(Jid, TopXMLNS);
do_encode({block_domain, _} = Domain, TopXMLNS) ->
    encode_groups_block_domain(Domain, TopXMLNS);
do_encode({groups_search, _, _, _, _, _} = Search,
	  TopXMLNS) ->
    encode_groups_search(Search, TopXMLNS);
do_encode({groups_user, _, _, _, _, _, _, _, _} = User,
	  TopXMLNS) ->
    encode_groups_user(User, TopXMLNS);
do_encode({groups_query, _, _, _, _, _, _} = Query,
	  TopXMLNS) ->
    encode_groups_query(Query, TopXMLNS);
do_encode({groups_contacts, _} = Contacts, TopXMLNS) ->
    encode_groups_contacts(Contacts, TopXMLNS);
do_encode({groups_domains, _} = Domains, TopXMLNS) ->
    encode_groups_domains(Domains, TopXMLNS);
do_encode({groups_pinned_message, _} = Pinned_message,
	  TopXMLNS) ->
    encode_groups_pinned_message(Pinned_message, TopXMLNS);
do_encode({groups_index, _} = Index, TopXMLNS) ->
    encode_groups_index(Index, TopXMLNS);
do_encode({groups_name, _} = Name, TopXMLNS) ->
    encode_groups_name(Name, TopXMLNS);
do_encode({groups_status, _} = Status, TopXMLNS) ->
    encode_groups_status(Status, TopXMLNS);
do_encode({groups_privacy, _} = Privacy, TopXMLNS) ->
    encode_groups_privacy(Privacy, TopXMLNS);
do_encode({groups_description, _} = Description,
	  TopXMLNS) ->
    encode_groups_description(Description, TopXMLNS);
do_encode({groups_membership, _} = Membership,
	  TopXMLNS) ->
    encode_groups_membership(Membership, TopXMLNS);
do_encode({groups_localpart, _} = Localpart,
	  TopXMLNS) ->
    encode_groups_localpart(Localpart, TopXMLNS);
do_encode({groups_mentions, _} = Mentions, TopXMLNS) ->
    encode_groups_mentions(Mentions, TopXMLNS).

do_get_name({block_domain, _}) -> <<"domain">>;
do_get_name({block_id, _}) -> <<"id">>;
do_get_name({block_jid, _}) -> <<"jid">>;
do_get_name({groups_block, _, _, _}) -> <<"block">>;
do_get_name({groups_collect, _}) -> <<"collect">>;
do_get_name({groups_contacts, _}) -> <<"contacts">>;
do_get_name({groups_decline}) -> <<"decline">>;
do_get_name({groups_description, _}) ->
    <<"description">>;
do_get_name({groups_domains, _}) -> <<"domains">>;
do_get_name({groups_echo, _}) -> <<"echo">>;
do_get_name({groups_index, _}) -> <<"index">>;
do_get_name({groups_invite, _, _, _, _, _}) ->
    <<"invite">>;
do_get_name({groups_invite_user, _, _}) -> <<"user">>;
do_get_name({groups_kick, _, _}) -> <<"kick">>;
do_get_name({groups_localpart, _}) -> <<"localpart">>;
do_get_name({groups_membership, _}) -> <<"membership">>;
do_get_name({groups_mentions, _}) -> <<"mentions">>;
do_get_name({groups_name, _}) -> <<"name">>;
do_get_name({groups_pinned_message, _}) ->
    <<"pinned-message">>;
do_get_name({groups_privacy, _}) -> <<"privacy">>;
do_get_name({groups_ptp, _, _, _}) ->
    <<"peer-to-peer">>;
do_get_name({groups_query, _, _, _, _, _, _}) ->
    <<"query">>;
do_get_name({groups_query_invites, _}) -> <<"query">>;
do_get_name({groups_query_rights, _}) -> <<"query">>;
do_get_name({groups_revoke, _}) -> <<"revoke">>;
do_get_name({groups_search, _, _, _, _, _}) ->
    <<"search">>;
do_get_name({groups_status, _}) -> <<"status">>;
do_get_name({groups_unblock, _, _, _}) -> <<"unblock">>;
do_get_name({groups_update, _}) -> <<"update">>;
do_get_name({groups_user, _, _, _, _, _, _, _, _}) ->
    <<"user">>;
do_get_name({groups_user_id, _}) -> <<"id">>;
do_get_name({groups_x, _, _, _, _, _, _, _, _}) ->
    <<"x">>.

do_get_ns({block_domain, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({block_id, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({block_jid, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({groups_block, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({groups_collect, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_contacts, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_decline}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({groups_description, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_domains, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_echo, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_index, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_invite, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({groups_invite_user, _, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({groups_kick, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_localpart, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_membership, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_mentions, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_name, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_pinned_message, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_privacy, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_ptp, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#create">>;
do_get_ns({groups_query, Xmlns, _, _, _, _, _}) ->
    Xmlns;
do_get_ns({groups_query_invites, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({groups_query_rights, _}) ->
    <<"https://xabber.com/protocol/groups#rights">>;
do_get_ns({groups_revoke, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({groups_search, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_status, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_unblock, _, _, _}) ->
    <<"https://xabber.com/protocol/groups#block">>;
do_get_ns({groups_update, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_user, _, _, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_user_id, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_x, Xmlns, _, _, _, _, _, _, _}) ->
    Xmlns.

get_els({groups_query_rights, _sub_els}) -> _sub_els;
get_els({groups_x, _xmlns, _type, _version, _members,
	 _present, _parent, _jid, _sub_els}) ->
    _sub_els;
get_els({groups_query, _xmlns, _id, _version, _rsm,
	 _sub_els, _cdata}) ->
    _sub_els.

set_els({groups_query_rights, _}, _sub_els) ->
    {groups_query_rights, _sub_els};
set_els({groups_x, _xmlns, _type, _version, _members,
	 _present, _parent, _jid, _},
	_sub_els) ->
    {groups_x, _xmlns, _type, _version, _members, _present,
     _parent, _jid, _sub_els};
set_els({groups_query, _xmlns, _id, _version, _rsm, _,
	 _cdata},
	_sub_els) ->
    {groups_query, _xmlns, _id, _version, _rsm, _sub_els,
     _cdata}.

pp(groups_echo, 1) -> [message];
pp(groups_collect, 1) -> [cdata];
pp(groups_query_invites, 1) -> [users];
pp(groups_invite, 5) ->
    [jid, invite_jid, send, reason, user];
pp(groups_revoke, 1) -> [jid];
pp(groups_decline, 0) -> [];
pp(groups_invite_user, 2) -> [jid, id];
pp(groups_query_rights, 1) -> [sub_els];
pp(groups_update, 1) -> [pinned];
pp(groups_x, 8) ->
    [xmlns, type, version, members, present, parent, jid,
     sub_els];
pp(groups_ptp, 3) -> [jid, id, cdata];
pp(groups_kick, 2) -> [ids, jids];
pp(groups_user_id, 1) -> [cdata];
pp(groups_block, 3) -> [id, jid, domain];
pp(groups_unblock, 3) -> [id, jid, domain];
pp(block_id, 1) -> [cdata];
pp(block_jid, 1) -> [cdata];
pp(block_domain, 1) -> [cdata];
pp(groups_search, 5) ->
    [name, description, model, anonymous, rsm];
pp(groups_user, 8) ->
    [id, jid, role, badge, nickname, avatar, present,
     subscription];
pp(groups_query, 6) ->
    [xmlns, id, version, rsm, sub_els, cdata];
pp(groups_contacts, 1) -> [contacts];
pp(groups_domains, 1) -> [domains];
pp(groups_pinned_message, 1) -> [cdata];
pp(groups_index, 1) -> [cdata];
pp(groups_name, 1) -> [cdata];
pp(groups_status, 1) -> [cdata];
pp(groups_privacy, 1) -> [cdata];
pp(groups_description, 1) -> [cdata];
pp(groups_membership, 1) -> [cdata];
pp(groups_localpart, 1) -> [cdata];
pp(groups_mentions, 1) -> [members];
pp(_, _) -> no.

records() ->
    [{groups_echo, 1}, {groups_collect, 1},
     {groups_query_invites, 1}, {groups_invite, 5},
     {groups_revoke, 1}, {groups_decline, 0},
     {groups_invite_user, 2}, {groups_query_rights, 1},
     {groups_update, 1}, {groups_x, 8}, {groups_ptp, 3},
     {groups_kick, 2}, {groups_user_id, 1},
     {groups_block, 3}, {groups_unblock, 3}, {block_id, 1},
     {block_jid, 1}, {block_domain, 1}, {groups_search, 5},
     {groups_user, 8}, {groups_query, 6},
     {groups_contacts, 1}, {groups_domains, 1},
     {groups_pinned_message, 1}, {groups_index, 1},
     {groups_name, 1}, {groups_status, 1},
     {groups_privacy, 1}, {groups_description, 1},
     {groups_membership, 1}, {groups_localpart, 1},
     {groups_mentions, 1}].

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_int(Int) -> erlang:integer_to_binary(Int).

decode_groups_mentions(__TopXMLNS, __Opts,
		       {xmlel, <<"mentions">>, _attrs, _els}) ->
    Members = decode_groups_mentions_els(__TopXMLNS, __Opts,
					 _els, []),
    {groups_mentions, Members}.

decode_groups_mentions_els(__TopXMLNS, __Opts, [],
			   Members) ->
    lists:reverse(Members);
decode_groups_mentions_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"user">>, _attrs, _} = _el | _els],
			   Members) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_mentions_els(__TopXMLNS, __Opts, _els,
				     [decode_groups_user(<<"https://xabber.com/protocol/groups">>,
							 __Opts, _el)
				      | Members]);
      _ ->
	  decode_groups_mentions_els(__TopXMLNS, __Opts, _els,
				     Members)
    end;
decode_groups_mentions_els(__TopXMLNS, __Opts,
			   [_ | _els], Members) ->
    decode_groups_mentions_els(__TopXMLNS, __Opts, _els,
			       Members).

encode_groups_mentions({groups_mentions, Members},
		       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_mentions_$members'(Members,
							__NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"mentions">>, _attrs, _els}.

'encode_groups_mentions_$members'([], __TopXMLNS,
				  _acc) ->
    _acc;
'encode_groups_mentions_$members'([Members | _els],
				  __TopXMLNS, _acc) ->
    'encode_groups_mentions_$members'(_els, __TopXMLNS,
				      [encode_groups_user(Members, __TopXMLNS)
				       | _acc]).

decode_groups_localpart(__TopXMLNS, __Opts,
			{xmlel, <<"localpart">>, _attrs, _els}) ->
    Cdata = decode_groups_localpart_els(__TopXMLNS, __Opts,
					_els, <<>>),
    {groups_localpart, Cdata}.

decode_groups_localpart_els(__TopXMLNS, __Opts, [],
			    Cdata) ->
    decode_groups_localpart_cdata(__TopXMLNS, Cdata);
decode_groups_localpart_els(__TopXMLNS, __Opts,
			    [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_localpart_els(__TopXMLNS, __Opts, _els,
				<<Cdata/binary, _data/binary>>);
decode_groups_localpart_els(__TopXMLNS, __Opts,
			    [_ | _els], Cdata) ->
    decode_groups_localpart_els(__TopXMLNS, __Opts, _els,
				Cdata).

encode_groups_localpart({groups_localpart, Cdata},
			__TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_localpart_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"localpart">>, _attrs, _els}.

decode_groups_localpart_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_localpart_cdata(__TopXMLNS, _val) -> _val.

encode_groups_localpart_cdata(<<>>, _acc) -> _acc;
encode_groups_localpart_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_membership(__TopXMLNS, __Opts,
			 {xmlel, <<"membership">>, _attrs, _els}) ->
    Cdata = decode_groups_membership_els(__TopXMLNS, __Opts,
					 _els, <<>>),
    {groups_membership, Cdata}.

decode_groups_membership_els(__TopXMLNS, __Opts, [],
			     Cdata) ->
    decode_groups_membership_cdata(__TopXMLNS, Cdata);
decode_groups_membership_els(__TopXMLNS, __Opts,
			     [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_membership_els(__TopXMLNS, __Opts, _els,
				 <<Cdata/binary, _data/binary>>);
decode_groups_membership_els(__TopXMLNS, __Opts,
			     [_ | _els], Cdata) ->
    decode_groups_membership_els(__TopXMLNS, __Opts, _els,
				 Cdata).

encode_groups_membership({groups_membership, Cdata},
			 __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_membership_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"membership">>, _attrs, _els}.

decode_groups_membership_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_groups_membership_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_membership_cdata(<<>>, _acc) -> _acc;
encode_groups_membership_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_description(__TopXMLNS, __Opts,
			  {xmlel, <<"description">>, _attrs, _els}) ->
    Cdata = decode_groups_description_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    {groups_description, Cdata}.

decode_groups_description_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_groups_description_cdata(__TopXMLNS, Cdata);
decode_groups_description_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_description_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_groups_description_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_groups_description_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_groups_description({groups_description, Cdata},
			  __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_description_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"description">>, _attrs, _els}.

decode_groups_description_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_groups_description_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_description_cdata(<<>>, _acc) -> _acc;
encode_groups_description_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_privacy(__TopXMLNS, __Opts,
		      {xmlel, <<"privacy">>, _attrs, _els}) ->
    Cdata = decode_groups_privacy_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    {groups_privacy, Cdata}.

decode_groups_privacy_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_groups_privacy_cdata(__TopXMLNS, Cdata);
decode_groups_privacy_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_privacy_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_groups_privacy_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_groups_privacy_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_groups_privacy({groups_privacy, Cdata},
		      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_privacy_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"privacy">>, _attrs, _els}.

decode_groups_privacy_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_privacy_cdata(__TopXMLNS, _val) -> _val.

encode_groups_privacy_cdata(<<>>, _acc) -> _acc;
encode_groups_privacy_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_status(__TopXMLNS, __Opts,
		     {xmlel, <<"status">>, _attrs, _els}) ->
    Cdata = decode_groups_status_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    {groups_status, Cdata}.

decode_groups_status_els(__TopXMLNS, __Opts, [],
			 Cdata) ->
    decode_groups_status_cdata(__TopXMLNS, Cdata);
decode_groups_status_els(__TopXMLNS, __Opts,
			 [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_status_els(__TopXMLNS, __Opts, _els,
			     <<Cdata/binary, _data/binary>>);
decode_groups_status_els(__TopXMLNS, __Opts, [_ | _els],
			 Cdata) ->
    decode_groups_status_els(__TopXMLNS, __Opts, _els,
			     Cdata).

encode_groups_status({groups_status, Cdata},
		     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_status_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"status">>, _attrs, _els}.

decode_groups_status_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_status_cdata(__TopXMLNS, _val) -> _val.

encode_groups_status_cdata(<<>>, _acc) -> _acc;
encode_groups_status_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_name(__TopXMLNS, __Opts,
		   {xmlel, <<"name">>, _attrs, _els}) ->
    Cdata = decode_groups_name_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    {groups_name, Cdata}.

decode_groups_name_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_groups_name_cdata(__TopXMLNS, Cdata);
decode_groups_name_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_name_els(__TopXMLNS, __Opts, _els,
			   <<Cdata/binary, _data/binary>>);
decode_groups_name_els(__TopXMLNS, __Opts, [_ | _els],
		       Cdata) ->
    decode_groups_name_els(__TopXMLNS, __Opts, _els, Cdata).

encode_groups_name({groups_name, Cdata}, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_name_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"name">>, _attrs, _els}.

decode_groups_name_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_name_cdata(__TopXMLNS, _val) -> _val.

encode_groups_name_cdata(<<>>, _acc) -> _acc;
encode_groups_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_index(__TopXMLNS, __Opts,
		    {xmlel, <<"index">>, _attrs, _els}) ->
    Cdata = decode_groups_index_els(__TopXMLNS, __Opts,
				    _els, <<>>),
    {groups_index, Cdata}.

decode_groups_index_els(__TopXMLNS, __Opts, [],
			Cdata) ->
    decode_groups_index_cdata(__TopXMLNS, Cdata);
decode_groups_index_els(__TopXMLNS, __Opts,
			[{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_index_els(__TopXMLNS, __Opts, _els,
			    <<Cdata/binary, _data/binary>>);
decode_groups_index_els(__TopXMLNS, __Opts, [_ | _els],
			Cdata) ->
    decode_groups_index_els(__TopXMLNS, __Opts, _els,
			    Cdata).

encode_groups_index({groups_index, Cdata},
		    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_index_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"index">>, _attrs, _els}.

decode_groups_index_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_index_cdata(__TopXMLNS, _val) -> _val.

encode_groups_index_cdata(<<>>, _acc) -> _acc;
encode_groups_index_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_pinned_message(__TopXMLNS, __Opts,
			     {xmlel, <<"pinned-message">>, _attrs, _els}) ->
    Cdata = decode_groups_pinned_message_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    {groups_pinned_message, Cdata}.

decode_groups_pinned_message_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_groups_pinned_message_cdata(__TopXMLNS, Cdata);
decode_groups_pinned_message_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_pinned_message_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_groups_pinned_message_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_groups_pinned_message_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_groups_pinned_message({groups_pinned_message,
			      Cdata},
			     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_pinned_message_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"pinned-message">>, _attrs, _els}.

decode_groups_pinned_message_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_groups_pinned_message_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_pinned_message_cdata(<<>>, _acc) -> _acc;
encode_groups_pinned_message_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_domain(__TopXMLNS, __Opts,
		     {xmlel, <<"domain">>, _attrs, _els}) ->
    Cdata = decode_groups_domain_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    Cdata.

decode_groups_domain_els(__TopXMLNS, __Opts, [],
			 Cdata) ->
    decode_groups_domain_cdata(__TopXMLNS, Cdata);
decode_groups_domain_els(__TopXMLNS, __Opts,
			 [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_domain_els(__TopXMLNS, __Opts, _els,
			     <<Cdata/binary, _data/binary>>);
decode_groups_domain_els(__TopXMLNS, __Opts, [_ | _els],
			 Cdata) ->
    decode_groups_domain_els(__TopXMLNS, __Opts, _els,
			     Cdata).

encode_groups_domain(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_domain_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domain">>, _attrs, _els}.

decode_groups_domain_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_domain_cdata(__TopXMLNS, _val) -> _val.

encode_groups_domain_cdata(<<>>, _acc) -> _acc;
encode_groups_domain_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_domains(__TopXMLNS, __Opts,
		      {xmlel, <<"domains">>, _attrs, _els}) ->
    Domains = decode_groups_domains_els(__TopXMLNS, __Opts,
					_els, []),
    {groups_domains, Domains}.

decode_groups_domains_els(__TopXMLNS, __Opts, [],
			  Domains) ->
    lists:reverse(Domains);
decode_groups_domains_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"domain">>, _attrs, _} = _el | _els],
			  Domains) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_domains_els(__TopXMLNS, __Opts, _els,
				    [decode_groups_domain(<<"https://xabber.com/protocol/groups">>,
							  __Opts, _el)
				     | Domains]);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_groups_domains_els(__TopXMLNS, __Opts, _els,
				    [decode_groups_domain(<<"https://xabber.com/protocol/groups#create">>,
							  __Opts, _el)
				     | Domains]);
      _ ->
	  decode_groups_domains_els(__TopXMLNS, __Opts, _els,
				    Domains)
    end;
decode_groups_domains_els(__TopXMLNS, __Opts,
			  [_ | _els], Domains) ->
    decode_groups_domains_els(__TopXMLNS, __Opts, _els,
			      Domains).

encode_groups_domains({groups_domains, Domains},
		      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_groups_domains_$domains'(Domains,
						       __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domains">>, _attrs, _els}.

'encode_groups_domains_$domains'([], __TopXMLNS,
				 _acc) ->
    _acc;
'encode_groups_domains_$domains'([Domains | _els],
				 __TopXMLNS, _acc) ->
    'encode_groups_domains_$domains'(_els, __TopXMLNS,
				     [encode_groups_domain(Domains, __TopXMLNS)
				      | _acc]).

decode_groups_contact(__TopXMLNS, __Opts,
		      {xmlel, <<"contact">>, _attrs, _els}) ->
    Cdata = decode_groups_contact_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    Cdata.

decode_groups_contact_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_groups_contact_cdata(__TopXMLNS, Cdata);
decode_groups_contact_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_contact_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_groups_contact_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_groups_contact_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_groups_contact(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = encode_groups_contact_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contact">>, _attrs, _els}.

decode_groups_contact_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_contact_cdata(__TopXMLNS, _val) -> _val.

encode_groups_contact_cdata(<<>>, _acc) -> _acc;
encode_groups_contact_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_contacts(__TopXMLNS, __Opts,
		       {xmlel, <<"contacts">>, _attrs, _els}) ->
    Contacts = decode_groups_contacts_els(__TopXMLNS,
					  __Opts, _els, []),
    {groups_contacts, Contacts}.

decode_groups_contacts_els(__TopXMLNS, __Opts, [],
			   Contacts) ->
    lists:reverse(Contacts);
decode_groups_contacts_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"contact">>, _attrs, _} = _el | _els],
			   Contacts) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_contacts_els(__TopXMLNS, __Opts, _els,
				     [decode_groups_contact(<<"https://xabber.com/protocol/groups">>,
							    __Opts, _el)
				      | Contacts]);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_groups_contacts_els(__TopXMLNS, __Opts, _els,
				     [decode_groups_contact(<<"https://xabber.com/protocol/groups#create">>,
							    __Opts, _el)
				      | Contacts]);
      _ ->
	  decode_groups_contacts_els(__TopXMLNS, __Opts, _els,
				     Contacts)
    end;
decode_groups_contacts_els(__TopXMLNS, __Opts,
			   [_ | _els], Contacts) ->
    decode_groups_contacts_els(__TopXMLNS, __Opts, _els,
			       Contacts).

encode_groups_contacts({groups_contacts, Contacts},
		       __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_groups_contacts_$contacts'(Contacts,
							 __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contacts">>, _attrs, _els}.

'encode_groups_contacts_$contacts'([], __TopXMLNS,
				   _acc) ->
    _acc;
'encode_groups_contacts_$contacts'([Contacts | _els],
				   __TopXMLNS, _acc) ->
    'encode_groups_contacts_$contacts'(_els, __TopXMLNS,
				       [encode_groups_contact(Contacts,
							      __TopXMLNS)
					| _acc]).

decode_groups_query(__TopXMLNS, __Opts,
		    {xmlel, <<"query">>, _attrs, _els}) ->
    {Cdata, Rsm, __Els} =
	decode_groups_query_els(__TopXMLNS, __Opts, _els, <<>>,
				undefined, []),
    {Xmlns, Version, Id} =
	decode_groups_query_attrs(__TopXMLNS, _attrs, undefined,
				  undefined, undefined),
    {groups_query, Xmlns, Id, Version, Rsm, __Els, Cdata}.

decode_groups_query_els(__TopXMLNS, __Opts, [], Cdata,
			Rsm, __Els) ->
    {decode_groups_query_cdata(__TopXMLNS, Cdata), Rsm,
     lists:reverse(__Els)};
decode_groups_query_els(__TopXMLNS, __Opts,
			[{xmlcdata, _data} | _els], Cdata, Rsm, __Els) ->
    decode_groups_query_els(__TopXMLNS, __Opts, _els,
			    <<Cdata/binary, _data/binary>>, Rsm, __Els);
decode_groups_query_els(__TopXMLNS, __Opts,
			[{xmlel, <<"set">>, _attrs, _} = _el | _els], Cdata,
			Rsm, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_groups_query_els(__TopXMLNS, __Opts, _els, Cdata,
				  xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
							 __Opts, _el),
				  __Els);
      _ ->
	  decode_groups_query_els(__TopXMLNS, __Opts, _els, Cdata,
				  Rsm, [_el | __Els])
    end;
decode_groups_query_els(__TopXMLNS, __Opts,
			[{xmlel, _name, _attrs, _} = _el | _els], Cdata, Rsm,
			__Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_groups_query_els(__TopXMLNS, __Opts, _els, Cdata,
				  Rsm, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_groups_query_els(__TopXMLNS, __Opts, _els, Cdata,
					Rsm, [_el | __Els]);
	    Mod ->
		decode_groups_query_els(__TopXMLNS, __Opts, _els, Cdata,
					Rsm,
					[Mod:do_decode(_name, __XMLNS, _el,
						       __Opts)
					 | __Els])
	  end
    end.

decode_groups_query_attrs(__TopXMLNS,
			  [{<<"xmlns">>, _val} | _attrs], _Xmlns, Version,
			  Id) ->
    decode_groups_query_attrs(__TopXMLNS, _attrs, _val,
			      Version, Id);
decode_groups_query_attrs(__TopXMLNS,
			  [{<<"version">>, _val} | _attrs], Xmlns, _Version,
			  Id) ->
    decode_groups_query_attrs(__TopXMLNS, _attrs, Xmlns,
			      _val, Id);
decode_groups_query_attrs(__TopXMLNS,
			  [{<<"id">>, _val} | _attrs], Xmlns, Version, _Id) ->
    decode_groups_query_attrs(__TopXMLNS, _attrs, Xmlns,
			      Version, _val);
decode_groups_query_attrs(__TopXMLNS, [_ | _attrs],
			  Xmlns, Version, Id) ->
    decode_groups_query_attrs(__TopXMLNS, _attrs, Xmlns,
			      Version, Id);
decode_groups_query_attrs(__TopXMLNS, [], Xmlns,
			  Version, Id) ->
    {decode_groups_query_attr_xmlns(__TopXMLNS, Xmlns),
     decode_groups_query_attr_version(__TopXMLNS, Version),
     decode_groups_query_attr_id(__TopXMLNS, Id)}.

encode_groups_query({groups_query, Xmlns, Id, Version,
		     Rsm, __Els, Cdata},
		    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#create">>,
						 <<"https://xabber.com/protocol/groups#default-ri"
						   "ghts">>,
						 <<"https://xabber.com/protocol/groups#members">>,
						 <<"https://xabber.com/protocol/groups#delete">>,
						 <<"https://xabber.com/protocol/groups#status">>,
						 <<"https://xabber.com/protocol/groups#info">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse(encode_groups_query_cdata(Cdata,
						     'encode_groups_query_$rsm'(Rsm,
										__NewTopXMLNS,
										[]))),
    _attrs = encode_groups_query_attr_id(Id,
					 encode_groups_query_attr_version(Version,
									  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												     __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_groups_query_$rsm'(undefined, __TopXMLNS,
			   _acc) ->
    _acc;
'encode_groups_query_$rsm'(Rsm, __TopXMLNS, _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

decode_groups_query_attr_xmlns(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_query_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_groups_query_attr_version(__TopXMLNS,
				 undefined) ->
    undefined;
decode_groups_query_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"query">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_query_attr_version(undefined, _acc) ->
    _acc;
encode_groups_query_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_groups_query_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_query_attr_id(__TopXMLNS, _val) -> _val.

encode_groups_query_attr_id(<<>>, _acc) -> _acc;
encode_groups_query_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_query_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_query_cdata(__TopXMLNS, _val) -> _val.

encode_groups_query_cdata(<<>>, _acc) -> _acc;
encode_groups_query_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_badge(__TopXMLNS, __Opts,
		    {xmlel, <<"badge">>, _attrs, _els}) ->
    Cdata = decode_groups_badge_els(__TopXMLNS, __Opts,
				    _els, <<>>),
    Cdata.

decode_groups_badge_els(__TopXMLNS, __Opts, [],
			Cdata) ->
    decode_groups_badge_cdata(__TopXMLNS, Cdata);
decode_groups_badge_els(__TopXMLNS, __Opts,
			[{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_badge_els(__TopXMLNS, __Opts, _els,
			    <<Cdata/binary, _data/binary>>);
decode_groups_badge_els(__TopXMLNS, __Opts, [_ | _els],
			Cdata) ->
    decode_groups_badge_els(__TopXMLNS, __Opts, _els,
			    Cdata).

encode_groups_badge(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_badge_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"badge">>, _attrs, _els}.

decode_groups_badge_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_badge_cdata(__TopXMLNS, _val) -> _val.

encode_groups_badge_cdata(<<>>, _acc) -> _acc;
encode_groups_badge_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_nickname(__TopXMLNS, __Opts,
		       {xmlel, <<"nickname">>, _attrs, _els}) ->
    Cdata = decode_groups_nickname_els(__TopXMLNS, __Opts,
				       _els, <<>>),
    Cdata.

decode_groups_nickname_els(__TopXMLNS, __Opts, [],
			   Cdata) ->
    decode_groups_nickname_cdata(__TopXMLNS, Cdata);
decode_groups_nickname_els(__TopXMLNS, __Opts,
			   [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_nickname_els(__TopXMLNS, __Opts, _els,
			       <<Cdata/binary, _data/binary>>);
decode_groups_nickname_els(__TopXMLNS, __Opts,
			   [_ | _els], Cdata) ->
    decode_groups_nickname_els(__TopXMLNS, __Opts, _els,
			       Cdata).

encode_groups_nickname(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_nickname_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"nickname">>, _attrs, _els}.

decode_groups_nickname_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_nickname_cdata(__TopXMLNS, _val) -> _val.

encode_groups_nickname_cdata(<<>>, _acc) -> _acc;
encode_groups_nickname_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_subscription(__TopXMLNS, __Opts,
			   {xmlel, <<"subscription">>, _attrs, _els}) ->
    Cdata = decode_groups_subscription_els(__TopXMLNS,
					   __Opts, _els, <<>>),
    Cdata.

decode_groups_subscription_els(__TopXMLNS, __Opts, [],
			       Cdata) ->
    decode_groups_subscription_cdata(__TopXMLNS, Cdata);
decode_groups_subscription_els(__TopXMLNS, __Opts,
			       [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_subscription_els(__TopXMLNS, __Opts, _els,
				   <<Cdata/binary, _data/binary>>);
decode_groups_subscription_els(__TopXMLNS, __Opts,
			       [_ | _els], Cdata) ->
    decode_groups_subscription_els(__TopXMLNS, __Opts, _els,
				   Cdata).

encode_groups_subscription(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_subscription_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"subscription">>, _attrs, _els}.

decode_groups_subscription_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"subscription">>, __TopXMLNS}});
decode_groups_subscription_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_subscription_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_role(__TopXMLNS, __Opts,
		   {xmlel, <<"role">>, _attrs, _els}) ->
    Cdata = decode_groups_role_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    Cdata.

decode_groups_role_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_groups_role_cdata(__TopXMLNS, Cdata);
decode_groups_role_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_role_els(__TopXMLNS, __Opts, _els,
			   <<Cdata/binary, _data/binary>>);
decode_groups_role_els(__TopXMLNS, __Opts, [_ | _els],
		       Cdata) ->
    decode_groups_role_els(__TopXMLNS, __Opts, _els, Cdata).

encode_groups_role(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_role_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"role">>, _attrs, _els}.

decode_groups_role_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"role">>, __TopXMLNS}});
decode_groups_role_cdata(__TopXMLNS, _val) -> _val.

encode_groups_role_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_user(__TopXMLNS, __Opts,
		   {xmlel, <<"user">>, _attrs, _els}) ->
    {Avatar, Present, Jid, Badge, Nickname, Role,
     Subscription} =
	decode_groups_user_els(__TopXMLNS, __Opts, _els,
			       undefined, undefined, undefined, undefined,
			       undefined, undefined, undefined),
    Id = decode_groups_user_attrs(__TopXMLNS, _attrs,
				  undefined),
    {groups_user, Id, Jid, Role, Badge, Nickname, Avatar,
     Present, Subscription}.

decode_groups_user_els(__TopXMLNS, __Opts, [], Avatar,
		       Present, Jid, Badge, Nickname, Role, Subscription) ->
    {Avatar, Present, Jid, Badge, Nickname, Role,
     Subscription};
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Avatar,
		       Present, Jid, Badge, Nickname, Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present,
				 decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						   __Opts, _el),
				 Badge, Nickname, Role, Subscription);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 Subscription)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"role">>, _attrs, _} = _el | _els], Avatar,
		       Present, Jid, Badge, Nickname, Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname,
				 decode_groups_role(<<"https://xabber.com/protocol/groups">>,
						    __Opts, _el),
				 Subscription);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 Subscription)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"nickname">>, _attrs, _} = _el | _els],
		       Avatar, Present, Jid, Badge, Nickname, Role,
		       Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge,
				 decode_groups_nickname(<<"https://xabber.com/protocol/groups">>,
							__Opts, _el),
				 Role, Subscription);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 Subscription)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"metadata">>, _attrs, _} = _el | _els],
		       Avatar, Present, Jid, Badge, Nickname, Role,
		       Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:avatar:metadata">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els,
				 xep0084:decode_avatar_meta(<<"urn:xmpp:avatar:metadata">>,
							    __Opts, _el),
				 Present, Jid, Badge, Nickname, Role,
				 Subscription);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 Subscription)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"badge">>, _attrs, _} = _el | _els], Avatar,
		       Present, Jid, Badge, Nickname, Role, Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid,
				 decode_groups_badge(<<"https://xabber.com/protocol/groups">>,
						     __Opts, _el),
				 Nickname, Role, Subscription);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 Subscription)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"present">>, _attrs, _} = _el | _els],
		       Avatar, Present, Jid, Badge, Nickname, Role,
		       Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 decode_groups_x_present(<<"https://xabber.com/protocol/groups">>,
							 __Opts, _el),
				 Jid, Badge, Nickname, Role, Subscription);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 Subscription)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"subscription">>, _attrs, _} = _el | _els],
		       Avatar, Present, Jid, Badge, Nickname, Role,
		       Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 decode_groups_subscription(<<"https://xabber.com/protocol/groups">>,
							    __Opts, _el));
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Present, Jid, Badge, Nickname, Role,
				 Subscription)
    end;
decode_groups_user_els(__TopXMLNS, __Opts, [_ | _els],
		       Avatar, Present, Jid, Badge, Nickname, Role,
		       Subscription) ->
    decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
			   Present, Jid, Badge, Nickname, Role, Subscription).

decode_groups_user_attrs(__TopXMLNS,
			 [{<<"id">>, _val} | _attrs], _Id) ->
    decode_groups_user_attrs(__TopXMLNS, _attrs, _val);
decode_groups_user_attrs(__TopXMLNS, [_ | _attrs],
			 Id) ->
    decode_groups_user_attrs(__TopXMLNS, _attrs, Id);
decode_groups_user_attrs(__TopXMLNS, [], Id) ->
    decode_groups_user_attr_id(__TopXMLNS, Id).

encode_groups_user({groups_user, Id, Jid, Role, Badge,
		    Nickname, Avatar, Present, Subscription},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_user_$avatar'(Avatar,
						   __NewTopXMLNS,
						   'encode_groups_user_$present'(Present,
										 __NewTopXMLNS,
										 'encode_groups_user_$jid'(Jid,
													   __NewTopXMLNS,
													   'encode_groups_user_$badge'(Badge,
																       __NewTopXMLNS,
																       'encode_groups_user_$nickname'(Nickname,
																				      __NewTopXMLNS,
																				      'encode_groups_user_$role'(Role,
																								 __NewTopXMLNS,
																								 'encode_groups_user_$subscription'(Subscription,
																												    __NewTopXMLNS,
																												    [])))))))),
    _attrs = encode_groups_user_attr_id(Id,
					xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								   __TopXMLNS)),
    {xmlel, <<"user">>, _attrs, _els}.

'encode_groups_user_$avatar'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_user_$avatar'(Avatar, __TopXMLNS,
			     _acc) ->
    [xep0084:encode_avatar_meta(Avatar, __TopXMLNS) | _acc].

'encode_groups_user_$present'(undefined, __TopXMLNS,
			      _acc) ->
    _acc;
'encode_groups_user_$present'(Present, __TopXMLNS,
			      _acc) ->
    [encode_groups_x_present(Present, __TopXMLNS) | _acc].

'encode_groups_user_$jid'(undefined, __TopXMLNS,
			  _acc) ->
    _acc;
'encode_groups_user_$jid'(Jid, __TopXMLNS, _acc) ->
    [encode_groups_jid(Jid, __TopXMLNS) | _acc].

'encode_groups_user_$badge'(undefined, __TopXMLNS,
			    _acc) ->
    _acc;
'encode_groups_user_$badge'(Badge, __TopXMLNS, _acc) ->
    [encode_groups_badge(Badge, __TopXMLNS) | _acc].

'encode_groups_user_$nickname'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_groups_user_$nickname'(Nickname, __TopXMLNS,
			       _acc) ->
    [encode_groups_nickname(Nickname, __TopXMLNS) | _acc].

'encode_groups_user_$role'(undefined, __TopXMLNS,
			   _acc) ->
    _acc;
'encode_groups_user_$role'(Role, __TopXMLNS, _acc) ->
    [encode_groups_role(Role, __TopXMLNS) | _acc].

'encode_groups_user_$subscription'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_groups_user_$subscription'(Subscription,
				   __TopXMLNS, _acc) ->
    [encode_groups_subscription(Subscription, __TopXMLNS)
     | _acc].

decode_groups_user_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_user_attr_id(__TopXMLNS, _val) -> _val.

encode_groups_user_attr_id(<<>>, _acc) -> _acc;
encode_groups_user_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_search(__TopXMLNS, __Opts,
		     {xmlel, <<"search">>, _attrs, _els}) ->
    {Anonymous, Name, Model, Rsm, Description} =
	decode_groups_search_els(__TopXMLNS, __Opts, _els,
				 undefined, undefined, undefined, undefined,
				 undefined),
    {groups_search, Name, Description, Model, Anonymous,
     Rsm}.

decode_groups_search_els(__TopXMLNS, __Opts, [],
			 Anonymous, Name, Model, Rsm, Description) ->
    {Anonymous, Name, Model, Rsm, Description};
decode_groups_search_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"name">>, _attrs, _} = _el | _els],
			 Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous,
				   decode_groups_name(<<"https://xabber.com/protocol/groups">>,
						      __Opts, _el),
				   Model, Rsm, Description);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous,
				   decode_groups_name(<<"https://xabber.com/protocol/groups#create">>,
						      __Opts, _el),
				   Model, Rsm, Description);
      _ ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model, Rsm, Description)
    end;
decode_groups_search_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"description">>, _attrs, _} = _el | _els],
			 Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model, Rsm,
				   decode_groups_description(<<"https://xabber.com/protocol/groups">>,
							     __Opts, _el));
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model, Rsm,
				   decode_groups_description(<<"https://xabber.com/protocol/groups#create">>,
							     __Opts, _el));
      _ ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model, Rsm, Description)
    end;
decode_groups_search_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"membership">>, _attrs, _} = _el | _els],
			 Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name,
				   decode_groups_membership(<<"https://xabber.com/protocol/groups">>,
							    __Opts, _el),
				   Rsm, Description);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name,
				   decode_groups_membership(<<"https://xabber.com/protocol/groups#create">>,
							    __Opts, _el),
				   Rsm, Description);
      _ ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model, Rsm, Description)
    end;
decode_groups_search_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"index">>, _attrs, _} = _el | _els],
			 Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   decode_groups_index(<<"https://xabber.com/protocol/groups">>,
						       __Opts, _el),
				   Name, Model, Rsm, Description);
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   decode_groups_index(<<"https://xabber.com/protocol/groups#create">>,
						       __Opts, _el),
				   Name, Model, Rsm, Description);
      _ ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model, Rsm, Description)
    end;
decode_groups_search_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"set">>, _attrs, _} = _el | _els],
			 Anonymous, Name, Model, Rsm, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model,
				   xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
							  __Opts, _el),
				   Description);
      _ ->
	  decode_groups_search_els(__TopXMLNS, __Opts, _els,
				   Anonymous, Name, Model, Rsm, Description)
    end;
decode_groups_search_els(__TopXMLNS, __Opts, [_ | _els],
			 Anonymous, Name, Model, Rsm, Description) ->
    decode_groups_search_els(__TopXMLNS, __Opts, _els,
			     Anonymous, Name, Model, Rsm, Description).

encode_groups_search({groups_search, Name, Description,
		      Model, Anonymous, Rsm},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_search_$anonymous'(Anonymous,
							__NewTopXMLNS,
							'encode_groups_search_$name'(Name,
										     __NewTopXMLNS,
										     'encode_groups_search_$model'(Model,
														   __NewTopXMLNS,
														   'encode_groups_search_$rsm'(Rsm,
																	       __NewTopXMLNS,
																	       'encode_groups_search_$description'(Description,
																						   __NewTopXMLNS,
																						   [])))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"search">>, _attrs, _els}.

'encode_groups_search_$anonymous'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_groups_search_$anonymous'(Anonymous, __TopXMLNS,
				  _acc) ->
    [encode_groups_index(Anonymous, __TopXMLNS) | _acc].

'encode_groups_search_$name'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_search_$name'(Name, __TopXMLNS, _acc) ->
    [encode_groups_name(Name, __TopXMLNS) | _acc].

'encode_groups_search_$model'(undefined, __TopXMLNS,
			      _acc) ->
    _acc;
'encode_groups_search_$model'(Model, __TopXMLNS,
			      _acc) ->
    [encode_groups_membership(Model, __TopXMLNS) | _acc].

'encode_groups_search_$rsm'(undefined, __TopXMLNS,
			    _acc) ->
    _acc;
'encode_groups_search_$rsm'(Rsm, __TopXMLNS, _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

'encode_groups_search_$description'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_groups_search_$description'(Description,
				    __TopXMLNS, _acc) ->
    [encode_groups_description(Description, __TopXMLNS)
     | _acc].

decode_groups_block_domain(__TopXMLNS, __Opts,
			   {xmlel, <<"domain">>, _attrs, _els}) ->
    Cdata = decode_groups_block_domain_els(__TopXMLNS,
					   __Opts, _els, <<>>),
    {block_domain, Cdata}.

decode_groups_block_domain_els(__TopXMLNS, __Opts, [],
			       Cdata) ->
    decode_groups_block_domain_cdata(__TopXMLNS, Cdata);
decode_groups_block_domain_els(__TopXMLNS, __Opts,
			       [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_block_domain_els(__TopXMLNS, __Opts, _els,
				   <<Cdata/binary, _data/binary>>);
decode_groups_block_domain_els(__TopXMLNS, __Opts,
			       [_ | _els], Cdata) ->
    decode_groups_block_domain_els(__TopXMLNS, __Opts, _els,
				   Cdata).

encode_groups_block_domain({block_domain, Cdata},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
				    [], __TopXMLNS),
    _els = encode_groups_block_domain_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domain">>, _attrs, _els}.

decode_groups_block_domain_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"domain">>, __TopXMLNS}});
decode_groups_block_domain_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_block_domain_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_block_jid(__TopXMLNS, __Opts,
			{xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_groups_block_jid_els(__TopXMLNS, __Opts,
					_els, <<>>),
    {block_jid, Cdata}.

decode_groups_block_jid_els(__TopXMLNS, __Opts, [],
			    Cdata) ->
    decode_groups_block_jid_cdata(__TopXMLNS, Cdata);
decode_groups_block_jid_els(__TopXMLNS, __Opts,
			    [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_block_jid_els(__TopXMLNS, __Opts, _els,
				<<Cdata/binary, _data/binary>>);
decode_groups_block_jid_els(__TopXMLNS, __Opts,
			    [_ | _els], Cdata) ->
    decode_groups_block_jid_els(__TopXMLNS, __Opts, _els,
				Cdata).

encode_groups_block_jid({block_jid, Cdata},
			__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
				    [], __TopXMLNS),
    _els = encode_groups_block_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_groups_block_jid_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_groups_block_jid_cdata(__TopXMLNS, _val) -> _val.

encode_groups_block_jid_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_block_id(__TopXMLNS, __Opts,
		       {xmlel, <<"id">>, _attrs, _els}) ->
    Cdata = decode_groups_block_id_els(__TopXMLNS, __Opts,
				       _els, <<>>),
    {block_id, Cdata}.

decode_groups_block_id_els(__TopXMLNS, __Opts, [],
			   Cdata) ->
    decode_groups_block_id_cdata(__TopXMLNS, Cdata);
decode_groups_block_id_els(__TopXMLNS, __Opts,
			   [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_block_id_els(__TopXMLNS, __Opts, _els,
			       <<Cdata/binary, _data/binary>>);
decode_groups_block_id_els(__TopXMLNS, __Opts,
			   [_ | _els], Cdata) ->
    decode_groups_block_id_els(__TopXMLNS, __Opts, _els,
			       Cdata).

encode_groups_block_id({block_id, Cdata}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
				    [], __TopXMLNS),
    _els = encode_groups_block_id_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"id">>, _attrs, _els}.

decode_groups_block_id_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"id">>, __TopXMLNS}});
decode_groups_block_id_cdata(__TopXMLNS, _val) -> _val.

encode_groups_block_id_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_unblock(__TopXMLNS, __Opts,
		      {xmlel, <<"unblock">>, _attrs, _els}) ->
    {Jid, Id, Domain} =
	decode_groups_unblock_els(__TopXMLNS, __Opts, _els, [],
				  [], []),
    {groups_unblock, Id, Jid, Domain}.

decode_groups_unblock_els(__TopXMLNS, __Opts, [], Jid,
			  Id, Domain) ->
    {lists:reverse(Jid), lists:reverse(Id),
     lists:reverse(Domain)};
decode_groups_unblock_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"id">>, _attrs, _} = _el | _els], Jid, Id,
			  Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els, Jid,
				    [decode_groups_block_id(<<"https://xabber.com/protocol/groups#block">>,
							    __Opts, _el)
				     | Id],
				    Domain);
      _ ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els, Jid,
				    Id, Domain)
    end;
decode_groups_unblock_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jid, Id,
			  Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els,
				    [decode_groups_block_jid(<<"https://xabber.com/protocol/groups#block">>,
							     __Opts, _el)
				     | Jid],
				    Id, Domain);
      _ ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els, Jid,
				    Id, Domain)
    end;
decode_groups_unblock_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"domain">>, _attrs, _} = _el | _els], Jid,
			  Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els, Jid,
				    Id,
				    [decode_groups_block_domain(<<"https://xabber.com/protocol/groups#block">>,
								__Opts, _el)
				     | Domain]);
      _ ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els, Jid,
				    Id, Domain)
    end;
decode_groups_unblock_els(__TopXMLNS, __Opts,
			  [_ | _els], Jid, Id, Domain) ->
    decode_groups_unblock_els(__TopXMLNS, __Opts, _els, Jid,
			      Id, Domain).

encode_groups_unblock({groups_unblock, Id, Jid, Domain},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_unblock_$jid'(Jid,
						      __NewTopXMLNS,
						      'encode_groups_unblock_$id'(Id,
										  __NewTopXMLNS,
										  'encode_groups_unblock_$domain'(Domain,
														  __NewTopXMLNS,
														  [])))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unblock">>, _attrs, _els}.

'encode_groups_unblock_$jid'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_unblock_$jid'([Jid | _els], __TopXMLNS,
			     _acc) ->
    'encode_groups_unblock_$jid'(_els, __TopXMLNS,
				 [encode_groups_block_jid(Jid, __TopXMLNS)
				  | _acc]).

'encode_groups_unblock_$id'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_unblock_$id'([Id | _els], __TopXMLNS,
			    _acc) ->
    'encode_groups_unblock_$id'(_els, __TopXMLNS,
				[encode_groups_block_id(Id, __TopXMLNS)
				 | _acc]).

'encode_groups_unblock_$domain'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_unblock_$domain'([Domain | _els],
				__TopXMLNS, _acc) ->
    'encode_groups_unblock_$domain'(_els, __TopXMLNS,
				    [encode_groups_block_domain(Domain,
								__TopXMLNS)
				     | _acc]).

decode_groups_block(__TopXMLNS, __Opts,
		    {xmlel, <<"block">>, _attrs, _els}) ->
    {Jid, Id, Domain} = decode_groups_block_els(__TopXMLNS,
						__Opts, _els, [], [], []),
    {groups_block, Id, Jid, Domain}.

decode_groups_block_els(__TopXMLNS, __Opts, [], Jid, Id,
			Domain) ->
    {lists:reverse(Jid), lists:reverse(Id),
     lists:reverse(Domain)};
decode_groups_block_els(__TopXMLNS, __Opts,
			[{xmlel, <<"id">>, _attrs, _} = _el | _els], Jid, Id,
			Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els, Jid,
				  [decode_groups_block_id(<<"https://xabber.com/protocol/groups#block">>,
							  __Opts, _el)
				   | Id],
				  Domain);
      _ ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els, Jid,
				  Id, Domain)
    end;
decode_groups_block_els(__TopXMLNS, __Opts,
			[{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jid, Id,
			Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els,
				  [decode_groups_block_jid(<<"https://xabber.com/protocol/groups#block">>,
							   __Opts, _el)
				   | Jid],
				  Id, Domain);
      _ ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els, Jid,
				  Id, Domain)
    end;
decode_groups_block_els(__TopXMLNS, __Opts,
			[{xmlel, <<"domain">>, _attrs, _} = _el | _els], Jid,
			Id, Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#block">> ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els, Jid,
				  Id,
				  [decode_groups_block_domain(<<"https://xabber.com/protocol/groups#block">>,
							      __Opts, _el)
				   | Domain]);
      _ ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els, Jid,
				  Id, Domain)
    end;
decode_groups_block_els(__TopXMLNS, __Opts, [_ | _els],
			Jid, Id, Domain) ->
    decode_groups_block_els(__TopXMLNS, __Opts, _els, Jid,
			    Id, Domain).

encode_groups_block({groups_block, Id, Jid, Domain},
		    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#block">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_block_$jid'(Jid,
						    __NewTopXMLNS,
						    'encode_groups_block_$id'(Id,
									      __NewTopXMLNS,
									      'encode_groups_block_$domain'(Domain,
													    __NewTopXMLNS,
													    [])))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"block">>, _attrs, _els}.

'encode_groups_block_$jid'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_block_$jid'([Jid | _els], __TopXMLNS,
			   _acc) ->
    'encode_groups_block_$jid'(_els, __TopXMLNS,
			       [encode_groups_block_jid(Jid, __TopXMLNS)
				| _acc]).

'encode_groups_block_$id'([], __TopXMLNS, _acc) -> _acc;
'encode_groups_block_$id'([Id | _els], __TopXMLNS,
			  _acc) ->
    'encode_groups_block_$id'(_els, __TopXMLNS,
			      [encode_groups_block_id(Id, __TopXMLNS) | _acc]).

'encode_groups_block_$domain'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_block_$domain'([Domain | _els],
			      __TopXMLNS, _acc) ->
    'encode_groups_block_$domain'(_els, __TopXMLNS,
				  [encode_groups_block_domain(Domain,
							      __TopXMLNS)
				   | _acc]).

decode_groups_user_id(__TopXMLNS, __Opts,
		      {xmlel, <<"id">>, _attrs, _els}) ->
    Cdata = decode_groups_user_id_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    {groups_user_id, Cdata}.

decode_groups_user_id_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_groups_user_id_cdata(__TopXMLNS, Cdata);
decode_groups_user_id_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_user_id_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_groups_user_id_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_groups_user_id_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_groups_user_id({groups_user_id, Cdata},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_user_id_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"id">>, _attrs, _els}.

decode_groups_user_id_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"id">>, __TopXMLNS}});
decode_groups_user_id_cdata(__TopXMLNS, _val) -> _val.

encode_groups_user_id_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_kick(__TopXMLNS, __Opts,
		   {xmlel, <<"kick">>, _attrs, _els}) ->
    {Jids, Ids} = decode_groups_kick_els(__TopXMLNS, __Opts,
					 _els, [], []),
    {groups_kick, Ids, Jids}.

decode_groups_kick_els(__TopXMLNS, __Opts, [], Jids,
		       Ids) ->
    {lists:reverse(Jids), lists:reverse(Ids)};
decode_groups_kick_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"id">>, _attrs, _} = _el | _els], Jids,
		       Ids) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_kick_els(__TopXMLNS, __Opts, _els, Jids,
				 [decode_groups_user_id(<<"https://xabber.com/protocol/groups">>,
							__Opts, _el)
				  | Ids]);
      _ ->
	  decode_groups_kick_els(__TopXMLNS, __Opts, _els, Jids,
				 Ids)
    end;
decode_groups_kick_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jids,
		       Ids) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_kick_els(__TopXMLNS, __Opts, _els,
				 [decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						    __Opts, _el)
				  | Jids],
				 Ids);
      _ ->
	  decode_groups_kick_els(__TopXMLNS, __Opts, _els, Jids,
				 Ids)
    end;
decode_groups_kick_els(__TopXMLNS, __Opts, [_ | _els],
		       Jids, Ids) ->
    decode_groups_kick_els(__TopXMLNS, __Opts, _els, Jids,
			   Ids).

encode_groups_kick({groups_kick, Ids, Jids},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_kick_$jids'(Jids,
						    __NewTopXMLNS,
						    'encode_groups_kick_$ids'(Ids,
									      __NewTopXMLNS,
									      []))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"kick">>, _attrs, _els}.

'encode_groups_kick_$jids'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_kick_$jids'([Jids | _els], __TopXMLNS,
			   _acc) ->
    'encode_groups_kick_$jids'(_els, __TopXMLNS,
			       [encode_groups_jid(Jids, __TopXMLNS) | _acc]).

'encode_groups_kick_$ids'([], __TopXMLNS, _acc) -> _acc;
'encode_groups_kick_$ids'([Ids | _els], __TopXMLNS,
			  _acc) ->
    'encode_groups_kick_$ids'(_els, __TopXMLNS,
			      [encode_groups_user_id(Ids, __TopXMLNS) | _acc]).

decode_groups_x_present(__TopXMLNS, __Opts,
			{xmlel, <<"present">>, _attrs, _els}) ->
    Cdata = decode_groups_x_present_els(__TopXMLNS, __Opts,
					_els, <<>>),
    Cdata.

decode_groups_x_present_els(__TopXMLNS, __Opts, [],
			    Cdata) ->
    decode_groups_x_present_cdata(__TopXMLNS, Cdata);
decode_groups_x_present_els(__TopXMLNS, __Opts,
			    [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_x_present_els(__TopXMLNS, __Opts, _els,
				<<Cdata/binary, _data/binary>>);
decode_groups_x_present_els(__TopXMLNS, __Opts,
			    [_ | _els], Cdata) ->
    decode_groups_x_present_els(__TopXMLNS, __Opts, _els,
				Cdata).

encode_groups_x_present(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_x_present_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"present">>, _attrs, _els}.

decode_groups_x_present_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_x_present_cdata(__TopXMLNS, _val) -> _val.

encode_groups_x_present_cdata(<<>>, _acc) -> _acc;
encode_groups_x_present_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_x_members(__TopXMLNS, __Opts,
			{xmlel, <<"members">>, _attrs, _els}) ->
    Cdata = decode_groups_x_members_els(__TopXMLNS, __Opts,
					_els, <<>>),
    Cdata.

decode_groups_x_members_els(__TopXMLNS, __Opts, [],
			    Cdata) ->
    decode_groups_x_members_cdata(__TopXMLNS, Cdata);
decode_groups_x_members_els(__TopXMLNS, __Opts,
			    [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_x_members_els(__TopXMLNS, __Opts, _els,
				<<Cdata/binary, _data/binary>>);
decode_groups_x_members_els(__TopXMLNS, __Opts,
			    [_ | _els], Cdata) ->
    decode_groups_x_members_els(__TopXMLNS, __Opts, _els,
				Cdata).

encode_groups_x_members(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_x_members_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"members">>, _attrs, _els}.

decode_groups_x_members_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_x_members_cdata(__TopXMLNS, _val) -> _val.

encode_groups_x_members_cdata(<<>>, _acc) -> _acc;
encode_groups_x_members_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_ptp(__TopXMLNS, __Opts,
		  {xmlel, <<"peer-to-peer">>, _attrs, _els}) ->
    Cdata = decode_groups_ptp_els(__TopXMLNS, __Opts, _els,
				  <<>>),
    {Jid, Id} = decode_groups_ptp_attrs(__TopXMLNS, _attrs,
					undefined, undefined),
    {groups_ptp, Jid, Id, Cdata}.

decode_groups_ptp_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_groups_ptp_cdata(__TopXMLNS, Cdata);
decode_groups_ptp_els(__TopXMLNS, __Opts,
		      [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_ptp_els(__TopXMLNS, __Opts, _els,
			  <<Cdata/binary, _data/binary>>);
decode_groups_ptp_els(__TopXMLNS, __Opts, [_ | _els],
		      Cdata) ->
    decode_groups_ptp_els(__TopXMLNS, __Opts, _els, Cdata).

decode_groups_ptp_attrs(__TopXMLNS,
			[{<<"jid">>, _val} | _attrs], _Jid, Id) ->
    decode_groups_ptp_attrs(__TopXMLNS, _attrs, _val, Id);
decode_groups_ptp_attrs(__TopXMLNS,
			[{<<"id">>, _val} | _attrs], Jid, _Id) ->
    decode_groups_ptp_attrs(__TopXMLNS, _attrs, Jid, _val);
decode_groups_ptp_attrs(__TopXMLNS, [_ | _attrs], Jid,
			Id) ->
    decode_groups_ptp_attrs(__TopXMLNS, _attrs, Jid, Id);
decode_groups_ptp_attrs(__TopXMLNS, [], Jid, Id) ->
    {decode_groups_ptp_attr_jid(__TopXMLNS, Jid),
     decode_groups_ptp_attr_id(__TopXMLNS, Id)}.

encode_groups_ptp({groups_ptp, Jid, Id, Cdata},
		  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#create">>,
				    [], __TopXMLNS),
    _els = encode_groups_ptp_cdata(Cdata, []),
    _attrs = encode_groups_ptp_attr_id(Id,
				       encode_groups_ptp_attr_jid(Jid,
								  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
											     __TopXMLNS))),
    {xmlel, <<"peer-to-peer">>, _attrs, _els}.

decode_groups_ptp_attr_jid(__TopXMLNS, undefined) ->
    undefined;
decode_groups_ptp_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"peer-to-peer">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_ptp_attr_jid(undefined, _acc) -> _acc;
encode_groups_ptp_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_groups_ptp_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_ptp_attr_id(__TopXMLNS, _val) -> _val.

encode_groups_ptp_attr_id(<<>>, _acc) -> _acc;
encode_groups_ptp_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_ptp_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_ptp_cdata(__TopXMLNS, _val) -> _val.

encode_groups_ptp_cdata(<<>>, _acc) -> _acc;
encode_groups_ptp_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_jid(__TopXMLNS, __Opts,
		  {xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_groups_jid_els(__TopXMLNS, __Opts, _els,
				  <<>>),
    Cdata.

decode_groups_jid_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_groups_jid_cdata(__TopXMLNS, Cdata);
decode_groups_jid_els(__TopXMLNS, __Opts,
		      [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_jid_els(__TopXMLNS, __Opts, _els,
			  <<Cdata/binary, _data/binary>>);
decode_groups_jid_els(__TopXMLNS, __Opts, [_ | _els],
		      Cdata) ->
    decode_groups_jid_els(__TopXMLNS, __Opts, _els, Cdata).

encode_groups_jid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_groups_jid_cdata(__TopXMLNS, <<>>) -> undefined;
decode_groups_jid_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"jid">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_jid_cdata(undefined, _acc) -> _acc;
encode_groups_jid_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_groups_x_parent_chat(__TopXMLNS, __Opts,
			    {xmlel, <<"parent-chat">>, _attrs, _els}) ->
    Cdata = decode_groups_x_parent_chat_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    Cdata.

decode_groups_x_parent_chat_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_groups_x_parent_chat_cdata(__TopXMLNS, Cdata);
decode_groups_x_parent_chat_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_x_parent_chat_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_groups_x_parent_chat_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_groups_x_parent_chat_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_groups_x_parent_chat(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_x_parent_chat_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"parent-chat">>, _attrs, _els}.

decode_groups_x_parent_chat_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_groups_x_parent_chat_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"parent-chat">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_x_parent_chat_cdata(undefined, _acc) ->
    _acc;
encode_groups_x_parent_chat_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_groups_x(__TopXMLNS, __Opts,
		{xmlel, <<"x">>, _attrs, _els}) ->
    {Members, Jid, Parent, Present, __Els} =
	decode_groups_x_els(__TopXMLNS, __Opts, _els, undefined,
			    undefined, undefined, undefined, []),
    {Xmlns, Type, Version} =
	decode_groups_x_attrs(__TopXMLNS, _attrs, undefined,
			      undefined, undefined),
    {groups_x, Xmlns, Type, Version, Members, Present,
     Parent, Jid, __Els}.

decode_groups_x_els(__TopXMLNS, __Opts, [], Members,
		    Jid, Parent, Present, __Els) ->
    {Members, Jid, Parent, Present, lists:reverse(__Els)};
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, <<"members">>, _attrs, _} = _el | _els],
		    Members, Jid, Parent, Present, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els,
			      decode_groups_x_members(<<"https://xabber.com/protocol/groups">>,
						      __Opts, _el),
			      Jid, Parent, Present, __Els);
      _ ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      Jid, Parent, Present, [_el | __Els])
    end;
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, <<"present">>, _attrs, _} = _el | _els],
		    Members, Jid, Parent, Present, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      Jid, Parent,
			      decode_groups_x_present(<<"https://xabber.com/protocol/groups">>,
						      __Opts, _el),
			      __Els);
      _ ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      Jid, Parent, Present, [_el | __Els])
    end;
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, <<"parent-chat">>, _attrs, _} = _el | _els],
		    Members, Jid, Parent, Present, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      Jid,
			      decode_groups_x_parent_chat(<<"https://xabber.com/protocol/groups">>,
							  __Opts, _el),
			      Present, __Els);
      _ ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      Jid, Parent, Present, [_el | __Els])
    end;
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Members,
		    Jid, Parent, Present, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						__Opts, _el),
			      Parent, Present, __Els);
      _ ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      Jid, Parent, Present, [_el | __Els])
    end;
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, _name, _attrs, _} = _el | _els], Members, Jid,
		    Parent, Present, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			      Jid, Parent, Present, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
				    Jid, Parent, Present, [_el | __Els]);
	    Mod ->
		decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
				    Jid, Parent, Present,
				    [Mod:do_decode(_name, __XMLNS, _el, __Opts)
				     | __Els])
	  end
    end;
decode_groups_x_els(__TopXMLNS, __Opts, [_ | _els],
		    Members, Jid, Parent, Present, __Els) ->
    decode_groups_x_els(__TopXMLNS, __Opts, _els, Members,
			Jid, Parent, Present, __Els).

decode_groups_x_attrs(__TopXMLNS,
		      [{<<"xmlns">>, _val} | _attrs], _Xmlns, Type,
		      Version) ->
    decode_groups_x_attrs(__TopXMLNS, _attrs, _val, Type,
			  Version);
decode_groups_x_attrs(__TopXMLNS,
		      [{<<"type">>, _val} | _attrs], Xmlns, _Type, Version) ->
    decode_groups_x_attrs(__TopXMLNS, _attrs, Xmlns, _val,
			  Version);
decode_groups_x_attrs(__TopXMLNS,
		      [{<<"version">>, _val} | _attrs], Xmlns, Type,
		      _Version) ->
    decode_groups_x_attrs(__TopXMLNS, _attrs, Xmlns, Type,
			  _val);
decode_groups_x_attrs(__TopXMLNS, [_ | _attrs], Xmlns,
		      Type, Version) ->
    decode_groups_x_attrs(__TopXMLNS, _attrs, Xmlns, Type,
			  Version);
decode_groups_x_attrs(__TopXMLNS, [], Xmlns, Type,
		      Version) ->
    {decode_groups_x_attr_xmlns(__TopXMLNS, Xmlns),
     decode_groups_x_attr_type(__TopXMLNS, Type),
     decode_groups_x_attr_version(__TopXMLNS, Version)}.

encode_groups_x({groups_x, Xmlns, Type, Version,
		 Members, Present, Parent, Jid, __Els},
		__TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/groups">>,
						 <<"https://xabber.com/protocol/groups#system-mes"
						   "sage">>,
						 <<"https://xabber.com/protocol/groups#create">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_groups_x_$members'(Members,
						      __NewTopXMLNS,
						      'encode_groups_x_$jid'(Jid,
									     __NewTopXMLNS,
									     'encode_groups_x_$parent'(Parent,
												       __NewTopXMLNS,
												       'encode_groups_x_$present'(Present,
																  __NewTopXMLNS,
																  []))))),
    _attrs = encode_groups_x_attr_version(Version,
					  encode_groups_x_attr_type(Type,
								    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
											       __TopXMLNS))),
    {xmlel, <<"x">>, _attrs, _els}.

'encode_groups_x_$members'(undefined, __TopXMLNS,
			   _acc) ->
    _acc;
'encode_groups_x_$members'(Members, __TopXMLNS, _acc) ->
    [encode_groups_x_members(Members, __TopXMLNS) | _acc].

'encode_groups_x_$jid'(undefined, __TopXMLNS, _acc) ->
    _acc;
'encode_groups_x_$jid'(Jid, __TopXMLNS, _acc) ->
    [encode_groups_jid(Jid, __TopXMLNS) | _acc].

'encode_groups_x_$parent'(undefined, __TopXMLNS,
			  _acc) ->
    _acc;
'encode_groups_x_$parent'(Parent, __TopXMLNS, _acc) ->
    [encode_groups_x_parent_chat(Parent, __TopXMLNS)
     | _acc].

'encode_groups_x_$present'(undefined, __TopXMLNS,
			   _acc) ->
    _acc;
'encode_groups_x_$present'(Present, __TopXMLNS, _acc) ->
    [encode_groups_x_present(Present, __TopXMLNS) | _acc].

decode_groups_x_attr_xmlns(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_x_attr_xmlns(__TopXMLNS, _val) -> _val.

decode_groups_x_attr_type(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_x_attr_type(__TopXMLNS, _val) -> _val.

encode_groups_x_attr_type(<<>>, _acc) -> _acc;
encode_groups_x_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_groups_x_attr_version(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_x_attr_version(__TopXMLNS, _val) -> _val.

encode_groups_x_attr_version(<<>>, _acc) -> _acc;
encode_groups_x_attr_version(_val, _acc) ->
    [{<<"version">>, _val} | _acc].

decode_groups_update(__TopXMLNS, __Opts,
		     {xmlel, <<"update">>, _attrs, _els}) ->
    Pinned = decode_groups_update_els(__TopXMLNS, __Opts,
				      _els, undefined),
    {groups_update, Pinned}.

decode_groups_update_els(__TopXMLNS, __Opts, [],
			 Pinned) ->
    Pinned;
decode_groups_update_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"pinned-message">>, _attrs, _} = _el
			  | _els],
			 Pinned) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_update_els(__TopXMLNS, __Opts, _els,
				   decode_groups_pinned_message(<<"https://xabber.com/protocol/groups">>,
								__Opts, _el));
      <<"https://xabber.com/protocol/groups#create">> ->
	  decode_groups_update_els(__TopXMLNS, __Opts, _els,
				   decode_groups_pinned_message(<<"https://xabber.com/protocol/groups#create">>,
								__Opts, _el));
      _ ->
	  decode_groups_update_els(__TopXMLNS, __Opts, _els,
				   Pinned)
    end;
decode_groups_update_els(__TopXMLNS, __Opts, [_ | _els],
			 Pinned) ->
    decode_groups_update_els(__TopXMLNS, __Opts, _els,
			     Pinned).

encode_groups_update({groups_update, Pinned},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_update_$pinned'(Pinned,
						     __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"update">>, _attrs, _els}.

'encode_groups_update_$pinned'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_groups_update_$pinned'(Pinned, __TopXMLNS,
			       _acc) ->
    [encode_groups_pinned_message(Pinned, __TopXMLNS)
     | _acc].

decode_groups_query_rights(__TopXMLNS, __Opts,
			   {xmlel, <<"query">>, _attrs, _els}) ->
    __Els = decode_groups_query_rights_els(__TopXMLNS,
					   __Opts, _els, []),
    {groups_query_rights, __Els}.

decode_groups_query_rights_els(__TopXMLNS, __Opts, [],
			       __Els) ->
    lists:reverse(__Els);
decode_groups_query_rights_els(__TopXMLNS, __Opts,
			       [{xmlel, _name, _attrs, _} = _el | _els],
			       __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_groups_query_rights_els(__TopXMLNS, __Opts, _els,
					 [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_groups_query_rights_els(__TopXMLNS, __Opts, _els,
					       [_el | __Els]);
	    Mod ->
		decode_groups_query_rights_els(__TopXMLNS, __Opts, _els,
					       [Mod:do_decode(_name, __XMLNS,
							      _el, __Opts)
						| __Els])
	  end
    end;
decode_groups_query_rights_els(__TopXMLNS, __Opts,
			       [_ | _els], __Els) ->
    decode_groups_query_rights_els(__TopXMLNS, __Opts, _els,
				   __Els).

encode_groups_query_rights({groups_query_rights, __Els},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#rights">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

decode_groups_invite_user(__TopXMLNS, __Opts,
			  {xmlel, <<"user">>, _attrs, _els}) ->
    {Id, Jid} = decode_groups_invite_user_attrs(__TopXMLNS,
						_attrs, undefined, undefined),
    {groups_invite_user, Jid, Id}.

decode_groups_invite_user_attrs(__TopXMLNS,
				[{<<"id">>, _val} | _attrs], _Id, Jid) ->
    decode_groups_invite_user_attrs(__TopXMLNS, _attrs,
				    _val, Jid);
decode_groups_invite_user_attrs(__TopXMLNS,
				[{<<"jid">>, _val} | _attrs], Id, _Jid) ->
    decode_groups_invite_user_attrs(__TopXMLNS, _attrs, Id,
				    _val);
decode_groups_invite_user_attrs(__TopXMLNS,
				[_ | _attrs], Id, Jid) ->
    decode_groups_invite_user_attrs(__TopXMLNS, _attrs, Id,
				    Jid);
decode_groups_invite_user_attrs(__TopXMLNS, [], Id,
				Jid) ->
    {decode_groups_invite_user_attr_id(__TopXMLNS, Id),
     decode_groups_invite_user_attr_jid(__TopXMLNS, Jid)}.

encode_groups_invite_user({groups_invite_user, Jid, Id},
			  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_groups_invite_user_attr_jid(Jid,
						encode_groups_invite_user_attr_id(Id,
										  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
													     __TopXMLNS))),
    {xmlel, <<"user">>, _attrs, _els}.

decode_groups_invite_user_attr_id(__TopXMLNS,
				  undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"user">>, __TopXMLNS}});
decode_groups_invite_user_attr_id(__TopXMLNS, _val) ->
    _val.

encode_groups_invite_user_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_invite_user_attr_jid(__TopXMLNS,
				   undefined) ->
    <<>>;
decode_groups_invite_user_attr_jid(__TopXMLNS, _val) ->
    _val.

encode_groups_invite_user_attr_jid(<<>>, _acc) -> _acc;
encode_groups_invite_user_attr_jid(_val, _acc) ->
    [{<<"jid">>, _val} | _acc].

decode_groups_invite_jid(__TopXMLNS, __Opts,
			 {xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_groups_invite_jid_els(__TopXMLNS, __Opts,
					 _els, <<>>),
    Cdata.

decode_groups_invite_jid_els(__TopXMLNS, __Opts, [],
			     Cdata) ->
    decode_groups_invite_jid_cdata(__TopXMLNS, Cdata);
decode_groups_invite_jid_els(__TopXMLNS, __Opts,
			     [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_invite_jid_els(__TopXMLNS, __Opts, _els,
				 <<Cdata/binary, _data/binary>>);
decode_groups_invite_jid_els(__TopXMLNS, __Opts,
			     [_ | _els], Cdata) ->
    decode_groups_invite_jid_els(__TopXMLNS, __Opts, _els,
				 Cdata).

encode_groups_invite_jid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els = encode_groups_invite_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_groups_invite_jid_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_groups_invite_jid_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_invite_jid_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_invite_send(__TopXMLNS, __Opts,
			  {xmlel, <<"send">>, _attrs, _els}) ->
    Cdata = decode_groups_invite_send_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    Cdata.

decode_groups_invite_send_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_groups_invite_send_cdata(__TopXMLNS, Cdata);
decode_groups_invite_send_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_invite_send_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_groups_invite_send_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_groups_invite_send_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_groups_invite_send(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els = encode_groups_invite_send_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"send">>, _attrs, _els}.

decode_groups_invite_send_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"send">>, __TopXMLNS}});
decode_groups_invite_send_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_invite_send_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_invite_reason(__TopXMLNS, __Opts,
			    {xmlel, <<"reason">>, _attrs, _els}) ->
    Cdata = decode_groups_invite_reason_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    Cdata.

decode_groups_invite_reason_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_groups_invite_reason_cdata(__TopXMLNS, Cdata);
decode_groups_invite_reason_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_invite_reason_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_groups_invite_reason_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_groups_invite_reason_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_groups_invite_reason(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els = encode_groups_invite_reason_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"reason">>, _attrs, _els}.

decode_groups_invite_reason_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"reason">>, __TopXMLNS}});
decode_groups_invite_reason_cdata(__TopXMLNS, _val) ->
    _val.

encode_groups_invite_reason_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_decline(__TopXMLNS, __Opts,
		      {xmlel, <<"decline">>, _attrs, _els}) ->
    {groups_decline}.

encode_groups_decline({groups_decline}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"decline">>, _attrs, _els}.

decode_groups_revoke(__TopXMLNS, __Opts,
		     {xmlel, <<"revoke">>, _attrs, _els}) ->
    Jid = decode_groups_revoke_els(__TopXMLNS, __Opts, _els,
				   error),
    {groups_revoke, Jid}.

decode_groups_revoke_els(__TopXMLNS, __Opts, [], Jid) ->
    case Jid of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"jid">>, __TopXMLNS}});
      {value, Jid1} -> Jid1
    end;
decode_groups_revoke_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jid) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_groups_revoke_els(__TopXMLNS, __Opts, _els,
				   {value,
				    decode_groups_invite_jid(<<"https://xabber.com/protocol/groups#invite">>,
							     __Opts, _el)});
      _ ->
	  decode_groups_revoke_els(__TopXMLNS, __Opts, _els, Jid)
    end;
decode_groups_revoke_els(__TopXMLNS, __Opts, [_ | _els],
			 Jid) ->
    decode_groups_revoke_els(__TopXMLNS, __Opts, _els, Jid).

encode_groups_revoke({groups_revoke, Jid},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_revoke_$jid'(Jid,
						     __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"revoke">>, _attrs, _els}.

'encode_groups_revoke_$jid'(Jid, __TopXMLNS, _acc) ->
    [encode_groups_invite_jid(Jid, __TopXMLNS) | _acc].

decode_groups_invite(__TopXMLNS, __Opts,
		     {xmlel, <<"invite">>, _attrs, _els}) ->
    {User, Send, Invite_jid, Reason} =
	decode_groups_invite_els(__TopXMLNS, __Opts, _els,
				 undefined, undefined, undefined, undefined),
    Jid = decode_groups_invite_attrs(__TopXMLNS, _attrs,
				     undefined),
    {groups_invite, Jid, Invite_jid, Send, Reason, User}.

decode_groups_invite_els(__TopXMLNS, __Opts, [], User,
			 Send, Invite_jid, Reason) ->
    {User, Send, Invite_jid, Reason};
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"jid">>, _attrs, _} = _el | _els], User,
			 Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send,
				   decode_groups_invite_jid(<<"https://xabber.com/protocol/groups#invite">>,
							    __Opts, _el),
				   Reason);
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Invite_jid, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"send">>, _attrs, _} = _el | _els], User,
			 Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   decode_groups_invite_send(<<"https://xabber.com/protocol/groups#invite">>,
							     __Opts, _el),
				   Invite_jid, Reason);
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Invite_jid, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"user">>, _attrs, _} = _el | _els], User,
			 Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els,
				   decode_groups_invite_user(<<"https://xabber.com/protocol/groups#invite">>,
							     __Opts, _el),
				   Send, Invite_jid, Reason);
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Invite_jid, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"reason">>, _attrs, _} = _el | _els], User,
			 Send, Invite_jid, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Invite_jid,
				   decode_groups_invite_reason(<<"https://xabber.com/protocol/groups#invite">>,
							       __Opts, _el));
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Invite_jid, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts, [_ | _els],
			 User, Send, Invite_jid, Reason) ->
    decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
			     Send, Invite_jid, Reason).

decode_groups_invite_attrs(__TopXMLNS,
			   [{<<"jid">>, _val} | _attrs], _Jid) ->
    decode_groups_invite_attrs(__TopXMLNS, _attrs, _val);
decode_groups_invite_attrs(__TopXMLNS, [_ | _attrs],
			   Jid) ->
    decode_groups_invite_attrs(__TopXMLNS, _attrs, Jid);
decode_groups_invite_attrs(__TopXMLNS, [], Jid) ->
    decode_groups_invite_attr_jid(__TopXMLNS, Jid).

encode_groups_invite({groups_invite, Jid, Invite_jid,
		      Send, Reason, User},
		     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/groups#invite">>],
						__TopXMLNS),
    _els = lists:reverse('encode_groups_invite_$user'(User,
						      __NewTopXMLNS,
						      'encode_groups_invite_$send'(Send,
										   __NewTopXMLNS,
										   'encode_groups_invite_$invite_jid'(Invite_jid,
														      __NewTopXMLNS,
														      'encode_groups_invite_$reason'(Reason,
																		     __NewTopXMLNS,
																		     []))))),
    _attrs = encode_groups_invite_attr_jid(Jid,
					   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								      __TopXMLNS)),
    {xmlel, <<"invite">>, _attrs, _els}.

'encode_groups_invite_$user'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_invite_$user'(User, __TopXMLNS, _acc) ->
    [encode_groups_invite_user(User, __TopXMLNS) | _acc].

'encode_groups_invite_$send'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_invite_$send'(Send, __TopXMLNS, _acc) ->
    [encode_groups_invite_send(Send, __TopXMLNS) | _acc].

'encode_groups_invite_$invite_jid'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_groups_invite_$invite_jid'(Invite_jid,
				   __TopXMLNS, _acc) ->
    [encode_groups_invite_jid(Invite_jid, __TopXMLNS)
     | _acc].

'encode_groups_invite_$reason'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_groups_invite_$reason'(Reason, __TopXMLNS,
			       _acc) ->
    [encode_groups_invite_reason(Reason, __TopXMLNS)
     | _acc].

decode_groups_invite_attr_jid(__TopXMLNS, undefined) ->
    undefined;
decode_groups_invite_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"invite">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_invite_attr_jid(undefined, _acc) -> _acc;
encode_groups_invite_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_groups_query_invites(__TopXMLNS, __Opts,
			    {xmlel, <<"query">>, _attrs, _els}) ->
    Users = decode_groups_query_invites_els(__TopXMLNS,
					    __Opts, _els, []),
    {groups_query_invites, Users}.

decode_groups_query_invites_els(__TopXMLNS, __Opts, [],
				Users) ->
    lists:reverse(Users);
decode_groups_query_invites_els(__TopXMLNS, __Opts,
				[{xmlel, <<"user">>, _attrs, _} = _el | _els],
				Users) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_groups_query_invites_els(__TopXMLNS, __Opts,
					  _els,
					  [decode_groups_invite_user(<<"https://xabber.com/protocol/groups#invite">>,
								     __Opts,
								     _el)
					   | Users]);
      _ ->
	  decode_groups_query_invites_els(__TopXMLNS, __Opts,
					  _els, Users)
    end;
decode_groups_query_invites_els(__TopXMLNS, __Opts,
				[_ | _els], Users) ->
    decode_groups_query_invites_els(__TopXMLNS, __Opts,
				    _els, Users).

encode_groups_query_invites({groups_query_invites,
			     Users},
			    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_query_invites_$users'(Users,
							   __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_groups_query_invites_$users'([], __TopXMLNS,
				     _acc) ->
    _acc;
'encode_groups_query_invites_$users'([Users | _els],
				     __TopXMLNS, _acc) ->
    'encode_groups_query_invites_$users'(_els, __TopXMLNS,
					 [encode_groups_invite_user(Users,
								    __TopXMLNS)
					  | _acc]).

decode_groups_collect(__TopXMLNS, __Opts,
		      {xmlel, <<"collect">>, _attrs, _els}) ->
    Cdata = decode_groups_collect_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    {groups_collect, Cdata}.

decode_groups_collect_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_groups_collect_cdata(__TopXMLNS, Cdata);
decode_groups_collect_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_collect_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_groups_collect_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_groups_collect_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_groups_collect({groups_collect, Cdata},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_collect_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"collect">>, _attrs, _els}.

decode_groups_collect_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_collect_cdata(__TopXMLNS, _val) -> _val.

encode_groups_collect_cdata(<<>>, _acc) -> _acc;
encode_groups_collect_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_echo(__TopXMLNS, __Opts,
		   {xmlel, <<"echo">>, _attrs, _els}) ->
    Message = decode_groups_echo_els(__TopXMLNS, __Opts,
				     _els, error),
    {groups_echo, Message}.

decode_groups_echo_els(__TopXMLNS, __Opts, [],
		       Message) ->
    case Message of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"message">>, __TopXMLNS}});
      {value, Message1} -> Message1
    end;
decode_groups_echo_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"message">>, _attrs, _} = _el | _els],
		       Message) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"jabber:client">> ->
	  decode_groups_echo_els(__TopXMLNS, __Opts, _els,
				 {value,
				  rfc6120:decode_message(<<"jabber:client">>,
							 __Opts, _el)});
      <<"jabber:server">> ->
	  decode_groups_echo_els(__TopXMLNS, __Opts, _els,
				 {value,
				  rfc6120:decode_message(<<"jabber:server">>,
							 __Opts, _el)});
      <<"jabber:component:accept">> ->
	  decode_groups_echo_els(__TopXMLNS, __Opts, _els,
				 {value,
				  rfc6120:decode_message(<<"jabber:component:accept">>,
							 __Opts, _el)});
      _ ->
	  decode_groups_echo_els(__TopXMLNS, __Opts, _els,
				 Message)
    end;
decode_groups_echo_els(__TopXMLNS, __Opts, [_ | _els],
		       Message) ->
    decode_groups_echo_els(__TopXMLNS, __Opts, _els,
			   Message).

encode_groups_echo({groups_echo, Message},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_echo_$message'(Message,
						    __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"echo">>, _attrs, _els}.

'encode_groups_echo_$message'(Message, __TopXMLNS,
			      _acc) ->
    [rfc6120:encode_message(Message, __TopXMLNS) | _acc].
