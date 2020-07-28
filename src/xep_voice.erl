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

do_encode({voice_message} = Voice_message, TopXMLNS) ->
    encode_voice_message(Voice_message, TopXMLNS).

do_get_name({voice_message}) -> <<"voice-message">>.

do_get_ns({voice_message}) ->
    <<"https://xabber.com/protocol/voice-message">>.

pp(voice_message, 0) -> [];
pp(_, _) -> no.

records() -> [{voice_message, 0}].

decode_voice_message(__TopXMLNS, __Opts,
		     {xmlel, <<"voice-message">>, _attrs, _els}) ->
    {voice_message}.

encode_voice_message({voice_message}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/voice-message">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"voice-message">>, _attrs, _els}.
