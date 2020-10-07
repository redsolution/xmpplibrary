%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbertoken).

-compile(export_all).

do_decode(<<"ip">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_ip_item(<<"https://xabber.com/protocol/auth-tokens#items">>,
			       Opts, El);
do_decode(<<"token-uid">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_uid_item(<<"https://xabber.com/protocol/auth-tokens#items">>,
				Opts, El);
do_decode(<<"description">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_desc_item(<<"https://xabber.com/protocol/auth-tokens#items">>,
				 Opts, El);
do_decode(<<"expire">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_expire_item(<<"https://xabber.com/protocol/auth-tokens#items">>,
				   Opts, El);
do_decode(<<"last-auth">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_last_auth(<<"https://xabber.com/protocol/auth-tokens#items">>,
				 Opts, El);
do_decode(<<"field">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_field(<<"https://xabber.com/protocol/auth-tokens#items">>,
			     Opts, El);
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_x_tokens(<<"https://xabber.com/protocol/auth-tokens#items">>,
				Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/auth-tokens#items">>, El,
	  Opts) ->
    decode_xabbertoken_query(<<"https://xabber.com/protocol/auth-tokens#items">>,
			     Opts, El);
do_decode(<<"expire">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_expire(<<"https://xabber.com/protocol/auth-tokens">>,
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
do_decode(<<"token-uid">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_uid(<<"https://xabber.com/protocol/auth-tokens">>,
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
do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/auth-tokens">>, El,
	  Opts) ->
    decode_xabbertoken_x_token(<<"https://xabber.com/protocol/auth-tokens">>,
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
    [{<<"ip">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"token-uid">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"description">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"expire">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"last-auth">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"field">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"x">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/auth-tokens#items">>},
     {<<"expire">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"device">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"client">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"token-uid">>,
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
     {<<"x">>,
      <<"https://xabber.com/protocol/auth-tokens">>},
     {<<"issue">>,
      <<"https://xabber.com/protocol/auth-tokens">>}].

do_encode({xabbertoken_issue, _, _, _} = Issue,
	  TopXMLNS) ->
    encode_xabbertoken_issue(Issue, TopXMLNS);
do_encode({xabbertoken_x_token, _, _, _} = X,
	  TopXMLNS) ->
    encode_xabbertoken_x_token(X, TopXMLNS);
do_encode({xabbertoken_revoke, _} = Revoke, TopXMLNS) ->
    encode_xabbertoken_revoke(Revoke, TopXMLNS);
do_encode({xabbertoken_feature} = X_token, TopXMLNS) ->
    encode_xabbertoken_feature(X_token, TopXMLNS);
do_encode({xabbertoken_revoke_all} = Revoke_all,
	  TopXMLNS) ->
    encode_xabbertoken_revoke_all(Revoke_all, TopXMLNS);
do_encode({xabbertoken_query, _} = Query, TopXMLNS) ->
    encode_xabbertoken_query(Query, TopXMLNS);
do_encode({xabbertoken_x_fields, _} = X, TopXMLNS) ->
    encode_xabbertoken_x_tokens(X, TopXMLNS);
do_encode({xabbertoken_field, _, _, _, _, _, _, _} =
	      Field,
	  TopXMLNS) ->
    encode_xabbertoken_field(Field, TopXMLNS).

do_get_name({xabbertoken_feature}) -> <<"x-token">>;
do_get_name({xabbertoken_field, _, _, _, _, _, _, _}) ->
    <<"field">>;
do_get_name({xabbertoken_issue, _, _, _}) ->
    <<"issue">>;
do_get_name({xabbertoken_query, _}) -> <<"query">>;
do_get_name({xabbertoken_revoke, _}) -> <<"revoke">>;
do_get_name({xabbertoken_revoke_all}) ->
    <<"revoke-all">>;
do_get_name({xabbertoken_x_fields, _}) -> <<"x">>;
do_get_name({xabbertoken_x_token, _, _, _}) -> <<"x">>.

do_get_ns({xabbertoken_feature}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_field, _, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/auth-tokens#items">>;
do_get_ns({xabbertoken_issue, _, _, _}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_query, _}) ->
    <<"https://xabber.com/protocol/auth-tokens#items">>;
do_get_ns({xabbertoken_revoke, _}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_revoke_all}) ->
    <<"https://xabber.com/protocol/auth-tokens">>;
do_get_ns({xabbertoken_x_fields, _}) ->
    <<"https://xabber.com/protocol/auth-tokens#items">>;
do_get_ns({xabbertoken_x_token, _, _, _}) ->
    <<"https://xabber.com/protocol/auth-tokens">>.

pp(xabbertoken_issue, 3) -> [client, device, expire];
pp(xabbertoken_x_token, 3) ->
    [token, token_uid, expire];
pp(xabbertoken_revoke, 1) -> [token_uid];
pp(xabbertoken_feature, 0) -> [];
pp(xabbertoken_revoke_all, 0) -> [];
pp(xabbertoken_query, 1) -> [token];
pp(xabbertoken_x_fields, 1) -> [field];
pp(xabbertoken_field, 7) ->
    [var, token, client, device, ip, last, expire];
pp(_, _) -> no.

records() ->
    [{xabbertoken_issue, 3}, {xabbertoken_x_token, 3},
     {xabbertoken_revoke, 1}, {xabbertoken_feature, 0},
     {xabbertoken_revoke_all, 0}, {xabbertoken_query, 1},
     {xabbertoken_x_fields, 1}, {xabbertoken_field, 7}].

decode_xabbertoken_ip_item(__TopXMLNS, __Opts,
			   {xmlel, <<"ip">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_ip_item_els(__TopXMLNS,
					   __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_ip_item_els(__TopXMLNS, __Opts, [],
			       Cdata) ->
    decode_xabbertoken_ip_item_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_ip_item_els(__TopXMLNS, __Opts,
			       [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_ip_item_els(__TopXMLNS, __Opts, _els,
				   <<Cdata/binary, _data/binary>>);
decode_xabbertoken_ip_item_els(__TopXMLNS, __Opts,
			       [_ | _els], Cdata) ->
    decode_xabbertoken_ip_item_els(__TopXMLNS, __Opts, _els,
				   Cdata).

encode_xabbertoken_ip_item(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_ip_item_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"ip">>, _attrs, _els}.

decode_xabbertoken_ip_item_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"ip">>, __TopXMLNS}});
decode_xabbertoken_ip_item_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_ip_item_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_uid_item(__TopXMLNS, __Opts,
			    {xmlel, <<"token-uid">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_uid_item_els(__TopXMLNS,
					    __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_uid_item_els(__TopXMLNS, __Opts, [],
				Cdata) ->
    decode_xabbertoken_uid_item_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_uid_item_els(__TopXMLNS, __Opts,
				[{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_uid_item_els(__TopXMLNS, __Opts,
				    _els, <<Cdata/binary, _data/binary>>);
decode_xabbertoken_uid_item_els(__TopXMLNS, __Opts,
				[_ | _els], Cdata) ->
    decode_xabbertoken_uid_item_els(__TopXMLNS, __Opts,
				    _els, Cdata).

encode_xabbertoken_uid_item(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_uid_item_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"token-uid">>, _attrs, _els}.

decode_xabbertoken_uid_item_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"token-uid">>, __TopXMLNS}});
decode_xabbertoken_uid_item_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_uid_item_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_desc_item(__TopXMLNS, __Opts,
			     {xmlel, <<"description">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_desc_item_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_desc_item_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_xabbertoken_desc_item_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_desc_item_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_desc_item_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_xabbertoken_desc_item_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_xabbertoken_desc_item_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_xabbertoken_desc_item(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_desc_item_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"description">>, _attrs, _els}.

decode_xabbertoken_desc_item_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_xabbertoken_desc_item_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_desc_item_cdata(<<>>, _acc) -> _acc;
encode_xabbertoken_desc_item_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabbertoken_expire_item(__TopXMLNS, __Opts,
			       {xmlel, <<"expire">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_expire_item_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabbertoken_expire_item_els(__TopXMLNS, __Opts,
				   [], Cdata) ->
    decode_xabbertoken_expire_item_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_expire_item_els(__TopXMLNS, __Opts,
				   [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_expire_item_els(__TopXMLNS, __Opts,
				       _els, <<Cdata/binary, _data/binary>>);
decode_xabbertoken_expire_item_els(__TopXMLNS, __Opts,
				   [_ | _els], Cdata) ->
    decode_xabbertoken_expire_item_els(__TopXMLNS, __Opts,
				       _els, Cdata).

encode_xabbertoken_expire_item(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_expire_item_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"expire">>, _attrs, _els}.

decode_xabbertoken_expire_item_cdata(__TopXMLNS,
				     <<>>) ->
    <<>>;
decode_xabbertoken_expire_item_cdata(__TopXMLNS,
				     _val) ->
    _val.

encode_xabbertoken_expire_item_cdata(<<>>, _acc) ->
    _acc;
encode_xabbertoken_expire_item_cdata(_val, _acc) ->
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

decode_xabbertoken_field(__TopXMLNS, __Opts,
			 {xmlel, <<"field">>, _attrs, _els}) ->
    {Ip, Last, Client, Expire, Device, Token} =
	decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				     undefined, undefined, undefined, undefined,
				     undefined, undefined),
    Var = decode_xabbertoken_field_attrs(__TopXMLNS, _attrs,
					 undefined),
    {xabbertoken_field, Var, Token, Client, Device, Ip,
     Last, Expire}.

decode_xabbertoken_field_els(__TopXMLNS, __Opts, [], Ip,
			     Last, Client, Expire, Device, Token) ->
    {Ip, Last, Client, Expire, Device, Token};
decode_xabbertoken_field_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"token-uid">>, _attrs, _} = _el | _els],
			     Ip, Last, Client, Expire, Device, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire, Device,
				       decode_xabbertoken_uid_item(<<"https://xabber.com/protocol/auth-tokens#items">>,
								   __Opts,
								   _el));
      _ ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire, Device, Token)
    end;
decode_xabbertoken_field_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"client">>, _attrs, _} = _el | _els],
			     Ip, Last, Client, Expire, Device, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last,
				       decode_xabbertoken_client(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el),
				       Expire, Device, Token);
      _ ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire, Device, Token)
    end;
decode_xabbertoken_field_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			     Ip, Last, Client, Expire, Device, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire,
				       decode_xabbertoken_device(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el),
				       Token);
      _ ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire, Device, Token)
    end;
decode_xabbertoken_field_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"ip">>, _attrs, _} = _el | _els], Ip,
			     Last, Client, Expire, Device, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       decode_xabbertoken_ip_item(<<"https://xabber.com/protocol/auth-tokens#items">>,
								  __Opts, _el),
				       Last, Client, Expire, Device, Token);
      _ ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire, Device, Token)
    end;
decode_xabbertoken_field_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"last-auth">>, _attrs, _} = _el | _els],
			     Ip, Last, Client, Expire, Device, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip,
				       decode_xabbertoken_last_auth(<<"https://xabber.com/protocol/auth-tokens#items">>,
								    __Opts,
								    _el),
				       Client, Expire, Device, Token);
      _ ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire, Device, Token)
    end;
decode_xabbertoken_field_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"expire">>, _attrs, _} = _el | _els],
			     Ip, Last, Client, Expire, Device, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client,
				       decode_xabbertoken_expire_item(<<"https://xabber.com/protocol/auth-tokens#items">>,
								      __Opts,
								      _el),
				       Device, Token);
      _ ->
	  decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				       Ip, Last, Client, Expire, Device, Token)
    end;
