%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep0372).

-compile(export_all).

do_decode(<<"reference">>, <<"urn:xmpp:reference:0">>,
	  El, Opts) ->
    decode_xmppreference(<<"urn:xmpp:reference:0">>, Opts,
			 El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"reference">>, <<"urn:xmpp:reference:0">>}].

do_encode({xmppreference, _, _, _, _, _} = Reference,
	  TopXMLNS) ->
    encode_xmppreference(Reference, TopXMLNS).

do_get_name({xmppreference, _, _, _, _, _}) ->
    <<"reference">>.

do_get_ns({xmppreference, _, _, _, _, _}) ->
    <<"urn:xmpp:reference:0">>.

get_els({xmppreference, _type, _uri, _begin, _end,
	 _sub_els}) ->
    _sub_els.

set_els({xmppreference, _type, _uri, _begin, _end, _},
	_sub_els) ->
    {xmppreference, _type, _uri, _begin, _end, _sub_els}.

pp(xmppreference, 5) ->
    [type, uri, 'begin', 'end', sub_els];
pp(_, _) -> no.

records() -> [{xmppreference, 5}].

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

enc_enum(Atom) -> erlang:atom_to_binary(Atom, utf8).

enc_int(Int) -> erlang:integer_to_binary(Int).

decode_xmppreference(__TopXMLNS, __Opts,
		     {xmlel, <<"reference">>, _attrs, _els}) ->
    __Els = decode_xmppreference_els(__TopXMLNS, __Opts,
				     _els, []),
    {Type, Begin, End, Uri} =
	decode_xmppreference_attrs(__TopXMLNS, _attrs,
				   undefined, undefined, undefined, undefined),
    {xmppreference, Type, Uri, Begin, End, __Els}.

decode_xmppreference_els(__TopXMLNS, __Opts, [],
			 __Els) ->
    lists:reverse(__Els);
decode_xmppreference_els(__TopXMLNS, __Opts,
			 [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xmppreference_els(__TopXMLNS, __Opts, _els,
				   [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xmppreference_els(__TopXMLNS, __Opts, _els,
					 [_el | __Els]);
	    Mod ->
		decode_xmppreference_els(__TopXMLNS, __Opts, _els,
					 [Mod:do_decode(_name, __XMLNS, _el,
							__Opts)
					  | __Els])
	  end
    end;
decode_xmppreference_els(__TopXMLNS, __Opts, [_ | _els],
			 __Els) ->
    decode_xmppreference_els(__TopXMLNS, __Opts, _els,
			     __Els).

decode_xmppreference_attrs(__TopXMLNS,
			   [{<<"type">>, _val} | _attrs], _Type, Begin, End,
			   Uri) ->
    decode_xmppreference_attrs(__TopXMLNS, _attrs, _val,
			       Begin, End, Uri);
decode_xmppreference_attrs(__TopXMLNS,
			   [{<<"begin">>, _val} | _attrs], Type, _Begin, End,
			   Uri) ->
    decode_xmppreference_attrs(__TopXMLNS, _attrs, Type,
			       _val, End, Uri);
decode_xmppreference_attrs(__TopXMLNS,
			   [{<<"end">>, _val} | _attrs], Type, Begin, _End,
			   Uri) ->
    decode_xmppreference_attrs(__TopXMLNS, _attrs, Type,
			       Begin, _val, Uri);
decode_xmppreference_attrs(__TopXMLNS,
			   [{<<"uri">>, _val} | _attrs], Type, Begin, End,
			   _Uri) ->
    decode_xmppreference_attrs(__TopXMLNS, _attrs, Type,
			       Begin, End, _val);
decode_xmppreference_attrs(__TopXMLNS, [_ | _attrs],
			   Type, Begin, End, Uri) ->
    decode_xmppreference_attrs(__TopXMLNS, _attrs, Type,
			       Begin, End, Uri);
decode_xmppreference_attrs(__TopXMLNS, [], Type, Begin,
			   End, Uri) ->
    {decode_xmppreference_attr_type(__TopXMLNS, Type),
     decode_xmppreference_attr_begin(__TopXMLNS, Begin),
     decode_xmppreference_attr_end(__TopXMLNS, End),
     decode_xmppreference_attr_uri(__TopXMLNS, Uri)}.

encode_xmppreference({xmppreference, Type, Uri, Begin,
		      End, __Els},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:reference:0">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_xmppreference_attr_uri(Uri,
					   encode_xmppreference_attr_end(End,
									 encode_xmppreference_attr_begin(Begin,
													 encode_xmppreference_attr_type(Type,
																	xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																				   __TopXMLNS))))),
    {xmlel, <<"reference">>, _attrs, _els}.

decode_xmppreference_attr_type(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"type">>, <<"reference">>,
		   __TopXMLNS}});
decode_xmppreference_attr_type(__TopXMLNS, _val) ->
    case catch dec_enum(_val,
			[data, mention, groupchat, forward, legacy])
	of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"type">>, <<"reference">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xmppreference_attr_type(_val, _acc) ->
    [{<<"type">>, enc_enum(_val)} | _acc].

decode_xmppreference_attr_begin(__TopXMLNS,
				undefined) ->
    undefined;
decode_xmppreference_attr_begin(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"begin">>, <<"reference">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xmppreference_attr_begin(undefined, _acc) ->
    _acc;
encode_xmppreference_attr_begin(_val, _acc) ->
    [{<<"begin">>, enc_int(_val)} | _acc].

decode_xmppreference_attr_end(__TopXMLNS, undefined) ->
    undefined;
decode_xmppreference_attr_end(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"end">>, <<"reference">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xmppreference_attr_end(undefined, _acc) -> _acc;
encode_xmppreference_attr_end(_val, _acc) ->
    [{<<"end">>, enc_int(_val)} | _acc].

decode_xmppreference_attr_uri(__TopXMLNS, undefined) ->
    <<>>;
decode_xmppreference_attr_uri(__TopXMLNS, _val) -> _val.

encode_xmppreference_attr_uri(<<>>, _acc) -> _acc;
encode_xmppreference_attr_uri(_val, _acc) ->
    [{<<"uri">>, _val} | _acc].
