%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabberrewrite).

-compile(export_all).

do_decode(<<"invalidate">>,
	  <<"http://xabber.com/protocol/rewrite#notify">>, El,
	  Opts) ->
    decode_xabber_retract_invalidate(<<"http://xabber.com/protocol/rewrite#notify">>,
				     Opts, El);
do_decode(<<"activate">>,
	  <<"http://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_xabber_retract_activate(<<"http://xabber.com/protocol/rewrite">>,
				   Opts, El);
do_decode(<<"body">>,
	  <<"http://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_xabber_replace_message_body(<<"http://xabber.com/protocol/rewrite">>,
				       Opts, El);
do_decode(<<"body">>,
	  <<"http://xabber.com/protocol/rewrite#notify">>, El,
	  Opts) ->
    decode_xabber_replace_message_body(<<"http://xabber.com/protocol/rewrite#notify">>,
				       Opts, El);
do_decode(<<"message">>,
	  <<"http://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_xabber_replace_message(<<"http://xabber.com/protocol/rewrite">>,
				  Opts, El);
do_decode(<<"message">>,
	  <<"http://xabber.com/protocol/rewrite#notify">>, El,
	  Opts) ->
    decode_xabber_replace_message(<<"http://xabber.com/protocol/rewrite#notify">>,
				  Opts, El);
do_decode(<<"replace">>,
	  <<"http://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_xabber_replace(<<"http://xabber.com/protocol/rewrite">>,
			  Opts, El);
do_decode(<<"replace">>,
	  <<"http://xabber.com/protocol/rewrite#notify">>, El,
	  Opts) ->
    decode_xabber_replace(<<"http://xabber.com/protocol/rewrite#notify">>,
			  Opts, El);
do_decode(<<"retract-all">>,
	  <<"http://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_xabber_retract_all(<<"http://xabber.com/protocol/rewrite">>,
			      Opts, El);
do_decode(<<"retract-all">>,
	  <<"http://xabber.com/protocol/rewrite#notify">>, El,
	  Opts) ->
    decode_xabber_retract_all(<<"http://xabber.com/protocol/rewrite#notify">>,
			      Opts, El);
do_decode(<<"retract-message">>,
	  <<"http://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_xabber_retract_message(<<"http://xabber.com/protocol/rewrite">>,
				  Opts, El);
do_decode(<<"retract-message">>,
	  <<"http://xabber.com/protocol/rewrite#notify">>, El,
	  Opts) ->
    decode_xabber_retract_message(<<"http://xabber.com/protocol/rewrite#notify">>,
				  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"invalidate">>,
      <<"http://xabber.com/protocol/rewrite#notify">>},
     {<<"activate">>,
      <<"http://xabber.com/protocol/rewrite">>},
     {<<"body">>, <<"http://xabber.com/protocol/rewrite">>},
     {<<"body">>,
      <<"http://xabber.com/protocol/rewrite#notify">>},
     {<<"message">>,
      <<"http://xabber.com/protocol/rewrite">>},
     {<<"message">>,
      <<"http://xabber.com/protocol/rewrite#notify">>},
     {<<"replace">>,
      <<"http://xabber.com/protocol/rewrite">>},
     {<<"replace">>,
      <<"http://xabber.com/protocol/rewrite#notify">>},
     {<<"retract-all">>,
      <<"http://xabber.com/protocol/rewrite">>},
     {<<"retract-all">>,
      <<"http://xabber.com/protocol/rewrite#notify">>},
     {<<"retract-message">>,
      <<"http://xabber.com/protocol/rewrite">>},
     {<<"retract-message">>,
      <<"http://xabber.com/protocol/rewrite#notify">>}].

do_encode({xabber_retract_message, _, _, _, _, _, _} =
	      Retract_message,
	  TopXMLNS) ->
    encode_xabber_retract_message(Retract_message,
				  TopXMLNS);
do_encode({xabber_retract_all, _, _, _, _} =
	      Retract_all,
	  TopXMLNS) ->
    encode_xabber_retract_all(Retract_all, TopXMLNS);
do_encode({xabber_replace, _, _, _, _, _, _} = Replace,
	  TopXMLNS) ->
    encode_xabber_replace(Replace, TopXMLNS);
do_encode({xabber_replace_message, _, _, _, _, _} =
	      Message,
	  TopXMLNS) ->
    encode_xabber_replace_message(Message, TopXMLNS);
do_encode({xabber_retract_activate, _, _} = Activate,
	  TopXMLNS) ->
    encode_xabber_retract_activate(Activate, TopXMLNS);
