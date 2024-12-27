%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_delivery).

-compile(export_all).

do_decode(<<"x">>,
	  <<"https://xabber.com/protocol/delivery">>, El, Opts) ->
    decode_delivery_x(<<"https://xabber.com/protocol/delivery">>,
		      Opts, El);
do_decode(<<"retry">>,
	  <<"https://xabber.com/protocol/delivery">>, El, Opts) ->
    decode_delivery_retry(<<"https://xabber.com/protocol/delivery">>,
			  Opts, El);
do_decode(<<"received">>,
	  <<"https://xabber.com/protocol/delivery">>, El, Opts) ->
    decode_delivery_received(<<"https://xabber.com/protocol/delivery">>,
			     Opts, El);
do_decode(<<"time">>,
	  <<"https://xabber.com/protocol/delivery">>, El, Opts) ->
    decode_delivery_time(<<"https://xabber.com/protocol/delivery">>,
			 Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"x">>, <<"https://xabber.com/protocol/delivery">>},
     {<<"retry">>,
      <<"https://xabber.com/protocol/delivery">>},
     {<<"received">>,
      <<"https://xabber.com/protocol/delivery">>},
     {<<"time">>,
      <<"https://xabber.com/protocol/delivery">>}].

do_encode({delivery_time, _, _} = Time, TopXMLNS) ->
    encode_delivery_time(Time, TopXMLNS);
do_encode({delivery_received, _, _, _, _} = Received,
	  TopXMLNS) ->
    encode_delivery_received(Received, TopXMLNS);
do_encode({delivery_retry, _} = Retry, TopXMLNS) ->
    encode_delivery_retry(Retry, TopXMLNS);
do_encode({delivery_x, _} = X, TopXMLNS) ->
    encode_delivery_x(X, TopXMLNS).

do_get_name({delivery_received, _, _, _, _}) ->
    <<"received">>;
do_get_name({delivery_retry, _}) -> <<"retry">>;
do_get_name({delivery_time, _, _}) -> <<"time">>;
do_get_name({delivery_x, _}) -> <<"x">>.

do_get_ns({delivery_received, _, _, _, _}) ->
    <<"https://xabber.com/protocol/delivery">>;
do_get_ns({delivery_retry, _}) ->
    <<"https://xabber.com/protocol/delivery">>;
do_get_ns({delivery_time, _, _}) ->
    <<"https://xabber.com/protocol/delivery">>;
do_get_ns({delivery_x, _}) ->
    <<"https://xabber.com/protocol/delivery">>.

get_els({delivery_x, _sub_els}) -> _sub_els.

set_els({delivery_x, _}, _sub_els) ->
    {delivery_x, _sub_els}.

pp(delivery_time, 2) -> [stamp, by];
pp(delivery_received, 4) ->
    [origin_id, stanza_id, time, forwarded];
pp(delivery_retry, 1) -> [to];
pp(delivery_x, 1) -> [sub_els];
pp(_, _) -> no.

records() ->
    [{delivery_time, 2}, {delivery_received, 4},
     {delivery_retry, 1}, {delivery_x, 1}].

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

decode_delivery_x(__TopXMLNS, __Opts,
		  {xmlel, <<"x">>, _attrs, _els}) ->
    __Els = decode_delivery_x_els(__TopXMLNS, __Opts, _els,
				  []),
    {delivery_x, __Els}.

decode_delivery_x_els(__TopXMLNS, __Opts, [], __Els) ->
    lists:reverse(__Els);