decode_xabbertoken_field_els(__TopXMLNS, __Opts,
			     [_ | _els], Ip, Last, Client, Expire, Device,
			     Token) ->
    decode_xabbertoken_field_els(__TopXMLNS, __Opts, _els,
				 Ip, Last, Client, Expire, Device, Token).

decode_xabbertoken_field_attrs(__TopXMLNS,
			       [{<<"var">>, _val} | _attrs], _Var) ->
    decode_xabbertoken_field_attrs(__TopXMLNS, _attrs,
				   _val);
decode_xabbertoken_field_attrs(__TopXMLNS, [_ | _attrs],
			       Var) ->
    decode_xabbertoken_field_attrs(__TopXMLNS, _attrs, Var);
decode_xabbertoken_field_attrs(__TopXMLNS, [], Var) ->
    decode_xabbertoken_field_attr_var(__TopXMLNS, Var).

encode_xabbertoken_field({xabbertoken_field, Var, Token,
			  Client, Device, Ip, Last, Expire},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_xabbertoken_field_$ip'(Ip,
							__NewTopXMLNS,
							'encode_xabbertoken_field_$last'(Last,
											 __NewTopXMLNS,
											 'encode_xabbertoken_field_$client'(Client,
															    __NewTopXMLNS,
															    'encode_xabbertoken_field_$expire'(Expire,
																			       __NewTopXMLNS,
																			       'encode_xabbertoken_field_$device'(Device,
																								  __NewTopXMLNS,
																								  'encode_xabbertoken_field_$token'(Token,
																												    __NewTopXMLNS,
																												    []))))))),
    _attrs = encode_xabbertoken_field_attr_var(Var,
					       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									  __TopXMLNS)),
    {xmlel, <<"field">>, _attrs, _els}.

