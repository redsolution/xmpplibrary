%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_groups).

-compile(export_all).

do_decode(<<"mentions">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_mentions(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"search">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_search(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"system-message">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_sys_msg(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"re-send">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_resend(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_x(<<"https://xabber.com/protocol/groups">>,
		    Opts, El);
do_decode(<<"decline">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_decline(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"revoke">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_revoke(<<"https://xabber.com/protocol/groups#invite">>,
			 Opts, El);
do_decode(<<"invite">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_invite(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"send">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_invite_send(<<"https://xabber.com/protocol/groups#invite">>,
			      Opts, El);
do_decode(<<"reason">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_invite_reason(<<"https://xabber.com/protocol/groups">>,
				Opts, El);
do_decode(<<"invites">>,
	  <<"https://xabber.com/protocol/groups#invite">>, El,
	  Opts) ->
    decode_groups_invites(<<"https://xabber.com/protocol/groups#invite">>,
			  Opts, El);
do_decode(<<"owner">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_owner(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"collect">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_collect(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"members">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_members(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"kick">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_kick(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"unblock">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_unblock(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"block">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_block(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_details(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"delete">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_delete(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"create">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_create(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"peer-to-peer">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_ptp(<<"https://xabber.com/protocol/groups">>,
		      Opts, El);
do_decode(<<"group">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_group(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"present">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_present(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"pinned">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_pinned(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"pinned-message">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_pinned_message(<<"https://xabber.com/protocol/groups">>,
				 Opts, El);
do_decode(<<"settings">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_settings(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"state">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_state(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"index">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_index(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"domains">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_domains(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_domain(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"contacts">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_contacts(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"contact">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_contact(<<"https://xabber.com/protocol/groups">>,
			  Opts, El);
do_decode(<<"membership">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_membership(<<"https://xabber.com/protocol/groups">>,
			     Opts, El);
do_decode(<<"info">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_info(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_description(<<"https://xabber.com/protocol/groups">>,
			      Opts, El);
do_decode(<<"name">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_name(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"localpart">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_localpart(<<"https://xabber.com/protocol/groups">>,
			    Opts, El);
do_decode(<<"user">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_user(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"avatar">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_avatar(<<"https://xabber.com/protocol/groups">>,
			 Opts, El);
do_decode(<<"last">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_last(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"badge">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_badge(<<"https://xabber.com/protocol/groups">>,
			Opts, El);
do_decode(<<"nickname">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_nickname(<<"https://xabber.com/protocol/groups">>,
			   Opts, El);
do_decode(<<"role">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_role(<<"https://xabber.com/protocol/groups">>,
		       Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/groups">>, El, Opts) ->
    decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
		      Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"mentions">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"search">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"system-message">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"re-send">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"x">>, <<"https://xabber.com/protocol/groups">>},
     {<<"decline">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"revoke">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"invite">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"send">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"reason">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"invites">>,
      <<"https://xabber.com/protocol/groups#invite">>},
     {<<"owner">>, <<"https://xabber.com/protocol/groups">>},
     {<<"collect">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"members">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"kick">>, <<"https://xabber.com/protocol/groups">>},
     {<<"unblock">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"block">>, <<"https://xabber.com/protocol/groups">>},
     {<<"query">>, <<"https://xabber.com/protocol/groups">>},
     {<<"delete">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"create">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"peer-to-peer">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"group">>, <<"https://xabber.com/protocol/groups">>},
     {<<"present">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"pinned">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"pinned-message">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"settings">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"state">>, <<"https://xabber.com/protocol/groups">>},
     {<<"index">>, <<"https://xabber.com/protocol/groups">>},
     {<<"domains">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"domain">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"contacts">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"contact">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"membership">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"info">>, <<"https://xabber.com/protocol/groups">>},
     {<<"description">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"name">>, <<"https://xabber.com/protocol/groups">>},
     {<<"localpart">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"user">>, <<"https://xabber.com/protocol/groups">>},
     {<<"avatar">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"last">>, <<"https://xabber.com/protocol/groups">>},
     {<<"badge">>, <<"https://xabber.com/protocol/groups">>},
     {<<"nickname">>,
      <<"https://xabber.com/protocol/groups">>},
     {<<"role">>, <<"https://xabber.com/protocol/groups">>},
     {<<"jid">>, <<"https://xabber.com/protocol/groups">>}].

do_encode({groups_last, _} = Last, TopXMLNS) ->
    encode_groups_last(Last, TopXMLNS);
do_encode({groups_avatar, _, _} = Avatar, TopXMLNS) ->
    encode_groups_avatar(Avatar, TopXMLNS);
do_encode({groups_user, _, _, _, _, _, _, _} = User,
	  TopXMLNS) ->
    encode_groups_user(User, TopXMLNS);
do_encode({groups_info, _, _, _, _} = Info, TopXMLNS) ->
    encode_groups_info(Info, TopXMLNS);
do_encode({groups_contacts, _} = Contacts, TopXMLNS) ->
    encode_groups_contacts(Contacts, TopXMLNS);
do_encode({groups_domains, _} = Domains, TopXMLNS) ->
    encode_groups_domains(Domains, TopXMLNS);
do_encode({groups_settings, _, _, _, _, _} = Settings,
	  TopXMLNS) ->
    encode_groups_settings(Settings, TopXMLNS);
do_encode({groups_pinned_message, _} = Pinned_message,
	  TopXMLNS) ->
    encode_groups_pinned_message(Pinned_message, TopXMLNS);
do_encode({groups_pinned, _} = Pinned, TopXMLNS) ->
    encode_groups_pinned(Pinned, TopXMLNS);
do_encode({groups_group, _, _, _, _, _, _, _, _, _} =
	      Group,
	  TopXMLNS) ->
    encode_groups_group(Group, TopXMLNS);
do_encode({groups_ptp, _, _} = Peer_to_peer,
	  TopXMLNS) ->
    encode_groups_ptp(Peer_to_peer, TopXMLNS);
do_encode({groups_create, _, _} = Create, TopXMLNS) ->
    encode_groups_create(Create, TopXMLNS);
do_encode({groups_delete, _} = Delete, TopXMLNS) ->
    encode_groups_delete(Delete, TopXMLNS);
do_encode({groups_details} = Query, TopXMLNS) ->
    encode_groups_details(Query, TopXMLNS);
do_encode({groups_block, _} = Block, TopXMLNS) ->
    encode_groups_block(Block, TopXMLNS);
do_encode({groups_unblock, _} = Unblock, TopXMLNS) ->
    encode_groups_unblock(Unblock, TopXMLNS);
do_encode({groups_kick, _} = Kick, TopXMLNS) ->
    encode_groups_kick(Kick, TopXMLNS);
do_encode({groups_members, _, _, _, _} = Members,
	  TopXMLNS) ->
    encode_groups_members(Members, TopXMLNS);
do_encode({groups_collect, _} = Collect, TopXMLNS) ->
    encode_groups_collect(Collect, TopXMLNS);
do_encode({groups_owner, _} = Owner, TopXMLNS) ->
    encode_groups_owner(Owner, TopXMLNS);
do_encode({groups_invites, _} = Invites, TopXMLNS) ->
    encode_groups_invites(Invites, TopXMLNS);
do_encode({groups_invite, _, _, _, _, _} = Invite,
	  TopXMLNS) ->
    encode_groups_invite(Invite, TopXMLNS);
do_encode({groups_revoke, _} = Revoke, TopXMLNS) ->
    encode_groups_revoke(Revoke, TopXMLNS);
do_encode({groups_decline} = Decline, TopXMLNS) ->
    encode_groups_decline(Decline, TopXMLNS);
do_encode({groups_x, _, _, _} = X, TopXMLNS) ->
    encode_groups_x(X, TopXMLNS);
do_encode({groups_resend} = Re_send, TopXMLNS) ->
    encode_groups_resend(Re_send, TopXMLNS);
do_encode({groups_sys_msg, _, _} = System_message,
	  TopXMLNS) ->
    encode_groups_sys_msg(System_message, TopXMLNS);
do_encode({groups_search, _, _, _, _, _} = Search,
	  TopXMLNS) ->
    encode_groups_search(Search, TopXMLNS);
do_encode({groups_mentions, _} = Mentions, TopXMLNS) ->
    encode_groups_mentions(Mentions, TopXMLNS).

do_get_name({groups_avatar, _, _}) -> <<"avatar">>;
do_get_name({groups_block, _}) -> <<"block">>;
do_get_name({groups_collect, _}) -> <<"collect">>;
do_get_name({groups_contacts, _}) -> <<"contacts">>;
do_get_name({groups_create, _, _}) -> <<"create">>;
do_get_name({groups_decline}) -> <<"decline">>;
do_get_name({groups_delete, _}) -> <<"delete">>;
do_get_name({groups_details}) -> <<"query">>;
do_get_name({groups_domains, _}) -> <<"domains">>;
do_get_name({groups_group, _, _, _, _, _, _, _, _,
	     _}) ->
    <<"group">>;
do_get_name({groups_info, _, _, _, _}) -> <<"info">>;
do_get_name({groups_invite, _, _, _, _, _}) ->
    <<"invite">>;
do_get_name({groups_invites, _}) -> <<"invites">>;
do_get_name({groups_kick, _}) -> <<"kick">>;
do_get_name({groups_last, _}) -> <<"last">>;
do_get_name({groups_members, _, _, _, _}) ->
    <<"members">>;
do_get_name({groups_mentions, _}) -> <<"mentions">>;
do_get_name({groups_owner, _}) -> <<"owner">>;
do_get_name({groups_pinned, _}) -> <<"pinned">>;
do_get_name({groups_pinned_message, _}) ->
    <<"pinned-message">>;
do_get_name({groups_ptp, _, _}) -> <<"peer-to-peer">>;
do_get_name({groups_resend}) -> <<"re-send">>;
do_get_name({groups_revoke, _}) -> <<"revoke">>;
do_get_name({groups_search, _, _, _, _, _}) ->
    <<"search">>;
do_get_name({groups_settings, _, _, _, _, _}) ->
    <<"settings">>;
do_get_name({groups_sys_msg, _, _}) ->
    <<"system-message">>;
do_get_name({groups_unblock, _}) -> <<"unblock">>;
do_get_name({groups_user, _, _, _, _, _, _, _}) ->
    <<"user">>;
do_get_name({groups_x, _, _, _}) -> <<"x">>.

do_get_ns({groups_avatar, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_block, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_collect, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_contacts, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_create, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_decline}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_delete, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_details}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_domains, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_group, _, _, _, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_info, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_invite, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_invites, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({groups_kick, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_last, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_members, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_mentions, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_owner, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_pinned, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_pinned_message, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_ptp, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_resend}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_revoke, _}) ->
    <<"https://xabber.com/protocol/groups#invite">>;
do_get_ns({groups_search, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_settings, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_sys_msg, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_unblock, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_user, _, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>;
do_get_ns({groups_x, _, _, _}) ->
    <<"https://xabber.com/protocol/groups">>.

get_els({groups_x, _author, _message, _sub_els}) ->
    _sub_els.

set_els({groups_x, _author, _message, _}, _sub_els) ->
    {groups_x, _author, _message, _sub_els}.

pp(groups_last, 1) -> [stamp];
pp(groups_avatar, 2) -> [info, data];
pp(groups_user, 7) ->
    [id, jid, role, badge, nickname, avatar, last];
pp(groups_info, 4) ->
    [name, description, avatar, status];
pp(groups_contacts, 1) -> [contacts];
pp(groups_domains, 1) -> [domains];
pp(groups_settings, 5) ->
    [membership, contacts, domains, index, state];
pp(groups_pinned_message, 1) -> [id];
pp(groups_pinned, 1) -> [messages];
pp(groups_group, 9) ->
    [privacy, parent, jid, members, localpart, info,
     settings, pinned, present];
pp(groups_ptp, 2) -> [parent, with];
pp(groups_create, 2) -> [group, ptp];
pp(groups_delete, 1) -> [group];
pp(groups_details, 0) -> [];
pp(groups_block, 1) -> [jids];
pp(groups_unblock, 1) -> [jid];
pp(groups_kick, 1) -> [jid];
pp(groups_members, 4) -> [members, id, version, xdata];
pp(groups_collect, 1) -> [cdata];
pp(groups_owner, 1) -> [id];
pp(groups_invites, 1) -> [usernames];
pp(groups_invite, 5) ->
    [jid, target, send, reason, user];
pp(groups_revoke, 1) -> [jid];
pp(groups_decline, 0) -> [];
pp(groups_x, 3) -> [author, message, sub_els];
pp(groups_resend, 0) -> [];
pp(groups_sys_msg, 2) -> [type, actor];
pp(groups_search, 5) ->
    [name, description, model, anonymous, rsm];
pp(groups_mentions, 1) -> [members];
pp(_, _) -> no.

records() ->
    [{groups_last, 1}, {groups_avatar, 2}, {groups_user, 7},
     {groups_info, 4}, {groups_contacts, 1},
     {groups_domains, 1}, {groups_settings, 5},
     {groups_pinned_message, 1}, {groups_pinned, 1},
     {groups_group, 9}, {groups_ptp, 2}, {groups_create, 2},
     {groups_delete, 1}, {groups_details, 0},
     {groups_block, 1}, {groups_unblock, 1},
     {groups_kick, 1}, {groups_members, 4},
     {groups_collect, 1}, {groups_owner, 1},
     {groups_invites, 1}, {groups_invite, 5},
     {groups_revoke, 1}, {groups_decline, 0}, {groups_x, 3},
     {groups_resend, 0}, {groups_sys_msg, 2},
     {groups_search, 5}, {groups_mentions, 1}].

dec_bool(<<"false">>) -> false;
dec_bool(<<"0">>) -> false;
dec_bool(<<"true">>) -> true;
dec_bool(<<"1">>) -> true.

dec_enum(Val, Enums) ->
    AtomVal = erlang:binary_to_existing_atom(Val, utf8),
    case lists:member(AtomVal, Enums) of
      true -> AtomVal
    end.

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_bool(false) -> <<"false">>;
enc_bool(true) -> <<"true">>.

enc_enum(Atom) -> erlang:atom_to_binary(Atom, utf8).

enc_int(Int) -> erlang:integer_to_binary(Int).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

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

decode_groups_sys_msg(__TopXMLNS, __Opts,
		      {xmlel, <<"system-message">>, _attrs, _els}) ->
    Actor = decode_groups_sys_msg_els(__TopXMLNS, __Opts,
				      _els, undefined),
    Type = decode_groups_sys_msg_attrs(__TopXMLNS, _attrs,
				       undefined),
    {groups_sys_msg, Type, Actor}.

decode_groups_sys_msg_els(__TopXMLNS, __Opts, [],
			  Actor) ->
    Actor;
decode_groups_sys_msg_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"user">>, _attrs, _} = _el | _els],
			  Actor) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_sys_msg_els(__TopXMLNS, __Opts, _els,
				    decode_groups_user(<<"https://xabber.com/protocol/groups">>,
						       __Opts, _el));
      _ ->
	  decode_groups_sys_msg_els(__TopXMLNS, __Opts, _els,
				    Actor)
    end;
decode_groups_sys_msg_els(__TopXMLNS, __Opts,
			  [_ | _els], Actor) ->
    decode_groups_sys_msg_els(__TopXMLNS, __Opts, _els,
			      Actor).

decode_groups_sys_msg_attrs(__TopXMLNS,
			    [{<<"type">>, _val} | _attrs], _Type) ->
    decode_groups_sys_msg_attrs(__TopXMLNS, _attrs, _val);
decode_groups_sys_msg_attrs(__TopXMLNS, [_ | _attrs],
			    Type) ->
    decode_groups_sys_msg_attrs(__TopXMLNS, _attrs, Type);
decode_groups_sys_msg_attrs(__TopXMLNS, [], Type) ->
    decode_groups_sys_msg_attr_type(__TopXMLNS, Type).

encode_groups_sys_msg({groups_sys_msg, Type, Actor},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_sys_msg_$actor'(Actor,
						     __NewTopXMLNS, [])),
    _attrs = encode_groups_sys_msg_attr_type(Type,
					     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									__TopXMLNS)),
    {xmlel, <<"system-message">>, _attrs, _els}.

'encode_groups_sys_msg_$actor'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_groups_sys_msg_$actor'(Actor, __TopXMLNS,
			       _acc) ->
    [encode_groups_user(Actor, __TopXMLNS) | _acc].

decode_groups_sys_msg_attr_type(__TopXMLNS,
				undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"type">>, <<"system-message">>,
		   __TopXMLNS}});
decode_groups_sys_msg_attr_type(__TopXMLNS, _val) ->
    _val.

encode_groups_sys_msg_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_groups_resend(__TopXMLNS, __Opts,
		     {xmlel, <<"re-send">>, _attrs, _els}) ->
    {groups_resend}.

encode_groups_resend({groups_resend}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"re-send">>, _attrs, _els}.

decode_groups_x(__TopXMLNS, __Opts,
		{xmlel, <<"x">>, _attrs, _els}) ->
    {Author, Message, __Els} =
	decode_groups_x_els(__TopXMLNS, __Opts, _els, error,
			    error, []),
    {groups_x, Author, Message, __Els}.

decode_groups_x_els(__TopXMLNS, __Opts, [], Author,
		    Message, __Els) ->
    {case Author of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"user">>, __TopXMLNS}});
       {value, Author1} -> Author1
     end,
     case Message of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"message">>, __TopXMLNS}});
       {value, Message1} -> Message1
     end,
     lists:reverse(__Els)};
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, <<"user">>, _attrs, _} = _el | _els], Author,
		    Message, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els,
			      {value,
			       decode_groups_user(<<"https://xabber.com/protocol/groups">>,
						  __Opts, _el)},
			      Message, __Els);
      _ ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
			      Message, [_el | __Els])
    end;
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, <<"message">>, _attrs, _} = _el | _els],
		    Author, Message, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"jabber:client">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
			      {value,
			       rfc6120:decode_message(<<"jabber:client">>,
						      __Opts, _el)},
			      __Els);
      <<"jabber:server">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
			      {value,
			       rfc6120:decode_message(<<"jabber:server">>,
						      __Opts, _el)},
			      __Els);
      <<"jabber:component:accept">> ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
			      {value,
			       rfc6120:decode_message(<<"jabber:component:accept">>,
						      __Opts, _el)},
			      __Els);
      _ ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
			      Message, [_el | __Els])
    end;
decode_groups_x_els(__TopXMLNS, __Opts,
		    [{xmlel, _name, _attrs, _} = _el | _els], Author,
		    Message, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
			      Message, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
				    Message, [_el | __Els]);
	    Mod ->
		decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
				    Message,
				    [Mod:do_decode(_name, __XMLNS, _el, __Opts)
				     | __Els])
	  end
    end;
decode_groups_x_els(__TopXMLNS, __Opts, [_ | _els],
		    Author, Message, __Els) ->
    decode_groups_x_els(__TopXMLNS, __Opts, _els, Author,
			Message, __Els).

encode_groups_x({groups_x, Author, Message, __Els},
		__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_groups_x_$author'(Author,
						     __NewTopXMLNS,
						     'encode_groups_x_$message'(Message,
										__NewTopXMLNS,
										[]))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x">>, _attrs, _els}.

'encode_groups_x_$author'(Author, __TopXMLNS, _acc) ->
    [encode_groups_user(Author, __TopXMLNS) | _acc].

'encode_groups_x_$message'(Message, __TopXMLNS, _acc) ->
    [rfc6120:encode_message(Message, __TopXMLNS) | _acc].

decode_groups_decline(__TopXMLNS, __Opts,
		      {xmlel, <<"decline">>, _attrs, _els}) ->
    {groups_decline}.

encode_groups_decline({groups_decline}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_revoke_els(__TopXMLNS, __Opts, _els,
				   {value,
				    decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
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
    [encode_groups_jid(Jid, __TopXMLNS) | _acc].

decode_groups_invite(__TopXMLNS, __Opts,
		     {xmlel, <<"invite">>, _attrs, _els}) ->
    {User, Send, Target, Reason} =
	decode_groups_invite_els(__TopXMLNS, __Opts, _els,
				 undefined, undefined, undefined, undefined),
    Jid = decode_groups_invite_attrs(__TopXMLNS, _attrs,
				     undefined),
    {groups_invite, Jid, Target, Send, Reason, User}.

decode_groups_invite_els(__TopXMLNS, __Opts, [], User,
			 Send, Target, Reason) ->
    {User, Send, Target, Reason};
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"jid">>, _attrs, _} = _el | _els], User,
			 Send, Target, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send,
				   decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						     __Opts, _el),
				   Reason);
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Target, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"send">>, _attrs, _} = _el | _els], User,
			 Send, Target, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups#invite">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   decode_groups_invite_send(<<"https://xabber.com/protocol/groups#invite">>,
							     __Opts, _el),
				   Target, Reason);
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Target, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"reason">>, _attrs, _} = _el | _els], User,
			 Send, Target, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Target,
				   decode_groups_invite_reason(<<"https://xabber.com/protocol/groups">>,
							       __Opts, _el));
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Target, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"user">>, _attrs, _} = _el | _els], User,
			 Send, Target, Reason) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els,
				   decode_groups_user(<<"https://xabber.com/protocol/groups">>,
						      __Opts, _el),
				   Send, Target, Reason);
      _ ->
	  decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
				   Send, Target, Reason)
    end;
decode_groups_invite_els(__TopXMLNS, __Opts, [_ | _els],
			 User, Send, Target, Reason) ->
    decode_groups_invite_els(__TopXMLNS, __Opts, _els, User,
			     Send, Target, Reason).

decode_groups_invite_attrs(__TopXMLNS,
			   [{<<"jid">>, _val} | _attrs], _Jid) ->
    decode_groups_invite_attrs(__TopXMLNS, _attrs, _val);
decode_groups_invite_attrs(__TopXMLNS, [_ | _attrs],
			   Jid) ->
    decode_groups_invite_attrs(__TopXMLNS, _attrs, Jid);
decode_groups_invite_attrs(__TopXMLNS, [], Jid) ->
    decode_groups_invite_attr_jid(__TopXMLNS, Jid).

encode_groups_invite({groups_invite, Jid, Target, Send,
		      Reason, User},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_invite_$user'(User,
						      __NewTopXMLNS,
						      'encode_groups_invite_$send'(Send,
										   __NewTopXMLNS,
										   'encode_groups_invite_$target'(Target,
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
    [encode_groups_user(User, __TopXMLNS) | _acc].

'encode_groups_invite_$send'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_invite_$send'(Send, __TopXMLNS, _acc) ->
    [encode_groups_invite_send(Send, __TopXMLNS) | _acc].

'encode_groups_invite_$target'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_groups_invite_$target'(Target, __TopXMLNS,
			       _acc) ->
    [encode_groups_jid(Target, __TopXMLNS) | _acc].

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
    case catch dec_bool(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"send">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_invite_send_cdata(_val, _acc) ->
    [{xmlcdata, enc_bool(_val)} | _acc].

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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
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

decode_groups_invites(__TopXMLNS, __Opts,
		      {xmlel, <<"invites">>, _attrs, _els}) ->
    Usernames = decode_groups_invites_els(__TopXMLNS,
					  __Opts, _els, []),
    {groups_invites, Usernames}.

decode_groups_invites_els(__TopXMLNS, __Opts, [],
			  Usernames) ->
    lists:reverse(Usernames);
decode_groups_invites_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
			  Usernames) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_invites_els(__TopXMLNS, __Opts, _els,
				    [decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						       __Opts, _el)
				     | Usernames]);
      _ ->
	  decode_groups_invites_els(__TopXMLNS, __Opts, _els,
				    Usernames)
    end;
decode_groups_invites_els(__TopXMLNS, __Opts,
			  [_ | _els], Usernames) ->
    decode_groups_invites_els(__TopXMLNS, __Opts, _els,
			      Usernames).

encode_groups_invites({groups_invites, Usernames},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups#invite">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_invites_$usernames'(Usernames,
							 __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"invites">>, _attrs, _els}.

'encode_groups_invites_$usernames'([], __TopXMLNS,
				   _acc) ->
    _acc;
'encode_groups_invites_$usernames'([Usernames | _els],
				   __TopXMLNS, _acc) ->
    'encode_groups_invites_$usernames'(_els, __TopXMLNS,
				       [encode_groups_jid(Usernames, __TopXMLNS)
					| _acc]).

decode_groups_owner(__TopXMLNS, __Opts,
		    {xmlel, <<"owner">>, _attrs, _els}) ->
    Id = decode_groups_owner_attrs(__TopXMLNS, _attrs,
				   undefined),
    {groups_owner, Id}.

decode_groups_owner_attrs(__TopXMLNS,
			  [{<<"id">>, _val} | _attrs], _Id) ->
    decode_groups_owner_attrs(__TopXMLNS, _attrs, _val);
decode_groups_owner_attrs(__TopXMLNS, [_ | _attrs],
			  Id) ->
    decode_groups_owner_attrs(__TopXMLNS, _attrs, Id);
decode_groups_owner_attrs(__TopXMLNS, [], Id) ->
    decode_groups_owner_attr_id(__TopXMLNS, Id).

encode_groups_owner({groups_owner, Id}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_groups_owner_attr_id(Id,
					 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								    __TopXMLNS)),
    {xmlel, <<"owner">>, _attrs, _els}.

decode_groups_owner_attr_id(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"owner">>, __TopXMLNS}});
decode_groups_owner_attr_id(__TopXMLNS, _val) -> _val.

encode_groups_owner_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

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

decode_groups_members(__TopXMLNS, __Opts,
		      {xmlel, <<"members">>, _attrs, _els}) ->
    {Xdata, Members} = decode_groups_members_els(__TopXMLNS,
						 __Opts, _els, undefined, []),
    {Version, Id} = decode_groups_members_attrs(__TopXMLNS,
						_attrs, undefined, undefined),
    {groups_members, Members, Id, Version, Xdata}.

decode_groups_members_els(__TopXMLNS, __Opts, [], Xdata,
			  Members) ->
    {Xdata, lists:reverse(Members)};
decode_groups_members_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"user">>, _attrs, _} = _el | _els], Xdata,
			  Members) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_members_els(__TopXMLNS, __Opts, _els,
				    Xdata,
				    [decode_groups_user(<<"https://xabber.com/protocol/groups">>,
							__Opts, _el)
				     | Members]);
      _ ->
	  decode_groups_members_els(__TopXMLNS, __Opts, _els,
				    Xdata, Members)
    end;
