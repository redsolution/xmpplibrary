%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep0319).

-compile(export_all).

do_decode(<<"idle">>, <<"urn:xmpp:idle:1">>, El,
	  Opts) ->
    decode_idle(<<"urn:xmpp:idle:1">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"idle">>, <<"urn:xmpp:idle:1">>}].

do_encode({idle, _} = Idle, TopXMLNS) ->
    encode_idle(Idle, TopXMLNS).

do_get_name({idle, _}) -> <<"idle">>.

do_get_ns({idle, _}) -> <<"urn:xmpp:idle:1">>.

pp(idle, 1) -> [since];
pp(_, _) -> no.

records() -> [{idle, 1}].

decode_idle(__TopXMLNS, __Opts,
	    {xmlel, <<"idle">>, _attrs, _els}) ->
    Since = decode_idle_attrs(__TopXMLNS, _attrs,
			      undefined),
    {idle, Since}.

decode_idle_attrs(__TopXMLNS,
		  [{<<"since">>, _val} | _attrs], _Since) ->
    decode_idle_attrs(__TopXMLNS, _attrs, _val);
decode_idle_attrs(__TopXMLNS, [_ | _attrs], Since) ->
    decode_idle_attrs(__TopXMLNS, _attrs, Since);
decode_idle_attrs(__TopXMLNS, [], Since) ->
    decode_idle_attr_since(__TopXMLNS, Since).

encode_idle({idle, Since}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:idle:1">>, [],
				    __TopXMLNS),
    _els = [],
    _attrs = encode_idle_attr_since(Since,
				    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
							       __TopXMLNS)),
    {xmlel, <<"idle">>, _attrs, _els}.

decode_idle_attr_since(__TopXMLNS, undefined) -> <<>>;
decode_idle_attr_since(__TopXMLNS, _val) -> _val.

encode_idle_attr_since(<<>>, _acc) -> _acc;
encode_idle_attr_since(_val, _acc) ->
    [{<<"since">>, _val} | _acc].
