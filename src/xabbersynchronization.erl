%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbersynchronization).

-compile(export_all).

do_decode(<<"call">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_call(<<"http://xabber.com/protocol/synchronization">>,
				    Opts, El);
do_decode(<<"last-message">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_last(<<"http://xabber.com/protocol/synchronization">>,
				    Opts, El);
do_decode(<<"unread-mention">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_unread_mention(<<"http://xabber.com/protocol/synchronization">>,
					      Opts, El);
do_decode(<<"delivered">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_delivered(<<"http://xabber.com/protocol/synchronization">>,
					 Opts, El);
do_decode(<<"displayed">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_displayed(<<"http://xabber.com/protocol/synchronization">>,
					 Opts, El);
do_decode(<<"unread">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_unread(<<"http://xabber.com/protocol/synchronization">>,
				      Opts, El);
do_decode(<<"retract">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_retract(<<"http://xabber.com/protocol/synchronization">>,
				       Opts, El);
do_decode(<<"conversation">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation(<<"http://xabber.com/protocol/synchronization">>,
			       Opts, El);
do_decode(<<"query">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_synchronization_query(<<"http://xabber.com/protocol/synchronization">>,
					Opts, El);
do_decode(<<"synchronization">>,
	  <<"http://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_synchronization(<<"http://xabber.com/protocol/synchronization">>,
				  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"call">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"last-message">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"unread-mention">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"delivered">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"displayed">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"unread">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"retract">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"conversation">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"query">>,
      <<"http://xabber.com/protocol/synchronization">>},
     {<<"synchronization">>,
      <<"http://xabber.com/protocol/synchronization">>}].

do_encode({xabber_synchronization, _, _, _} =
	      Synchronization,
	  TopXMLNS) ->
    encode_xabber_synchronization(Synchronization,
				  TopXMLNS);
do_encode({xabber_synchronization_query, _, _} = Query,
	  TopXMLNS) ->
    encode_xabber_synchronization_query(Query, TopXMLNS);
do_encode({xabber_conversation, _, _, _, _, _, _, _, _,
	   _, _, _} =
	      Conversation,
	  TopXMLNS) ->
    encode_xabber_conversation(Conversation, TopXMLNS);
do_encode({xabber_conversation_retract, _} = Retract,
	  TopXMLNS) ->
    encode_xabber_conversation_retract(Retract, TopXMLNS);
do_encode({xabber_conversation_unread, _, _} = Unread,
	  TopXMLNS) ->
    encode_xabber_conversation_unread(Unread, TopXMLNS);
do_encode({xabber_conversation_displayed, _} =
	      Displayed,
	  TopXMLNS) ->
    encode_xabber_conversation_displayed(Displayed,
					 TopXMLNS);
do_encode({xabber_conversation_delivered, _} =
	      Delivered,
	  TopXMLNS) ->
    encode_xabber_conversation_delivered(Delivered,
					 TopXMLNS);
do_encode({xabber_conversation_unread_mention, _} =
	      Unread_mention,
	  TopXMLNS) ->
    encode_xabber_conversation_unread_mention(Unread_mention,
					      TopXMLNS);
do_encode({xabber_conversation_last, _} = Last_message,
	  TopXMLNS) ->
    encode_xabber_conversation_last(Last_message, TopXMLNS);
do_encode({xabber_conversation_call, _} = Call,
	  TopXMLNS) ->
    encode_xabber_conversation_call(Call, TopXMLNS).

do_get_name({xabber_conversation, _, _, _, _, _, _, _,
	     _, _, _, _}) ->
    <<"conversation">>;
do_get_name({xabber_conversation_call, _}) ->
    <<"call">>;
do_get_name({xabber_conversation_delivered, _}) ->
    <<"delivered">>;
do_get_name({xabber_conversation_displayed, _}) ->
    <<"displayed">>;
do_get_name({xabber_conversation_last, _}) ->
    <<"last-message">>;
do_get_name({xabber_conversation_retract, _}) ->
    <<"retract">>;
do_get_name({xabber_conversation_unread, _, _}) ->
    <<"unread">>;
do_get_name({xabber_conversation_unread_mention, _}) ->
    <<"unread-mention">>;
do_get_name({xabber_synchronization, _, _, _}) ->
    <<"synchronization">>;
do_get_name({xabber_synchronization_query, _, _}) ->
    <<"query">>.

do_get_ns({xabber_conversation, _, _, _, _, _, _, _, _,
	   _, _, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_call, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_delivered, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_displayed, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_last, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_retract, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_unread, _, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_unread_mention, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_synchronization, _, _, _}) ->
    <<"http://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_synchronization_query, _, _}) ->
    <<"http://xabber.com/protocol/synchronization">>.

get_els({xabber_conversation_last, _sub_els}) ->
    _sub_els;
get_els({xabber_conversation_call, _sub_els}) ->
    _sub_els.

set_els({xabber_conversation_last, _}, _sub_els) ->
    {xabber_conversation_last, _sub_els};
set_els({xabber_conversation_call, _}, _sub_els) ->
    {xabber_conversation_call, _sub_els}.

pp(xabber_synchronization, 3) ->
    [stamp, conversation, rsm];
pp(xabber_synchronization_query, 2) -> [stamp, rsm];
pp(xabber_conversation, 11) ->
    [type, jid, stamp, thread, retract, unread,
     unread_mention, displayed, delivered, call, last];
pp(xabber_conversation_retract, 1) -> [version];
pp(xabber_conversation_unread, 2) -> [count, 'after'];
pp(xabber_conversation_displayed, 1) -> [id];
pp(xabber_conversation_delivered, 1) -> [id];
pp(xabber_conversation_unread_mention, 1) -> [id];
pp(xabber_conversation_last, 1) -> [sub_els];
pp(xabber_conversation_call, 1) -> [sub_els];
pp(_, _) -> no.

records() ->
    [{xabber_synchronization, 3},
     {xabber_synchronization_query, 2},
     {xabber_conversation, 11},
     {xabber_conversation_retract, 1},
     {xabber_conversation_unread, 2},
     {xabber_conversation_displayed, 1},
     {xabber_conversation_delivered, 1},
     {xabber_conversation_unread_mention, 1},
     {xabber_conversation_last, 1},
     {xabber_conversation_call, 1}].

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_int(Int) -> erlang:integer_to_binary(Int).

decode_xabber_conversation_call(__TopXMLNS, __Opts,
				{xmlel, <<"call">>, _attrs, _els}) ->
    __Els = decode_xabber_conversation_call_els(__TopXMLNS,
						__Opts, _els, []),
    {xabber_conversation_call, __Els}.

decode_xabber_conversation_call_els(__TopXMLNS, __Opts,
				    [], __Els) ->
    lists:reverse(__Els);
decode_xabber_conversation_call_els(__TopXMLNS, __Opts,
				    [{xmlel, _name, _attrs, _} = _el | _els],
				    __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabber_conversation_call_els(__TopXMLNS, __Opts,
					      _els, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabber_conversation_call_els(__TopXMLNS, __Opts,
						    _els, [_el | __Els]);
	    Mod ->
		decode_xabber_conversation_call_els(__TopXMLNS, __Opts,
						    _els,
						    [Mod:do_decode(_name,
								   __XMLNS, _el,
								   __Opts)
						     | __Els])
	  end
    end;
decode_xabber_conversation_call_els(__TopXMLNS, __Opts,
				    [_ | _els], __Els) ->
    decode_xabber_conversation_call_els(__TopXMLNS, __Opts,
					_els, __Els).

encode_xabber_conversation_call({xabber_conversation_call,
				 __Els},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"call">>, _attrs, _els}.

decode_xabber_conversation_last(__TopXMLNS, __Opts,
				{xmlel, <<"last-message">>, _attrs, _els}) ->
    __Els = decode_xabber_conversation_last_els(__TopXMLNS,
						__Opts, _els, []),
    {xabber_conversation_last, __Els}.

decode_xabber_conversation_last_els(__TopXMLNS, __Opts,
				    [], __Els) ->
    lists:reverse(__Els);
decode_xabber_conversation_last_els(__TopXMLNS, __Opts,
				    [{xmlel, _name, _attrs, _} = _el | _els],
				    __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabber_conversation_last_els(__TopXMLNS, __Opts,
					      _els, [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabber_conversation_last_els(__TopXMLNS, __Opts,
						    _els, [_el | __Els]);
	    Mod ->
		decode_xabber_conversation_last_els(__TopXMLNS, __Opts,
						    _els,
						    [Mod:do_decode(_name,
								   __XMLNS, _el,
								   __Opts)
						     | __Els])
	  end
    end;
decode_xabber_conversation_last_els(__TopXMLNS, __Opts,
				    [_ | _els], __Els) ->
    decode_xabber_conversation_last_els(__TopXMLNS, __Opts,
					_els, __Els).

encode_xabber_conversation_last({xabber_conversation_last,
				 __Els},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"last-message">>, _attrs, _els}.

decode_xabber_conversation_unread_mention(__TopXMLNS,
					  __Opts,
					  {xmlel, <<"unread-mention">>, _attrs,
					   _els}) ->
    Id =
	decode_xabber_conversation_unread_mention_attrs(__TopXMLNS,
							_attrs, undefined),
    {xabber_conversation_unread_mention, Id}.

decode_xabber_conversation_unread_mention_attrs(__TopXMLNS,
						[{<<"id">>, _val} | _attrs],
						_Id) ->
    decode_xabber_conversation_unread_mention_attrs(__TopXMLNS,
						    _attrs, _val);
decode_xabber_conversation_unread_mention_attrs(__TopXMLNS,
						[_ | _attrs], Id) ->
    decode_xabber_conversation_unread_mention_attrs(__TopXMLNS,
						    _attrs, Id);
decode_xabber_conversation_unread_mention_attrs(__TopXMLNS,
						[], Id) ->
    decode_xabber_conversation_unread_mention_attr_id(__TopXMLNS,
						      Id).

encode_xabber_conversation_unread_mention({xabber_conversation_unread_mention,
					   Id},
					  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabber_conversation_unread_mention_attr_id(Id,
							  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										     __TopXMLNS)),
    {xmlel, <<"unread-mention">>, _attrs, _els}.

decode_xabber_conversation_unread_mention_attr_id(__TopXMLNS,
						  undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"unread-mention">>,
		   __TopXMLNS}});
decode_xabber_conversation_unread_mention_attr_id(__TopXMLNS,
						  _val) ->
    _val.

encode_xabber_conversation_unread_mention_attr_id(_val,
						  _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabber_conversation_delivered(__TopXMLNS, __Opts,
				     {xmlel, <<"delivered">>, _attrs, _els}) ->
    Id =
	decode_xabber_conversation_delivered_attrs(__TopXMLNS,
						   _attrs, undefined),
    {xabber_conversation_delivered, Id}.

decode_xabber_conversation_delivered_attrs(__TopXMLNS,
					   [{<<"id">>, _val} | _attrs], _Id) ->
    decode_xabber_conversation_delivered_attrs(__TopXMLNS,
					       _attrs, _val);
decode_xabber_conversation_delivered_attrs(__TopXMLNS,
					   [_ | _attrs], Id) ->
    decode_xabber_conversation_delivered_attrs(__TopXMLNS,
					       _attrs, Id);
decode_xabber_conversation_delivered_attrs(__TopXMLNS,
					   [], Id) ->
    decode_xabber_conversation_delivered_attr_id(__TopXMLNS,
						 Id).

encode_xabber_conversation_delivered({xabber_conversation_delivered,
				      Id},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabber_conversation_delivered_attr_id(Id,
						     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										__TopXMLNS)),
    {xmlel, <<"delivered">>, _attrs, _els}.

decode_xabber_conversation_delivered_attr_id(__TopXMLNS,
					     undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"delivered">>, __TopXMLNS}});
decode_xabber_conversation_delivered_attr_id(__TopXMLNS,
					     _val) ->
    _val.

encode_xabber_conversation_delivered_attr_id(_val,
					     _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabber_conversation_displayed(__TopXMLNS, __Opts,
				     {xmlel, <<"displayed">>, _attrs, _els}) ->
    Id =
	decode_xabber_conversation_displayed_attrs(__TopXMLNS,
						   _attrs, undefined),
    {xabber_conversation_displayed, Id}.

decode_xabber_conversation_displayed_attrs(__TopXMLNS,
					   [{<<"id">>, _val} | _attrs], _Id) ->
    decode_xabber_conversation_displayed_attrs(__TopXMLNS,
					       _attrs, _val);
decode_xabber_conversation_displayed_attrs(__TopXMLNS,
					   [_ | _attrs], Id) ->
    decode_xabber_conversation_displayed_attrs(__TopXMLNS,
					       _attrs, Id);
decode_xabber_conversation_displayed_attrs(__TopXMLNS,
					   [], Id) ->
    decode_xabber_conversation_displayed_attr_id(__TopXMLNS,
						 Id).

encode_xabber_conversation_displayed({xabber_conversation_displayed,
				      Id},
				     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabber_conversation_displayed_attr_id(Id,
						     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										__TopXMLNS)),
    {xmlel, <<"displayed">>, _attrs, _els}.

decode_xabber_conversation_displayed_attr_id(__TopXMLNS,
					     undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"displayed">>, __TopXMLNS}});
decode_xabber_conversation_displayed_attr_id(__TopXMLNS,
					     _val) ->
    _val.

encode_xabber_conversation_displayed_attr_id(_val,
					     _acc) ->
    [{<<"id">>, _val} | _acc].

decode_xabber_conversation_unread(__TopXMLNS, __Opts,
				  {xmlel, <<"unread">>, _attrs, _els}) ->
    {Count, After} =
	decode_xabber_conversation_unread_attrs(__TopXMLNS,
						_attrs, undefined, undefined),
    {xabber_conversation_unread, Count, After}.

decode_xabber_conversation_unread_attrs(__TopXMLNS,
					[{<<"count">>, _val} | _attrs], _Count,
					After) ->
    decode_xabber_conversation_unread_attrs(__TopXMLNS,
					    _attrs, _val, After);
decode_xabber_conversation_unread_attrs(__TopXMLNS,
					[{<<"after">>, _val} | _attrs], Count,
					_After) ->
    decode_xabber_conversation_unread_attrs(__TopXMLNS,
					    _attrs, Count, _val);
decode_xabber_conversation_unread_attrs(__TopXMLNS,
					[_ | _attrs], Count, After) ->
    decode_xabber_conversation_unread_attrs(__TopXMLNS,
					    _attrs, Count, After);
decode_xabber_conversation_unread_attrs(__TopXMLNS, [],
					Count, After) ->
    {decode_xabber_conversation_unread_attr_count(__TopXMLNS,
						  Count),
     decode_xabber_conversation_unread_attr_after(__TopXMLNS,
						  After)}.

encode_xabber_conversation_unread({xabber_conversation_unread,
				   Count, After},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabber_conversation_unread_attr_after(After,
						     encode_xabber_conversation_unread_attr_count(Count,
												  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
															     __TopXMLNS))),
    {xmlel, <<"unread">>, _attrs, _els}.

decode_xabber_conversation_unread_attr_count(__TopXMLNS,
					     undefined) ->
    undefined;
decode_xabber_conversation_unread_attr_count(__TopXMLNS,
					     _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"count">>, <<"unread">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_conversation_unread_attr_count(undefined,
					     _acc) ->
    _acc;
encode_xabber_conversation_unread_attr_count(_val,
					     _acc) ->
    [{<<"count">>, enc_int(_val)} | _acc].

decode_xabber_conversation_unread_attr_after(__TopXMLNS,
					     undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"after">>, <<"unread">>, __TopXMLNS}});
decode_xabber_conversation_unread_attr_after(__TopXMLNS,
					     _val) ->
    _val.

encode_xabber_conversation_unread_attr_after(_val,
					     _acc) ->
    [{<<"after">>, _val} | _acc].

decode_xabber_conversation_retract(__TopXMLNS, __Opts,
				   {xmlel, <<"retract">>, _attrs, _els}) ->
    Version =
	decode_xabber_conversation_retract_attrs(__TopXMLNS,
						 _attrs, undefined),
    {xabber_conversation_retract, Version}.

decode_xabber_conversation_retract_attrs(__TopXMLNS,
					 [{<<"version">>, _val} | _attrs],
					 _Version) ->
    decode_xabber_conversation_retract_attrs(__TopXMLNS,
					     _attrs, _val);
decode_xabber_conversation_retract_attrs(__TopXMLNS,
					 [_ | _attrs], Version) ->
    decode_xabber_conversation_retract_attrs(__TopXMLNS,
					     _attrs, Version);
decode_xabber_conversation_retract_attrs(__TopXMLNS, [],
					 Version) ->
    decode_xabber_conversation_retract_attr_version(__TopXMLNS,
						    Version).

encode_xabber_conversation_retract({xabber_conversation_retract,
				    Version},
				   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs =
	encode_xabber_conversation_retract_attr_version(Version,
							xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										   __TopXMLNS)),
    {xmlel, <<"retract">>, _attrs, _els}.

decode_xabber_conversation_retract_attr_version(__TopXMLNS,
						undefined) ->
    undefined;
decode_xabber_conversation_retract_attr_version(__TopXMLNS,
						_val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"version">>, <<"retract">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_conversation_retract_attr_version(undefined,
						_acc) ->
    _acc;
encode_xabber_conversation_retract_attr_version(_val,
						_acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_xabber_conversation(__TopXMLNS, __Opts,
			   {xmlel, <<"conversation">>, _attrs, _els}) ->
    {Last, Delivered, Displayed, Unread, Retract, Call,
     Unread_mention} =
	decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
				       undefined, undefined, undefined,
				       undefined, undefined, undefined,
				       undefined),
    {Jid, Stamp, Thread, Type} =
	decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
					 undefined, undefined, undefined,
					 undefined),
    {xabber_conversation, Type, Jid, Stamp, Thread, Retract,
     Unread, Unread_mention, Displayed, Delivered, Call,
     Last}.

decode_xabber_conversation_els(__TopXMLNS, __Opts, [],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    {Last, Delivered, Displayed, Unread, Retract, Call,
     Unread_mention};
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"retract">>, _attrs, _} = _el | _els],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 decode_xabber_conversation_retract(<<"http://xabber.com/protocol/synchronization">>,
									    __Opts,
									    _el),
					 Call, Unread_mention);
      _ ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call, Unread_mention)
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"unread">>, _attrs, _} = _el | _els],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed,
					 decode_xabber_conversation_unread(<<"http://xabber.com/protocol/synchronization">>,
									   __Opts,
									   _el),
					 Retract, Call, Unread_mention);
      _ ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call, Unread_mention)
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"unread-mention">>, _attrs, _} = _el
				| _els],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call,
					 decode_xabber_conversation_unread_mention(<<"http://xabber.com/protocol/synchronization">>,
										   __Opts,
										   _el));
      _ ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call, Unread_mention)
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"displayed">>, _attrs, _} = _el
				| _els],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered,
					 decode_xabber_conversation_displayed(<<"http://xabber.com/protocol/synchronization">>,
									      __Opts,
									      _el),
					 Unread, Retract, Call, Unread_mention);
      _ ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call, Unread_mention)
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"delivered">>, _attrs, _} = _el
				| _els],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last,
					 decode_xabber_conversation_delivered(<<"http://xabber.com/protocol/synchronization">>,
									      __Opts,
									      _el),
					 Displayed, Unread, Retract, Call,
					 Unread_mention);
      _ ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call, Unread_mention)
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"call">>, _attrs, _} = _el | _els],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract,
					 decode_xabber_conversation_call(<<"http://xabber.com/protocol/synchronization">>,
									 __Opts,
									 _el),
					 Unread_mention);
      _ ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call, Unread_mention)
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"last-message">>, _attrs, _} = _el
				| _els],
			       Last, Delivered, Displayed, Unread, Retract,
			       Call, Unread_mention) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 decode_xabber_conversation_last(<<"http://xabber.com/protocol/synchronization">>,
									 __Opts,
									 _el),
					 Delivered, Displayed, Unread, Retract,
					 Call, Unread_mention);
      _ ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 Last, Delivered, Displayed, Unread,
					 Retract, Call, Unread_mention)
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [_ | _els], Last, Delivered, Displayed, Unread,
			       Retract, Call, Unread_mention) ->
    decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
				   Last, Delivered, Displayed, Unread, Retract,
				   Call, Unread_mention).

decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"jid">>, _val} | _attrs], _Jid, Stamp,
				 Thread, Type) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     _val, Stamp, Thread, Type);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"stamp">>, _val} | _attrs], Jid, _Stamp,
				 Thread, Type) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, _val, Thread, Type);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"thread">>, _val} | _attrs], Jid, Stamp,
				 _Thread, Type) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Stamp, _val, Type);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"type">>, _val} | _attrs], Jid, Stamp,
				 Thread, _Type) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Stamp, Thread, _val);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [_ | _attrs], Jid, Stamp, Thread, Type) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Stamp, Thread, Type);
decode_xabber_conversation_attrs(__TopXMLNS, [], Jid,
				 Stamp, Thread, Type) ->
    {decode_xabber_conversation_attr_jid(__TopXMLNS, Jid),
     decode_xabber_conversation_attr_stamp(__TopXMLNS,
					   Stamp),
     decode_xabber_conversation_attr_thread(__TopXMLNS,
					    Thread),
     decode_xabber_conversation_attr_type(__TopXMLNS, Type)}.

encode_xabber_conversation({xabber_conversation, Type,
			    Jid, Stamp, Thread, Retract, Unread, Unread_mention,
			    Displayed, Delivered, Call, Last},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_conversation_$last'(Last,
							 __NewTopXMLNS,
							 'encode_xabber_conversation_$delivered'(Delivered,
												 __NewTopXMLNS,
												 'encode_xabber_conversation_$displayed'(Displayed,
																	 __NewTopXMLNS,
																	 'encode_xabber_conversation_$unread'(Unread,
																					      __NewTopXMLNS,
																					      'encode_xabber_conversation_$retract'(Retract,
																										    __NewTopXMLNS,
																										    'encode_xabber_conversation_$call'(Call,
																														       __NewTopXMLNS,
																														       'encode_xabber_conversation_$unread_mention'(Unread_mention,
																																				    __NewTopXMLNS,
																																				    [])))))))),
    _attrs = encode_xabber_conversation_attr_type(Type,
						  encode_xabber_conversation_attr_thread(Thread,
											 encode_xabber_conversation_attr_stamp(Stamp,
															       encode_xabber_conversation_attr_jid(Jid,
																				   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																							      __TopXMLNS))))),
    {xmlel, <<"conversation">>, _attrs, _els}.