decode_delivery_x_els(__TopXMLNS, __Opts,
		      [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_delivery_x_els(__TopXMLNS, __Opts, _els,
				[_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_delivery_x_els(__TopXMLNS, __Opts, _els,
				      [_el | __Els]);
	    Mod ->
		decode_delivery_x_els(__TopXMLNS, __Opts, _els,
				      [Mod:do_decode(_name, __XMLNS, _el,
						     __Opts)
				       | __Els])
	  end
    end;
decode_delivery_x_els(__TopXMLNS, __Opts, [_ | _els],
		      __Els) ->
    decode_delivery_x_els(__TopXMLNS, __Opts, _els, __Els).

encode_delivery_x({delivery_x, __Els}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/delivery">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"x">>, _attrs, _els}.

decode_delivery_retry(__TopXMLNS, __Opts,
		      {xmlel, <<"retry">>, _attrs, _els}) ->
    To = decode_delivery_retry_attrs(__TopXMLNS, _attrs,
				     undefined),
    {delivery_retry, To}.

decode_delivery_retry_attrs(__TopXMLNS,
			    [{<<"to">>, _val} | _attrs], _To) ->
    decode_delivery_retry_attrs(__TopXMLNS, _attrs, _val);
decode_delivery_retry_attrs(__TopXMLNS, [_ | _attrs],
			    To) ->
    decode_delivery_retry_attrs(__TopXMLNS, _attrs, To);
decode_delivery_retry_attrs(__TopXMLNS, [], To) ->
    decode_delivery_retry_attr_to(__TopXMLNS, To).

encode_delivery_retry({delivery_retry, To},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/delivery">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_delivery_retry_attr_to(To,
					   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								      __TopXMLNS)),
    {xmlel, <<"retry">>, _attrs, _els}.

decode_delivery_retry_attr_to(__TopXMLNS, undefined) ->
    undefined;
decode_delivery_retry_attr_to(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"to">>, <<"retry">>, __TopXMLNS}});
      _res -> _res
    end.

encode_delivery_retry_attr_to(undefined, _acc) -> _acc;
encode_delivery_retry_attr_to(_val, _acc) ->
    [{<<"to">>, jid:encode(_val)} | _acc].

decode_delivery_received(__TopXMLNS, __Opts,
			 {xmlel, <<"received">>, _attrs, _els}) ->
    {Forwarded, Stanza_id, Origin_id, Time} =
	decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				     undefined, undefined, undefined,
				     undefined),
    {delivery_received, Origin_id, Stanza_id, Time,
     Forwarded}.

decode_delivery_received_els(__TopXMLNS, __Opts, [],
			     Forwarded, Stanza_id, Origin_id, Time) ->
    {Forwarded, Stanza_id, Origin_id, Time};
decode_delivery_received_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"origin-id">>, _attrs, _} = _el | _els],
			     Forwarded, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:sid:0">> ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       Forwarded, Stanza_id,
				       xep0359:decode_origin_id(<<"urn:xmpp:sid:0">>,
								__Opts, _el),
				       Time);
      _ ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       Forwarded, Stanza_id, Origin_id, Time)
    end;
decode_delivery_received_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"stanza-id">>, _attrs, _} = _el | _els],
			     Forwarded, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:sid:0">> ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       Forwarded,
				       xep0359:decode_stanza_id(<<"urn:xmpp:sid:0">>,
								__Opts, _el),
				       Origin_id, Time);
      _ ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       Forwarded, Stanza_id, Origin_id, Time)
    end;
decode_delivery_received_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"forwarded">>, _attrs, _} = _el | _els],
			     Forwarded, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xmpp:forward:0">> ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       xep0297:decode_forwarded(<<"urn:xmpp:forward:0">>,
								__Opts, _el),
				       Stanza_id, Origin_id, Time);
      _ ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       Forwarded, Stanza_id, Origin_id, Time)
    end;
decode_delivery_received_els(__TopXMLNS, __Opts,
			     [{xmlel, <<"time">>, _attrs, _} = _el | _els],
			     Forwarded, Stanza_id, Origin_id, Time) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/delivery">> ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       Forwarded, Stanza_id, Origin_id,
				       decode_delivery_time(<<"https://xabber.com/protocol/delivery">>,
							    __Opts, _el));
      _ ->
	  decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				       Forwarded, Stanza_id, Origin_id, Time)
    end;
