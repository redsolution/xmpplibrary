%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(unique).

-compile(export_all).

do_decode(<<"time">>,
	  <<"http://xabber.com/protocol/unique">>, El, Opts) ->
    decode_unique_time(<<"http://xabber.com/protocol/unique">>,
		       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"time">>, <<"http://xabber.com/protocol/unique">>}].

do_encode({unique_time, _, _} = Time, TopXMLNS) ->
    encode_unique_time(Time, TopXMLNS).

do_get_name({unique_time, _, _}) -> <<"time">>.

do_get_ns({unique_time, _, _}) ->
    <<"http://xabber.com/protocol/unique">>.

pp(unique_time, 2) -> [stamp, by];
pp(_, _) -> no.

records() -> [{unique_time, 2}].

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

decode_unique_time(__TopXMLNS, __Opts,
		   {xmlel, <<"time">>, _attrs, _els}) ->
    {Stamp, By} = decode_unique_time_attrs(__TopXMLNS,
					   _attrs, undefined, undefined),
    {unique_time, Stamp, By}.

decode_unique_time_attrs(__TopXMLNS,
			 [{<<"stamp">>, _val} | _attrs], _Stamp, By) ->
    decode_unique_time_attrs(__TopXMLNS, _attrs, _val, By);
decode_unique_time_attrs(__TopXMLNS,
			 [{<<"by">>, _val} | _attrs], Stamp, _By) ->
    decode_unique_time_attrs(__TopXMLNS, _attrs, Stamp,
			     _val);
decode_unique_time_attrs(__TopXMLNS, [_ | _attrs],
			 Stamp, By) ->
    decode_unique_time_attrs(__TopXMLNS, _attrs, Stamp, By);
decode_unique_time_attrs(__TopXMLNS, [], Stamp, By) ->
    {decode_unique_time_attr_stamp(__TopXMLNS, Stamp),
     decode_unique_time_attr_by(__TopXMLNS, By)}.

encode_unique_time({unique_time, Stamp, By},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/unique">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_unique_time_attr_by(By,
					encode_unique_time_attr_stamp(Stamp,
								      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												 __TopXMLNS))),
    {xmlel, <<"time">>, _attrs, _els}.

decode_unique_time_attr_stamp(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"stamp">>, <<"time">>, __TopXMLNS}});
decode_unique_time_attr_stamp(__TopXMLNS, _val) ->
    case catch dec_utc(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"stamp">>, <<"time">>, __TopXMLNS}});
      _res -> _res
    end.

encode_unique_time_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, enc_utc(_val)} | _acc].

decode_unique_time_attr_by(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"by">>, <<"time">>, __TopXMLNS}});
decode_unique_time_attr_by(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"by">>, <<"time">>, __TopXMLNS}});
      _res -> _res
    end.

encode_unique_time_attr_by(_val, _acc) ->
    [{<<"by">>, jid:encode(_val)} | _acc].