'encode_xabber_conversation_$last'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_conversation_$last'(Last, __TopXMLNS,
				   _acc) ->
    [encode_xabber_conversation_last(Last, __TopXMLNS)
     | _acc].

'encode_xabber_conversation_$delivered'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabber_conversation_$delivered'(Delivered,
					__TopXMLNS, _acc) ->
    [encode_xabber_conversation_delivered(Delivered,
					  __TopXMLNS)
     | _acc].

'encode_xabber_conversation_$displayed'(undefined,
					__TopXMLNS, _acc) ->
    _acc;
'encode_xabber_conversation_$displayed'(Displayed,
					__TopXMLNS, _acc) ->
    [encode_xabber_conversation_displayed(Displayed,
					  __TopXMLNS)
     | _acc].

'encode_xabber_conversation_$unread'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_conversation_$unread'(Unread, __TopXMLNS,
				     _acc) ->
    [encode_xabber_conversation_unread(Unread, __TopXMLNS)
     | _acc].

'encode_xabber_conversation_$retract'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_conversation_$retract'(Retract,
				      __TopXMLNS, _acc) ->
    [encode_xabber_conversation_retract(Retract, __TopXMLNS)
     | _acc].

'encode_xabber_conversation_$call'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_conversation_$call'(Call, __TopXMLNS,
				   _acc) ->
    [encode_xabber_conversation_call(Call, __TopXMLNS)
     | _acc].