do_encode({xabber_retract_invalidate, _} = Invalidate,
	  TopXMLNS) ->
    encode_xabber_retract_invalidate(Invalidate, TopXMLNS).

do_get_name({xabber_replace, _, _, _, _, _, _}) ->
    <<"replace">>;
do_get_name({xabber_replace_message, _, _, _, _, _}) ->
    <<"message">>;
do_get_name({xabber_retract_activate, _, _}) ->
    <<"activate">>;
do_get_name({xabber_retract_all, _, _, _, _}) ->
    <<"retract-all">>;
do_get_name({xabber_retract_invalidate, _}) ->
    <<"invalidate">>;
do_get_name({xabber_retract_message, _, _, _, _, _,
	     _}) ->
    <<"retract-message">>.

do_get_ns({xabber_replace, Xmlns, _, _, _, _, _}) ->
    Xmlns;
do_get_ns({xabber_replace_message, _, _, _, _, _}) ->
    <<"http://xabber.com/protocol/rewrite">>;
do_get_ns({xabber_retract_activate, _, _}) ->
    <<"http://xabber.com/protocol/rewrite">>;
do_get_ns({xabber_retract_all, Xmlns, _, _, _}) ->
    Xmlns;
do_get_ns({xabber_retract_invalidate, _}) ->
    <<"http://xabber.com/protocol/rewrite#notify">>;
do_get_ns({xabber_retract_message, Xmlns, _, _, _, _,
	   _}) ->
    Xmlns.

pp(xabber_retract_message, 6) ->
    [xmlns, id, by, symmetric, version, conversation];
pp(xabber_retract_all, 4) ->
    [xmlns, symmetric, version, conversation];
pp(xabber_replace, 6) ->
    [xmlns, id, by, version, conversation,
     xabber_replace_message];
pp(xabber_replace_message, 5) ->
    [from, to, body, stanza_id, replaced];
pp(xabber_retract_activate, 2) ->
    [version, 'less-than'];
pp(xabber_retract_invalidate, 1) -> [version];
pp(_, _) -> no.

records() ->
    [{xabber_retract_message, 6}, {xabber_retract_all, 4},
     {xabber_replace, 6}, {xabber_replace_message, 5},
     {xabber_retract_activate, 2},
     {xabber_retract_invalidate, 1}].

dec_bool(<<"false">>) -> false;
dec_bool(<<"0">>) -> false;
dec_bool(<<"true">>) -> true;
dec_bool(<<"1">>) -> true.

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_bool(false) -> <<"false">>;
enc_bool(true) -> <<"true">>.

enc_int(Int) -> erlang:integer_to_binary(Int).

decode_xabber_retract_invalidate(__TopXMLNS, __Opts,
				 {xmlel, <<"invalidate">>, _attrs, _els}) ->
    Version =
	decode_xabber_retract_invalidate_attrs(__TopXMLNS,
					       _attrs, undefined),
    {xabber_retract_invalidate, Version}.

decode_xabber_retract_invalidate_attrs(__TopXMLNS,
				       [{<<"version">>, _val} | _attrs],
				       _Version) ->
    decode_xabber_retract_invalidate_attrs(__TopXMLNS,
					   _attrs, _val);
decode_xabber_retract_invalidate_attrs(__TopXMLNS,
				       [_ | _attrs], Version) ->
    decode_xabber_retract_invalidate_attrs(__TopXMLNS,
					   _attrs, Version);
decode_xabber_retract_invalidate_attrs(__TopXMLNS, [],
				       Version) ->
    decode_xabber_retract_invalidate_attr_version(__TopXMLNS,
						  Version).

encode_xabber_retract_invalidate({xabber_retract_invalidate,
				  Version},
				 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/rewrite#notify">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabber_retract_invalidate_attr_version(Version,
						      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										 __TopXMLNS)),
    {xmlel, <<"invalidate">>, _attrs, _els}.

decode_xabber_retract_invalidate_attr_version(__TopXMLNS,
					      undefined) ->
    undefined;