decode_groups_members_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"x">>, _attrs, _} = _el | _els], Xdata,
			  Members) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"jabber:x:data">> ->
	  decode_groups_members_els(__TopXMLNS, __Opts, _els,
				    xep0004:decode_xdata(<<"jabber:x:data">>,
							 __Opts, _el),
				    Members);
      _ ->
	  decode_groups_members_els(__TopXMLNS, __Opts, _els,
				    Xdata, Members)
    end;
decode_groups_members_els(__TopXMLNS, __Opts,
			  [_ | _els], Xdata, Members) ->
    decode_groups_members_els(__TopXMLNS, __Opts, _els,
			      Xdata, Members).

decode_groups_members_attrs(__TopXMLNS,
			    [{<<"version">>, _val} | _attrs], _Version, Id) ->
    decode_groups_members_attrs(__TopXMLNS, _attrs, _val,
				Id);
decode_groups_members_attrs(__TopXMLNS,
			    [{<<"id">>, _val} | _attrs], Version, _Id) ->
    decode_groups_members_attrs(__TopXMLNS, _attrs, Version,
				_val);
decode_groups_members_attrs(__TopXMLNS, [_ | _attrs],
			    Version, Id) ->
    decode_groups_members_attrs(__TopXMLNS, _attrs, Version,
				Id);
