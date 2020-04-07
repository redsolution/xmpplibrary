%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep0357).

-compile(export_all).

do_decode(<<"encrypted">>,
	  <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_encrypted(<<"https://xabber.com/protocol/push">>,
		     Opts, El);
do_decode(<<"call">>,
	  <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_push_call(<<"https://xabber.com/protocol/push">>,
		     Opts, El);
do_decode(<<"encryption-key">>,
	  <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_encryption_key(<<"https://xabber.com/protocol/push">>,
			  Opts, El);
do_decode(<<"security">>,
	  <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_push_security(<<"https://xabber.com/protocol/push">>,
			 Opts, El);
do_decode(<<"notification">>,
	  <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_push_notification(<<"https://xabber.com/protocol/push">>,
			     Opts, El);
do_decode(<<"disable">>,
	  <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_push_disable(<<"https://xabber.com/protocol/push">>,
			Opts, El);
do_decode(<<"enable">>,
	  <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_push_enable(<<"https://xabber.com/protocol/push">>,
		       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"encrypted">>,
      <<"https://xabber.com/protocol/push">>},
     {<<"call">>, <<"https://xabber.com/protocol/push">>},
     {<<"encryption-key">>,
      <<"https://xabber.com/protocol/push">>},
     {<<"security">>,
      <<"https://xabber.com/protocol/push">>},
     {<<"notification">>,
      <<"https://xabber.com/protocol/push">>},
     {<<"disable">>, <<"https://xabber.com/protocol/push">>},
     {<<"enable">>, <<"https://xabber.com/protocol/push">>}].

do_encode({push_enable, _, _, _, _} = Enable,
	  TopXMLNS) ->
    encode_push_enable(Enable, TopXMLNS);
do_encode({push_disable, _, _} = Disable, TopXMLNS) ->
    encode_push_disable(Disable, TopXMLNS);
do_encode({push_notification, _, _} = Notification,
	  TopXMLNS) ->
    encode_push_notification(Notification, TopXMLNS);
do_encode({push_security, _, _} = Security, TopXMLNS) ->
    encode_push_security(Security, TopXMLNS);
do_encode({encryption_key, _} = Encryption_key,
	  TopXMLNS) ->
    encode_encryption_key(Encryption_key, TopXMLNS);
do_encode({push_call} = Call, TopXMLNS) ->
    encode_push_call(Call, TopXMLNS);
do_encode({encrypted, _, _} = Encrypted, TopXMLNS) ->
    encode_encrypted(Encrypted, TopXMLNS).

do_get_name({encrypted, _, _}) -> <<"encrypted">>;
do_get_name({encryption_key, _}) ->
    <<"encryption-key">>;
do_get_name({push_call}) -> <<"call">>;
do_get_name({push_disable, _, _}) -> <<"disable">>;
do_get_name({push_enable, _, _, _, _}) -> <<"enable">>;
do_get_name({push_notification, _, _}) ->
    <<"notification">>;
do_get_name({push_security, _, _}) -> <<"security">>.

do_get_ns({encrypted, _, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({encryption_key, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({push_call}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({push_disable, _, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({push_enable, _, _, _, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({push_notification, _, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({push_security, _, _}) ->
    <<"https://xabber.com/protocol/push">>.

get_els({push_notification, _xdata, _sub_els}) ->
    _sub_els.

set_els({push_notification, _xdata, _}, _sub_els) ->
    {push_notification, _xdata, _sub_els}.

pp(push_enable, 4) -> [jid, node, xdata, push_security];
pp(push_disable, 2) -> [jid, node];
pp(push_notification, 2) -> [xdata, sub_els];
pp(push_security, 2) -> [cipher, encryption_key];
pp(encryption_key, 1) -> [data];
pp(push_call, 0) -> [];
pp(encrypted, 2) -> ['iv-length', data];
pp(_, _) -> no.

records() ->
    [{push_enable, 4}, {push_disable, 2},
     {push_notification, 2}, {push_security, 2},
     {encryption_key, 1}, {push_call, 0}, {encrypted, 2}].

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_int(Int) -> erlang:integer_to_binary(Int).

decode_encrypted(__TopXMLNS, __Opts,
		 {xmlel, <<"encrypted">>, _attrs, _els}) ->
    Data = decode_encrypted_els(__TopXMLNS, __Opts, _els,
				<<>>),
    Iv_length = decode_encrypted_attrs(__TopXMLNS, _attrs,
				       undefined),
    {encrypted, Iv_length, Data}.

decode_encrypted_els(__TopXMLNS, __Opts, [], Data) ->
    decode_encrypted_cdata(__TopXMLNS, Data);
decode_encrypted_els(__TopXMLNS, __Opts,
		     [{xmlcdata, _data} | _els], Data) ->
    decode_encrypted_els(__TopXMLNS, __Opts, _els,
			 <<Data/binary, _data/binary>>);
decode_encrypted_els(__TopXMLNS, __Opts, [_ | _els],
		     Data) ->
    decode_encrypted_els(__TopXMLNS, __Opts, _els, Data).

decode_encrypted_attrs(__TopXMLNS,
		       [{<<"iv-length">>, _val} | _attrs], _Iv_length) ->
    decode_encrypted_attrs(__TopXMLNS, _attrs, _val);
decode_encrypted_attrs(__TopXMLNS, [_ | _attrs],
		       Iv_length) ->
    decode_encrypted_attrs(__TopXMLNS, _attrs, Iv_length);
decode_encrypted_attrs(__TopXMLNS, [], Iv_length) ->
    'decode_encrypted_attr_iv-length'(__TopXMLNS,
				      Iv_length).

encode_encrypted({encrypted, Iv_length, Data},
		 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
				    [], __TopXMLNS),
    _els = encode_encrypted_cdata(Data, []),
    _attrs = 'encode_encrypted_attr_iv-length'(Iv_length,
					       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									  __TopXMLNS)),
    {xmlel, <<"encrypted">>, _attrs, _els}.

'decode_encrypted_attr_iv-length'(__TopXMLNS,
				  undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"iv-length">>, <<"encrypted">>,
		   __TopXMLNS}});
'decode_encrypted_attr_iv-length'(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"iv-length">>, <<"encrypted">>,
			 __TopXMLNS}});
      _res -> _res
    end.

'encode_encrypted_attr_iv-length'(_val, _acc) ->
    [{<<"iv-length">>, enc_int(_val)} | _acc].

decode_encrypted_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"encrypted">>, __TopXMLNS}});
decode_encrypted_cdata(__TopXMLNS, _val) ->
    case catch base64:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"encrypted">>, __TopXMLNS}});
      _res -> _res
    end.

encode_encrypted_cdata(_val, _acc) ->
    [{xmlcdata, base64:encode(_val)} | _acc].

decode_push_call(__TopXMLNS, __Opts,
		 {xmlel, <<"call">>, _attrs, _els}) ->
    {push_call}.

encode_push_call({push_call}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"call">>, _attrs, _els}.

decode_encryption_key(__TopXMLNS, __Opts,
		      {xmlel, <<"encryption-key">>, _attrs, _els}) ->
    Data = decode_encryption_key_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    {encryption_key, Data}.

decode_encryption_key_els(__TopXMLNS, __Opts, [],
			  Data) ->
    decode_encryption_key_cdata(__TopXMLNS, Data);
decode_encryption_key_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Data) ->
    decode_encryption_key_els(__TopXMLNS, __Opts, _els,
			      <<Data/binary, _data/binary>>);
decode_encryption_key_els(__TopXMLNS, __Opts,
			  [_ | _els], Data) ->
    decode_encryption_key_els(__TopXMLNS, __Opts, _els,
			      Data).

encode_encryption_key({encryption_key, Data},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
				    [], __TopXMLNS),
    _els = encode_encryption_key_cdata(Data, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"encryption-key">>, _attrs, _els}.

decode_encryption_key_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"encryption-key">>,
		   __TopXMLNS}});
decode_encryption_key_cdata(__TopXMLNS, _val) ->
    case catch base64:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"encryption-key">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_encryption_key_cdata(_val, _acc) ->
    [{xmlcdata, base64:encode(_val)} | _acc].

decode_push_security(__TopXMLNS, __Opts,
		     {xmlel, <<"security">>, _attrs, _els}) ->
    Encryption_key = decode_push_security_els(__TopXMLNS,
					      __Opts, _els, undefined),
    Cipher = decode_push_security_attrs(__TopXMLNS, _attrs,
					undefined),
    {push_security, Cipher, Encryption_key}.

decode_push_security_els(__TopXMLNS, __Opts, [],
			 Encryption_key) ->
    Encryption_key;
decode_push_security_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"encryption-key">>, _attrs, _} = _el
			  | _els],
			 Encryption_key) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/push">> ->
	  decode_push_security_els(__TopXMLNS, __Opts, _els,
				   decode_encryption_key(<<"https://xabber.com/protocol/push">>,
							 __Opts, _el));
      _ ->
	  decode_push_security_els(__TopXMLNS, __Opts, _els,
				   Encryption_key)
    end;