decode_xabber_retract_invalidate_attr_version(__TopXMLNS,
					      _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"invalidate">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_invalidate_attr_version(undefined,
					      _acc) ->
    _acc;
encode_xabber_retract_invalidate_attr_version(_val,
					      _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_xabber_retract_activate(__TopXMLNS, __Opts,
			       {xmlel, <<"activate">>, _attrs, _els}) ->
    {Version, Less_than} =
	decode_xabber_retract_activate_attrs(__TopXMLNS, _attrs,
					     undefined, undefined),
    {xabber_retract_activate, Version, Less_than}.

decode_xabber_retract_activate_attrs(__TopXMLNS,
				     [{<<"version">>, _val} | _attrs], _Version,
				     Less_than) ->
    decode_xabber_retract_activate_attrs(__TopXMLNS, _attrs,
					 _val, Less_than);
decode_xabber_retract_activate_attrs(__TopXMLNS,
				     [{<<"less-than">>, _val} | _attrs],
				     Version, _Less_than) ->
    decode_xabber_retract_activate_attrs(__TopXMLNS, _attrs,
					 Version, _val);
decode_xabber_retract_activate_attrs(__TopXMLNS,
				     [_ | _attrs], Version, Less_than) ->
    decode_xabber_retract_activate_attrs(__TopXMLNS, _attrs,
					 Version, Less_than);
decode_xabber_retract_activate_attrs(__TopXMLNS, [],
				     Version, Less_than) ->
    {decode_xabber_retract_activate_attr_version(__TopXMLNS,
						 Version),
     'decode_xabber_retract_activate_attr_less-than'(__TopXMLNS,
						     Less_than)}.

encode_xabber_retract_activate({xabber_retract_activate,
				Version, Less_than},
			       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/rewrite">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	'encode_xabber_retract_activate_attr_less-than'(Less_than,
							encode_xabber_retract_activate_attr_version(Version,
												    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															       __TopXMLNS))),
    {xmlel, <<"activate">>, _attrs, _els}.

decode_xabber_retract_activate_attr_version(__TopXMLNS,
					    undefined) ->
    undefined;
decode_xabber_retract_activate_attr_version(__TopXMLNS,
					    _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"activate">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_activate_attr_version(undefined,
					    _acc) ->
    _acc;
encode_xabber_retract_activate_attr_version(_val,
					    _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

'decode_xabber_retract_activate_attr_less-than'(__TopXMLNS,
						undefined) ->
    undefined;
'decode_xabber_retract_activate_attr_less-than'(__TopXMLNS,
						_val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"less-than">>, <<"activate">>,
			 __TopXMLNS}});
      _res -> _res
    end.

'encode_xabber_retract_activate_attr_less-than'(undefined,
						_acc) ->
    _acc;
'encode_xabber_retract_activate_attr_less-than'(_val,
						_acc) ->
    [{<<"less-than">>, enc_int(_val)} | _acc].

decode_xabber_replace_message_body(__TopXMLNS, __Opts,
				   {xmlel, <<"body">>, _attrs, _els}) ->
    Cdata =
	decode_xabber_replace_message_body_els(__TopXMLNS,
					       __Opts, _els, <<>>),
    Cdata.

decode_xabber_replace_message_body_els(__TopXMLNS,
				       __Opts, [], Cdata) ->
    decode_xabber_replace_message_body_cdata(__TopXMLNS,
					     Cdata);
decode_xabber_replace_message_body_els(__TopXMLNS,
				       __Opts, [{xmlcdata, _data} | _els],
				       Cdata) ->
    decode_xabber_replace_message_body_els(__TopXMLNS,
					   __Opts, _els,
					   <<Cdata/binary, _data/binary>>);
decode_xabber_replace_message_body_els(__TopXMLNS,
				       __Opts, [_ | _els], Cdata) ->
    decode_xabber_replace_message_body_els(__TopXMLNS,
					   __Opts, _els, Cdata).

encode_xabber_replace_message_body(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/rewrite">>,
						 <<"http://xabber.com/protocol/rewrite#notify">>],
						__TopXMLNS),
    _els = encode_xabber_replace_message_body_cdata(Cdata,
						    []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"body">>, _attrs, _els}.

decode_xabber_replace_message_body_cdata(__TopXMLNS,
					 <<>>) ->
    <<>>;
decode_xabber_replace_message_body_cdata(__TopXMLNS,
					 _val) ->
    _val.

encode_xabber_replace_message_body_cdata(<<>>, _acc) ->
    _acc;
encode_xabber_replace_message_body_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabber_replace_message(__TopXMLNS, __Opts,
			      {xmlel, <<"message">>, _attrs, _els}) ->
    {Replaced, Stanza_id, Body} =
	decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					  _els, undefined, undefined,
					  undefined),
    {From, To} =
	decode_xabber_replace_message_attrs(__TopXMLNS, _attrs,
					    undefined, undefined),
    {xabber_replace_message, From, To, Body, Stanza_id,
     Replaced}.