decode_groups_members_attrs(__TopXMLNS, [], Version,
			    Id) ->
    {decode_groups_members_attr_version(__TopXMLNS,
					Version),
     decode_groups_members_attr_id(__TopXMLNS, Id)}.

encode_groups_members({groups_members, Members, Id,
		       Version, Xdata},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_members_$xdata'(Xdata,
						     __NewTopXMLNS,
						     'encode_groups_members_$members'(Members,
										      __NewTopXMLNS,
										      []))),
    _attrs = encode_groups_members_attr_id(Id,
					   encode_groups_members_attr_version(Version,
									      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
													 __TopXMLNS))),
    {xmlel, <<"members">>, _attrs, _els}.

'encode_groups_members_$xdata'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_groups_members_$xdata'(Xdata, __TopXMLNS,
			       _acc) ->
    [xep0004:encode_xdata(Xdata, __TopXMLNS) | _acc].

'encode_groups_members_$members'([], __TopXMLNS,
				 _acc) ->
    _acc;
'encode_groups_members_$members'([Members | _els],
				 __TopXMLNS, _acc) ->
    'encode_groups_members_$members'(_els, __TopXMLNS,
				     [encode_groups_user(Members, __TopXMLNS)
				      | _acc]).

decode_groups_members_attr_version(__TopXMLNS,
				   undefined) ->
    <<>>;