decode_push_security_els(__TopXMLNS, __Opts, [_ | _els],
			 Encryption_key) ->
    decode_push_security_els(__TopXMLNS, __Opts, _els,
			     Encryption_key).

decode_push_security_attrs(__TopXMLNS,
			   [{<<"cipher">>, _val} | _attrs], _Cipher) ->
    decode_push_security_attrs(__TopXMLNS, _attrs, _val);
decode_push_security_attrs(__TopXMLNS, [_ | _attrs],
			   Cipher) ->
    decode_push_security_attrs(__TopXMLNS, _attrs, Cipher);
decode_push_security_attrs(__TopXMLNS, [], Cipher) ->
    decode_push_security_attr_cipher(__TopXMLNS, Cipher).

encode_push_security({push_security, Cipher,
		      Encryption_key},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_push_security_$encryption_key'(Encryption_key,
							     __NewTopXMLNS,
							     [])),
    _attrs = encode_push_security_attr_cipher(Cipher,
					      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									 __TopXMLNS)),
    {xmlel, <<"security">>, _attrs, _els}.

'encode_push_security_$encryption_key'(undefined,
				       __TopXMLNS, _acc) ->
    _acc;
'encode_push_security_$encryption_key'(Encryption_key,
				       __TopXMLNS, _acc) ->
    [encode_encryption_key(Encryption_key, __TopXMLNS)
     | _acc].