'encode_xabbertoken_field_$ip'(undefined, __TopXMLNS,
			       _acc) ->
    _acc;
'encode_xabbertoken_field_$ip'(Ip, __TopXMLNS, _acc) ->
    [encode_xabbertoken_ip_item(Ip, __TopXMLNS) | _acc].

'encode_xabbertoken_field_$last'(undefined, __TopXMLNS,
				 _acc) ->
    _acc;
'encode_xabbertoken_field_$last'(Last, __TopXMLNS,
				 _acc) ->
    [encode_xabbertoken_last_auth(Last, __TopXMLNS) | _acc].

'encode_xabbertoken_field_$client'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_field_$client'(Client, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken_client(Client, __TopXMLNS) | _acc].

'encode_xabbertoken_field_$expire'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_field_$expire'(Expire, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken_expire_item(Expire, __TopXMLNS)
     | _acc].

'encode_xabbertoken_field_$device'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_field_$device'(Device, __TopXMLNS,
				   _acc) ->
    [encode_xabbertoken_device(Device, __TopXMLNS) | _acc].

'encode_xabbertoken_field_$token'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_xabbertoken_field_$token'(Token, __TopXMLNS,
				  _acc) ->
    [encode_xabbertoken_uid_item(Token, __TopXMLNS) | _acc].

