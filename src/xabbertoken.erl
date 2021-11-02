%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbertoken).

-compile(export_all).

do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_query_items(<<"https://xabber.com/protocol/auth-tokens#items">>,
				   Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_query(<<"https://xabber.com/protocol/auth-tokens">>,
			     Opts, El);
do_decode(<<"ip">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_ip(<<"https://xabber.com/protocol/auth-tokens#items">>,
			  Opts, El);
do_decode(<<"last-auth">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_last_auth(<<"https://xabber.com/protocol/auth-tokens#items">>,
				 Opts, El);
do_decode(<<"expire">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_expire(<<"https://xabber.com/protocol/auth-tokens">>,
			      Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_description(<<"https://xabber.com/protocol/auth-tokens">>,
				   Opts, El);
do_decode(<<"device">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_device(<<"https://xabber.com/protocol/auth-tokens">>,
			      Opts, El);
do_decode(<<"client">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_client(<<"https://xabber.com/protocol/auth-tokens">>,
			      Opts, El);
do_decode(<<"token">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens">>,
		       Opts, El);
do_decode(<<"token">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens#items">>,
		       Opts, El);
do_decode(<<"revoke-all">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_revoke_all(<<"https://xabber.com/protocol/auth-tokens">>,
				  Opts, El);
do_decode(<<"x-token">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_feature(<<"https://xabber.com/protocol/auth-tokens">>,
			       Opts, El);
do_decode(<<"revoke">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_revoke(<<"https://xabber.com/protocol/auth-tokens">>,
			      Opts, El);
do_decode(<<"xtoken">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_xtoken(<<"https://xabber.com/protocol/auth-tokens">>,
			      Opts, El);
do_decode(<<"issue">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_issue(<<"https://xabber.com/protocol/auth-tokens">>,
			     Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"ip">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"last-auth">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"expire">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"description">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"device">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"client">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"token">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"token">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"revoke-all">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"x-token">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"revoke">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"xtoken">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"issue">>,
      <<"https://xabber.com/protocol/auth-tokens">>}].

do_encode({xabbertoken_issue, _, _, _, _} = Issue,
	  TopXMLNS) ->
    encode_xabbertoken_issue(Issue, TopXMLNS);
do_encode({xabbertoken_xtoken, _, _, _, _, _, _, _, _} =
	      Xtoken,
	  TopXMLNS) ->
    encode_xabbertoken_xtoken(Xtoken, TopXMLNS);
do_encode({xabbertoken_revoke, _} = Revoke, TopXMLNS) ->
    encode_xabbertoken_revoke(Revoke, TopXMLNS);
do_encode({xabbertoken_feature} = X_token, TopXMLNS) ->
    encode_xabbertoken_feature(X_token, TopXMLNS);
do_encode({xabbertoken_revoke_all} = Revoke_all,
	  TopXMLNS) ->
    encode_xabbertoken_revoke_all(Revoke_all, TopXMLNS);
do_encode({xabbertoken_query, _} = Query, TopXMLNS) ->
    encode_xabbertoken_query(Query, TopXMLNS);
do_encode({xabbertoken_query_items, _} = Query,
	  TopXMLNS) ->
    encode_xabbertoken_query_items(Query, TopXMLNS).

do_get_name({xabbertoken_feature}) -> <<"x-token">>;
do_get_name({xabbertoken_issue, _, _, _, _}) ->
    <<"issue">>;
do_get_name({xabbertoken_query, _}) -> <<"query">>;
do_get_name({xabbertoken_query_items, _}) ->
    <<"query">>;
do_get_name({xabbertoken_revoke, _}) -> <<"revoke">>;
do_get_name({xabbertoken_revoke_all}) ->
    <<"revoke-all">>;
do_get_name({xabbertoken_xtoken, _, _, _, _, _, _, _,
	     _}) ->
    <<"xtoken">>.

do_get_ns({xabbertoken_feature}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_issue, _, _, _, _}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_query, _}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_query_items, _}) ->
    <<"https://xabber.com/protocol/auth-tokens#items">>;
do_get_ns({xabbertoken_revoke, _}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_revoke_all}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_xtoken, _, _, _, _, _, _, _,
	   _}) ->
    <<"https://xabber.com/protocol/auth-tokens">>.

pp(xabbertoken_issue, 4) ->
    [client, device, description, expire];
pp(xabbertoken_xtoken, 8) ->
    [token, uid, expire, client, device, description, ip,
     last_auth];
pp(xabbertoken_revoke, 1) -> [xtokens];
pp(xabbertoken_feature, 0) -> [];
pp(xabbertoken_revoke_all, 0) -> [];
pp(xabbertoken_query, 1) -> [xtoken];
pp(xabbertoken_query_items, 1) -> [xtokens];
pp(_, _) -> no.

records() ->
    [{xabbertoken_issue, 4}, {xabbertoken_xtoken, 8},
     {xabbertoken_revoke, 1}, {xabbertoken_feature, 0},
     {xabbertoken_revoke_all, 0}, {xabbertoken_query, 1},
     {xabbertoken_query_items, 1}].

decode_xabbertoken_query_items(__TopXMLNS, __Opts,
			       {xmlel, <<"query">>, _attrs, _els}) ->
    Xtokens = decode_xabbertoken_query_items_els(__TopXMLNS,
						 __Opts, _els, []),
    {xabbertoken_query_items, Xtokens}.

decode_xabbertoken_query_items_els(__TopXMLNS, __Opts,
				   [], Xtokens) ->
    lists:reverse(Xtokens);
decode_xabbertoken_query_items_els(__TopXMLNS, __Opts,
				   [{xmlel, <<"xtoken">>, _attrs, _} = _el
				    | _els],
				   Xtokens) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_query_items_els(__TopXMLNS, __Opts,
					     _els,
					     [decode_xabbertoken_xtoken(<<"https://xabber.com/protocol/auth-tokens">>,
									__Opts,
									_el)
					      | Xtokens]);
      _ ->
	  decode_xabbertoken_query_items_els(__TopXMLNS, __Opts,
					     _els, Xtokens)
    end;
decode_xabbertoken_query_items_els(__TopXMLNS, __Opts,
				   [_ | _els], Xtokens) ->
    decode_xabbertoken_query_items_els(__TopXMLNS, __Opts,
				       _els, Xtokens).

encode_xabbertoken_query_items({xabbertoken_query_items,
				Xtokens},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_query_items_$xtokens'(Xtokens,
								__NewTopXMLNS,
								[])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabbertoken_query_items_$xtokens'([],
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_query_items_$xtokens'([Xtokens
					   | _els],
					  __TopXMLNS, _acc) ->
    'encode_xabbertoken_query_items_$xtokens'(_els,
					      __TopXMLNS,
					      [encode_xabbertoken_xtoken(Xtokens,
									 __TopXMLNS)
					       | _acc]).

decode_xabbertoken_query(__TopXMLNS, __Opts,
			 {xmlel, <<"query">>, _attrs, _els}) ->
    Xtoken = decode_xabbertoken_query_els(__TopXMLNS,
					  __Opts, _els, error),
    {xabbertoken_query, Xtoken}.

decode_xabbertoken_query_els(__TopXMLNS, __Opts, [],
			     Xtoken) ->
    case Xtoken of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"xtoken">>, __TopXMLNS}});
      {value, Xtoken1} -> Xtoken1
    end;
decode_xabbertoken_query_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"xtoken">>, _attrs, _} = _el | _els],
			     Xtoken) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_query_els(__TopXMLNS, __Opts, _els,
				       {value,
					decode_xabbertoken_xtoken(<<"https://xabber.com/protocol/auth-tokens">>,
								  __Opts,
								  _el)});
      _ ->
	  decode_xabbertoken_query_els(__TopXMLNS, __Opts, _els,
				       Xtoken)
    end;
