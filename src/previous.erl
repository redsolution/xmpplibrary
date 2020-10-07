%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(previous).

-compile(export_all).

do_decode(<<"previous-id">>,
	  <<"https://xabber.com/protocol/previous">>, El, Opts) ->
    decode_previous_id(<<"https://xabber.com/protocol/previous">>,
		       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"previous-id">>,
      <<"https://xabber.com/protocol/previous">>}].

do_encode({previous_id, _} = Previous_id, TopXMLNS) ->
    encode_previous_id(Previous_id, TopXMLNS).

do_get_name({previous_id, _}) -> <<"previous-id">>.

do_get_ns({previous_id, _}) ->
    <<"https://xabber.com/protocol/previous">>.

pp(previous_id, 1) -> [id];
pp(_, _) -> no.

records() -> [{previous_id, 1}].

decode_previous_id(__TopXMLNS, __Opts,
		   {xmlel, <<"previous-id">>, _attrs, _els}) ->
    Id = decode_previous_id_attrs(__TopXMLNS, _attrs,
				  undefined),
    {previous_id, Id}.

decode_previous_id_attrs(__TopXMLNS,
			 [{<<"id">>, _val} | _attrs], _Id) ->
    decode_previous_id_attrs(__TopXMLNS, _attrs, _val);
decode_previous_id_attrs(__TopXMLNS, [_ | _attrs],
			 Id) ->
    decode_previous_id_attrs(__TopXMLNS, _attrs, Id);
decode_previous_id_attrs(__TopXMLNS, [], Id) ->
    decode_previous_id_attr_id(__TopXMLNS, Id).

encode_previous_id({previous_id, Id}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/previous">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_previous_id_attr_id(Id,
					xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								   __TopXMLNS)),
    {xmlel, <<"previous-id">>, _attrs, _els}.

decode_previous_id_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_previous_id_attr_id(__TopXMLNS, _val) -> _val.

encode_previous_id_attr_id(<<>>, _acc) -> _acc;
encode_previous_id_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].
