%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabberchannels).

-compile(export_all).

do_decode(<<"badge">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_user_badge(<<"https://xabber.com/protocol/channels">>,
			      Opts, El);
do_decode(<<"nickname">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_user_nickname(<<"https://xabber.com/protocol/channels">>,
				 Opts, El);
do_decode(<<"subscription">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_subscription(<<"https://xabber.com/protocol/channels">>,
				Opts, El);
do_decode(<<"present">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_online(<<"https://xabber.com/protocol/channels">>,
			  Opts, El);
do_decode(<<"role">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_user_role(<<"https://xabber.com/protocol/channels">>,
			     Opts, El);
do_decode(<<"jid">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_jid(<<"https://xabber.com/protocol/channels">>,
		       Opts, El);
do_decode(<<"user">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_user_card(<<"https://xabber.com/protocol/channels">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_x(<<"https://xabber.com/protocol/channels">>,
		     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/channels#system-m"
	    "essage">>,
	  El, Opts) ->
    decode_channel_x(<<"https://xabber.com/protocol/channels#system-m"
		       "essage">>,
		     Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_domain(<<"https://xabber.com/protocol/channels">>,
			  Opts, El);
do_decode(<<"domain">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_domain(<<"https://xabber.com/protocol/channels#create">>,
			  Opts, El);
do_decode(<<"contact">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_contact(<<"https://xabber.com/protocol/channels">>,
			   Opts, El);
do_decode(<<"contact">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_contact(<<"https://xabber.com/protocol/channels#create">>,
			   Opts, El);
do_decode(<<"domains">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_domains(<<"https://xabber.com/protocol/channels">>,
			   Opts, El);
do_decode(<<"domains">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_domains(<<"https://xabber.com/protocol/channels#create">>,
			   Opts, El);
do_decode(<<"contacts">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_contacts(<<"https://xabber.com/protocol/channels">>,
			    Opts, El);
do_decode(<<"contacts">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_contacts(<<"https://xabber.com/protocol/channels#create">>,
			    Opts, El);
do_decode(<<"index">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_index(<<"https://xabber.com/protocol/channels">>,
			 Opts, El);
do_decode(<<"index">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_index(<<"https://xabber.com/protocol/channels#create">>,
			 Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_description(<<"https://xabber.com/protocol/channels">>,
			       Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_description(<<"https://xabber.com/protocol/channels#create">>,
			       Opts, El);
do_decode(<<"membership">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_membership(<<"https://xabber.com/protocol/channels">>,
			      Opts, El);
do_decode(<<"membership">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_membership(<<"https://xabber.com/protocol/channels#create">>,
			      Opts, El);
do_decode(<<"localpart">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_localpart(<<"https://xabber.com/protocol/channels">>,
			     Opts, El);
do_decode(<<"localpart">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_localpart(<<"https://xabber.com/protocol/channels#create">>,
			     Opts, El);
do_decode(<<"name">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_name(<<"https://xabber.com/protocol/channels">>,
			Opts, El);
do_decode(<<"name">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_name(<<"https://xabber.com/protocol/channels#create">>,
			Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/channels#delete">>, El,
	  Opts) ->
    decode_channel_query_delete(<<"https://xabber.com/protocol/channels#delete">>,
				Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/channels">>, El, Opts) ->
    decode_channel_query(<<"https://xabber.com/protocol/channels">>,
			 Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/channels#create">>, El,
	  Opts) ->
    decode_channel_query(<<"https://xabber.com/protocol/channels#create">>,
			 Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"badge">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"nickname">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"subscription">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"present">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"role">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"jid">>, <<"https://xabber.com/protocol/channels">>},
     {<<"user">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"x">>, <<"https://xabber.com/protocol/channels">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/channels#system-m"
	"essage">>},
     {<<"domain">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"domain">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"contact">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"contact">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"domains">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"domains">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"contacts">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"contacts">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"index">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"index">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"description">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"description">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"membership">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"membership">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"localpart">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"localpart">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"name">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"name">>,
      <<"https://xabber.com/protocol/channels#create">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/channels#delete">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/channels">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/channels#create">>}].

do_encode({channel_query, _, _, _, _, _} = Query,
	  TopXMLNS) ->
    encode_channel_query(Query, TopXMLNS);
do_encode({channel_query_delete, _} = Query,
	  TopXMLNS) ->
    encode_channel_query_delete(Query, TopXMLNS);
do_encode({channel_name, _} = Name, TopXMLNS) ->
    encode_channel_name(Name, TopXMLNS);
do_encode({channel_localpart, _} = Localpart,
	  TopXMLNS) ->
    encode_channel_localpart(Localpart, TopXMLNS);
do_encode({channel_membership, _} = Membership,
	  TopXMLNS) ->
    encode_channel_membership(Membership, TopXMLNS);
do_encode({channel_description, _} = Description,
	  TopXMLNS) ->
    encode_channel_description(Description, TopXMLNS);
do_encode({channel_index, _} = Index, TopXMLNS) ->
    encode_channel_index(Index, TopXMLNS);
do_encode({channel_contacts, _} = Contacts, TopXMLNS) ->
    encode_channel_contacts(Contacts, TopXMLNS);
do_encode({channel_domains, _} = Domains, TopXMLNS) ->
    encode_channel_domains(Domains, TopXMLNS);
do_encode({channel_contact, _} = Contact, TopXMLNS) ->
    encode_channel_contact(Contact, TopXMLNS);
do_encode({channel_domain, _} = Domain, TopXMLNS) ->
    encode_channel_domain(Domain, TopXMLNS);
do_encode({channel_x, _, _, _, _} = X, TopXMLNS) ->
    encode_channel_x(X, TopXMLNS);
do_encode({channel_user_card, _, _, _, _, _, _, _, _} =
	      User,
	  TopXMLNS) ->
    encode_channel_user_card(User, TopXMLNS).

do_get_name({channel_contact, _}) -> <<"contact">>;
do_get_name({channel_contacts, _}) -> <<"contacts">>;
do_get_name({channel_description, _}) ->
    <<"description">>;
do_get_name({channel_domain, _}) -> <<"domain">>;
do_get_name({channel_domains, _}) -> <<"domains">>;
do_get_name({channel_index, _}) -> <<"index">>;
do_get_name({channel_localpart, _}) -> <<"localpart">>;
do_get_name({channel_membership, _}) ->
    <<"membership">>;
do_get_name({channel_name, _}) -> <<"name">>;
do_get_name({channel_query, _, _, _, _, _}) ->
    <<"query">>;
do_get_name({channel_query_delete, _}) -> <<"query">>;
do_get_name({channel_user_card, _, _, _, _, _, _, _,
	     _}) ->
    <<"user">>;
do_get_name({channel_x, _, _, _, _}) -> <<"x">>.

do_get_ns({channel_contact, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_contacts, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_description, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_domain, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_domains, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_index, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_localpart, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_membership, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_name, _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_query, Xmlns, _, _, _, _}) -> Xmlns;
do_get_ns({channel_query_delete, _}) ->
    <<"https://xabber.com/protocol/channels#delete">>;
do_get_ns({channel_user_card, _, _, _, _, _, _, _,
	   _}) ->
    <<"https://xabber.com/protocol/channels">>;
do_get_ns({channel_x, Xmlns, _, _, _}) -> Xmlns.

get_els({channel_query, _xmlns, _id, _version, _rsm,
	 _sub_els}) ->
    _sub_els;
get_els({channel_x, _xmlns, _type, _version,
	 _sub_els}) ->
    _sub_els.

set_els({channel_query, _xmlns, _id, _version, _rsm, _},
	_sub_els) ->
    {channel_query, _xmlns, _id, _version, _rsm, _sub_els};
set_els({channel_x, _xmlns, _type, _version, _},
	_sub_els) ->
    {channel_x, _xmlns, _type, _version, _sub_els}.

pp(channel_query, 5) ->
    [xmlns, id, version, rsm, sub_els];
pp(channel_query_delete, 1) -> [cdata];
pp(channel_name, 1) -> [cdata];
pp(channel_localpart, 1) -> [cdata];
pp(channel_membership, 1) -> [cdata];
pp(channel_description, 1) -> [cdata];
pp(channel_index, 1) -> [cdata];
pp(channel_contacts, 1) -> [contact];
pp(channel_domains, 1) -> [domain];
pp(channel_contact, 1) -> [cdata];
pp(channel_domain, 1) -> [cdata];
pp(channel_x, 4) -> [xmlns, type, version, sub_els];
pp(channel_user_card, 8) ->
    [id, jid, role, nickname, badge, avatar, present,
     subscription];
pp(_, _) -> no.

records() ->
    [{channel_query, 5}, {channel_query_delete, 1},
     {channel_name, 1}, {channel_localpart, 1},
     {channel_membership, 1}, {channel_description, 1},
     {channel_index, 1}, {channel_contacts, 1},
     {channel_domains, 1}, {channel_contact, 1},
     {channel_domain, 1}, {channel_x, 4},
     {channel_user_card, 8}].

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_int(Int) -> erlang:integer_to_binary(Int).

decode_channel_user_badge(__TopXMLNS, __Opts,
			  {xmlel, <<"badge">>, _attrs, _els}) ->
    Cdata = decode_channel_user_badge_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    Cdata.

decode_channel_user_badge_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_channel_user_badge_cdata(__TopXMLNS, Cdata);
decode_channel_user_badge_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_user_badge_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_channel_user_badge_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_channel_user_badge_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_channel_user_badge(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels">>,
				    [], __TopXMLNS),
    _els = encode_channel_user_badge_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"badge">>, _attrs, _els}.

decode_channel_user_badge_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_channel_user_badge_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_user_badge_cdata(<<>>, _acc) -> _acc;
encode_channel_user_badge_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_user_nickname(__TopXMLNS, __Opts,
			     {xmlel, <<"nickname">>, _attrs, _els}) ->
    Cdata = decode_channel_user_nickname_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    Cdata.

decode_channel_user_nickname_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_channel_user_nickname_cdata(__TopXMLNS, Cdata);
decode_channel_user_nickname_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_user_nickname_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_channel_user_nickname_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_channel_user_nickname_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_channel_user_nickname(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels">>,
				    [], __TopXMLNS),
    _els = encode_channel_user_nickname_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"nickname">>, _attrs, _els}.

decode_channel_user_nickname_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_channel_user_nickname_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_user_nickname_cdata(<<>>, _acc) -> _acc;
encode_channel_user_nickname_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_subscription(__TopXMLNS, __Opts,
			    {xmlel, <<"subscription">>, _attrs, _els}) ->
    Cdata = decode_channel_subscription_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    Cdata.

decode_channel_subscription_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_channel_subscription_cdata(__TopXMLNS, Cdata);
decode_channel_subscription_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_subscription_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_channel_subscription_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_channel_subscription_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_channel_subscription(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels">>,
				    [], __TopXMLNS),
    _els = encode_channel_subscription_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"subscription">>, _attrs, _els}.

decode_channel_subscription_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"subscription">>, __TopXMLNS}});
decode_channel_subscription_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_subscription_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_online(__TopXMLNS, __Opts,
		      {xmlel, <<"present">>, _attrs, _els}) ->
    Cdata = decode_channel_online_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    Cdata.

decode_channel_online_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_channel_online_cdata(__TopXMLNS, Cdata);
decode_channel_online_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_online_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_channel_online_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_channel_online_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_channel_online(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels">>,
				    [], __TopXMLNS),
    _els = encode_channel_online_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"present">>, _attrs, _els}.

decode_channel_online_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_channel_online_cdata(__TopXMLNS, _val) -> _val.

encode_channel_online_cdata(<<>>, _acc) -> _acc;
encode_channel_online_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_user_role(__TopXMLNS, __Opts,
			 {xmlel, <<"role">>, _attrs, _els}) ->
    Cdata = decode_channel_user_role_els(__TopXMLNS, __Opts,
					 _els, <<>>),
    Cdata.

decode_channel_user_role_els(__TopXMLNS, __Opts, [],
			     Cdata) ->
    decode_channel_user_role_cdata(__TopXMLNS, Cdata);
decode_channel_user_role_els(__TopXMLNS, __Opts,
			     [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_user_role_els(__TopXMLNS, __Opts, _els,
				 <<Cdata/binary, _data/binary>>);
decode_channel_user_role_els(__TopXMLNS, __Opts,
			     [_ | _els], Cdata) ->
    decode_channel_user_role_els(__TopXMLNS, __Opts, _els,
				 Cdata).

encode_channel_user_role(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels">>,
				    [], __TopXMLNS),
    _els = encode_channel_user_role_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"role">>, _attrs, _els}.

decode_channel_user_role_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"role">>, __TopXMLNS}});
decode_channel_user_role_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_user_role_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_jid(__TopXMLNS, __Opts,
		   {xmlel, <<"jid">>, _attrs, _els}) ->
    Cdata = decode_channel_jid_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    Cdata.

decode_channel_jid_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_channel_jid_cdata(__TopXMLNS, Cdata);
decode_channel_jid_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_jid_els(__TopXMLNS, __Opts, _els,
			   <<Cdata/binary, _data/binary>>);
decode_channel_jid_els(__TopXMLNS, __Opts, [_ | _els],
		       Cdata) ->
    decode_channel_jid_els(__TopXMLNS, __Opts, _els, Cdata).

encode_channel_jid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels">>,
				    [], __TopXMLNS),
    _els = encode_channel_jid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_channel_jid_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_channel_jid_cdata(__TopXMLNS, _val) -> _val.

encode_channel_jid_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_user_card(__TopXMLNS, __Opts,
			 {xmlel, <<"user">>, _attrs, _els}) ->
    {Avatar, Present, Jid, Badge, Nickname, Role,
     Subscription} =
	decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				     undefined, undefined, undefined, undefined,
				     undefined, undefined, undefined),
    Id = decode_channel_user_card_attrs(__TopXMLNS, _attrs,
					undefined),
    {channel_user_card, Id, Jid, Role, Nickname, Badge,
     Avatar, Present, Subscription}.

decode_channel_user_card_els(__TopXMLNS, __Opts, [],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    {Avatar, Present, Jid, Badge, Nickname, Role,
     Subscription};
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"jid">>, _attrs, _} = _el | _els],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present,
				       decode_channel_jid(<<"https://xabber.com/protocol/channels">>,
							  __Opts, _el),
				       Badge, Nickname, Role, Subscription);
      _ ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role, Subscription)
    end;
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"role">>, _attrs, _} = _el | _els],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       decode_channel_user_role(<<"https://xabber.com/protocol/channels">>,
								__Opts, _el),
				       Subscription);
      _ ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role, Subscription)
    end;
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"nickname">>, _attrs, _} = _el | _els],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge,
				       decode_channel_user_nickname(<<"https://xabber.com/protocol/channels">>,
								    __Opts,
								    _el),
				       Role, Subscription);
      _ ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role, Subscription)
    end;
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"metadata">>, _attrs, _} = _el | _els],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:avatar:metadata">> ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       xep0084:decode_avatar_meta(<<"urn:xmpp:avatar:metadata">>,
								  __Opts, _el),
				       Present, Jid, Badge, Nickname, Role,
				       Subscription);
      _ ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role, Subscription)
    end;
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"badge">>, _attrs, _} = _el | _els],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid,
				       decode_channel_user_badge(<<"https://xabber.com/protocol/channels">>,
								 __Opts, _el),
				       Nickname, Role, Subscription);
      _ ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role, Subscription)
    end;
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"present">>, _attrs, _} = _el | _els],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar,
				       decode_channel_online(<<"https://xabber.com/protocol/channels">>,
							     __Opts, _el),
				       Jid, Badge, Nickname, Role,
				       Subscription);
      _ ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role, Subscription)
    end;
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"subscription">>, _attrs, _} = _el
			      | _els],
			     Avatar, Present, Jid, Badge, Nickname, Role,
			     Subscription) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role,
				       decode_channel_subscription(<<"https://xabber.com/protocol/channels">>,
								   __Opts,
								   _el));
      _ ->
	  decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				       Avatar, Present, Jid, Badge, Nickname,
				       Role, Subscription)
    end;
