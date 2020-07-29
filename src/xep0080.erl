%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep0080).

-compile(export_all).

do_decode(<<"geoloc">>,
	  <<"http://jabber.org/protocol/geoloc">>, El, Opts) ->
    decode_geoloc(<<"http://jabber.org/protocol/geoloc">>,
		  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"geoloc">>,
      <<"http://jabber.org/protocol/geoloc">>}].

do_encode({geoloc, _} = Geoloc, TopXMLNS) ->
    encode_geoloc(Geoloc, TopXMLNS).

do_get_name({geoloc, _}) -> <<"geoloc">>.

do_get_ns({geoloc, _}) ->
    <<"http://jabber.org/protocol/geoloc">>.

get_els({geoloc, _sub_els}) -> _sub_els.

set_els({geoloc, _}, _sub_els) -> {geoloc, _sub_els}.

pp(geoloc, 1) -> [sub_els];
pp(_, _) -> no.

records() -> [{geoloc, 1}].

decode_geoloc(__TopXMLNS, __Opts,
	      {xmlel, <<"geoloc">>, _attrs, _els}) ->
    __Els = decode_geoloc_els(__TopXMLNS, __Opts, _els, []),
    {geoloc, __Els}.

decode_geoloc_els(__TopXMLNS, __Opts, [], __Els) ->
    lists:reverse(__Els);
decode_geoloc_els(__TopXMLNS, __Opts,
		  [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_geoloc_els(__TopXMLNS, __Opts, _els,
			    [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_geoloc_els(__TopXMLNS, __Opts, _els,
				  [_el | __Els]);
	    Mod ->
		decode_geoloc_els(__TopXMLNS, __Opts, _els,
				  [Mod:do_decode(_name, __XMLNS, _el, __Opts)
				   | __Els])
	  end
    end;
decode_geoloc_els(__TopXMLNS, __Opts, [_ | _els],
		  __Els) ->
    decode_geoloc_els(__TopXMLNS, __Opts, _els, __Els).

encode_geoloc({geoloc, __Els}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://jabber.org/protocol/geoloc">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"geoloc">>, _attrs, _els}.
