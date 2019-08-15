%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep0333).

-compile(export_all).

do_decode(<<"displayed">>,
	  <<"urn:xmpp:chat-markers:0">>, El, Opts) ->
    decode_message_displayed(<<"urn:xmpp:chat-markers:0">>,
			     Opts, El);
do_decode(<<"received">>, <<"urn:xmpp:chat-markers:0">>,
	  El, Opts) ->
    decode_message_received(<<"urn:xmpp:chat-markers:0">>,
			    Opts, El);
do_decode(<<"markable">>, <<"urn:xmpp:chat-markers:0">>,
	  El, Opts) ->
    decode_message_markable(<<"urn:xmpp:chat-markers:0">>,
			    Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"displayed">>, <<"urn:xmpp:chat-markers:0">>},
     {<<"received">>, <<"urn:xmpp:chat-markers:0">>},
     {<<"markable">>, <<"urn:xmpp:chat-markers:0">>}].

do_encode({message_markable} = Markable, TopXMLNS) ->
    encode_message_markable(Markable, TopXMLNS);
do_encode({message_received, _, _} = Received,
	  TopXMLNS) ->
    encode_message_received(Received, TopXMLNS);
do_encode({message_displayed, _, _} = Displayed,
	  TopXMLNS) ->
    encode_message_displayed(Displayed, TopXMLNS).

do_get_name({message_displayed, _, _}) ->
    <<"displayed">>;
do_get_name({message_markable}) -> <<"markable">>;
do_get_name({message_received, _, _}) -> <<"received">>.

do_get_ns({message_displayed, _, _}) ->
    <<"urn:xmpp:chat-markers:0">>;
do_get_ns({message_markable}) ->
    <<"urn:xmpp:chat-markers:0">>;
do_get_ns({message_received, _, _}) ->
    <<"urn:xmpp:chat-markers:0">>.

get_els({message_received, _id, _sub_els}) -> _sub_els;
get_els({message_displayed, _id, _sub_els}) -> _sub_els.

set_els({message_received, _id, _}, _sub_els) ->
    {message_received, _id, _sub_els};
set_els({message_displayed, _id, _}, _sub_els) ->
    {message_displayed, _id, _sub_els}.

pp(message_markable, 0) -> [];
pp(message_received, 2) -> [id, sub_els];
pp(message_displayed, 2) -> [id, sub_els];
pp(_, _) -> no.

records() ->
    [{message_markable, 0}, {message_received, 2},
     {message_displayed, 2}].

decode_message_displayed(__TopXMLNS, __Opts,
			 {xmlel, <<"displayed">>, _attrs, _els}) ->
    __Els = decode_message_displayed_els(__TopXMLNS, __Opts,
					 _els, []),
    Id = decode_message_displayed_attrs(__TopXMLNS, _attrs,
					undefined),
    {message_displayed, Id, __Els}.

decode_message_displayed_els(__TopXMLNS, __Opts, [],
			     __Els) ->
    lists:reverse(__Els);
decode_message_displayed_els(__TopXMLNS, __Opts,
			     [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_message_displayed_els(__TopXMLNS, __Opts, _els,
				       [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_message_displayed_els(__TopXMLNS, __Opts, _els,
					     [_el | __Els]);
	    Mod ->
		decode_message_displayed_els(__TopXMLNS, __Opts, _els,
					     [Mod:do_decode(_name, __XMLNS, _el,
							    __Opts)
					      | __Els])
	  end
    end;
decode_message_displayed_els(__TopXMLNS, __Opts,
			     [_ | _els], __Els) ->
    decode_message_displayed_els(__TopXMLNS, __Opts, _els,
				 __Els).

decode_message_displayed_attrs(__TopXMLNS,
			       [{<<"id">>, _val} | _attrs], _Id) ->
    decode_message_displayed_attrs(__TopXMLNS, _attrs,
				   _val);
decode_message_displayed_attrs(__TopXMLNS, [_ | _attrs],
			       Id) ->
    decode_message_displayed_attrs(__TopXMLNS, _attrs, Id);
decode_message_displayed_attrs(__TopXMLNS, [], Id) ->
    decode_message_displayed_attr_id(__TopXMLNS, Id).

encode_message_displayed({message_displayed, Id, __Els},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:chat-markers:0">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_message_displayed_attr_id(Id,
					      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									 __TopXMLNS)),
    {xmlel, <<"displayed">>, _attrs, _els}.

decode_message_displayed_attr_id(__TopXMLNS,
				 undefined) ->
    <<>>;
decode_message_displayed_attr_id(__TopXMLNS, _val) ->
    _val.

encode_message_displayed_attr_id(<<>>, _acc) -> _acc;
encode_message_displayed_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_message_received(__TopXMLNS, __Opts,
			{xmlel, <<"received">>, _attrs, _els}) ->
    __Els = decode_message_received_els(__TopXMLNS, __Opts,
					_els, []),
    Id = decode_message_received_attrs(__TopXMLNS, _attrs,
				       undefined),
    {message_received, Id, __Els}.

decode_message_received_els(__TopXMLNS, __Opts, [],
			    __Els) ->
    lists:reverse(__Els);
decode_message_received_els(__TopXMLNS, __Opts,
			    [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_message_received_els(__TopXMLNS, __Opts, _els,
				      [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_message_received_els(__TopXMLNS, __Opts, _els,
					    [_el | __Els]);
	    Mod ->
		decode_message_received_els(__TopXMLNS, __Opts, _els,
					    [Mod:do_decode(_name, __XMLNS, _el,
							   __Opts)
					     | __Els])
	  end
    end;
decode_message_received_els(__TopXMLNS, __Opts,
			    [_ | _els], __Els) ->
    decode_message_received_els(__TopXMLNS, __Opts, _els,
				__Els).

decode_message_received_attrs(__TopXMLNS,
			      [{<<"id">>, _val} | _attrs], _Id) ->
    decode_message_received_attrs(__TopXMLNS, _attrs, _val);
decode_message_received_attrs(__TopXMLNS, [_ | _attrs],
			      Id) ->
    decode_message_received_attrs(__TopXMLNS, _attrs, Id);
decode_message_received_attrs(__TopXMLNS, [], Id) ->
    decode_message_received_attr_id(__TopXMLNS, Id).

encode_message_received({message_received, Id, __Els},
			__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:chat-markers:0">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_message_received_attr_id(Id,
					     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									__TopXMLNS)),
    {xmlel, <<"received">>, _attrs, _els}.

decode_message_received_attr_id(__TopXMLNS,
				undefined) ->
    <<>>;
decode_message_received_attr_id(__TopXMLNS, _val) ->
    _val.

encode_message_received_attr_id(<<>>, _acc) -> _acc;
encode_message_received_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_message_markable(__TopXMLNS, __Opts,
			{xmlel, <<"markable">>, _attrs, _els}) ->
    {message_markable}.

encode_message_markable({message_markable},
			__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:chat-markers:0">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"markable">>, _attrs, _els}.
