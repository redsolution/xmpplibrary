%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_voice).

-compile(export_all).

do_decode(<<"voice-message">>,
	  <<"https://xabber.com/protocol/voice-message">>, El,
	  Opts) ->
    decode_voice_message(<<"https://xabber.com/protocol/voice-message">>,
			 Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"voice-message">>,
      <<"https://xabber.com/protocol/voice-message">>}].

do_encode({voice_message, _} = Voice_message,
	  TopXMLNS) ->
    encode_voice_message(Voice_message, TopXMLNS).

do_get_name({voice_message, _}) -> <<"voice-message">>.

do_get_ns({voice_message, _}) ->
    <<"https://xabber.com/protocol/voice-message">>.

get_els({voice_message, _sub_els}) -> _sub_els.

set_els({voice_message, _}, _sub_els) ->
    {voice_message, _sub_els}.

pp(voice_message, 1) -> [sub_els];
pp(_, _) -> no.

records() -> [{voice_message, 1}].

decode_voice_message(__TopXMLNS, __Opts,
		     {xmlel, <<"voice-message">>, _attrs, _els}) ->
    __Els = decode_voice_message_els(__TopXMLNS, __Opts,
				     _els, []),
    {voice_message, __Els}.

decode_voice_message_els(__TopXMLNS, __Opts, [],
			 __Els) ->
    lists:reverse(__Els);
decode_voice_message_els(__TopXMLNS, __Opts,
			 [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_voice_message_els(__TopXMLNS, __Opts, _els,
				   [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_voice_message_els(__TopXMLNS, __Opts, _els,
					 [_el | __Els]);
	    Mod ->
		decode_voice_message_els(__TopXMLNS, __Opts, _els,
					 [Mod:do_decode(_name, __XMLNS, _el,
							__Opts)
					  | __Els])
	  end
    end;
decode_voice_message_els(__TopXMLNS, __Opts, [_ | _els],
			 __Els) ->
    decode_voice_message_els(__TopXMLNS, __Opts, _els,
			     __Els).

encode_voice_message({voice_message, __Els},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/voice-message">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"voice-message">>, _attrs, _els}.