decode_channel_user_card_els(__TopXMLNS, __Opts,
			     [_ | _els], Avatar, Present, Jid, Badge, Nickname,
			     Role, Subscription) ->
    decode_channel_user_card_els(__TopXMLNS, __Opts, _els,
				 Avatar, Present, Jid, Badge, Nickname, Role,
				 Subscription).

decode_channel_user_card_attrs(__TopXMLNS,
			       [{<<"id">>, _val} | _attrs], _Id) ->
    decode_channel_user_card_attrs(__TopXMLNS, _attrs,
				   _val);
decode_channel_user_card_attrs(__TopXMLNS, [_ | _attrs],
			       Id) ->
    decode_channel_user_card_attrs(__TopXMLNS, _attrs, Id);
decode_channel_user_card_attrs(__TopXMLNS, [], Id) ->
    decode_channel_user_card_attr_id(__TopXMLNS, Id).

encode_channel_user_card({channel_user_card, Id, Jid,
			  Role, Nickname, Badge, Avatar, Present, Subscription},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_channel_user_card_$avatar'(Avatar,
							 __NewTopXMLNS,
							 'encode_channel_user_card_$present'(Present,
											     __NewTopXMLNS,
											     'encode_channel_user_card_$jid'(Jid,
															     __NewTopXMLNS,
															     'encode_channel_user_card_$badge'(Badge,
																			       __NewTopXMLNS,
																			       'encode_channel_user_card_$nickname'(Nickname,
																								    __NewTopXMLNS,
																								    'encode_channel_user_card_$role'(Role,
																												     __NewTopXMLNS,
																												     'encode_channel_user_card_$subscription'(Subscription,
																																	      __NewTopXMLNS,
																																	      [])))))))),
    _attrs = encode_channel_user_card_attr_id(Id,
					      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									 __TopXMLNS)),
    {xmlel, <<"user">>, _attrs, _els}.