'encode_xabber_conversation_$unread_mention'(undefined,
					     __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_conversation_$unread_mention'(Unread_mention,
					     __TopXMLNS, _acc) ->
    [encode_xabber_conversation_unread_mention(Unread_mention,
					       __TopXMLNS)
     | _acc].

decode_xabber_conversation_attr_jid(__TopXMLNS,
				    undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"jid">>, <<"conversation">>,
		   __TopXMLNS}});
decode_xabber_conversation_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"jid">>, <<"conversation">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_conversation_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_xabber_conversation_attr_stamp(__TopXMLNS,
				      undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"stamp">>, <<"conversation">>,
		   __TopXMLNS}});
decode_xabber_conversation_attr_stamp(__TopXMLNS,
				      _val) ->
    _val.

encode_xabber_conversation_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, _val} | _acc].

decode_xabber_conversation_attr_thread(__TopXMLNS,
				       undefined) ->
    <<>>;
decode_xabber_conversation_attr_thread(__TopXMLNS,
				       _val) ->
    _val.

encode_xabber_conversation_attr_thread(<<>>, _acc) ->
    _acc;
encode_xabber_conversation_attr_thread(_val, _acc) ->
    [{<<"thread">>, _val} | _acc].

decode_xabber_conversation_attr_type(__TopXMLNS,
				     undefined) ->
    <<>>;