decode_groups_members_attr_version(__TopXMLNS, _val) ->
    _val.

encode_groups_members_attr_version(<<>>, _acc) -> _acc;
encode_groups_members_attr_version(_val, _acc) ->
    [{<<"version">>, _val} | _acc].

decode_groups_members_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_members_attr_id(__TopXMLNS, _val) -> _val.

encode_groups_members_attr_id(<<>>, _acc) -> _acc;
encode_groups_members_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_kick(__TopXMLNS, __Opts,
		   {xmlel, <<"kick">>, _attrs, _els}) ->
    Jid = decode_groups_kick_els(__TopXMLNS, __Opts, _els,
				 undefined),
    {groups_kick, Jid}.

decode_groups_kick_els(__TopXMLNS, __Opts, [], Jid) ->
    Jid;
decode_groups_kick_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jid) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_kick_els(__TopXMLNS, __Opts, _els,
				 decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						   __Opts, _el));
      _ ->
	  decode_groups_kick_els(__TopXMLNS, __Opts, _els, Jid)
    end;
decode_groups_kick_els(__TopXMLNS, __Opts, [_ | _els],
		       Jid) ->
    decode_groups_kick_els(__TopXMLNS, __Opts, _els, Jid).

encode_groups_kick({groups_kick, Jid}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_kick_$jid'(Jid,
						   __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"kick">>, _attrs, _els}.

'encode_groups_kick_$jid'(undefined, __TopXMLNS,
			  _acc) ->
    _acc;
'encode_groups_kick_$jid'(Jid, __TopXMLNS, _acc) ->
    [encode_groups_jid(Jid, __TopXMLNS) | _acc].

decode_groups_unblock(__TopXMLNS, __Opts,
		      {xmlel, <<"unblock">>, _attrs, _els}) ->
    Jid = decode_groups_unblock_els(__TopXMLNS, __Opts,
				    _els, undefined),
    {groups_unblock, Jid}.

decode_groups_unblock_els(__TopXMLNS, __Opts, [],
			  Jid) ->
    Jid;
decode_groups_unblock_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jid) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els,
				    decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						      __Opts, _el));
      _ ->
	  decode_groups_unblock_els(__TopXMLNS, __Opts, _els, Jid)
    end;
decode_groups_unblock_els(__TopXMLNS, __Opts,
			  [_ | _els], Jid) ->
    decode_groups_unblock_els(__TopXMLNS, __Opts, _els,
			      Jid).

encode_groups_unblock({groups_unblock, Jid},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_unblock_$jid'(Jid,
						      __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unblock">>, _attrs, _els}.

'encode_groups_unblock_$jid'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_unblock_$jid'(Jid, __TopXMLNS, _acc) ->
    [encode_groups_jid(Jid, __TopXMLNS) | _acc].

decode_groups_block(__TopXMLNS, __Opts,
		    {xmlel, <<"block">>, _attrs, _els}) ->
    Jids = decode_groups_block_els(__TopXMLNS, __Opts, _els,
				   []),
    {groups_block, Jids}.

decode_groups_block_els(__TopXMLNS, __Opts, [], Jids) ->
    lists:reverse(Jids);
decode_groups_block_els(__TopXMLNS, __Opts,
			[{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jids) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els,
				  [decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						     __Opts, _el)
				   | Jids]);
      _ ->
	  decode_groups_block_els(__TopXMLNS, __Opts, _els, Jids)
    end;
decode_groups_block_els(__TopXMLNS, __Opts, [_ | _els],
			Jids) ->
    decode_groups_block_els(__TopXMLNS, __Opts, _els, Jids).

encode_groups_block({groups_block, Jids}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_block_$jids'(Jids,
						     __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"block">>, _attrs, _els}.

'encode_groups_block_$jids'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_block_$jids'([Jids | _els], __TopXMLNS,
			    _acc) ->
    'encode_groups_block_$jids'(_els, __TopXMLNS,
				[encode_groups_jid(Jids, __TopXMLNS) | _acc]).

decode_groups_details(__TopXMLNS, __Opts,
		      {xmlel, <<"query">>, _attrs, _els}) ->
    {groups_details}.

encode_groups_details({groups_details}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

decode_groups_delete(__TopXMLNS, __Opts,
		     {xmlel, <<"delete">>, _attrs, _els}) ->
    Group = decode_groups_delete_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    {groups_delete, Group}.

decode_groups_delete_els(__TopXMLNS, __Opts, [],
			 Group) ->
    decode_groups_delete_cdata(__TopXMLNS, Group);
decode_groups_delete_els(__TopXMLNS, __Opts,
			 [{xmlcdata, _data} | _els], Group) ->
    decode_groups_delete_els(__TopXMLNS, __Opts, _els,
			     <<Group/binary, _data/binary>>);
decode_groups_delete_els(__TopXMLNS, __Opts, [_ | _els],
			 Group) ->
    decode_groups_delete_els(__TopXMLNS, __Opts, _els,
			     Group).

encode_groups_delete({groups_delete, Group},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_delete_cdata(Group, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"delete">>, _attrs, _els}.

decode_groups_delete_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_groups_delete_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"delete">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_delete_cdata(undefined, _acc) -> _acc;
encode_groups_delete_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_groups_create(__TopXMLNS, __Opts,
		     {xmlel, <<"create">>, _attrs, _els}) ->
    {Ptp, Group} = decode_groups_create_els(__TopXMLNS,
					    __Opts, _els, undefined, undefined),
    {groups_create, Group, Ptp}.

decode_groups_create_els(__TopXMLNS, __Opts, [], Ptp,
			 Group) ->
    {Ptp, Group};
decode_groups_create_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"group">>, _attrs, _} = _el | _els], Ptp,
			 Group) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_create_els(__TopXMLNS, __Opts, _els, Ptp,
				   decode_groups_group(<<"https://xabber.com/protocol/groups">>,
						       __Opts, _el));
      _ ->
	  decode_groups_create_els(__TopXMLNS, __Opts, _els, Ptp,
				   Group)
    end;