decode_delivery_received_els(__TopXMLNS, __Opts,
			     [_ | _els], Forwarded, Stanza_id, Origin_id,
			     Time) ->
    decode_delivery_received_els(__TopXMLNS, __Opts, _els,
				 Forwarded, Stanza_id, Origin_id, Time).

encode_delivery_received({delivery_received, Origin_id,
			  Stanza_id, Time, Forwarded},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/delivery">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_delivery_received_$forwarded'(Forwarded,
							    __NewTopXMLNS,
							    'encode_delivery_received_$stanza_id'(Stanza_id,
												  __NewTopXMLNS,
												  'encode_delivery_received_$origin_id'(Origin_id,
																	__NewTopXMLNS,
																	'encode_delivery_received_$time'(Time,
																					 __NewTopXMLNS,
																					 []))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"received">>, _attrs, _els}.

'encode_delivery_received_$forwarded'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_delivery_received_$forwarded'(Forwarded,
				      __TopXMLNS, _acc) ->
    [xep0297:encode_forwarded(Forwarded, __TopXMLNS)
     | _acc].

'encode_delivery_received_$stanza_id'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_delivery_received_$stanza_id'(Stanza_id,
				      __TopXMLNS, _acc) ->
    [xep0359:encode_stanza_id(Stanza_id, __TopXMLNS)
     | _acc].

'encode_delivery_received_$origin_id'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_delivery_received_$origin_id'(Origin_id,
				      __TopXMLNS, _acc) ->
    [xep0359:encode_origin_id(Origin_id, __TopXMLNS)
     | _acc].

'encode_delivery_received_$time'(undefined, __TopXMLNS,
				 _acc) ->
    _acc;
'encode_delivery_received_$time'(Time, __TopXMLNS,
				 _acc) ->
    [encode_delivery_time(Time, __TopXMLNS) | _acc].

decode_delivery_time(__TopXMLNS, __Opts,
		     {xmlel, <<"time">>, _attrs, _els}) ->
    {Stamp, By} = decode_delivery_time_attrs(__TopXMLNS,
					     _attrs, undefined, undefined),
    {delivery_time, Stamp, By}.

decode_delivery_time_attrs(__TopXMLNS,
			   [{<<"stamp">>, _val} | _attrs], _Stamp, By) ->
    decode_delivery_time_attrs(__TopXMLNS, _attrs, _val,
			       By);
decode_delivery_time_attrs(__TopXMLNS,
			   [{<<"by">>, _val} | _attrs], Stamp, _By) ->
    decode_delivery_time_attrs(__TopXMLNS, _attrs, Stamp,
			       _val);
decode_delivery_time_attrs(__TopXMLNS, [_ | _attrs],
			   Stamp, By) ->
    decode_delivery_time_attrs(__TopXMLNS, _attrs, Stamp,
			       By);
decode_delivery_time_attrs(__TopXMLNS, [], Stamp, By) ->
    {decode_delivery_time_attr_stamp(__TopXMLNS, Stamp),
     decode_delivery_time_attr_by(__TopXMLNS, By)}.

encode_delivery_time({delivery_time, Stamp, By},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/delivery">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_delivery_time_attr_by(By,
					  encode_delivery_time_attr_stamp(Stamp,
									  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												     __TopXMLNS))),
    {xmlel, <<"time">>, _attrs, _els}.

decode_delivery_time_attr_stamp(__TopXMLNS,
				undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"stamp">>, <<"time">>, __TopXMLNS}});
decode_delivery_time_attr_stamp(__TopXMLNS, _val) ->
    case catch dec_utc(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"stamp">>, <<"time">>, __TopXMLNS}});
      _res -> _res
    end.

encode_delivery_time_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, enc_utc(_val)} | _acc].

decode_delivery_time_attr_by(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"by">>, <<"time">>, __TopXMLNS}});
decode_delivery_time_attr_by(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"by">>, <<"time">>, __TopXMLNS}});
      _res -> _res
    end.

encode_delivery_time_attr_by(_val, _acc) ->
    [{<<"by">>, jid:encode(_val)} | _acc].