decode_xabbertoken_query_els(__TopXMLNS, __Opts,
			     [_ | _els], Xtoken) ->
    decode_xabbertoken_query_els(__TopXMLNS, __Opts, _els,
				 Xtoken).

encode_xabbertoken_query({xabbertoken_query, Xtoken},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_query_$xtoken'(Xtoken,
							 __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabbertoken_query_$xtoken'(Xtoken, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken_xtoken(Xtoken, __TopXMLNS) | _acc].

decode_xabbertoken_ip(__TopXMLNS, __Opts,
		      {xmlel, <<"ip">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_ip_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    Cdata.

decode_xabbertoken_ip_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_xabbertoken_ip_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_ip_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_ip_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_xabbertoken_ip_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_xabbertoken_ip_els(__TopXMLNS, __Opts, _els,
			      Cdata).

encode_xabbertoken_ip(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_ip_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"ip">>, _attrs, _els}.

decode_xabbertoken_ip_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_xabbertoken_ip_cdata(__TopXMLNS, _val) -> _val.

encode_xabbertoken_ip_cdata(<<>>, _acc) -> _acc;
encode_xabbertoken_ip_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_last_auth(__TopXMLNS, __Opts,
			     {xmlel, <<"last-auth">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_last_auth_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_last_auth_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_xabbertoken_last_auth_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_last_auth_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_last_auth_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_xabbertoken_last_auth_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_xabbertoken_last_auth_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_xabbertoken_last_auth(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_last_auth_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"last-auth">>, _attrs, _els}.

decode_xabbertoken_last_auth_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbertoken_last_auth_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_last_auth_cdata(<<>>, _acc) -> _acc;
encode_xabbertoken_last_auth_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_expire(__TopXMLNS, __Opts,
			  {xmlel, <<"expire">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_expire_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_expire_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_xabbertoken_expire_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_expire_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_expire_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_xabbertoken_expire_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_xabbertoken_expire_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_xabbertoken_expire(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_expire_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"expire">>, _attrs, _els}.

decode_xabbertoken_expire_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbertoken_expire_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_expire_cdata(<<>>, _acc) -> _acc;
encode_xabbertoken_expire_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_description(__TopXMLNS, __Opts,
			       {xmlel, <<"description">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_description_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_description_els(__TopXMLNS, __Opts,
				   [], Cdata) ->
    decode_xabbertoken_description_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_description_els(__TopXMLNS, __Opts,
				   [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_description_els(__TopXMLNS, __Opts,
				       _els, <<Cdata/binary, _data/binary>>);
decode_xabbertoken_description_els(__TopXMLNS, __Opts,
				   [_ | _els], Cdata) ->
    decode_xabbertoken_description_els(__TopXMLNS, __Opts,
				       _els, Cdata).

encode_xabbertoken_description(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_description_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"description">>, _attrs, _els}.

decode_xabbertoken_description_cdata(__TopXMLNS,
				     <<>>) ->
    <<>>;
decode_xabbertoken_description_cdata(__TopXMLNS,
				     _val) ->
    _val.

encode_xabbertoken_description_cdata(<<>>, _acc) ->
    _acc;
encode_xabbertoken_description_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_device(__TopXMLNS, __Opts,
			  {xmlel, <<"device">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_device_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_device_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_xabbertoken_device_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_device_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_device_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_xabbertoken_device_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_xabbertoken_device_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_xabbertoken_device(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_device_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"device">>, _attrs, _els}.

decode_xabbertoken_device_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbertoken_device_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_device_cdata(<<>>, _acc) -> _acc;
encode_xabbertoken_device_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_client(__TopXMLNS, __Opts,
			  {xmlel, <<"client">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_client_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_client_els(__TopXMLNS, __Opts, [],
			      Cdata) ->
    decode_xabbertoken_client_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_client_els(__TopXMLNS, __Opts,
			      [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_client_els(__TopXMLNS, __Opts, _els,
				  <<Cdata/binary, _data/binary>>);
decode_xabbertoken_client_els(__TopXMLNS, __Opts,
			      [_ | _els], Cdata) ->
    decode_xabbertoken_client_els(__TopXMLNS, __Opts, _els,
				  Cdata).

encode_xabbertoken_client(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_client_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"client">>, _attrs, _els}.

decode_xabbertoken_client_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbertoken_client_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_client_cdata(<<>>, _acc) -> _acc;
encode_xabbertoken_client_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken(__TopXMLNS, __Opts,
		   {xmlel, <<"token">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    Cdata.

decode_xabbertoken_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_xabbertoken_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_els(__TopXMLNS, __Opts, _els,
			   <<Cdata/binary, _data/binary>>);
decode_xabbertoken_els(__TopXMLNS, __Opts, [_ | _els],
		       Cdata) ->
    decode_xabbertoken_els(__TopXMLNS, __Opts, _els, Cdata).

encode_xabbertoken(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/auth-tokens">>,
						 <<"https://xabber.com/protocol/auth-tokens#items">>],
						__TopXMLNS),
    _els = encode_xabbertoken_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"token">>, _attrs, _els}.

decode_xabbertoken_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"token">>, __TopXMLNS}});
decode_xabbertoken_cdata(__TopXMLNS, _val) -> _val.

encode_xabbertoken_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_revoke_all(__TopXMLNS, __Opts,
			      {xmlel, <<"revoke-all">>, _attrs, _els}) ->
    {xabbertoken_revoke_all}.

encode_xabbertoken_revoke_all({xabbertoken_revoke_all},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"revoke-all">>, _attrs, _els}.

decode_xabbertoken_feature(__TopXMLNS, __Opts,
			   {xmlel, <<"x-token">>, _attrs, _els}) ->
    {xabbertoken_feature}.

encode_xabbertoken_feature({xabbertoken_feature},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x-token">>, _attrs, _els}.

decode_xabbertoken_revoke(__TopXMLNS, __Opts,
			  {xmlel, <<"revoke">>, _attrs, _els}) ->
    Xtokens = decode_xabbertoken_revoke_els(__TopXMLNS,
					    __Opts, _els, []),
    {xabbertoken_revoke, Xtokens}.

decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, [],
			      Xtokens) ->
    lists:reverse(Xtokens);
decode_xabbertoken_revoke_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"xtoken">>, _attrs, _} = _el | _els],
			      Xtokens) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, _els,
					[decode_xabbertoken_xtoken(<<"https://xabber.com/protocol/auth-tokens">>,
								   __Opts, _el)
					 | Xtokens]);
      _ ->
	  decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, _els,
					Xtokens)
    end;
decode_xabbertoken_revoke_els(__TopXMLNS, __Opts,
			      [_ | _els], Xtokens) ->
    decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, _els,
				  Xtokens).

encode_xabbertoken_revoke({xabbertoken_revoke, Xtokens},
			  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_revoke_$xtokens'(Xtokens,
							   __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"revoke">>, _attrs, _els}.

'encode_xabbertoken_revoke_$xtokens'([], __TopXMLNS,
				     _acc) ->
    _acc;
'encode_xabbertoken_revoke_$xtokens'([Xtokens | _els],
				     __TopXMLNS, _acc) ->
    'encode_xabbertoken_revoke_$xtokens'(_els, __TopXMLNS,
					 [encode_xabbertoken_xtoken(Xtokens,
								    __TopXMLNS)
					  | _acc]).

decode_xabbertoken_xtoken(__TopXMLNS, __Opts,
			  {xmlel, <<"xtoken">>, _attrs, _els}) ->
    {Ip, Client, Expire, Device, Last_auth, Description,
     Token} =
	decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
				      undefined, undefined, undefined,
				      undefined, undefined, undefined,
				      undefined),
    Uid = decode_xabbertoken_xtoken_attrs(__TopXMLNS,
					  _attrs, undefined),
    {xabbertoken_xtoken, Token, Uid, Expire, Client, Device,
     Description, Ip, Last_auth}.

decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, [],
			      Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    {Ip, Client, Expire, Device, Last_auth, Description,
     Token};
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"token">>, _attrs, _} = _el | _els],
			      Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description,
					decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens">>,
							   __Opts, _el));
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description,
					decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens#items">>,
							   __Opts, _el));
      _ ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description, Token)
    end;
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"client">>, _attrs, _} = _el | _els],
			      Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip,
					decode_xabbertoken_client(<<"https://xabber.com/protocol/auth-tokens">>,
								  __Opts, _el),
					Expire, Device, Last_auth, Description,
					Token);
      _ ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description, Token)
    end;
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			      Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire,
					decode_xabbertoken_device(<<"https://xabber.com/protocol/auth-tokens">>,
								  __Opts, _el),
					Last_auth, Description, Token);
      _ ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description, Token)
    end;
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"description">>, _attrs, _} = _el
			       | _els],
			      Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					decode_xabbertoken_description(<<"https://xabber.com/protocol/auth-tokens">>,
								       __Opts,
								       _el),
					Token);
      _ ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description, Token)
    end;
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"ip">>, _attrs, _} = _el | _els], Ip,
			      Client, Expire, Device, Last_auth, Description,
			      Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					decode_xabbertoken_ip(<<"https://xabber.com/protocol/auth-tokens#items">>,
							      __Opts, _el),
					Client, Expire, Device, Last_auth,
					Description, Token);
      _ ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description, Token)
    end;
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"last-auth">>, _attrs, _} = _el
			       | _els],
			      Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device,
					decode_xabbertoken_last_auth(<<"https://xabber.com/protocol/auth-tokens#items">>,
								     __Opts,
								     _el),
					Description, Token);
      _ ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description, Token)
    end;
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"expire">>, _attrs, _} = _el | _els],
			      Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client,
					decode_xabbertoken_expire(<<"https://xabber.com/protocol/auth-tokens">>,
								  __Opts, _el),
					Device, Last_auth, Description, Token);
      _ ->
	  decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
					Ip, Client, Expire, Device, Last_auth,
					Description, Token)
    end;
decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts,
			      [_ | _els], Ip, Client, Expire, Device, Last_auth,
			      Description, Token) ->
    decode_xabbertoken_xtoken_els(__TopXMLNS, __Opts, _els,
				  Ip, Client, Expire, Device, Last_auth,
				  Description, Token).

decode_xabbertoken_xtoken_attrs(__TopXMLNS,
				[{<<"uid">>, _val} | _attrs], _Uid) ->
    decode_xabbertoken_xtoken_attrs(__TopXMLNS, _attrs,
				    _val);
decode_xabbertoken_xtoken_attrs(__TopXMLNS,
				[_ | _attrs], Uid) ->
    decode_xabbertoken_xtoken_attrs(__TopXMLNS, _attrs,
				    Uid);
decode_xabbertoken_xtoken_attrs(__TopXMLNS, [], Uid) ->
    decode_xabbertoken_xtoken_attr_uid(__TopXMLNS, Uid).

encode_xabbertoken_xtoken({xabbertoken_xtoken, Token,
			   Uid, Expire, Client, Device, Description, Ip,
			   Last_auth},
			  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_xabbertoken_xtoken_$ip'(Ip,
							 __NewTopXMLNS,
							 'encode_xabbertoken_xtoken_$client'(Client,
											     __NewTopXMLNS,
											     'encode_xabbertoken_xtoken_$expire'(Expire,
																 __NewTopXMLNS,
																 'encode_xabbertoken_xtoken_$device'(Device,
																				     __NewTopXMLNS,
																				     'encode_xabbertoken_xtoken_$last_auth'(Last_auth,
																									    __NewTopXMLNS,
																									    'encode_xabbertoken_xtoken_$description'(Description,
																														     __NewTopXMLNS,
																														     'encode_xabbertoken_xtoken_$token'(Token,
																																			__NewTopXMLNS,
																																			[])))))))),
    _attrs = encode_xabbertoken_xtoken_attr_uid(Uid,
						xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									   __TopXMLNS)),
    {xmlel, <<"xtoken">>, _attrs, _els}.