decode_xabber_conversation_attr_type(__TopXMLNS,
				     _val) ->
    _val.

encode_xabber_conversation_attr_type(<<>>, _acc) ->
    _acc;
encode_xabber_conversation_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_xabber_synchronization_query(__TopXMLNS, __Opts,
				    {xmlel, <<"query">>, _attrs, _els}) ->
    Rsm =
	decode_xabber_synchronization_query_els(__TopXMLNS,
						__Opts, _els, undefined),
    Stamp =
	decode_xabber_synchronization_query_attrs(__TopXMLNS,
						  _attrs, undefined),
    {xabber_synchronization_query, Stamp, Rsm}.

decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts, [], Rsm) ->
    Rsm;
decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"set">>, _attrs, _} = _el
					 | _els],
					Rsm) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_xabber_synchronization_query_els(__TopXMLNS,
						  __Opts, _els,
						  xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
									 __Opts,
									 _el));
      _ ->
	  decode_xabber_synchronization_query_els(__TopXMLNS,
						  __Opts, _els, Rsm)
    end;
decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts, [_ | _els], Rsm) ->
    decode_xabber_synchronization_query_els(__TopXMLNS,
					    __Opts, _els, Rsm).

decode_xabber_synchronization_query_attrs(__TopXMLNS,
					  [{<<"stamp">>, _val} | _attrs],
					  _Stamp) ->
    decode_xabber_synchronization_query_attrs(__TopXMLNS,
					      _attrs, _val);