decode_xabbertoken_field_attr_var(__TopXMLNS,
				  undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"var">>, <<"field">>, __TopXMLNS}});
decode_xabbertoken_field_attr_var(__TopXMLNS, _val) ->
    _val.

encode_xabbertoken_field_attr_var(_val, _acc) ->
    [{<<"var">>, _val} | _acc].

decode_xabbertoken_x_tokens(__TopXMLNS, __Opts,
			    {xmlel, <<"x">>, _attrs, _els}) ->
    Field = decode_xabbertoken_x_tokens_els(__TopXMLNS,
					    __Opts, _els, []),
    {xabbertoken_x_fields, Field}.

decode_xabbertoken_x_tokens_els(__TopXMLNS, __Opts, [],
				Field) ->
    lists:reverse(Field);
decode_xabbertoken_x_tokens_els(__TopXMLNS, __Opts,
				[{xmlel, <<"field">>, _attrs, _} = _el | _els],
				Field) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_x_tokens_els(__TopXMLNS, __Opts,
					  _els,
					  [decode_xabbertoken_field(<<"https://xabber.com/protocol/auth-tokens#items">>,
								    __Opts, _el)
					   | Field]);
      _ ->
	  decode_xabbertoken_x_tokens_els(__TopXMLNS, __Opts,
					  _els, Field)
    end;
decode_xabbertoken_x_tokens_els(__TopXMLNS, __Opts,
				[_ | _els], Field) ->
    decode_xabbertoken_x_tokens_els(__TopXMLNS, __Opts,
				    _els, Field).

encode_xabbertoken_x_tokens({xabbertoken_x_fields,
			     Field},
			    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_x_tokens_$field'(Field,
							   __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x">>, _attrs, _els}.

'encode_xabbertoken_x_tokens_$field'([], __TopXMLNS,
				     _acc) ->
    _acc;
'encode_xabbertoken_x_tokens_$field'([Field | _els],
				     __TopXMLNS, _acc) ->
    'encode_xabbertoken_x_tokens_$field'(_els, __TopXMLNS,
					 [encode_xabbertoken_field(Field,
								   __TopXMLNS)
					  | _acc]).

decode_xabbertoken_query(__TopXMLNS, __Opts,
			 {xmlel, <<"query">>, _attrs, _els}) ->
    Token = decode_xabbertoken_query_els(__TopXMLNS, __Opts,
					 _els, undefined),
    {xabbertoken_query, Token}.

decode_xabbertoken_query_els(__TopXMLNS, __Opts, [],
			     Token) ->
    Token;
decode_xabbertoken_query_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"token">>, _attrs, _} = _el | _els],
			     Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_query_els(__TopXMLNS, __Opts, _els,
				       decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens">>,
							  __Opts, _el));
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_query_els(__TopXMLNS, __Opts, _els,
				       decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens#items">>,
							  __Opts, _el));
      _ ->
	  decode_xabbertoken_query_els(__TopXMLNS, __Opts, _els,
				       Token)
    end;