'encode_xabbertoken_xtoken_$ip'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_xabbertoken_xtoken_$ip'(Ip, __TopXMLNS, _acc) ->
    [encode_xabbertoken_ip(Ip, __TopXMLNS) | _acc].

'encode_xabbertoken_xtoken_$client'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_xtoken_$client'(Client, __TopXMLNS,
				    _acc) ->
    [encode_xabbertoken_client(Client, __TopXMLNS) | _acc].

'encode_xabbertoken_xtoken_$expire'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_xtoken_$expire'(Expire, __TopXMLNS,
				    _acc) ->
    [encode_xabbertoken_expire(Expire, __TopXMLNS) | _acc].

'encode_xabbertoken_xtoken_$device'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_xtoken_$device'(Device, __TopXMLNS,
				    _acc) ->
    [encode_xabbertoken_device(Device, __TopXMLNS) | _acc].

'encode_xabbertoken_xtoken_$last_auth'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_xtoken_$last_auth'(Last_auth,
				       __TopXMLNS, _acc) ->
    [encode_xabbertoken_last_auth(Last_auth, __TopXMLNS)
     | _acc].

'encode_xabbertoken_xtoken_$description'(undefined,
					 __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_xtoken_$description'(Description,
					 __TopXMLNS, _acc) ->
    [encode_xabbertoken_description(Description, __TopXMLNS)
     | _acc].