decode_push_security_attr_cipher(__TopXMLNS,
				 undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"cipher">>, <<"security">>,
		   __TopXMLNS}});
decode_push_security_attr_cipher(__TopXMLNS, _val) ->
    _val.

encode_push_security_attr_cipher(_val, _acc) ->
    [{<<"cipher">>, _val} | _acc].

decode_push_notification(__TopXMLNS, __Opts,
			 {xmlel, <<"notification">>, _attrs, _els}) ->
    {Xdata, __Els} =
	decode_push_notification_els(__TopXMLNS, __Opts, _els,
				     undefined, []),
    {push_notification, Xdata, __Els}.

decode_push_notification_els(__TopXMLNS, __Opts, [],
			     Xdata, __Els) ->
    {Xdata, lists:reverse(__Els)};
decode_push_notification_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"x">>, _attrs, _} = _el | _els], Xdata,
			     __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"jabber:x:data">> ->
	  decode_push_notification_els(__TopXMLNS, __Opts, _els,
				       xep0004:decode_xdata(<<"jabber:x:data">>,
							    __Opts, _el),
				       __Els);
      _ ->
	  decode_push_notification_els(__TopXMLNS, __Opts, _els,
				       Xdata, [_el | __Els])
    end;
decode_push_notification_els(__TopXMLNS, __Opts,
			     [{xmlel, _name, _attrs, _} = _el | _els], Xdata,
			     __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_push_notification_els(__TopXMLNS, __Opts, _els,
				       Xdata, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_push_notification_els(__TopXMLNS, __Opts, _els,
					     Xdata, [_el | __Els]);
	    Mod ->
		decode_push_notification_els(__TopXMLNS, __Opts, _els,
					     Xdata,
					     [Mod:do_decode(_name, __XMLNS, _el,
							    __Opts)
					      | __Els])
	  end
    end;
decode_push_notification_els(__TopXMLNS, __Opts,
			     [_ | _els], Xdata, __Els) ->
    decode_push_notification_els(__TopXMLNS, __Opts, _els,
				 Xdata, __Els).

encode_push_notification({push_notification, Xdata,
			  __Els},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_push_notification_$xdata'(Xdata,
							     __NewTopXMLNS,
							     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"notification">>, _attrs, _els}.

'encode_push_notification_$xdata'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_push_notification_$xdata'(Xdata, __TopXMLNS,
				  _acc) ->
    [xep0004:encode_xdata(Xdata, __TopXMLNS) | _acc].

decode_push_disable(__TopXMLNS, __Opts,
		    {xmlel, <<"disable">>, _attrs, _els}) ->
    {Jid, Node} = decode_push_disable_attrs(__TopXMLNS,
					    _attrs, undefined, undefined),
    {push_disable, Jid, Node}.

decode_push_disable_attrs(__TopXMLNS,
			  [{<<"jid">>, _val} | _attrs], _Jid, Node) ->
    decode_push_disable_attrs(__TopXMLNS, _attrs, _val,
			      Node);
decode_push_disable_attrs(__TopXMLNS,
			  [{<<"node">>, _val} | _attrs], Jid, _Node) ->
    decode_push_disable_attrs(__TopXMLNS, _attrs, Jid,
			      _val);
decode_push_disable_attrs(__TopXMLNS, [_ | _attrs], Jid,
			  Node) ->
    decode_push_disable_attrs(__TopXMLNS, _attrs, Jid,
			      Node);
decode_push_disable_attrs(__TopXMLNS, [], Jid, Node) ->
    {decode_push_disable_attr_jid(__TopXMLNS, Jid),
     decode_push_disable_attr_node(__TopXMLNS, Node)}.

encode_push_disable({push_disable, Jid, Node},
		    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_push_disable_attr_node(Node,
					   encode_push_disable_attr_jid(Jid,
									xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												   __TopXMLNS))),
    {xmlel, <<"disable">>, _attrs, _els}.

decode_push_disable_attr_jid(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"jid">>, <<"disable">>, __TopXMLNS}});
decode_push_disable_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"disable">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_push_disable_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_push_disable_attr_node(__TopXMLNS, undefined) ->
    <<>>;