decode_xabber_synchronization_query_attrs(__TopXMLNS,
					  [_ | _attrs], Stamp) ->
    decode_xabber_synchronization_query_attrs(__TopXMLNS,
					      _attrs, Stamp);
decode_xabber_synchronization_query_attrs(__TopXMLNS,
					  [], Stamp) ->
    decode_xabber_synchronization_query_attr_stamp(__TopXMLNS,
						   Stamp).

encode_xabber_synchronization_query({xabber_synchronization_query,
				     Stamp, Rsm},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_synchronization_query_$rsm'(Rsm,
								 __NewTopXMLNS,
								 [])),
    _attrs =
	encode_xabber_synchronization_query_attr_stamp(Stamp,
						       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										  __TopXMLNS)),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabber_synchronization_query_$rsm'(undefined,
					   __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_synchronization_query_$rsm'(Rsm,
					   __TopXMLNS, _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

decode_xabber_synchronization_query_attr_stamp(__TopXMLNS,
					       undefined) ->
    <<>>;
decode_xabber_synchronization_query_attr_stamp(__TopXMLNS,
					       _val) ->
    _val.

encode_xabber_synchronization_query_attr_stamp(<<>>,
					       _acc) ->
    _acc;
encode_xabber_synchronization_query_attr_stamp(_val,
					       _acc) ->
    [{<<"stamp">>, _val} | _acc].