decode_groups_create_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"peer-to-peer">>, _attrs, _} = _el | _els],
			 Ptp, Group) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_create_els(__TopXMLNS, __Opts, _els,
				   decode_groups_ptp(<<"https://xabber.com/protocol/groups">>,
						     __Opts, _el),
				   Group);
      _ ->
	  decode_groups_create_els(__TopXMLNS, __Opts, _els, Ptp,
				   Group)
    end;
decode_groups_create_els(__TopXMLNS, __Opts, [_ | _els],
			 Ptp, Group) ->
    decode_groups_create_els(__TopXMLNS, __Opts, _els, Ptp,
			     Group).

encode_groups_create({groups_create, Group, Ptp},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_create_$ptp'(Ptp,
						     __NewTopXMLNS,
						     'encode_groups_create_$group'(Group,
										   __NewTopXMLNS,
										   []))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"create">>, _attrs, _els}.

'encode_groups_create_$ptp'(undefined, __TopXMLNS,
			    _acc) ->
    _acc;
'encode_groups_create_$ptp'(Ptp, __TopXMLNS, _acc) ->
    [encode_groups_ptp(Ptp, __TopXMLNS) | _acc].

'encode_groups_create_$group'(undefined, __TopXMLNS,
			      _acc) ->
    _acc;
'encode_groups_create_$group'(Group, __TopXMLNS,
			      _acc) ->
    [encode_groups_group(Group, __TopXMLNS) | _acc].

decode_groups_ptp(__TopXMLNS, __Opts,
		  {xmlel, <<"peer-to-peer">>, _attrs, _els}) ->
    {Parent, With} = decode_groups_ptp_attrs(__TopXMLNS,
					     _attrs, undefined, undefined),
    {groups_ptp, Parent, With}.

decode_groups_ptp_attrs(__TopXMLNS,
			[{<<"parent">>, _val} | _attrs], _Parent, With) ->
    decode_groups_ptp_attrs(__TopXMLNS, _attrs, _val, With);
decode_groups_ptp_attrs(__TopXMLNS,
			[{<<"with">>, _val} | _attrs], Parent, _With) ->
    decode_groups_ptp_attrs(__TopXMLNS, _attrs, Parent,
			    _val);
decode_groups_ptp_attrs(__TopXMLNS, [_ | _attrs],
			Parent, With) ->
    decode_groups_ptp_attrs(__TopXMLNS, _attrs, Parent,
			    With);
decode_groups_ptp_attrs(__TopXMLNS, [], Parent, With) ->
    {decode_groups_ptp_attr_parent(__TopXMLNS, Parent),
     decode_groups_ptp_attr_with(__TopXMLNS, With)}.

encode_groups_ptp({groups_ptp, Parent, With},
		  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_groups_ptp_attr_with(With,
					 encode_groups_ptp_attr_parent(Parent,
								       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												  __TopXMLNS))),
    {xmlel, <<"peer-to-peer">>, _attrs, _els}.

decode_groups_ptp_attr_parent(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"parent">>, <<"peer-to-peer">>,
		   __TopXMLNS}});
decode_groups_ptp_attr_parent(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"parent">>, <<"peer-to-peer">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_ptp_attr_parent(_val, _acc) ->
    [{<<"parent">>, jid:encode(_val)} | _acc].

decode_groups_ptp_attr_with(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"with">>, <<"peer-to-peer">>,
		   __TopXMLNS}});
decode_groups_ptp_attr_with(__TopXMLNS, _val) -> _val.

encode_groups_ptp_attr_with(_val, _acc) ->
    [{<<"with">>, _val} | _acc].

decode_groups_group(__TopXMLNS, __Opts,
		    {xmlel, <<"group">>, _attrs, _els}) ->
    {Settings, Present, Pinned, Localpart, Info} =
	decode_groups_group_els(__TopXMLNS, __Opts, _els,
				undefined, undefined, undefined, undefined,
				undefined),
    {Privacy, Parent, Jid, Members} =
	decode_groups_group_attrs(__TopXMLNS, _attrs, undefined,
				  undefined, undefined, undefined),
    {groups_group, Privacy, Parent, Jid, Members, Localpart,
     Info, Settings, Pinned, Present}.

decode_groups_group_els(__TopXMLNS, __Opts, [],
			Settings, Present, Pinned, Localpart, Info) ->
    {Settings, Present, Pinned, Localpart, Info};
decode_groups_group_els(__TopXMLNS, __Opts,
			[{xmlel, <<"localpart">>, _attrs, _} = _el | _els],
			Settings, Present, Pinned, Localpart, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present, Pinned,
				  decode_groups_localpart(<<"https://xabber.com/protocol/groups">>,
							  __Opts, _el),
				  Info);
      _ ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present, Pinned, Localpart, Info)
    end;
decode_groups_group_els(__TopXMLNS, __Opts,
			[{xmlel, <<"info">>, _attrs, _} = _el | _els], Settings,
			Present, Pinned, Localpart, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present, Pinned, Localpart,
				  decode_groups_info(<<"https://xabber.com/protocol/groups">>,
						     __Opts, _el));
      _ ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present, Pinned, Localpart, Info)
    end;
decode_groups_group_els(__TopXMLNS, __Opts,
			[{xmlel, <<"settings">>, _attrs, _} = _el | _els],
			Settings, Present, Pinned, Localpart, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  decode_groups_settings(<<"https://xabber.com/protocol/groups">>,
							 __Opts, _el),
				  Present, Pinned, Localpart, Info);
      _ ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present, Pinned, Localpart, Info)
    end;
decode_groups_group_els(__TopXMLNS, __Opts,
			[{xmlel, <<"pinned">>, _attrs, _} = _el | _els],
			Settings, Present, Pinned, Localpart, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present,
				  decode_groups_pinned(<<"https://xabber.com/protocol/groups">>,
						       __Opts, _el),
				  Localpart, Info);
      _ ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present, Pinned, Localpart, Info)
    end;
decode_groups_group_els(__TopXMLNS, __Opts,
			[{xmlel, <<"present">>, _attrs, _} = _el | _els],
			Settings, Present, Pinned, Localpart, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings,
				  decode_groups_present(<<"https://xabber.com/protocol/groups">>,
							__Opts, _el),
				  Pinned, Localpart, Info);
      _ ->
	  decode_groups_group_els(__TopXMLNS, __Opts, _els,
				  Settings, Present, Pinned, Localpart, Info)
    end;
decode_groups_group_els(__TopXMLNS, __Opts, [_ | _els],
			Settings, Present, Pinned, Localpart, Info) ->
    decode_groups_group_els(__TopXMLNS, __Opts, _els,
			    Settings, Present, Pinned, Localpart, Info).

decode_groups_group_attrs(__TopXMLNS,
			  [{<<"privacy">>, _val} | _attrs], _Privacy, Parent,
			  Jid, Members) ->
    decode_groups_group_attrs(__TopXMLNS, _attrs, _val,
			      Parent, Jid, Members);
decode_groups_group_attrs(__TopXMLNS,
			  [{<<"parent">>, _val} | _attrs], Privacy, _Parent,
			  Jid, Members) ->
    decode_groups_group_attrs(__TopXMLNS, _attrs, Privacy,
			      _val, Jid, Members);
decode_groups_group_attrs(__TopXMLNS,
			  [{<<"jid">>, _val} | _attrs], Privacy, Parent, _Jid,
			  Members) ->
    decode_groups_group_attrs(__TopXMLNS, _attrs, Privacy,
			      Parent, _val, Members);
decode_groups_group_attrs(__TopXMLNS,
			  [{<<"members">>, _val} | _attrs], Privacy, Parent,
			  Jid, _Members) ->
    decode_groups_group_attrs(__TopXMLNS, _attrs, Privacy,
			      Parent, Jid, _val);
decode_groups_group_attrs(__TopXMLNS, [_ | _attrs],
			  Privacy, Parent, Jid, Members) ->
    decode_groups_group_attrs(__TopXMLNS, _attrs, Privacy,
			      Parent, Jid, Members);
decode_groups_group_attrs(__TopXMLNS, [], Privacy,
			  Parent, Jid, Members) ->
    {decode_groups_group_attr_privacy(__TopXMLNS, Privacy),
     decode_groups_group_attr_parent(__TopXMLNS, Parent),
     decode_groups_group_attr_jid(__TopXMLNS, Jid),
     decode_groups_group_attr_members(__TopXMLNS, Members)}.

encode_groups_group({groups_group, Privacy, Parent, Jid,
		     Members, Localpart, Info, Settings, Pinned, Present},
		    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_group_$settings'(Settings,
						      __NewTopXMLNS,
						      'encode_groups_group_$present'(Present,
										     __NewTopXMLNS,
										     'encode_groups_group_$pinned'(Pinned,
														   __NewTopXMLNS,
														   'encode_groups_group_$localpart'(Localpart,
																		    __NewTopXMLNS,
																		    'encode_groups_group_$info'(Info,
																						__NewTopXMLNS,
																						[])))))),
    _attrs = encode_groups_group_attr_members(Members,
					      encode_groups_group_attr_jid(Jid,
									   encode_groups_group_attr_parent(Parent,
													   encode_groups_group_attr_privacy(Privacy,
																	    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																				       __TopXMLNS))))),
    {xmlel, <<"group">>, _attrs, _els}.