decode_xabber_replace_message_els(__TopXMLNS, __Opts,
				  [], Replaced, Stanza_id, Body) ->
    {Replaced, Stanza_id, Body};
decode_xabber_replace_message_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"body">>, _attrs, _} = _el | _els],
				  Replaced, Stanza_id, Body) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/rewrite">> ->
	  decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					    _els, Replaced, Stanza_id,
					    decode_xabber_replace_message_body(<<"http://xabber.com/protocol/rewrite">>,
									       __Opts,
									       _el));
      <<"http://xabber.com/protocol/rewrite#notify">> ->
	  decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					    _els, Replaced, Stanza_id,
					    decode_xabber_replace_message_body(<<"http://xabber.com/protocol/rewrite#notify">>,
									       __Opts,
									       _el));
      _ ->
	  decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					    _els, Replaced, Stanza_id, Body)
    end;
decode_xabber_replace_message_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"stanza-id">>, _attrs, _} = _el
				   | _els],
				  Replaced, Stanza_id, Body) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:sid:0">> ->
	  decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					    _els, Replaced,
					    xep0359:decode_stanza_id(<<"urn:xmpp:sid:0">>,
								     __Opts,
								     _el),
					    Body);
      _ ->
	  decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					    _els, Replaced, Stanza_id, Body)
    end;
decode_xabber_replace_message_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"replaced">>, _attrs, _} = _el
				   | _els],
				  Replaced, Stanza_id, Body) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/rewrite">> ->
	  decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					    _els,
					    unique:decode_xabber_replaced(<<"http://xabber.com/protocol/rewrite">>,
									  __Opts,
									  _el),
					    Stanza_id, Body);
      _ ->
	  decode_xabber_replace_message_els(__TopXMLNS, __Opts,
					    _els, Replaced, Stanza_id, Body)
    end;
decode_xabber_replace_message_els(__TopXMLNS, __Opts,
				  [_ | _els], Replaced, Stanza_id, Body) ->
    decode_xabber_replace_message_els(__TopXMLNS, __Opts,
				      _els, Replaced, Stanza_id, Body).

decode_xabber_replace_message_attrs(__TopXMLNS,
				    [{<<"from">>, _val} | _attrs], _From, To) ->
    decode_xabber_replace_message_attrs(__TopXMLNS, _attrs,
					_val, To);
decode_xabber_replace_message_attrs(__TopXMLNS,
				    [{<<"to">>, _val} | _attrs], From, _To) ->
    decode_xabber_replace_message_attrs(__TopXMLNS, _attrs,
					From, _val);
decode_xabber_replace_message_attrs(__TopXMLNS,
				    [_ | _attrs], From, To) ->
    decode_xabber_replace_message_attrs(__TopXMLNS, _attrs,
					From, To);
decode_xabber_replace_message_attrs(__TopXMLNS, [],
				    From, To) ->
    {decode_xabber_replace_message_attr_from(__TopXMLNS,
					     From),
     decode_xabber_replace_message_attr_to(__TopXMLNS, To)}.

encode_xabber_replace_message({xabber_replace_message,
			       From, To, Body, Stanza_id, Replaced},
			      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"http://xabber.com/protocol/rewrite">>,
						 <<"http://xabber.com/protocol/rewrite#notify">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_xabber_replace_message_$replaced'(Replaced,
								__NewTopXMLNS,
								'encode_xabber_replace_message_$stanza_id'(Stanza_id,
													   __NewTopXMLNS,
													   'encode_xabber_replace_message_$body'(Body,
																		 __NewTopXMLNS,
																		 [])))),
    _attrs = encode_xabber_replace_message_attr_to(To,
						   encode_xabber_replace_message_attr_from(From,
											   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
														      __TopXMLNS))),
    {xmlel, <<"message">>, _attrs, _els}.

'encode_xabber_replace_message_$replaced'(undefined,
					  __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_replace_message_$replaced'(Replaced,
					  __TopXMLNS, _acc) ->
    [unique:encode_xabber_replaced(Replaced, __TopXMLNS)
     | _acc].

'encode_xabber_replace_message_$stanza_id'(undefined,
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_replace_message_$stanza_id'(Stanza_id,
					   __TopXMLNS, _acc) ->
    [xep0359:encode_stanza_id(Stanza_id, __TopXMLNS)
     | _acc].

'encode_xabber_replace_message_$body'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_replace_message_$body'(Body, __TopXMLNS,
				      _acc) ->
    [encode_xabber_replace_message_body(Body, __TopXMLNS)
     | _acc].