decode_xabber_synchronization(__TopXMLNS, __Opts,
			      {xmlel, <<"synchronization">>, _attrs, _els}) ->
    {Rsm, Conversation} =
	decode_xabber_synchronization_els(__TopXMLNS, __Opts,
					  _els, undefined, []),
    Stamp = decode_xabber_synchronization_attrs(__TopXMLNS,
						_attrs, undefined),
    {xabber_synchronization, Stamp, Conversation, Rsm}.

decode_xabber_synchronization_els(__TopXMLNS, __Opts,
				  [], Rsm, Conversation) ->
    {Rsm, lists:reverse(Conversation)};
decode_xabber_synchronization_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"conversation">>, _attrs, _} = _el
				   | _els],
				  Rsm, Conversation) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_synchronization_els(__TopXMLNS, __Opts,
					    _els, Rsm,
					    [decode_xabber_conversation(<<"http://xabber.com/protocol/synchronization">>,
									__Opts,
									_el)
					     | Conversation]);
      _ ->
	  decode_xabber_synchronization_els(__TopXMLNS, __Opts,
					    _els, Rsm, Conversation)
    end;
decode_xabber_synchronization_els(__TopXMLNS, __Opts,
				  [{xmlel, <<"set">>, _attrs, _} = _el | _els],
				  Rsm, Conversation) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_xabber_synchronization_els(__TopXMLNS, __Opts,
					    _els,
					    xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
								   __Opts, _el),
					    Conversation);
      _ ->
	  decode_xabber_synchronization_els(__TopXMLNS, __Opts,
					    _els, Rsm, Conversation)
    end;