'encode_groups_group_$settings'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_groups_group_$settings'(Settings, __TopXMLNS,
				_acc) ->
    [encode_groups_settings(Settings, __TopXMLNS) | _acc].

'encode_groups_group_$present'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_groups_group_$present'(Present, __TopXMLNS,
			       _acc) ->
    [encode_groups_present(Present, __TopXMLNS) | _acc].

'encode_groups_group_$pinned'(undefined, __TopXMLNS,
			      _acc) ->
    _acc;
'encode_groups_group_$pinned'(Pinned, __TopXMLNS,
			      _acc) ->
    [encode_groups_pinned(Pinned, __TopXMLNS) | _acc].

'encode_groups_group_$localpart'(undefined, __TopXMLNS,
				 _acc) ->
    _acc;
'encode_groups_group_$localpart'(Localpart, __TopXMLNS,
				 _acc) ->
    [encode_groups_localpart(Localpart, __TopXMLNS) | _acc].

'encode_groups_group_$info'(undefined, __TopXMLNS,
			    _acc) ->
    _acc;
'encode_groups_group_$info'(Info, __TopXMLNS, _acc) ->
    [encode_groups_info(Info, __TopXMLNS) | _acc].

decode_groups_group_attr_privacy(__TopXMLNS,
				 undefined) ->
    undefined;
decode_groups_group_attr_privacy(__TopXMLNS, _val) ->
    case catch dec_enum(_val, [public, incognito]) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"privacy">>, <<"group">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_group_attr_privacy(undefined, _acc) ->
    _acc;
encode_groups_group_attr_privacy(_val, _acc) ->
    [{<<"privacy">>, enc_enum(_val)} | _acc].

decode_groups_group_attr_parent(__TopXMLNS,
				undefined) ->
    undefined;
decode_groups_group_attr_parent(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"parent">>, <<"group">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_group_attr_parent(undefined, _acc) ->
    _acc;
encode_groups_group_attr_parent(_val, _acc) ->
    [{<<"parent">>, jid:encode(_val)} | _acc].

decode_groups_group_attr_jid(__TopXMLNS, undefined) ->
    undefined;
decode_groups_group_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"group">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_group_attr_jid(undefined, _acc) -> _acc;
encode_groups_group_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_groups_group_attr_members(__TopXMLNS,
				 undefined) ->
    undefined;
decode_groups_group_attr_members(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"members">>, <<"group">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_group_attr_members(undefined, _acc) ->
    _acc;
encode_groups_group_attr_members(_val, _acc) ->
    [{<<"members">>, enc_int(_val)} | _acc].

decode_groups_present(__TopXMLNS, __Opts,
		      {xmlel, <<"present">>, _attrs, _els}) ->
    Cdata = decode_groups_present_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    Cdata.

decode_groups_present_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_groups_present_cdata(__TopXMLNS, Cdata);
decode_groups_present_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_present_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_groups_present_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_groups_present_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_groups_present(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_present_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"present">>, _attrs, _els}.

decode_groups_present_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_present_cdata(__TopXMLNS, _val) -> _val.

encode_groups_present_cdata(<<>>, _acc) -> _acc;
encode_groups_present_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_pinned(__TopXMLNS, __Opts,
		     {xmlel, <<"pinned">>, _attrs, _els}) ->
    Messages = decode_groups_pinned_els(__TopXMLNS, __Opts,
					_els, []),
    {groups_pinned, Messages}.

decode_groups_pinned_els(__TopXMLNS, __Opts, [],
			 Messages) ->
    lists:reverse(Messages);
decode_groups_pinned_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"pinned-message">>, _attrs, _} = _el
			  | _els],
			 Messages) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_pinned_els(__TopXMLNS, __Opts, _els,
				   [decode_groups_pinned_message(<<"https://xabber.com/protocol/groups">>,
								 __Opts, _el)
				    | Messages]);
      _ ->
	  decode_groups_pinned_els(__TopXMLNS, __Opts, _els,
				   Messages)
    end;
decode_groups_pinned_els(__TopXMLNS, __Opts, [_ | _els],
			 Messages) ->
    decode_groups_pinned_els(__TopXMLNS, __Opts, _els,
			     Messages).

encode_groups_pinned({groups_pinned, Messages},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_pinned_$messages'(Messages,
						       __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"pinned">>, _attrs, _els}.

'encode_groups_pinned_$messages'([], __TopXMLNS,
				 _acc) ->
    _acc;
'encode_groups_pinned_$messages'([Messages | _els],
				 __TopXMLNS, _acc) ->
    'encode_groups_pinned_$messages'(_els, __TopXMLNS,
				     [encode_groups_pinned_message(Messages,
								   __TopXMLNS)
				      | _acc]).

decode_groups_pinned_message(__TopXMLNS, __Opts,
			     {xmlel, <<"pinned-message">>, _attrs, _els}) ->
    Id = decode_groups_pinned_message_attrs(__TopXMLNS,
					    _attrs, undefined),
    {groups_pinned_message, Id}.

decode_groups_pinned_message_attrs(__TopXMLNS,
				   [{<<"id">>, _val} | _attrs], _Id) ->
    decode_groups_pinned_message_attrs(__TopXMLNS, _attrs,
				       _val);
decode_groups_pinned_message_attrs(__TopXMLNS,
				   [_ | _attrs], Id) ->
    decode_groups_pinned_message_attrs(__TopXMLNS, _attrs,
				       Id);
decode_groups_pinned_message_attrs(__TopXMLNS, [],
				   Id) ->
    decode_groups_pinned_message_attr_id(__TopXMLNS, Id).

encode_groups_pinned_message({groups_pinned_message,
			      Id},
			     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_groups_pinned_message_attr_id(Id,
						  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									     __TopXMLNS)),
    {xmlel, <<"pinned-message">>, _attrs, _els}.

decode_groups_pinned_message_attr_id(__TopXMLNS,
				     undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"pinned-message">>,
		   __TopXMLNS}});
decode_groups_pinned_message_attr_id(__TopXMLNS,
				     _val) ->
    _val.

encode_groups_pinned_message_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_settings(__TopXMLNS, __Opts,
		       {xmlel, <<"settings">>, _attrs, _els}) ->
    {Membership, Domains, Contacts, State, Index} =
	decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				   undefined, undefined, undefined, undefined,
				   undefined),
    {groups_settings, Membership, Contacts, Domains, Index,
     State}.

decode_groups_settings_els(__TopXMLNS, __Opts, [],
			   Membership, Domains, Contacts, State, Index) ->
    {Membership, Domains, Contacts, State, Index};
decode_groups_settings_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"membership">>, _attrs, _} = _el | _els],
			   Membership, Domains, Contacts, State, Index) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     decode_groups_membership(<<"https://xabber.com/protocol/groups">>,
							      __Opts, _el),
				     Domains, Contacts, State, Index);
      _ ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains, Contacts, State,
				     Index)
    end;
decode_groups_settings_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"contacts">>, _attrs, _} = _el | _els],
			   Membership, Domains, Contacts, State, Index) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains,
				     decode_groups_contacts(<<"https://xabber.com/protocol/groups">>,
							    __Opts, _el),
				     State, Index);
      _ ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains, Contacts, State,
				     Index)
    end;
decode_groups_settings_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"domains">>, _attrs, _} = _el | _els],
			   Membership, Domains, Contacts, State, Index) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership,
				     decode_groups_domains(<<"https://xabber.com/protocol/groups">>,
							   __Opts, _el),
				     Contacts, State, Index);
      _ ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains, Contacts, State,
				     Index)
    end;
decode_groups_settings_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"index">>, _attrs, _} = _el | _els],
			   Membership, Domains, Contacts, State, Index) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains, Contacts, State,
				     decode_groups_index(<<"https://xabber.com/protocol/groups">>,
							 __Opts, _el));
      _ ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains, Contacts, State,
				     Index)
    end;
decode_groups_settings_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"state">>, _attrs, _} = _el | _els],
			   Membership, Domains, Contacts, State, Index) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains, Contacts,
				     decode_groups_state(<<"https://xabber.com/protocol/groups">>,
							 __Opts, _el),
				     Index);
      _ ->
	  decode_groups_settings_els(__TopXMLNS, __Opts, _els,
				     Membership, Domains, Contacts, State,
				     Index)
    end;
decode_groups_settings_els(__TopXMLNS, __Opts,
			   [_ | _els], Membership, Domains, Contacts, State,
			   Index) ->
    decode_groups_settings_els(__TopXMLNS, __Opts, _els,
			       Membership, Domains, Contacts, State, Index).