decode_xabber_replace_message_attr_from(__TopXMLNS,
					undefined) ->
    undefined;
decode_xabber_replace_message_attr_from(__TopXMLNS,
					_val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"from">>, <<"message">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_replace_message_attr_from(undefined,
					_acc) ->
    _acc;
encode_xabber_replace_message_attr_from(_val, _acc) ->
    [{<<"from">>, jid:encode(_val)} | _acc].

decode_xabber_replace_message_attr_to(__TopXMLNS,
				      undefined) ->
    undefined;
decode_xabber_replace_message_attr_to(__TopXMLNS,
				      _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"to">>, <<"message">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_replace_message_attr_to(undefined,
				      _acc) ->
    _acc;
encode_xabber_replace_message_attr_to(_val, _acc) ->
    [{<<"to">>, jid:encode(_val)} | _acc].

decode_xabber_replace(__TopXMLNS, __Opts,
		      {xmlel, <<"replace">>, _attrs, _els}) ->
    Xabber_replace_message =
	decode_xabber_replace_els(__TopXMLNS, __Opts, _els,
				  undefined),
    {Xmlns, Id, Version, Conversation, By} =
	decode_xabber_replace_attrs(__TopXMLNS, _attrs,
				    undefined, undefined, undefined, undefined,
				    undefined),
    {xabber_replace, Xmlns, Id, By, Version, Conversation,
     Xabber_replace_message}.

decode_xabber_replace_els(__TopXMLNS, __Opts, [],
			  Xabber_replace_message) ->
    Xabber_replace_message;
decode_xabber_replace_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"message">>, _attrs, _} = _el | _els],
			  Xabber_replace_message) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/rewrite">> ->
	  decode_xabber_replace_els(__TopXMLNS, __Opts, _els,
				    decode_xabber_replace_message(<<"http://xabber.com/protocol/rewrite">>,
								  __Opts, _el));
      <<"http://xabber.com/protocol/rewrite#notify">> ->
	  decode_xabber_replace_els(__TopXMLNS, __Opts, _els,
				    decode_xabber_replace_message(<<"http://xabber.com/protocol/rewrite#notify">>,
								  __Opts, _el));
      _ ->
	  decode_xabber_replace_els(__TopXMLNS, __Opts, _els,
				    Xabber_replace_message)
    end;
decode_xabber_replace_els(__TopXMLNS, __Opts,
			  [_ | _els], Xabber_replace_message) ->
    decode_xabber_replace_els(__TopXMLNS, __Opts, _els,
			      Xabber_replace_message).

decode_xabber_replace_attrs(__TopXMLNS,
			    [{<<"xmlns">>, _val} | _attrs], _Xmlns, Id, Version,
			    Conversation, By) ->
    decode_xabber_replace_attrs(__TopXMLNS, _attrs, _val,
				Id, Version, Conversation, By);
decode_xabber_replace_attrs(__TopXMLNS,
			    [{<<"id">>, _val} | _attrs], Xmlns, _Id, Version,
			    Conversation, By) ->
    decode_xabber_replace_attrs(__TopXMLNS, _attrs, Xmlns,
				_val, Version, Conversation, By);
decode_xabber_replace_attrs(__TopXMLNS,
			    [{<<"version">>, _val} | _attrs], Xmlns, Id,
			    _Version, Conversation, By) ->
    decode_xabber_replace_attrs(__TopXMLNS, _attrs, Xmlns,
				Id, _val, Conversation, By);
decode_xabber_replace_attrs(__TopXMLNS,
			    [{<<"conversation">>, _val} | _attrs], Xmlns, Id,
			    Version, _Conversation, By) ->
    decode_xabber_replace_attrs(__TopXMLNS, _attrs, Xmlns,
				Id, Version, _val, By);
decode_xabber_replace_attrs(__TopXMLNS,
			    [{<<"by">>, _val} | _attrs], Xmlns, Id, Version,
			    Conversation, _By) ->
    decode_xabber_replace_attrs(__TopXMLNS, _attrs, Xmlns,
				Id, Version, Conversation, _val);
decode_xabber_replace_attrs(__TopXMLNS, [_ | _attrs],
			    Xmlns, Id, Version, Conversation, By) ->
    decode_xabber_replace_attrs(__TopXMLNS, _attrs, Xmlns,
				Id, Version, Conversation, By);