'encode_channel_user_card_$avatar'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_channel_user_card_$avatar'(Avatar, __TopXMLNS,
				   _acc) ->
    [xep0084:encode_avatar_meta(Avatar, __TopXMLNS) | _acc].

'encode_channel_user_card_$present'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_channel_user_card_$present'(Present, __TopXMLNS,
				    _acc) ->
    [encode_channel_online(Present, __TopXMLNS) | _acc].

'encode_channel_user_card_$jid'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_channel_user_card_$jid'(Jid, __TopXMLNS,
				_acc) ->
    [encode_channel_jid(Jid, __TopXMLNS) | _acc].

'encode_channel_user_card_$badge'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_channel_user_card_$badge'(Badge, __TopXMLNS,
				  _acc) ->
    [encode_channel_user_badge(Badge, __TopXMLNS) | _acc].

'encode_channel_user_card_$nickname'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_channel_user_card_$nickname'(Nickname,
				     __TopXMLNS, _acc) ->
    [encode_channel_user_nickname(Nickname, __TopXMLNS)
     | _acc].

'encode_channel_user_card_$role'(undefined, __TopXMLNS,
				 _acc) ->
    _acc;
'encode_channel_user_card_$role'(Role, __TopXMLNS,
				 _acc) ->
    [encode_channel_user_role(Role, __TopXMLNS) | _acc].