encode_groups_settings({groups_settings, Membership,
			Contacts, Domains, Index, State},
		       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_settings_$membership'(Membership,
							   __NewTopXMLNS,
							   'encode_groups_settings_$domains'(Domains,
											     __NewTopXMLNS,
											     'encode_groups_settings_$contacts'(Contacts,
																__NewTopXMLNS,
																'encode_groups_settings_$state'(State,
																				__NewTopXMLNS,
																				'encode_groups_settings_$index'(Index,
																								__NewTopXMLNS,
																								[])))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"settings">>, _attrs, _els}.

'encode_groups_settings_$membership'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_groups_settings_$membership'(Membership,
				     __TopXMLNS, _acc) ->
    [encode_groups_membership(Membership, __TopXMLNS)
     | _acc].

'encode_groups_settings_$domains'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_groups_settings_$domains'(Domains, __TopXMLNS,
				  _acc) ->
    [encode_groups_domains(Domains, __TopXMLNS) | _acc].

'encode_groups_settings_$contacts'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_groups_settings_$contacts'(Contacts, __TopXMLNS,
				   _acc) ->
    [encode_groups_contacts(Contacts, __TopXMLNS) | _acc].

'encode_groups_settings_$state'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_groups_settings_$state'(State, __TopXMLNS,
				_acc) ->
    [encode_groups_state(State, __TopXMLNS) | _acc].

'encode_groups_settings_$index'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_groups_settings_$index'(Index, __TopXMLNS,
				_acc) ->
    [encode_groups_index(Index, __TopXMLNS) | _acc].

decode_groups_state(__TopXMLNS, __Opts,
		    {xmlel, <<"state">>, _attrs, _els}) ->
    Cdata = decode_groups_state_els(__TopXMLNS, __Opts,
				    _els, <<>>),
    Cdata.

decode_groups_state_els(__TopXMLNS, __Opts, [],
			Cdata) ->
    decode_groups_state_cdata(__TopXMLNS, Cdata);
decode_groups_state_els(__TopXMLNS, __Opts,
			[{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_state_els(__TopXMLNS, __Opts, _els,
			    <<Cdata/binary, _data/binary>>);
decode_groups_state_els(__TopXMLNS, __Opts, [_ | _els],
			Cdata) ->
    decode_groups_state_els(__TopXMLNS, __Opts, _els,
			    Cdata).

encode_groups_state(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_state_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"state">>, _attrs, _els}.

decode_groups_state_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_groups_state_cdata(__TopXMLNS, _val) ->
    case catch dec_enum(_val, [active, inactive]) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"state">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_state_cdata(undefined, _acc) -> _acc;
encode_groups_state_cdata(_val, _acc) ->
    [{xmlcdata, enc_enum(_val)} | _acc].

decode_groups_index(__TopXMLNS, __Opts,
		    {xmlel, <<"index">>, _attrs, _els}) ->
    Cdata = decode_groups_index_els(__TopXMLNS, __Opts,
				    _els, <<>>),
    Cdata.

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

encode_groups_index(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_index_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"index">>, _attrs, _els}.

decode_groups_index_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_groups_index_cdata(__TopXMLNS, _val) ->
    case catch dec_enum(_val, [none, local, global]) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"index">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_index_cdata(undefined, _acc) -> _acc;
encode_groups_index_cdata(_val, _acc) ->
    [{xmlcdata, enc_enum(_val)} | _acc].

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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_domain_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domain">>, _attrs, _els}.

decode_groups_domain_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"domain">>, __TopXMLNS}});
decode_groups_domain_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"domain">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_domain_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_contact_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contact">>, _attrs, _els}.

decode_groups_contact_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"contact">>, __TopXMLNS}});
decode_groups_contact_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"contact">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_contact_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_groups_membership(__TopXMLNS, __Opts,
			 {xmlel, <<"membership">>, _attrs, _els}) ->
    Cdata = decode_groups_membership_els(__TopXMLNS, __Opts,
					 _els, <<>>),
    Cdata.

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

encode_groups_membership(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_membership_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"membership">>, _attrs, _els}.

decode_groups_membership_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_groups_membership_cdata(__TopXMLNS, _val) ->
    case catch dec_enum(_val, [open, private]) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"membership">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_membership_cdata(undefined, _acc) -> _acc;
encode_groups_membership_cdata(_val, _acc) ->
    [{xmlcdata, enc_enum(_val)} | _acc].

decode_groups_info(__TopXMLNS, __Opts,
		   {xmlel, <<"info">>, _attrs, _els}) ->
    {Avatar, Status, Name, Description} =
	decode_groups_info_els(__TopXMLNS, __Opts, _els,
			       undefined, undefined, undefined, undefined),
    {groups_info, Name, Description, Avatar, Status}.

decode_groups_info_els(__TopXMLNS, __Opts, [], Avatar,
		       Status, Name, Description) ->
    {Avatar, Status, Name, Description};
decode_groups_info_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"name">>, _attrs, _} = _el | _els], Avatar,
		       Status, Name, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 Status,
				 decode_groups_name(<<"https://xabber.com/protocol/groups">>,
						    __Opts, _el),
				 Description);
      _ ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 Status, Name, Description)
    end;
decode_groups_info_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"description">>, _attrs, _} = _el | _els],
		       Avatar, Status, Name, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 Status, Name,
				 decode_groups_description(<<"https://xabber.com/protocol/groups">>,
							   __Opts, _el));
      _ ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 Status, Name, Description)
    end;
decode_groups_info_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"avatar">>, _attrs, _} = _el | _els], Avatar,
		       Status, Name, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els,
				 decode_groups_avatar(<<"https://xabber.com/protocol/groups">>,
						      __Opts, _el),
				 Status, Name, Description);
      _ ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 Status, Name, Description)
    end;
decode_groups_info_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"status">>, _attrs, _} = _el | _els], Avatar,
		       Status, Name, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"jabber:client">> ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 rfc6120:decode_presence_status(<<"jabber:client">>,
								__Opts, _el),
				 Name, Description);
      <<"jabber:server">> ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 rfc6120:decode_presence_status(<<"jabber:server">>,
								__Opts, _el),
				 Name, Description);
      <<"jabber:component:accept">> ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 rfc6120:decode_presence_status(<<"jabber:component:accept">>,
								__Opts, _el),
				 Name, Description);
      _ ->
	  decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
				 Status, Name, Description)
    end;
decode_groups_info_els(__TopXMLNS, __Opts, [_ | _els],
		       Avatar, Status, Name, Description) ->
    decode_groups_info_els(__TopXMLNS, __Opts, _els, Avatar,
			   Status, Name, Description).

encode_groups_info({groups_info, Name, Description,
		    Avatar, Status},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_info_$avatar'(Avatar,
						   __NewTopXMLNS,
						   'encode_groups_info_$status'(Status,
										__NewTopXMLNS,
										'encode_groups_info_$name'(Name,
													   __NewTopXMLNS,
													   'encode_groups_info_$description'(Description,
																	     __NewTopXMLNS,
																	     []))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"info">>, _attrs, _els}.

'encode_groups_info_$avatar'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_info_$avatar'(Avatar, __TopXMLNS,
			     _acc) ->
    [encode_groups_avatar(Avatar, __TopXMLNS) | _acc].

'encode_groups_info_$status'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_info_$status'(Status, __TopXMLNS,
			     _acc) ->
    [rfc6120:encode_presence_status(Status, __TopXMLNS)
     | _acc].

'encode_groups_info_$name'(undefined, __TopXMLNS,
			   _acc) ->
    _acc;
'encode_groups_info_$name'(Name, __TopXMLNS, _acc) ->
    [encode_groups_name(Name, __TopXMLNS) | _acc].

'encode_groups_info_$description'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_groups_info_$description'(Description,
				  __TopXMLNS, _acc) ->
    [encode_groups_description(Description, __TopXMLNS)
     | _acc].

decode_groups_description(__TopXMLNS, __Opts,
			  {xmlel, <<"description">>, _attrs, _els}) ->
    Cdata = decode_groups_description_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    Cdata.

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

encode_groups_description(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
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

decode_groups_name(__TopXMLNS, __Opts,
		   {xmlel, <<"name">>, _attrs, _els}) ->
    Cdata = decode_groups_name_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    Cdata.

decode_groups_name_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_groups_name_cdata(__TopXMLNS, Cdata);
decode_groups_name_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Cdata) ->
    decode_groups_name_els(__TopXMLNS, __Opts, _els,
			   <<Cdata/binary, _data/binary>>);
decode_groups_name_els(__TopXMLNS, __Opts, [_ | _els],
		       Cdata) ->
    decode_groups_name_els(__TopXMLNS, __Opts, _els, Cdata).

encode_groups_name(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_name_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"name">>, _attrs, _els}.

decode_groups_name_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_name_cdata(__TopXMLNS, _val) -> _val.

