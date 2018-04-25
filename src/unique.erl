%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(unique).

-compile(export_all).

do_decode(<<"retry">>,
	  <<"http://xabber.com/protocol/unique">>, El, Opts) ->
    decode_unique_retry(<<"http://xabber.com/protocol/unique">>,
			Opts, El);
do_decode(<<"received">>,
	  <<"http://xabber.com/protocol/unique">>, El, Opts) ->
    decode_unique_received(<<"http://xabber.com/protocol/unique">>,
			   Opts, El);
do_decode(<<"time">>,
	  <<"http://xabber.com/protocol/unique">>, El, Opts) ->
    decode_unique_time(<<"http://xabber.com/protocol/unique">>,
		       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"retry">>, <<"http://xabber.com/protocol/unique">>},
     {<<"received">>,
      <<"http://xabber.com/protocol/unique">>},
     {<<"time">>, <<"http://xabber.com/protocol/unique">>}].

do_encode({unique_time, _, _} = Time, TopXMLNS) ->
    encode_unique_time(Time, TopXMLNS);
do_encode({unique_received, _, _, _, _} = Received,
	  TopXMLNS) ->
    encode_unique_received(Received, TopXMLNS);
do_encode({unique_retry} = Retry, TopXMLNS) ->
    encode_unique_retry(Retry, TopXMLNS).

do_get_name({unique_received, _, _, _, _}) ->
    <<"received">>;
do_get_name({unique_retry}) -> <<"retry">>;
do_get_name({unique_time, _, _}) -> <<"time">>.

do_get_ns({unique_received, _, _, _, _}) ->
    <<"http://xabber.com/protocol/unique">>;
do_get_ns({unique_retry}) ->
    <<"http://xabber.com/protocol/unique">>;
do_get_ns({unique_time, _, _}) ->
    <<"http://xabber.com/protocol/unique">>.

pp(unique_time, 2) -> [stamp, by];
pp(unique_received, 4) ->
    [origin_id, stanza_id, previous_id, time];
pp(unique_retry, 0) -> [];
pp(_, _) -> no.

records() ->
    [{unique_time, 2}, {unique_received, 4},
     {unique_retry, 0}].

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

decode_unique_retry(__TopXMLNS, __Opts,
		    {xmlel, <<"retry">>, _attrs, _els}) ->
    {unique_retry}.

encode_unique_retry({unique_retry}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/unique">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"retry">>, _attrs, _els}.

decode_unique_received(__TopXMLNS, __Opts,
		       {xmlel, <<"received">>, _attrs, _els}) ->
    {Previous_id, Stanza_id, Origin_id, Time} =
	decode_unique_received_els(__TopXMLNS, __Opts, _els,
				   error, error, error, error),
    {unique_received, Origin_id, Stanza_id, Previous_id,
     Time}.

decode_unique_received_els(__TopXMLNS, __Opts, [],
			   Previous_id, Stanza_id, Origin_id, Time) ->
    {case Previous_id of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"previous-id">>, __TopXMLNS}});
       {value, Previous_id1} -> Previous_id1
     end,
     case Stanza_id of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"stanza-id">>, __TopXMLNS}});
       {value, Stanza_id1} -> Stanza_id1
     end,
     case Origin_id of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"origin-id">>, __TopXMLNS}});
       {value, Origin_id1} -> Origin_id1
     end,
     case Time of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"time">>, __TopXMLNS}});
       {value, Time1} -> Time1
     end};
decode_unique_received_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"origin-id">>, _attrs, _} = _el | _els],
			   Previous_id, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:sid:0">> ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id, Stanza_id,
				     {value,
				      xep0359:decode_origin_id(<<"urn:xmpp:sid:0">>,
							       __Opts, _el)},
				     Time);
      _ ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id, Stanza_id, Origin_id, Time)
    end;
decode_unique_received_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"stanza-id">>, _attrs, _} = _el | _els],
			   Previous_id, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:sid:0">> ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id,
				     {value,
				      xep0359:decode_stanza_id(<<"urn:xmpp:sid:0">>,
							       __Opts, _el)},
				     Origin_id, Time);
      _ ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id, Stanza_id, Origin_id, Time)
    end;
decode_unique_received_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"previous-id">>, _attrs, _} = _el | _els],
			   Previous_id, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/previous">> ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     {value,
				      previous:decode_previous_id(<<"http://xabber.com/protocol/previous">>,
								  __Opts, _el)},
				     Stanza_id, Origin_id, Time);
      _ ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id, Stanza_id, Origin_id, Time)
    end;
decode_unique_received_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"time">>, _attrs, _} = _el | _els],
			   Previous_id, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/unique">> ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id, Stanza_id, Origin_id,
				     {value,
				      decode_unique_time(<<"http://xabber.com/protocol/unique">>,
							 __Opts, _el)});
      _ ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id, Stanza_id, Origin_id, Time)
    end;
decode_unique_received_els(__TopXMLNS, __Opts,
			   [_ | _els], Previous_id, Stanza_id, Origin_id,
			   Time) ->
    decode_unique_received_els(__TopXMLNS, __Opts, _els,
			       Previous_id, Stanza_id, Origin_id, Time).

encode_unique_received({unique_received, Origin_id,
			Stanza_id, Previous_id, Time},
		       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/unique">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_unique_received_$previous_id'(Previous_id,
							    __NewTopXMLNS,
							    'encode_unique_received_$stanza_id'(Stanza_id,
												__NewTopXMLNS,
												'encode_unique_received_$origin_id'(Origin_id,
																    __NewTopXMLNS,
																    'encode_unique_received_$time'(Time,
																				   __NewTopXMLNS,
																				   []))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"received">>, _attrs, _els}.

'encode_unique_received_$previous_id'(Previous_id,
				      __TopXMLNS, _acc) ->
    [previous:encode_previous_id(Previous_id, __TopXMLNS)
     | _acc].

'encode_unique_received_$stanza_id'(Stanza_id,
				    __TopXMLNS, _acc) ->
    [xep0359:encode_stanza_id(Stanza_id, __TopXMLNS)
     | _acc].

'encode_unique_received_$origin_id'(Origin_id,
				    __TopXMLNS, _acc) ->
    [xep0359:encode_origin_id(Origin_id, __TopXMLNS)
     | _acc].

'encode_unique_received_$time'(Time, __TopXMLNS,
			       _acc) ->
    [encode_unique_time(Time, __TopXMLNS) | _acc].

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
