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

do_encode({geoloc} = Geoloc, TopXMLNS) ->
    encode_geoloc(Geoloc, TopXMLNS).

do_get_name({geoloc}) -> <<"geoloc">>.

do_get_ns({geoloc}) ->
    <<"http://jabber.org/protocol/geoloc">>.

pp(geoloc, 0) -> [];
pp(_, _) -> no.

records() -> [{geoloc, 0}].

decode_geoloc(__TopXMLNS, __Opts,
	      {xmlel, <<"geoloc">>, _attrs, _els}) ->
    {geoloc}.

encode_geoloc({geoloc}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://jabber.org/protocol/geoloc">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"geoloc">>, _attrs, _els}.