decode_xabber_replace_attrs(__TopXMLNS, [], Xmlns, Id,
			    Version, Conversation, By) ->
    {decode_xabber_replace_attr_xmlns(__TopXMLNS, Xmlns),
     decode_xabber_replace_attr_id(__TopXMLNS, Id),
     decode_xabber_replace_attr_version(__TopXMLNS, Version),
     decode_xabber_replace_attr_conversation(__TopXMLNS,
					     Conversation),
     decode_xabber_replace_attr_by(__TopXMLNS, By)}.

encode_xabber_replace({xabber_replace, Xmlns, Id, By,
		       Version, Conversation, Xabber_replace_message},
		      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"http://xabber.com/protocol/rewrite">>,
						 <<"http://xabber.com/protocol/rewrite#notify">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_xabber_replace_$xabber_replace_message'(Xabber_replace_message,
								      __NewTopXMLNS,
								      [])),
    _attrs = encode_xabber_replace_attr_by(By,
					   encode_xabber_replace_attr_conversation(Conversation,
										   encode_xabber_replace_attr_version(Version,
														      encode_xabber_replace_attr_id(Id,
																		    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																					       __TopXMLNS))))),
    {xmlel, <<"replace">>, _attrs, _els}.

'encode_xabber_replace_$xabber_replace_message'(undefined,
						__TopXMLNS, _acc) ->
    _acc;
'encode_xabber_replace_$xabber_replace_message'(Xabber_replace_message,
						__TopXMLNS, _acc) ->
    [encode_xabber_replace_message(Xabber_replace_message,
				   __TopXMLNS)
     | _acc].

decode_xabber_replace_attr_xmlns(__TopXMLNS,
				 undefined) ->
    <<>>;
decode_xabber_replace_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_xabber_replace_attr_id(__TopXMLNS, undefined) ->
    undefined;