decode_xabber_synchronization_els(__TopXMLNS, __Opts,
				  [_ | _els], Rsm, Conversation) ->
    decode_xabber_synchronization_els(__TopXMLNS, __Opts,
				      _els, Rsm, Conversation).

decode_xabber_synchronization_attrs(__TopXMLNS,
				    [{<<"stamp">>, _val} | _attrs], _Stamp) ->
    decode_xabber_synchronization_attrs(__TopXMLNS, _attrs,
					_val);
decode_xabber_synchronization_attrs(__TopXMLNS,
				    [_ | _attrs], Stamp) ->
    decode_xabber_synchronization_attrs(__TopXMLNS, _attrs,
					Stamp);
decode_xabber_synchronization_attrs(__TopXMLNS, [],
				    Stamp) ->
    decode_xabber_synchronization_attr_stamp(__TopXMLNS,
					     Stamp).

encode_xabber_synchronization({xabber_synchronization,
			       Stamp, Conversation, Rsm},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_synchronization_$rsm'(Rsm,
							   __NewTopXMLNS,
							   'encode_xabber_synchronization_$conversation'(Conversation,
													 __NewTopXMLNS,
													 []))),
    _attrs = encode_xabber_synchronization_attr_stamp(Stamp,
						      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										 __TopXMLNS)),
    {xmlel, <<"synchronization">>, _attrs, _els}.

'encode_xabber_synchronization_$rsm'(undefined,
				     __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_synchronization_$rsm'(Rsm, __TopXMLNS,
				     _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

'encode_xabber_synchronization_$conversation'([],
					      __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_synchronization_$conversation'([Conversation
					       | _els],
					      __TopXMLNS, _acc) ->
    'encode_xabber_synchronization_$conversation'(_els,
						  __TopXMLNS,
						  [encode_xabber_conversation(Conversation,
									      __TopXMLNS)
						   | _acc]).

decode_xabber_synchronization_attr_stamp(__TopXMLNS,
					 undefined) ->
    <<>>;
decode_xabber_synchronization_attr_stamp(__TopXMLNS,
					 _val) ->
    _val.

encode_xabber_synchronization_attr_stamp(<<>>, _acc) ->
    _acc;
encode_xabber_synchronization_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, _val} | _acc].