'encode_channel_user_card_$subscription'(undefined,
					 __TopXMLNS, _acc) ->
    _acc;
'encode_channel_user_card_$subscription'(Subscription,
					 __TopXMLNS, _acc) ->
    [encode_channel_subscription(Subscription, __TopXMLNS)
     | _acc].

decode_channel_user_card_attr_id(__TopXMLNS,
				 undefined) ->
    <<>>;
decode_channel_user_card_attr_id(__TopXMLNS, _val) ->
    _val.

encode_channel_user_card_attr_id(<<>>, _acc) -> _acc;
encode_channel_user_card_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_channel_x(__TopXMLNS, __Opts,
		 {xmlel, <<"x">>, _attrs, _els}) ->
    __Els = decode_channel_x_els(__TopXMLNS, __Opts, _els,
				 []),
    {Xmlns, Type, Version} =
	decode_channel_x_attrs(__TopXMLNS, _attrs, undefined,
			       undefined, undefined),
    {channel_x, Xmlns, Type, Version, __Els}.

decode_channel_x_els(__TopXMLNS, __Opts, [], __Els) ->
    lists:reverse(__Els);
decode_channel_x_els(__TopXMLNS, __Opts,
		     [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_channel_x_els(__TopXMLNS, __Opts, _els,
			       [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_channel_x_els(__TopXMLNS, __Opts, _els,
				     [_el | __Els]);
	    Mod ->
		decode_channel_x_els(__TopXMLNS, __Opts, _els,
				     [Mod:do_decode(_name, __XMLNS, _el, __Opts)
				      | __Els])
	  end
    end;
decode_channel_x_els(__TopXMLNS, __Opts, [_ | _els],
		     __Els) ->
    decode_channel_x_els(__TopXMLNS, __Opts, _els, __Els).

decode_channel_x_attrs(__TopXMLNS,
		       [{<<"xmlns">>, _val} | _attrs], _Xmlns, Type,
		       Version) ->
    decode_channel_x_attrs(__TopXMLNS, _attrs, _val, Type,
			   Version);
decode_channel_x_attrs(__TopXMLNS,
		       [{<<"type">>, _val} | _attrs], Xmlns, _Type, Version) ->
    decode_channel_x_attrs(__TopXMLNS, _attrs, Xmlns, _val,
			   Version);
decode_channel_x_attrs(__TopXMLNS,
		       [{<<"version">>, _val} | _attrs], Xmlns, Type,
		       _Version) ->
    decode_channel_x_attrs(__TopXMLNS, _attrs, Xmlns, Type,
			   _val);
decode_channel_x_attrs(__TopXMLNS, [_ | _attrs], Xmlns,
		       Type, Version) ->
    decode_channel_x_attrs(__TopXMLNS, _attrs, Xmlns, Type,
			   Version);
decode_channel_x_attrs(__TopXMLNS, [], Xmlns, Type,
		       Version) ->
    {decode_channel_x_attr_xmlns(__TopXMLNS, Xmlns),
     decode_channel_x_attr_type(__TopXMLNS, Type),
     decode_channel_x_attr_version(__TopXMLNS, Version)}.

encode_channel_x({channel_x, Xmlns, Type, Version,
		  __Els},
		 __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#system-m"
						   "essage">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_channel_x_attr_version(Version,
					   encode_channel_x_attr_type(Type,
								      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												 __TopXMLNS))),
    {xmlel, <<"x">>, _attrs, _els}.

decode_channel_x_attr_xmlns(__TopXMLNS, undefined) ->
    <<>>;
decode_channel_x_attr_xmlns(__TopXMLNS, _val) -> _val.

decode_channel_x_attr_type(__TopXMLNS, undefined) ->
    <<>>;
decode_channel_x_attr_type(__TopXMLNS, _val) -> _val.

encode_channel_x_attr_type(<<>>, _acc) -> _acc;
encode_channel_x_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_channel_x_attr_version(__TopXMLNS, undefined) ->
    <<>>;
decode_channel_x_attr_version(__TopXMLNS, _val) -> _val.

encode_channel_x_attr_version(<<>>, _acc) -> _acc;
encode_channel_x_attr_version(_val, _acc) ->
    [{<<"version">>, _val} | _acc].

decode_channel_domain(__TopXMLNS, __Opts,
		      {xmlel, <<"domain">>, _attrs, _els}) ->
    Cdata = decode_channel_domain_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    {channel_domain, Cdata}.

decode_channel_domain_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_channel_domain_cdata(__TopXMLNS, Cdata);
decode_channel_domain_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_domain_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_channel_domain_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_channel_domain_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_channel_domain({channel_domain, Cdata},
		      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = encode_channel_domain_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domain">>, _attrs, _els}.

decode_channel_domain_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_channel_domain_cdata(__TopXMLNS, _val) -> _val.

encode_channel_domain_cdata(<<>>, _acc) -> _acc;
encode_channel_domain_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_contact(__TopXMLNS, __Opts,
		       {xmlel, <<"contact">>, _attrs, _els}) ->
    Cdata = decode_channel_contact_els(__TopXMLNS, __Opts,
				       _els, <<>>),
    {channel_contact, Cdata}.

decode_channel_contact_els(__TopXMLNS, __Opts, [],
			   Cdata) ->
    decode_channel_contact_cdata(__TopXMLNS, Cdata);
decode_channel_contact_els(__TopXMLNS, __Opts,
			   [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_contact_els(__TopXMLNS, __Opts, _els,
			       <<Cdata/binary, _data/binary>>);
decode_channel_contact_els(__TopXMLNS, __Opts,
			   [_ | _els], Cdata) ->
    decode_channel_contact_els(__TopXMLNS, __Opts, _els,
			       Cdata).

encode_channel_contact({channel_contact, Cdata},
		       __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = encode_channel_contact_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contact">>, _attrs, _els}.

decode_channel_contact_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_channel_contact_cdata(__TopXMLNS, _val) -> _val.

encode_channel_contact_cdata(<<>>, _acc) -> _acc;
encode_channel_contact_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_domains(__TopXMLNS, __Opts,
		       {xmlel, <<"domains">>, _attrs, _els}) ->
    Domain = decode_channel_domains_els(__TopXMLNS, __Opts,
					_els, []),
    {channel_domains, Domain}.

decode_channel_domains_els(__TopXMLNS, __Opts, [],
			   Domain) ->
    lists:reverse(Domain);
decode_channel_domains_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"domain">>, _attrs, _} = _el | _els],
			   Domain) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_domains_els(__TopXMLNS, __Opts, _els,
				     [decode_channel_domain(<<"https://xabber.com/protocol/channels">>,
							    __Opts, _el)
				      | Domain]);
      <<"https://xabber.com/protocol/channels#create">> ->
	  decode_channel_domains_els(__TopXMLNS, __Opts, _els,
				     [decode_channel_domain(<<"https://xabber.com/protocol/channels#create">>,
							    __Opts, _el)
				      | Domain]);
      _ ->
	  decode_channel_domains_els(__TopXMLNS, __Opts, _els,
				     Domain)
    end;
decode_channel_domains_els(__TopXMLNS, __Opts,
			   [_ | _els], Domain) ->
    decode_channel_domains_els(__TopXMLNS, __Opts, _els,
			       Domain).

encode_channel_domains({channel_domains, Domain},
		       __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_channel_domains_$domain'(Domain,
						       __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"domains">>, _attrs, _els}.

'encode_channel_domains_$domain'([], __TopXMLNS,
				 _acc) ->
    _acc;
'encode_channel_domains_$domain'([Domain | _els],
				 __TopXMLNS, _acc) ->
    'encode_channel_domains_$domain'(_els, __TopXMLNS,
				     [encode_channel_domain(Domain, __TopXMLNS)
				      | _acc]).

decode_channel_contacts(__TopXMLNS, __Opts,
			{xmlel, <<"contacts">>, _attrs, _els}) ->
    Contact = decode_channel_contacts_els(__TopXMLNS,
					  __Opts, _els, []),
    {channel_contacts, Contact}.

decode_channel_contacts_els(__TopXMLNS, __Opts, [],
			    Contact) ->
    lists:reverse(Contact);
decode_channel_contacts_els(__TopXMLNS, __Opts,
			    [{xmlel, <<"contact">>, _attrs, _} = _el | _els],
			    Contact) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/channels">> ->
	  decode_channel_contacts_els(__TopXMLNS, __Opts, _els,
				      [decode_channel_contact(<<"https://xabber.com/protocol/channels">>,
							      __Opts, _el)
				       | Contact]);
      <<"https://xabber.com/protocol/channels#create">> ->
	  decode_channel_contacts_els(__TopXMLNS, __Opts, _els,
				      [decode_channel_contact(<<"https://xabber.com/protocol/channels#create">>,
							      __Opts, _el)
				       | Contact]);
      _ ->
	  decode_channel_contacts_els(__TopXMLNS, __Opts, _els,
				      Contact)
    end;
decode_channel_contacts_els(__TopXMLNS, __Opts,
			    [_ | _els], Contact) ->
    decode_channel_contacts_els(__TopXMLNS, __Opts, _els,
				Contact).

encode_channel_contacts({channel_contacts, Contact},
			__TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_channel_contacts_$contact'(Contact,
							 __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"contacts">>, _attrs, _els}.

'encode_channel_contacts_$contact'([], __TopXMLNS,
				   _acc) ->
    _acc;
'encode_channel_contacts_$contact'([Contact | _els],
				   __TopXMLNS, _acc) ->
    'encode_channel_contacts_$contact'(_els, __TopXMLNS,
				       [encode_channel_contact(Contact,
							       __TopXMLNS)
					| _acc]).

decode_channel_index(__TopXMLNS, __Opts,
		     {xmlel, <<"index">>, _attrs, _els}) ->
    Cdata = decode_channel_index_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    {channel_index, Cdata}.

decode_channel_index_els(__TopXMLNS, __Opts, [],
			 Cdata) ->
    decode_channel_index_cdata(__TopXMLNS, Cdata);
decode_channel_index_els(__TopXMLNS, __Opts,
			 [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_index_els(__TopXMLNS, __Opts, _els,
			     <<Cdata/binary, _data/binary>>);
decode_channel_index_els(__TopXMLNS, __Opts, [_ | _els],
			 Cdata) ->
    decode_channel_index_els(__TopXMLNS, __Opts, _els,
			     Cdata).

encode_channel_index({channel_index, Cdata},
		     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = encode_channel_index_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"index">>, _attrs, _els}.

decode_channel_index_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_channel_index_cdata(__TopXMLNS, _val) -> _val.

encode_channel_index_cdata(<<>>, _acc) -> _acc;
encode_channel_index_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_description(__TopXMLNS, __Opts,
			   {xmlel, <<"description">>, _attrs, _els}) ->
    Cdata = decode_channel_description_els(__TopXMLNS,
					   __Opts, _els, <<>>),
    {channel_description, Cdata}.

decode_channel_description_els(__TopXMLNS, __Opts, [],
			       Cdata) ->
    decode_channel_description_cdata(__TopXMLNS, Cdata);
decode_channel_description_els(__TopXMLNS, __Opts,
			       [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_description_els(__TopXMLNS, __Opts, _els,
				   <<Cdata/binary, _data/binary>>);
decode_channel_description_els(__TopXMLNS, __Opts,
			       [_ | _els], Cdata) ->
    decode_channel_description_els(__TopXMLNS, __Opts, _els,
				   Cdata).

encode_channel_description({channel_description, Cdata},
			   __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = encode_channel_description_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"description">>, _attrs, _els}.

decode_channel_description_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_channel_description_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_description_cdata(<<>>, _acc) -> _acc;
encode_channel_description_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_membership(__TopXMLNS, __Opts,
			  {xmlel, <<"membership">>, _attrs, _els}) ->
    Cdata = decode_channel_membership_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    {channel_membership, Cdata}.

decode_channel_membership_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_channel_membership_cdata(__TopXMLNS, Cdata);
decode_channel_membership_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_membership_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_channel_membership_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_channel_membership_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_channel_membership({channel_membership, Cdata},
			  __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = encode_channel_membership_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"membership">>, _attrs, _els}.

decode_channel_membership_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_channel_membership_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_membership_cdata(<<>>, _acc) -> _acc;
encode_channel_membership_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_localpart(__TopXMLNS, __Opts,
			 {xmlel, <<"localpart">>, _attrs, _els}) ->
    Cdata = decode_channel_localpart_els(__TopXMLNS, __Opts,
					 _els, <<>>),
    {channel_localpart, Cdata}.

decode_channel_localpart_els(__TopXMLNS, __Opts, [],
			     Cdata) ->
    decode_channel_localpart_cdata(__TopXMLNS, Cdata);
decode_channel_localpart_els(__TopXMLNS, __Opts,
			     [{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_localpart_els(__TopXMLNS, __Opts, _els,
				 <<Cdata/binary, _data/binary>>);
decode_channel_localpart_els(__TopXMLNS, __Opts,
			     [_ | _els], Cdata) ->
    decode_channel_localpart_els(__TopXMLNS, __Opts, _els,
				 Cdata).

encode_channel_localpart({channel_localpart, Cdata},
			 __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = encode_channel_localpart_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"localpart">>, _attrs, _els}.

decode_channel_localpart_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_channel_localpart_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_localpart_cdata(<<>>, _acc) -> _acc;
encode_channel_localpart_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_name(__TopXMLNS, __Opts,
		    {xmlel, <<"name">>, _attrs, _els}) ->
    Cdata = decode_channel_name_els(__TopXMLNS, __Opts,
				    _els, <<>>),
    {channel_name, Cdata}.

decode_channel_name_els(__TopXMLNS, __Opts, [],
			Cdata) ->
    decode_channel_name_cdata(__TopXMLNS, Cdata);
decode_channel_name_els(__TopXMLNS, __Opts,
			[{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_name_els(__TopXMLNS, __Opts, _els,
			    <<Cdata/binary, _data/binary>>);
decode_channel_name_els(__TopXMLNS, __Opts, [_ | _els],
			Cdata) ->
    decode_channel_name_els(__TopXMLNS, __Opts, _els,
			    Cdata).

encode_channel_name({channel_name, Cdata},
		    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = encode_channel_name_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"name">>, _attrs, _els}.

decode_channel_name_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_channel_name_cdata(__TopXMLNS, _val) -> _val.

encode_channel_name_cdata(<<>>, _acc) -> _acc;
encode_channel_name_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_query_delete(__TopXMLNS, __Opts,
			    {xmlel, <<"query">>, _attrs, _els}) ->
    Cdata = decode_channel_query_delete_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    {channel_query_delete, Cdata}.

decode_channel_query_delete_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_channel_query_delete_cdata(__TopXMLNS, Cdata);
decode_channel_query_delete_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_channel_query_delete_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_channel_query_delete_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_channel_query_delete_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_channel_query_delete({channel_query_delete,
			     Cdata},
			    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/channels#delete">>,
				    [], __TopXMLNS),
    _els = encode_channel_query_delete_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

decode_channel_query_delete_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_channel_query_delete_cdata(__TopXMLNS, _val) ->
    _val.

encode_channel_query_delete_cdata(<<>>, _acc) -> _acc;
encode_channel_query_delete_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_channel_query(__TopXMLNS, __Opts,
		     {xmlel, <<"query">>, _attrs, _els}) ->
    {Rsm, __Els} = decode_channel_query_els(__TopXMLNS,
					    __Opts, _els, undefined, []),
    {Xmlns, Version, Id} =
	decode_channel_query_attrs(__TopXMLNS, _attrs,
				   undefined, undefined, undefined),
    {channel_query, Xmlns, Id, Version, Rsm, __Els}.

decode_channel_query_els(__TopXMLNS, __Opts, [], Rsm,
			 __Els) ->
    {Rsm, lists:reverse(__Els)};
decode_channel_query_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"set">>, _attrs, _} = _el | _els], Rsm,
			 __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_channel_query_els(__TopXMLNS, __Opts, _els,
				   xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
							  __Opts, _el),
				   __Els);
      _ ->
	  decode_channel_query_els(__TopXMLNS, __Opts, _els, Rsm,
				   [_el | __Els])
    end;
decode_channel_query_els(__TopXMLNS, __Opts,
			 [{xmlel, _name, _attrs, _} = _el | _els], Rsm,
			 __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_channel_query_els(__TopXMLNS, __Opts, _els, Rsm,
				   [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_channel_query_els(__TopXMLNS, __Opts, _els, Rsm,
					 [_el | __Els]);
	    Mod ->
		decode_channel_query_els(__TopXMLNS, __Opts, _els, Rsm,
					 [Mod:do_decode(_name, __XMLNS, _el,
							__Opts)
					  | __Els])
	  end
    end;
decode_channel_query_els(__TopXMLNS, __Opts, [_ | _els],
			 Rsm, __Els) ->
    decode_channel_query_els(__TopXMLNS, __Opts, _els, Rsm,
			     __Els).

decode_channel_query_attrs(__TopXMLNS,
			   [{<<"xmlns">>, _val} | _attrs], _Xmlns, Version,
			   Id) ->
    decode_channel_query_attrs(__TopXMLNS, _attrs, _val,
			       Version, Id);
decode_channel_query_attrs(__TopXMLNS,
			   [{<<"version">>, _val} | _attrs], Xmlns, _Version,
			   Id) ->
    decode_channel_query_attrs(__TopXMLNS, _attrs, Xmlns,
			       _val, Id);
decode_channel_query_attrs(__TopXMLNS,
			   [{<<"id">>, _val} | _attrs], Xmlns, Version, _Id) ->
    decode_channel_query_attrs(__TopXMLNS, _attrs, Xmlns,
			       Version, _val);
decode_channel_query_attrs(__TopXMLNS, [_ | _attrs],
			   Xmlns, Version, Id) ->
    decode_channel_query_attrs(__TopXMLNS, _attrs, Xmlns,
			       Version, Id);
decode_channel_query_attrs(__TopXMLNS, [], Xmlns,
			   Version, Id) ->
    {decode_channel_query_attr_xmlns(__TopXMLNS, Xmlns),
     decode_channel_query_attr_version(__TopXMLNS, Version),
     decode_channel_query_attr_id(__TopXMLNS, Id)}.

encode_channel_query({channel_query, Xmlns, Id, Version,
		      Rsm, __Els},
		     __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/channels">>,
						 <<"https://xabber.com/protocol/channels#create">>],
						__TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_channel_query_$rsm'(Rsm,
						       __NewTopXMLNS, [])),
    _attrs = encode_channel_query_attr_id(Id,
					  encode_channel_query_attr_version(Version,
									    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												       __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_channel_query_$rsm'(undefined, __TopXMLNS,
			    _acc) ->
    _acc;
'encode_channel_query_$rsm'(Rsm, __TopXMLNS, _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

decode_channel_query_attr_xmlns(__TopXMLNS,
				undefined) ->
    <<>>;
decode_channel_query_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_channel_query_attr_version(__TopXMLNS,
				  undefined) ->
    undefined;
decode_channel_query_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"query">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_channel_query_attr_version(undefined, _acc) ->
    _acc;
encode_channel_query_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_channel_query_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_channel_query_attr_id(__TopXMLNS, _val) -> _val.

encode_channel_query_attr_id(<<>>, _acc) -> _acc;
encode_channel_query_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].