decode_xabber_replace_attr_id(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"id">>, <<"replace">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_replace_attr_id(undefined, _acc) -> _acc;
encode_xabber_replace_attr_id(_val, _acc) ->
    [{<<"id">>, enc_int(_val)} | _acc].

decode_xabber_replace_attr_version(__TopXMLNS,
				   undefined) ->
    undefined;
decode_xabber_replace_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"replace">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_replace_attr_version(undefined, _acc) ->
    _acc;
encode_xabber_replace_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_xabber_replace_attr_conversation(__TopXMLNS,
					undefined) ->
    undefined;
decode_xabber_replace_attr_conversation(__TopXMLNS,
					_val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"conversation">>, <<"replace">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_replace_attr_conversation(undefined,
					_acc) ->
    _acc;
encode_xabber_replace_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_xabber_replace_attr_by(__TopXMLNS, undefined) ->
    undefined;
decode_xabber_replace_attr_by(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"by">>, <<"replace">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_replace_attr_by(undefined, _acc) -> _acc;
encode_xabber_replace_attr_by(_val, _acc) ->
    [{<<"by">>, jid:encode(_val)} | _acc].

decode_xabber_retract_all(__TopXMLNS, __Opts,
			  {xmlel, <<"retract-all">>, _attrs, _els}) ->
    {Xmlns, Version, Conversation, Symmetric} =
	decode_xabber_retract_all_attrs(__TopXMLNS, _attrs,
					undefined, undefined, undefined,
					undefined),
    {xabber_retract_all, Xmlns, Symmetric, Version,
     Conversation}.

decode_xabber_retract_all_attrs(__TopXMLNS,
				[{<<"xmlns">>, _val} | _attrs], _Xmlns, Version,
				Conversation, Symmetric) ->
    decode_xabber_retract_all_attrs(__TopXMLNS, _attrs,
				    _val, Version, Conversation, Symmetric);
decode_xabber_retract_all_attrs(__TopXMLNS,
				[{<<"version">>, _val} | _attrs], Xmlns,
				_Version, Conversation, Symmetric) ->
    decode_xabber_retract_all_attrs(__TopXMLNS, _attrs,
				    Xmlns, _val, Conversation, Symmetric);
decode_xabber_retract_all_attrs(__TopXMLNS,
				[{<<"conversation">>, _val} | _attrs], Xmlns,
				Version, _Conversation, Symmetric) ->
    decode_xabber_retract_all_attrs(__TopXMLNS, _attrs,
				    Xmlns, Version, _val, Symmetric);
decode_xabber_retract_all_attrs(__TopXMLNS,
				[{<<"symmetric">>, _val} | _attrs], Xmlns,
				Version, Conversation, _Symmetric) ->
    decode_xabber_retract_all_attrs(__TopXMLNS, _attrs,
				    Xmlns, Version, Conversation, _val);
decode_xabber_retract_all_attrs(__TopXMLNS,
				[_ | _attrs], Xmlns, Version, Conversation,
				Symmetric) ->
    decode_xabber_retract_all_attrs(__TopXMLNS, _attrs,
				    Xmlns, Version, Conversation, Symmetric);
decode_xabber_retract_all_attrs(__TopXMLNS, [], Xmlns,
				Version, Conversation, Symmetric) ->
    {decode_xabber_retract_all_attr_xmlns(__TopXMLNS,
					  Xmlns),
     decode_xabber_retract_all_attr_version(__TopXMLNS,
					    Version),
     decode_xabber_retract_all_attr_conversation(__TopXMLNS,
						 Conversation),
     decode_xabber_retract_all_attr_symmetric(__TopXMLNS,
					      Symmetric)}.

encode_xabber_retract_all({xabber_retract_all, Xmlns,
			   Symmetric, Version, Conversation},
			  __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"http://xabber.com/protocol/rewrite">>,
						 <<"http://xabber.com/protocol/rewrite#notify">>],
						__TopXMLNS),
    _els = [],
    _attrs =
	encode_xabber_retract_all_attr_symmetric(Symmetric,
						 encode_xabber_retract_all_attr_conversation(Conversation,
											     encode_xabber_retract_all_attr_version(Version,
																    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																			       __TopXMLNS)))),
    {xmlel, <<"retract-all">>, _attrs, _els}.

decode_xabber_retract_all_attr_xmlns(__TopXMLNS,
				     undefined) ->
    <<>>;
decode_xabber_retract_all_attr_xmlns(__TopXMLNS,
				     _val) ->
    _val.

decode_xabber_retract_all_attr_version(__TopXMLNS,
				       undefined) ->
    undefined;
decode_xabber_retract_all_attr_version(__TopXMLNS,
				       _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"retract-all">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_all_attr_version(undefined,
				       _acc) ->
    _acc;
encode_xabber_retract_all_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_xabber_retract_all_attr_conversation(__TopXMLNS,
					    undefined) ->
    undefined;
decode_xabber_retract_all_attr_conversation(__TopXMLNS,
					    _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"conversation">>, <<"retract-all">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_all_attr_conversation(undefined,
					    _acc) ->
    _acc;
encode_xabber_retract_all_attr_conversation(_val,
					    _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_xabber_retract_all_attr_symmetric(__TopXMLNS,
					 undefined) ->
    undefined;
decode_xabber_retract_all_attr_symmetric(__TopXMLNS,
					 _val) ->
    case catch dec_bool(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"symmetric">>, <<"retract-all">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_all_attr_symmetric(undefined,
					 _acc) ->
    _acc;
encode_xabber_retract_all_attr_symmetric(_val, _acc) ->
    [{<<"symmetric">>, enc_bool(_val)} | _acc].

decode_xabber_retract_message(__TopXMLNS, __Opts,
			      {xmlel, <<"retract-message">>, _attrs, _els}) ->
    {Xmlns, Id, Version, Conversation, Symmetric, By} =
	decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					    undefined, undefined, undefined,
					    undefined, undefined, undefined),
    {xabber_retract_message, Xmlns, Id, By, Symmetric,
     Version, Conversation}.

decode_xabber_retract_message_attrs(__TopXMLNS,
				    [{<<"xmlns">>, _val} | _attrs], _Xmlns, Id,
				    Version, Conversation, Symmetric, By) ->
    decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					_val, Id, Version, Conversation,
					Symmetric, By);
decode_xabber_retract_message_attrs(__TopXMLNS,
				    [{<<"id">>, _val} | _attrs], Xmlns, _Id,
				    Version, Conversation, Symmetric, By) ->
    decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					Xmlns, _val, Version, Conversation,
					Symmetric, By);
decode_xabber_retract_message_attrs(__TopXMLNS,
				    [{<<"version">>, _val} | _attrs], Xmlns, Id,
				    _Version, Conversation, Symmetric, By) ->
    decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					Xmlns, Id, _val, Conversation,
					Symmetric, By);
decode_xabber_retract_message_attrs(__TopXMLNS,
				    [{<<"conversation">>, _val} | _attrs],
				    Xmlns, Id, Version, _Conversation,
				    Symmetric, By) ->
    decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					Xmlns, Id, Version, _val, Symmetric,
					By);