decode_push_disable_attr_node(__TopXMLNS, _val) -> _val.

encode_push_disable_attr_node(<<>>, _acc) -> _acc;
encode_push_disable_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].

decode_push_enable(__TopXMLNS, __Opts,
		   {xmlel, <<"enable">>, _attrs, _els}) ->
    {Xdata, Push_security} =
	decode_push_enable_els(__TopXMLNS, __Opts, _els,
			       undefined, undefined),
    {Jid, Node} = decode_push_enable_attrs(__TopXMLNS,
					   _attrs, undefined, undefined),
    {push_enable, Jid, Node, Xdata, Push_security}.

decode_push_enable_els(__TopXMLNS, __Opts, [], Xdata,
		       Push_security) ->
    {Xdata, Push_security};
decode_push_enable_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"x">>, _attrs, _} = _el | _els], Xdata,
		       Push_security) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"jabber:x:data">> ->
	  decode_push_enable_els(__TopXMLNS, __Opts, _els,
				 xep0004:decode_xdata(<<"jabber:x:data">>,
						      __Opts, _el),
				 Push_security);
      _ ->
	  decode_push_enable_els(__TopXMLNS, __Opts, _els, Xdata,
				 Push_security)
    end;
decode_push_enable_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"security">>, _attrs, _} = _el | _els],
		       Xdata, Push_security) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/push">> ->
	  decode_push_enable_els(__TopXMLNS, __Opts, _els, Xdata,
				 decode_push_security(<<"https://xabber.com/protocol/push">>,
						      __Opts, _el));
      _ ->
	  decode_push_enable_els(__TopXMLNS, __Opts, _els, Xdata,
				 Push_security)
    end;
decode_push_enable_els(__TopXMLNS, __Opts, [_ | _els],
		       Xdata, Push_security) ->
    decode_push_enable_els(__TopXMLNS, __Opts, _els, Xdata,
			   Push_security).

decode_push_enable_attrs(__TopXMLNS,
			 [{<<"jid">>, _val} | _attrs], _Jid, Node) ->
    decode_push_enable_attrs(__TopXMLNS, _attrs, _val,
			     Node);
decode_push_enable_attrs(__TopXMLNS,
			 [{<<"node">>, _val} | _attrs], Jid, _Node) ->
    decode_push_enable_attrs(__TopXMLNS, _attrs, Jid, _val);
decode_push_enable_attrs(__TopXMLNS, [_ | _attrs], Jid,
			 Node) ->
    decode_push_enable_attrs(__TopXMLNS, _attrs, Jid, Node);
decode_push_enable_attrs(__TopXMLNS, [], Jid, Node) ->
    {decode_push_enable_attr_jid(__TopXMLNS, Jid),
     decode_push_enable_attr_node(__TopXMLNS, Node)}.

encode_push_enable({push_enable, Jid, Node, Xdata,
		    Push_security},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_push_enable_$xdata'(Xdata,
						     __NewTopXMLNS,
						     'encode_push_enable_$push_security'(Push_security,
											 __NewTopXMLNS,
											 []))),
    _attrs = encode_push_enable_attr_node(Node,
					  encode_push_enable_attr_jid(Jid,
								      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												 __TopXMLNS))),
    {xmlel, <<"enable">>, _attrs, _els}.

'encode_push_enable_$xdata'(undefined, __TopXMLNS,
			    _acc) ->
    _acc;
'encode_push_enable_$xdata'(Xdata, __TopXMLNS, _acc) ->
    [xep0004:encode_xdata(Xdata, __TopXMLNS) | _acc].

'encode_push_enable_$push_security'(undefined,
				    __TopXMLNS, _acc) ->
    _acc;
'encode_push_enable_$push_security'(Push_security,
				    __TopXMLNS, _acc) ->
    [encode_push_security(Push_security, __TopXMLNS)
     | _acc].

decode_push_enable_attr_jid(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"jid">>, <<"enable">>, __TopXMLNS}});
decode_push_enable_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"enable">>, __TopXMLNS}});
      _res -> _res
    end.

encode_push_enable_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_push_enable_attr_node(__TopXMLNS, undefined) ->
    <<>>;
decode_push_enable_attr_node(__TopXMLNS, _val) -> _val.

encode_push_enable_attr_node(<<>>, _acc) -> _acc;
encode_push_enable_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].
