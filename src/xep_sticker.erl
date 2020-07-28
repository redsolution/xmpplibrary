%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_sticker).

-compile(export_all).

do_decode(<<"sticker">>,
	  <<"https://xabber.com/protocol/sticker">>, El, Opts) ->
    decode_sticker(<<"https://xabber.com/protocol/sticker">>,
		   Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"sticker">>,
      <<"https://xabber.com/protocol/sticker">>}].

do_encode({sticker} = Sticker, TopXMLNS) ->
    encode_sticker(Sticker, TopXMLNS).

do_get_name({sticker}) -> <<"sticker">>.

do_get_ns({sticker}) ->
    <<"https://xabber.com/protocol/sticker">>.

pp(sticker, 0) -> [];
pp(_, _) -> no.

records() -> [{sticker, 0}].

decode_sticker(__TopXMLNS, __Opts,
	       {xmlel, <<"sticker">>, _attrs, _els}) ->
    {sticker}.

encode_sticker({sticker}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/sticker">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"sticker">>, _attrs, _els}.