'encode_xabbertoken_xtoken_$token'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_xtoken_$token'(Token, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken(Token, __TopXMLNS) | _acc].

decode_xabbertoken_xtoken_attr_uid(__TopXMLNS,
				   undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"uid">>, <<"xtoken">>, __TopXMLNS}});
decode_xabbertoken_xtoken_attr_uid(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_xtoken_attr_uid(_val, _acc) ->
    [{<<"uid">>, _val} | _acc].

decode_xabbertoken_issue(__TopXMLNS, __Opts,
			 {xmlel, <<"issue">>, _attrs, _els}) ->
    {Client, Expire, Device, Description} =
	decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				     undefined, undefined, undefined,
				     undefined),
    {xabbertoken_issue, Client, Device, Description,
     Expire}.

decode_xabbertoken_issue_els(__TopXMLNS, __Opts, [],
			     Client, Expire, Device, Description) ->
    {Client, Expire, Device, Description};
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"client">>, _attrs, _} = _el | _els],
			     Client, Expire, Device, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       decode_xabbertoken_client(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el),
				       Expire, Device, Description);
      _ ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device, Description)
    end;
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			     Client, Expire, Device, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire,
				       decode_xabbertoken_device(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el),
				       Description);
      _ ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device, Description)
    end;
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"description">>, _attrs, _} = _el
			      | _els],
			     Client, Expire, Device, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device,
				       decode_xabbertoken_description(<<"https://xabber.com/protocol/auth-tokens">>,
								      __Opts,
								      _el));
      _ ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device, Description)
    end;
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"expire">>, _attrs, _} = _el | _els],
			     Client, Expire, Device, Description) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client,
				       decode_xabbertoken_expire(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el),
				       Device, Description);
      _ ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device, Description)
    end;
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [_ | _els], Client, Expire, Device, Description) ->
    decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				 Client, Expire, Device, Description).

encode_xabbertoken_issue({xabbertoken_issue, Client,
			  Device, Description, Expire},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_issue_$client'(Client,
							 __NewTopXMLNS,
							 'encode_xabbertoken_issue_$expire'(Expire,
											    __NewTopXMLNS,
											    'encode_xabbertoken_issue_$device'(Device,
															       __NewTopXMLNS,
															       'encode_xabbertoken_issue_$description'(Description,
																				       __NewTopXMLNS,
																				       []))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"issue">>, _attrs, _els}.

'encode_xabbertoken_issue_$client'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_issue_$client'(Client, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken_client(Client, __TopXMLNS) | _acc].

'encode_xabbertoken_issue_$expire'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_issue_$expire'(Expire, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken_expire(Expire, __TopXMLNS) | _acc].

'encode_xabbertoken_issue_$device'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_issue_$device'(Device, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken_device(Device, __TopXMLNS) | _acc].

'encode_xabbertoken_issue_$description'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_issue_$description'(Description,
					__TopXMLNS, _acc) ->
    [encode_xabbertoken_description(Description, __TopXMLNS)
     | _acc].