encode_groups_name_cdata(<<>>, _acc) -> _acc;
encode_groups_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_localpart(__TopXMLNS, __Opts,
			{xmlel, <<"localpart">>, _attrs, _els}) ->
    Cdata = decode_groups_localpart_els(__TopXMLNS, __Opts,
					_els, <<>>),
    Cdata.

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

encode_groups_localpart(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = encode_groups_localpart_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"localpart">>, _attrs, _els}.

decode_groups_localpart_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_localpart_cdata(__TopXMLNS, _val) -> _val.

encode_groups_localpart_cdata(<<>>, _acc) -> _acc;
encode_groups_localpart_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_groups_user(__TopXMLNS, __Opts,
		   {xmlel, <<"user">>, _attrs, _els}) ->
    {Avatar, Last, Jid, Badge, Nickname, Role} =
	decode_groups_user_els(__TopXMLNS, __Opts, _els,
			       undefined, undefined, undefined, undefined,
			       undefined, undefined),
    Id = decode_groups_user_attrs(__TopXMLNS, _attrs,
				  undefined),
    {groups_user, Id, Jid, Role, Badge, Nickname, Avatar,
     Last}.

decode_groups_user_els(__TopXMLNS, __Opts, [], Avatar,
		       Last, Jid, Badge, Nickname, Role) ->
    {Avatar, Last, Jid, Badge, Nickname, Role};
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Avatar,
		       Last, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last,
				 decode_groups_jid(<<"https://xabber.com/protocol/groups">>,
						   __Opts, _el),
				 Badge, Nickname, Role);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge, Nickname, Role)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"role">>, _attrs, _} = _el | _els], Avatar,
		       Last, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge, Nickname,
				 decode_groups_role(<<"https://xabber.com/protocol/groups">>,
						    __Opts, _el));
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge, Nickname, Role)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"nickname">>, _attrs, _} = _el | _els],
		       Avatar, Last, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge,
				 decode_groups_nickname(<<"https://xabber.com/protocol/groups">>,
							__Opts, _el),
				 Role);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge, Nickname, Role)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"avatar">>, _attrs, _} = _el | _els], Avatar,
		       Last, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els,
				 decode_groups_avatar(<<"https://xabber.com/protocol/groups">>,
						      __Opts, _el),
				 Last, Jid, Badge, Nickname, Role);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge, Nickname, Role)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"badge">>, _attrs, _} = _el | _els], Avatar,
		       Last, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid,
				 decode_groups_badge(<<"https://xabber.com/protocol/groups">>,
						     __Opts, _el),
				 Nickname, Role);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge, Nickname, Role)
    end;
decode_groups_user_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"last">>, _attrs, _} = _el | _els], Avatar,
		       Last, Jid, Badge, Nickname, Role) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups">> ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 decode_groups_last(<<"https://xabber.com/protocol/groups">>,
						    __Opts, _el),
				 Jid, Badge, Nickname, Role);
      _ ->
	  decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
				 Last, Jid, Badge, Nickname, Role)
    end;
decode_groups_user_els(__TopXMLNS, __Opts, [_ | _els],
		       Avatar, Last, Jid, Badge, Nickname, Role) ->
    decode_groups_user_els(__TopXMLNS, __Opts, _els, Avatar,
			   Last, Jid, Badge, Nickname, Role).

decode_groups_user_attrs(__TopXMLNS,
			 [{<<"id">>, _val} | _attrs], _Id) ->
    decode_groups_user_attrs(__TopXMLNS, _attrs, _val);
decode_groups_user_attrs(__TopXMLNS, [_ | _attrs],
			 Id) ->
    decode_groups_user_attrs(__TopXMLNS, _attrs, Id);
decode_groups_user_attrs(__TopXMLNS, [], Id) ->
    decode_groups_user_attr_id(__TopXMLNS, Id).

encode_groups_user({groups_user, Id, Jid, Role, Badge,
		    Nickname, Avatar, Last},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_groups_user_$avatar'(Avatar,
						   __NewTopXMLNS,
						   'encode_groups_user_$last'(Last,
									      __NewTopXMLNS,
									      'encode_groups_user_$jid'(Jid,
													__NewTopXMLNS,
													'encode_groups_user_$badge'(Badge,
																    __NewTopXMLNS,
																    'encode_groups_user_$nickname'(Nickname,
																				   __NewTopXMLNS,
																				   'encode_groups_user_$role'(Role,
																							      __NewTopXMLNS,
																							      []))))))),
    _attrs = encode_groups_user_attr_id(Id,
					xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								   __TopXMLNS)),
    {xmlel, <<"user">>, _attrs, _els}.

'encode_groups_user_$avatar'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_user_$avatar'(Avatar, __TopXMLNS,
			     _acc) ->
    [encode_groups_avatar(Avatar, __TopXMLNS) | _acc].

'encode_groups_user_$last'(undefined, __TopXMLNS,
			   _acc) ->
    _acc;
'encode_groups_user_$last'(Last, __TopXMLNS, _acc) ->
    [encode_groups_last(Last, __TopXMLNS) | _acc].

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

decode_groups_user_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_user_attr_id(__TopXMLNS, _val) -> _val.

encode_groups_user_attr_id(<<>>, _acc) -> _acc;
encode_groups_user_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_avatar(__TopXMLNS, __Opts,
		     {xmlel, <<"avatar">>, _attrs, _els}) ->
    {Data, Info} = decode_groups_avatar_els(__TopXMLNS,
					    __Opts, _els, undefined, undefined),
    {groups_avatar, Info, Data}.

decode_groups_avatar_els(__TopXMLNS, __Opts, [], Data,
			 Info) ->
    {Data, Info};
decode_groups_avatar_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"info">>, _attrs, _} = _el | _els], Data,
			 Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:avatar:metadata">> ->
	  decode_groups_avatar_els(__TopXMLNS, __Opts, _els, Data,
				   xep0084:decode_avatar_info(<<"urn:xmpp:avatar:metadata">>,
							      __Opts, _el));
      _ ->
	  decode_groups_avatar_els(__TopXMLNS, __Opts, _els, Data,
				   Info)
    end;
decode_groups_avatar_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"data">>, _attrs, _} = _el | _els], Data,
			 Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:avatar:data">> ->
	  decode_groups_avatar_els(__TopXMLNS, __Opts, _els,
				   xep0084:decode_avatar_data(<<"urn:xmpp:avatar:data">>,
							      __Opts, _el),
				   Info);
      _ ->
	  decode_groups_avatar_els(__TopXMLNS, __Opts, _els, Data,
				   Info)
    end;
decode_groups_avatar_els(__TopXMLNS, __Opts, [_ | _els],
			 Data, Info) ->
    decode_groups_avatar_els(__TopXMLNS, __Opts, _els, Data,
			     Info).

encode_groups_avatar({groups_avatar, Info, Data},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_avatar_$data'(Data,
						      __NewTopXMLNS,
						      'encode_groups_avatar_$info'(Info,
										   __NewTopXMLNS,
										   []))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"avatar">>, _attrs, _els}.

'encode_groups_avatar_$data'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_avatar_$data'(Data, __TopXMLNS, _acc) ->
    [xep0084:encode_avatar_data(Data, __TopXMLNS) | _acc].

'encode_groups_avatar_$info'(undefined, __TopXMLNS,
			     _acc) ->
    _acc;
'encode_groups_avatar_$info'(Info, __TopXMLNS, _acc) ->
    [xep0084:encode_avatar_info(Info, __TopXMLNS) | _acc].

decode_groups_last(__TopXMLNS, __Opts,
		   {xmlel, <<"last">>, _attrs, _els}) ->
    Stamp = decode_groups_last_attrs(__TopXMLNS, _attrs,
				     undefined),
    {groups_last, Stamp}.

decode_groups_last_attrs(__TopXMLNS,
			 [{<<"stamp">>, _val} | _attrs], _Stamp) ->
    decode_groups_last_attrs(__TopXMLNS, _attrs, _val);
decode_groups_last_attrs(__TopXMLNS, [_ | _attrs],
			 Stamp) ->
    decode_groups_last_attrs(__TopXMLNS, _attrs, Stamp);
decode_groups_last_attrs(__TopXMLNS, [], Stamp) ->
    decode_groups_last_attr_stamp(__TopXMLNS, Stamp).

encode_groups_last({groups_last, Stamp}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_groups_last_attr_stamp(Stamp,
					   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								      __TopXMLNS)),
    {xmlel, <<"last">>, _attrs, _els}.

decode_groups_last_attr_stamp(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"stamp">>, <<"last">>, __TopXMLNS}});
decode_groups_last_attr_stamp(__TopXMLNS, _val) ->
    case catch dec_utc(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"stamp">>, <<"last">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_last_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, enc_utc(_val)} | _acc].

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

decode_groups_jid_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_groups_jid_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"jid">>, __TopXMLNS}});
      _res -> _res
    end.

encode_groups_jid_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].
