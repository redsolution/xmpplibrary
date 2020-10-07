%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_sticker).

-compile(export_all).

do_decode(<<"sticker">>,
	  <<"https://xabber.com/protocol/stickers">>, El, Opts) ->
    decode_sticker(<<"https://xabber.com/protocol/stickers">>,
		   Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"sticker">>,
      <<"https://xabber.com/protocol/stickers">>}].

do_encode({sticker, _} = Sticker, TopXMLNS) ->
    encode_sticker(Sticker, TopXMLNS).

do_get_name({sticker, _}) -> <<"sticker">>.

do_get_ns({sticker, _}) ->
    <<"https://xabber.com/protocol/stickers">>.

get_els({sticker, _sub_els}) -> _sub_els.

set_els({sticker, _}, _sub_els) -> {sticker, _sub_els}.

pp(sticker, 1) -> [sub_els];
pp(_, _) -> no.

records() -> [{sticker, 1}].

decode_sticker(__TopXMLNS, __Opts,
	       {xmlel, <<"sticker">>, _attrs, _els}) ->
    __Els = decode_sticker_els(__TopXMLNS, __Opts, _els,
			       []),
    {sticker, __Els}.

decode_sticker_els(__TopXMLNS, __Opts, [], __Els) ->
    lists:reverse(__Els);
decode_sticker_els(__TopXMLNS, __Opts,
		   [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_sticker_els(__TopXMLNS, __Opts, _els,
			     [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_sticker_els(__TopXMLNS, __Opts, _els,
				   [_el | __Els]);
	    Mod ->
		decode_sticker_els(__TopXMLNS, __Opts, _els,
				   [Mod:do_decode(_name, __XMLNS, _el, __Opts)
				    | __Els])
	  end
    end;
decode_sticker_els(__TopXMLNS, __Opts, [_ | _els],
		   __Els) ->
    decode_sticker_els(__TopXMLNS, __Opts, _els, __Els).

encode_sticker({sticker, __Els}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/stickers">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"sticker">>, _attrs, _els}.