decode_xabber_retract_message_attrs(__TopXMLNS,
				    [{<<"symmetric">>, _val} | _attrs], Xmlns,
				    Id, Version, Conversation, _Symmetric,
				    By) ->
    decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					Xmlns, Id, Version, Conversation, _val,
					By);
decode_xabber_retract_message_attrs(__TopXMLNS,
				    [{<<"by">>, _val} | _attrs], Xmlns, Id,
				    Version, Conversation, Symmetric, _By) ->
    decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					Xmlns, Id, Version, Conversation,
					Symmetric, _val);
decode_xabber_retract_message_attrs(__TopXMLNS,
				    [_ | _attrs], Xmlns, Id, Version,
				    Conversation, Symmetric, By) ->
    decode_xabber_retract_message_attrs(__TopXMLNS, _attrs,
					Xmlns, Id, Version, Conversation,
					Symmetric, By);
decode_xabber_retract_message_attrs(__TopXMLNS, [],
				    Xmlns, Id, Version, Conversation, Symmetric,
				    By) ->
    {decode_xabber_retract_message_attr_xmlns(__TopXMLNS,
					      Xmlns),
     decode_xabber_retract_message_attr_id(__TopXMLNS, Id),
     decode_xabber_retract_message_attr_version(__TopXMLNS,
						Version),
     decode_xabber_retract_message_attr_conversation(__TopXMLNS,
						     Conversation),
     decode_xabber_retract_message_attr_symmetric(__TopXMLNS,
						  Symmetric),
     decode_xabber_retract_message_attr_by(__TopXMLNS, By)}.

encode_xabber_retract_message({xabber_retract_message,
			       Xmlns, Id, By, Symmetric, Version, Conversation},
			      __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"http://xabber.com/protocol/rewrite">>,
						 <<"http://xabber.com/protocol/rewrite#notify">>],
						__TopXMLNS),
    _els = [],
    _attrs = encode_xabber_retract_message_attr_by(By,
						   encode_xabber_retract_message_attr_symmetric(Symmetric,
												encode_xabber_retract_message_attr_conversation(Conversation,
																		encode_xabber_retract_message_attr_version(Version,
																							   encode_xabber_retract_message_attr_id(Id,
																												 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																															    __TopXMLNS)))))),
    {xmlel, <<"retract-message">>, _attrs, _els}.

decode_xabber_retract_message_attr_xmlns(__TopXMLNS,
					 undefined) ->
    <<>>;
decode_xabber_retract_message_attr_xmlns(__TopXMLNS,
					 _val) ->
    _val.

decode_xabber_retract_message_attr_id(__TopXMLNS,
				      undefined) ->
    undefined;
decode_xabber_retract_message_attr_id(__TopXMLNS,
				      _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"id">>, <<"retract-message">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_message_attr_id(undefined,
				      _acc) ->
    _acc;
encode_xabber_retract_message_attr_id(_val, _acc) ->
    [{<<"id">>, enc_int(_val)} | _acc].

decode_xabber_retract_message_attr_version(__TopXMLNS,
					   undefined) ->
    undefined;
decode_xabber_retract_message_attr_version(__TopXMLNS,
					   _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"retract-message">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_message_attr_version(undefined,
					   _acc) ->
    _acc;
encode_xabber_retract_message_attr_version(_val,
					   _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_xabber_retract_message_attr_conversation(__TopXMLNS,
						undefined) ->
    undefined;
decode_xabber_retract_message_attr_conversation(__TopXMLNS,
						_val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"conversation">>,
			 <<"retract-message">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_message_attr_conversation(undefined,
						_acc) ->
    _acc;
encode_xabber_retract_message_attr_conversation(_val,
						_acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_xabber_retract_message_attr_symmetric(__TopXMLNS,
					     undefined) ->
    undefined;
decode_xabber_retract_message_attr_symmetric(__TopXMLNS,
					     _val) ->
    case catch dec_bool(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"symmetric">>, <<"retract-message">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_message_attr_symmetric(undefined,
					     _acc) ->
    _acc;
encode_xabber_retract_message_attr_symmetric(_val,
					     _acc) ->
    [{<<"symmetric">>, enc_bool(_val)} | _acc].

decode_xabber_retract_message_attr_by(__TopXMLNS,
				      undefined) ->
    undefined;
decode_xabber_retract_message_attr_by(__TopXMLNS,
				      _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"by">>, <<"retract-message">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_retract_message_attr_by(undefined,
				      _acc) ->
    _acc;
encode_xabber_retract_message_attr_by(_val, _acc) ->
    [{<<"by">>, jid:encode(_val)} | _acc].
