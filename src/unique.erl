%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(unique).

-compile(export_all).

do_decode(<<"request">>,
	  <<"http://xabber.com/protocol/delivery">>, El, Opts) ->
    decode_unique_request(<<"http://xabber.com/protocol/delivery">>,
			  Opts, El);
do_decode(<<"received">>,
	  <<"http://xabber.com/protocol/delivery">>, El, Opts) ->
    decode_unique_received(<<"http://xabber.com/protocol/delivery">>,
			   Opts, El);
do_decode(<<"time">>,
	  <<"http://xabber.com/protocol/delivery">>, El, Opts) ->
    decode_unique_time(<<"http://xabber.com/protocol/delivery">>,
		       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"request">>,
      <<"http://xabber.com/protocol/delivery">>},
     {<<"received">>,
      <<"http://xabber.com/protocol/delivery">>},
     {<<"time">>,
      <<"http://xabber.com/protocol/delivery">>}].

do_encode({unique_time, _, _} = Time, TopXMLNS) ->
    encode_unique_time(Time, TopXMLNS);
do_encode({unique_received, _, _, _, _} = Received,
	  TopXMLNS) ->
    encode_unique_received(Received, TopXMLNS);
do_encode({unique_request, _, _} = Request, TopXMLNS) ->
    encode_unique_request(Request, TopXMLNS).

do_get_name({unique_received, _, _, _, _}) ->
    <<"received">>;
do_get_name({unique_request, _, _}) -> <<"request">>;
do_get_name({unique_time, _, _}) -> <<"time">>.

do_get_ns({unique_received, _, _, _, _}) ->
    <<"http://xabber.com/protocol/delivery">>;
do_get_ns({unique_request, _, _}) ->
    <<"http://xabber.com/protocol/delivery">>;
do_get_ns({unique_time, _, _}) ->
    <<"http://xabber.com/protocol/delivery">>.

pp(unique_time, 2) -> [stamp, by];
pp(unique_received, 4) ->
    [origin_id, stanza_id, previous_id, time];
pp(unique_request, 2) -> [retry, to];
pp(_, _) -> no.

records() ->
    [{unique_time, 2}, {unique_received, 4},
     {unique_request, 2}].

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

decode_unique_request(__TopXMLNS, __Opts,
		      {xmlel, <<"request">>, _attrs, _els}) ->
    {Retry, To} = decode_unique_request_attrs(__TopXMLNS,
					      _attrs, undefined, undefined),
    {unique_request, Retry, To}.

decode_unique_request_attrs(__TopXMLNS,
			    [{<<"retry">>, _val} | _attrs], _Retry, To) ->
    decode_unique_request_attrs(__TopXMLNS, _attrs, _val,
				To);
decode_unique_request_attrs(__TopXMLNS,
			    [{<<"to">>, _val} | _attrs], Retry, _To) ->
    decode_unique_request_attrs(__TopXMLNS, _attrs, Retry,
				_val);
decode_unique_request_attrs(__TopXMLNS, [_ | _attrs],
			    Retry, To) ->
    decode_unique_request_attrs(__TopXMLNS, _attrs, Retry,
				To);
decode_unique_request_attrs(__TopXMLNS, [], Retry,
			    To) ->
    {decode_unique_request_attr_retry(__TopXMLNS, Retry),
     decode_unique_request_attr_to(__TopXMLNS, To)}.

encode_unique_request({unique_request, Retry, To},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/delivery">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_unique_request_attr_to(To,
					   encode_unique_request_attr_retry(Retry,
									    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												       __TopXMLNS))),
    {xmlel, <<"request">>, _attrs, _els}.

decode_unique_request_attr_retry(__TopXMLNS,
				 undefined) ->
    <<>>;
decode_unique_request_attr_retry(__TopXMLNS, _val) ->
    _val.

encode_unique_request_attr_retry(<<>>, _acc) -> _acc;
encode_unique_request_attr_retry(_val, _acc) ->
    [{<<"retry">>, _val} | _acc].

decode_unique_request_attr_to(__TopXMLNS, undefined) ->
    undefined;
decode_unique_request_attr_to(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"to">>, <<"request">>, __TopXMLNS}});
      _res -> _res
    end.

encode_unique_request_attr_to(undefined, _acc) -> _acc;
encode_unique_request_attr_to(_val, _acc) ->
    [{<<"to">>, jid:encode(_val)} | _acc].

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
      <<"http://xabber.com/protocol/delivery">> ->
	  decode_unique_received_els(__TopXMLNS, __Opts, _els,
				     Previous_id, Stanza_id, Origin_id,
				     {value,
				      decode_unique_time(<<"http://xabber.com/protocol/delivery">>,
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
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/delivery">>,
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
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/delivery">>,
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