decode_xabbertoken_query_els(__TopXMLNS, __Opts,
			     [_ | _els], Token) ->
    decode_xabbertoken_query_els(__TopXMLNS, __Opts, _els,
				 Token).

encode_xabbertoken_query({xabbertoken_query, Token},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens#items">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_query_$token'(Token,
							__NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabbertoken_query_$token'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_xabbertoken_query_$token'(Token, __TopXMLNS,
				  _acc) ->
    [encode_xabbertoken(Token, __TopXMLNS) | _acc].

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

decode_xabbertoken_uid(__TopXMLNS, __Opts,
		       {xmlel, <<"token-uid">>, _attrs, _els}) ->
    Cdata = decode_xabbertoken_uid_els(__TopXMLNS, __Opts,
				       _els, <<>>),
    Cdata.

decode_xabbertoken_uid_els(__TopXMLNS, __Opts, [],
			   Cdata) ->
    decode_xabbertoken_uid_cdata(__TopXMLNS, Cdata);
decode_xabbertoken_uid_els(__TopXMLNS, __Opts,
			   [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabbertoken_uid_els(__TopXMLNS, __Opts, _els,
			       <<Cdata/binary, _data/binary>>);
decode_xabbertoken_uid_els(__TopXMLNS, __Opts,
			   [_ | _els], Cdata) ->
    decode_xabbertoken_uid_els(__TopXMLNS, __Opts, _els,
			       Cdata).

encode_xabbertoken_uid(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els = encode_xabbertoken_uid_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"token-uid">>, _attrs, _els}.

decode_xabbertoken_uid_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"token-uid">>, __TopXMLNS}});
decode_xabbertoken_uid_cdata(__TopXMLNS, _val) -> _val.

encode_xabbertoken_uid_cdata(_val, _acc) ->
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
    Token_uid = decode_xabbertoken_revoke_els(__TopXMLNS,
					      __Opts, _els, []),
    {xabbertoken_revoke, Token_uid}.

decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, [],
			      Token_uid) ->
    lists:reverse(Token_uid);
decode_xabbertoken_revoke_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"token-uid">>, _attrs, _} = _el
			       | _els],
			      Token_uid) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, _els,
					[decode_xabbertoken_uid(<<"https://xabber.com/protocol/auth-tokens">>,
								__Opts, _el)
					 | Token_uid]);
      _ ->
	  decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, _els,
					Token_uid)
    end;
decode_xabbertoken_revoke_els(__TopXMLNS, __Opts,
			      [_ | _els], Token_uid) ->
    decode_xabbertoken_revoke_els(__TopXMLNS, __Opts, _els,
				  Token_uid).

encode_xabbertoken_revoke({xabbertoken_revoke,
			   Token_uid},
			  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_revoke_$token_uid'(Token_uid,
							     __NewTopXMLNS,
							     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"revoke">>, _attrs, _els}.

'encode_xabbertoken_revoke_$token_uid'([], __TopXMLNS,
				       _acc) ->
    _acc;
'encode_xabbertoken_revoke_$token_uid'([Token_uid
					| _els],
				       __TopXMLNS, _acc) ->
    'encode_xabbertoken_revoke_$token_uid'(_els, __TopXMLNS,
					   [encode_xabbertoken_uid(Token_uid,
								   __TopXMLNS)
					    | _acc]).

decode_xabbertoken_x_token(__TopXMLNS, __Opts,
			   {xmlel, <<"x">>, _attrs, _els}) ->
    {Token_uid, Expire, Token} =
	decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
				       undefined, undefined, undefined),
    {xabbertoken_x_token, Token, Token_uid, Expire}.

decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, [],
			       Token_uid, Expire, Token) ->
    {Token_uid, Expire, Token};
decode_xabbertoken_x_token_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"token">>, _attrs, _} = _el | _els],
			       Token_uid, Expire, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
					 Token_uid, Expire,
					 decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens">>,
							    __Opts, _el));
      <<"https://xabber.com/protocol/auth-tokens#items">> ->
	  decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
					 Token_uid, Expire,
					 decode_xabbertoken(<<"https://xabber.com/protocol/auth-tokens#items">>,
							    __Opts, _el));
      _ ->
	  decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
					 Token_uid, Expire, Token)
    end;
decode_xabbertoken_x_token_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"token-uid">>, _attrs, _} = _el
				| _els],
			       Token_uid, Expire, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
					 decode_xabbertoken_uid(<<"https://xabber.com/protocol/auth-tokens">>,
								__Opts, _el),
					 Expire, Token);
      _ ->
	  decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
					 Token_uid, Expire, Token)
    end;
decode_xabbertoken_x_token_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"expire">>, _attrs, _} = _el | _els],
			       Token_uid, Expire, Token) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
					 Token_uid,
					 decode_xabbertoken_expire(<<"https://xabber.com/protocol/auth-tokens">>,
								   __Opts, _el),
					 Token);
      _ ->
	  decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
					 Token_uid, Expire, Token)
    end;
decode_xabbertoken_x_token_els(__TopXMLNS, __Opts,
			       [_ | _els], Token_uid, Expire, Token) ->
    decode_xabbertoken_x_token_els(__TopXMLNS, __Opts, _els,
				   Token_uid, Expire, Token).

encode_xabbertoken_x_token({xabbertoken_x_token, Token,
			    Token_uid, Expire},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/auth-tokens">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabbertoken_x_token_$token_uid'(Token_uid,
							      __NewTopXMLNS,
							      'encode_xabbertoken_x_token_$expire'(Expire,
												   __NewTopXMLNS,
												   'encode_xabbertoken_x_token_$token'(Token,
																       __NewTopXMLNS,
																       [])))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x">>, _attrs, _els}.

'encode_xabbertoken_x_token_$token_uid'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_x_token_$token_uid'(Token_uid,
					__TopXMLNS, _acc) ->
    [encode_xabbertoken_uid(Token_uid, __TopXMLNS) | _acc].

'encode_xabbertoken_x_token_$expire'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_x_token_$expire'(Expire, __TopXMLNS,
				     _acc) ->
    [encode_xabbertoken_expire(Expire, __TopXMLNS) | _acc].

'encode_xabbertoken_x_token_$token'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_xabbertoken_x_token_$token'(Token, __TopXMLNS,
				    _acc) ->
    [encode_xabbertoken(Token, __TopXMLNS) | _acc].

decode_xabbertoken_issue(__TopXMLNS, __Opts,
			 {xmlel, <<"issue">>, _attrs, _els}) ->
    {Client, Expire, Device} =
	decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				     undefined, undefined, undefined),
    {xabbertoken_issue, Client, Device, Expire}.

decode_xabbertoken_issue_els(__TopXMLNS, __Opts, [],
			     Client, Expire, Device) ->
    {Client, Expire, Device};
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"client">>, _attrs, _} = _el | _els],
			     Client, Expire, Device) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       decode_xabbertoken_client(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el),
				       Expire, Device);
      _ ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device)
    end;
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			     Client, Expire, Device) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire,
				       decode_xabbertoken_device(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el));
      _ ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device)
    end;
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"expire">>, _attrs, _} = _el | _els],
			     Client, Expire, Device) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/auth-tokens">> ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client,
				       decode_xabbertoken_expire(<<"https://xabber.com/protocol/auth-tokens">>,
								 __Opts, _el),
				       Device);
      _ ->
	  decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				       Client, Expire, Device)
    end;
decode_xabbertoken_issue_els(__TopXMLNS, __Opts,
			     [_ | _els], Client, Expire, Device) ->
    decode_xabbertoken_issue_els(__TopXMLNS, __Opts, _els,
				 Client, Expire, Device).

encode_xabbertoken_issue({xabbertoken_issue, Client,
			  Device, Expire},
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
															       [])))),
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
