%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbersynchronization).

-compile(export_all).

do_decode(<<"call">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_call(<<"https://xabber.com/protocol/synchronization">>,
				    Opts, El);
do_decode(<<"last-message">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_last(<<"https://xabber.com/protocol/synchronization">>,
				    Opts, El);
do_decode(<<"unread-mention">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_unread_mention(<<"https://xabber.com/protocol/synchronization">>,
					      Opts, El);
do_decode(<<"delivered">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_delivered(<<"https://xabber.com/protocol/synchronization">>,
					 Opts, El);
do_decode(<<"displayed">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_displayed(<<"https://xabber.com/protocol/synchronization">>,
					 Opts, El);
do_decode(<<"unread">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_unread(<<"https://xabber.com/protocol/synchronization">>,
				      Opts, El);
do_decode(<<"retract">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation_retract(<<"https://xabber.com/protocol/synchronization">>,
				       Opts, El);
do_decode(<<"metadata">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_metadata(<<"https://xabber.com/protocol/synchronization">>,
			   Opts, El);
do_decode(<<"conversation">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_conversation(<<"https://xabber.com/protocol/synchronization">>,
			       Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_synchronization_query(<<"https://xabber.com/protocol/synchronization">>,
					Opts, El);
do_decode(<<"synchronization">>,
	  <<"https://xabber.com/protocol/synchronization">>, El,
	  Opts) ->
    decode_xabber_synchronization(<<"https://xabber.com/protocol/synchronization">>,
				  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"call">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"last-message">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"unread-mention">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"delivered">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"displayed">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"unread">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"retract">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"metadata">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"conversation">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"synchronization">>,
      <<"https://xabber.com/protocol/synchronization">>}].

do_encode({xabber_synchronization} = Synchronization,
	  TopXMLNS) ->
    encode_xabber_synchronization(Synchronization,
				  TopXMLNS);
do_encode({xabber_synchronization_query, _, _, _, _} =
	      Query,
	  TopXMLNS) ->
    encode_xabber_synchronization_query(Query, TopXMLNS);
do_encode({xabber_conversation, _, _, _, _, _, _, _,
	   _} =
	      Conversation,
	  TopXMLNS) ->
    encode_xabber_conversation(Conversation, TopXMLNS);
do_encode({xabber_metadata, _, _} = Metadata,
	  TopXMLNS) ->
    encode_xabber_metadata(Metadata, TopXMLNS);
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
	     _}) ->
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
do_get_name({xabber_metadata, _, _}) -> <<"metadata">>;
do_get_name({xabber_synchronization}) ->
    <<"synchronization">>;
do_get_name({xabber_synchronization_query, _, _, _,
	     _}) ->
    <<"query">>.

do_get_ns({xabber_conversation, _, _, _, _, _, _, _,
	   _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_call, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_delivered, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_displayed, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_last, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_retract, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_unread, _, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_conversation_unread_mention, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_metadata, _, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_synchronization}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({xabber_synchronization_query, _, _, _, _}) ->
    <<"https://xabber.com/protocol/synchronization">>.

get_els({xabber_synchronization_query, _stamp, _rsm,
	 _xdata, _sub_els}) ->
    _sub_els;
get_els({xabber_conversation, _type, _jid, _status,
	 _stamp, _thread, _mute, _pinned, _sub_els}) ->
    _sub_els;
get_els({xabber_metadata, _node, _sub_els}) -> _sub_els;
get_els({xabber_conversation_last, _sub_els}) ->
    _sub_els;
get_els({xabber_conversation_call, _sub_els}) ->
    _sub_els.

set_els({xabber_synchronization_query, _stamp, _rsm,
	 _xdata, _},
	_sub_els) ->
    {xabber_synchronization_query, _stamp, _rsm, _xdata,
     _sub_els};
set_els({xabber_conversation, _type, _jid, _status,
	 _stamp, _thread, _mute, _pinned, _},
	_sub_els) ->
    {xabber_conversation, _type, _jid, _status, _stamp,
     _thread, _mute, _pinned, _sub_els};
set_els({xabber_metadata, _node, _}, _sub_els) ->
    {xabber_metadata, _node, _sub_els};
set_els({xabber_conversation_last, _}, _sub_els) ->
    {xabber_conversation_last, _sub_els};
set_els({xabber_conversation_call, _}, _sub_els) ->
    {xabber_conversation_call, _sub_els}.

pp(xabber_synchronization, 0) -> [];
pp(xabber_synchronization_query, 4) ->
    [stamp, rsm, xdata, sub_els];
pp(xabber_conversation, 8) ->
    [type, jid, status, stamp, thread, mute, pinned,
     sub_els];
pp(xabber_metadata, 2) -> [node, sub_els];
pp(xabber_conversation_retract, 1) -> [version];
pp(xabber_conversation_unread, 2) -> [count, 'after'];
pp(xabber_conversation_displayed, 1) -> [id];
pp(xabber_conversation_delivered, 1) -> [id];
pp(xabber_conversation_unread_mention, 1) -> [id];
pp(xabber_conversation_last, 1) -> [sub_els];
pp(xabber_conversation_call, 1) -> [sub_els];
pp(_, _) -> no.

records() ->
    [{xabber_synchronization, 0},
     {xabber_synchronization_query, 4},
     {xabber_conversation, 8}, {xabber_metadata, 2},
     {xabber_conversation_retract, 1},
     {xabber_conversation_unread, 2},
     {xabber_conversation_displayed, 1},
     {xabber_conversation_delivered, 1},
     {xabber_conversation_unread_mention, 1},
     {xabber_conversation_last, 1},
     {xabber_conversation_call, 1}].

dec_enum(Val, Enums) ->
    AtomVal = erlang:binary_to_existing_atom(Val, utf8),
    case lists:member(AtomVal, Enums) of
      true -> AtomVal
    end.

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_enum(Atom) -> erlang:atom_to_binary(Atom, utf8).

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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
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
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
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

decode_xabber_metadata(__TopXMLNS, __Opts,
		       {xmlel, <<"metadata">>, _attrs, _els}) ->
    __Els = decode_xabber_metadata_els(__TopXMLNS, __Opts,
				       _els, []),
    Node = decode_xabber_metadata_attrs(__TopXMLNS, _attrs,
					undefined),
    {xabber_metadata, Node, __Els}.

decode_xabber_metadata_els(__TopXMLNS, __Opts, [],
			   __Els) ->
    lists:reverse(__Els);
decode_xabber_metadata_els(__TopXMLNS, __Opts,
			   [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabber_metadata_els(__TopXMLNS, __Opts, _els,
				     [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabber_metadata_els(__TopXMLNS, __Opts, _els,
					   [_el | __Els]);
	    Mod ->
		decode_xabber_metadata_els(__TopXMLNS, __Opts, _els,
					   [Mod:do_decode(_name, __XMLNS, _el,
							  __Opts)
					    | __Els])
	  end
    end;
decode_xabber_metadata_els(__TopXMLNS, __Opts,
			   [_ | _els], __Els) ->
    decode_xabber_metadata_els(__TopXMLNS, __Opts, _els,
			       __Els).

decode_xabber_metadata_attrs(__TopXMLNS,
			     [{<<"node">>, _val} | _attrs], _Node) ->
    decode_xabber_metadata_attrs(__TopXMLNS, _attrs, _val);
decode_xabber_metadata_attrs(__TopXMLNS, [_ | _attrs],
			     Node) ->
    decode_xabber_metadata_attrs(__TopXMLNS, _attrs, Node);
decode_xabber_metadata_attrs(__TopXMLNS, [], Node) ->
    decode_xabber_metadata_attr_node(__TopXMLNS, Node).

encode_xabber_metadata({xabber_metadata, Node, __Els},
		       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_xabber_metadata_attr_node(Node,
					      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									 __TopXMLNS)),
    {xmlel, <<"metadata">>, _attrs, _els}.

decode_xabber_metadata_attr_node(__TopXMLNS,
				 undefined) ->
    <<>>;
decode_xabber_metadata_attr_node(__TopXMLNS, _val) ->
    _val.

encode_xabber_metadata_attr_node(<<>>, _acc) -> _acc;
encode_xabber_metadata_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].

decode_xabber_conversation(__TopXMLNS, __Opts,
			   {xmlel, <<"conversation">>, _attrs, _els}) ->
    __Els = decode_xabber_conversation_els(__TopXMLNS,
					   __Opts, _els, []),
    {Jid, Type, Status, Stamp, Thread, Mute, Pinned} =
	decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
					 undefined, undefined, undefined,
					 undefined, undefined, undefined,
					 undefined),
    {xabber_conversation, Type, Jid, Status, Stamp, Thread,
     Mute, Pinned, __Els}.

decode_xabber_conversation_els(__TopXMLNS, __Opts, [],
			       __Els) ->
    lists:reverse(__Els);
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [{xmlel, _name, _attrs, _} = _el | _els],
			       __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					 [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					       [_el | __Els]);
	    Mod ->
		decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
					       [Mod:do_decode(_name, __XMLNS,
							      _el, __Opts)
						| __Els])
	  end
    end;
decode_xabber_conversation_els(__TopXMLNS, __Opts,
			       [_ | _els], __Els) ->
    decode_xabber_conversation_els(__TopXMLNS, __Opts, _els,
				   __Els).

decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"jid">>, _val} | _attrs], _Jid, Type,
				 Status, Stamp, Thread, Mute, Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     _val, Type, Status, Stamp, Thread, Mute,
				     Pinned);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"type">>, _val} | _attrs], Jid, _Type,
				 Status, Stamp, Thread, Mute, Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, _val, Status, Stamp, Thread, Mute,
				     Pinned);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"status">>, _val} | _attrs], Jid, Type,
				 _Status, Stamp, Thread, Mute, Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Type, _val, Stamp, Thread, Mute,
				     Pinned);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"stamp">>, _val} | _attrs], Jid, Type,
				 Status, _Stamp, Thread, Mute, Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Type, Status, _val, Thread, Mute,
				     Pinned);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"thread">>, _val} | _attrs], Jid, Type,
				 Status, Stamp, _Thread, Mute, Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Type, Status, Stamp, _val, Mute,
				     Pinned);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"mute">>, _val} | _attrs], Jid, Type,
				 Status, Stamp, Thread, _Mute, Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Type, Status, Stamp, Thread, _val,
				     Pinned);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [{<<"pinned">>, _val} | _attrs], Jid, Type,
				 Status, Stamp, Thread, Mute, _Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Type, Status, Stamp, Thread, Mute,
				     _val);
decode_xabber_conversation_attrs(__TopXMLNS,
				 [_ | _attrs], Jid, Type, Status, Stamp, Thread,
				 Mute, Pinned) ->
    decode_xabber_conversation_attrs(__TopXMLNS, _attrs,
				     Jid, Type, Status, Stamp, Thread, Mute,
				     Pinned);
decode_xabber_conversation_attrs(__TopXMLNS, [], Jid,
				 Type, Status, Stamp, Thread, Mute, Pinned) ->
    {decode_xabber_conversation_attr_jid(__TopXMLNS, Jid),
     decode_xabber_conversation_attr_type(__TopXMLNS, Type),
     decode_xabber_conversation_attr_status(__TopXMLNS,
					    Status),
     decode_xabber_conversation_attr_stamp(__TopXMLNS,
					   Stamp),
     decode_xabber_conversation_attr_thread(__TopXMLNS,
					    Thread),
     decode_xabber_conversation_attr_mute(__TopXMLNS, Mute),
     decode_xabber_conversation_attr_pinned(__TopXMLNS,
					    Pinned)}.

encode_xabber_conversation({xabber_conversation, Type,
			    Jid, Status, Stamp, Thread, Mute, Pinned, __Els},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_xabber_conversation_attr_pinned(Pinned,
						    encode_xabber_conversation_attr_mute(Mute,
											 encode_xabber_conversation_attr_thread(Thread,
																encode_xabber_conversation_attr_stamp(Stamp,
																				      encode_xabber_conversation_attr_status(Status,
																									     encode_xabber_conversation_attr_type(Type,
																														  encode_xabber_conversation_attr_jid(Jid,
																																		      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																																						 __TopXMLNS)))))))),
    {xmlel, <<"conversation">>, _attrs, _els}.

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

decode_xabber_conversation_attr_type(__TopXMLNS,
				     undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"type">>, <<"conversation">>,
		   __TopXMLNS}});
decode_xabber_conversation_attr_type(__TopXMLNS,
				     _val) ->
    _val.

encode_xabber_conversation_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_xabber_conversation_attr_status(__TopXMLNS,
				       undefined) ->
    undefined;
decode_xabber_conversation_attr_status(__TopXMLNS,
				       _val) ->
    case catch dec_enum(_val, [active, deleted, archived])
	of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"status">>, <<"conversation">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xabber_conversation_attr_status(undefined,
				       _acc) ->
    _acc;
encode_xabber_conversation_attr_status(_val, _acc) ->
    [{<<"status">>, enc_enum(_val)} | _acc].

decode_xabber_conversation_attr_stamp(__TopXMLNS,
				      undefined) ->
    <<>>;
decode_xabber_conversation_attr_stamp(__TopXMLNS,
				      _val) ->
    _val.

encode_xabber_conversation_attr_stamp(<<>>, _acc) ->
    _acc;
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

decode_xabber_conversation_attr_mute(__TopXMLNS,
				     undefined) ->
    undefined;
decode_xabber_conversation_attr_mute(__TopXMLNS,
				     _val) ->
    _val.

encode_xabber_conversation_attr_mute(undefined, _acc) ->
    _acc;
encode_xabber_conversation_attr_mute(_val, _acc) ->
    [{<<"mute">>, _val} | _acc].

decode_xabber_conversation_attr_pinned(__TopXMLNS,
				       undefined) ->
    undefined;
decode_xabber_conversation_attr_pinned(__TopXMLNS,
				       _val) ->
    _val.

encode_xabber_conversation_attr_pinned(undefined,
				       _acc) ->
    _acc;
encode_xabber_conversation_attr_pinned(_val, _acc) ->
    [{<<"pinned">>, _val} | _acc].

decode_xabber_synchronization_query(__TopXMLNS, __Opts,
				    {xmlel, <<"query">>, _attrs, _els}) ->
    {Xdata, Rsm, __Els} =
	decode_xabber_synchronization_query_els(__TopXMLNS,
						__Opts, _els, undefined,
						undefined, []),
    Stamp =
	decode_xabber_synchronization_query_attrs(__TopXMLNS,
						  _attrs, undefined),
    {xabber_synchronization_query, Stamp, Rsm, Xdata,
     __Els}.

decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts, [], Xdata, Rsm, __Els) ->
    {Xdata, Rsm, lists:reverse(__Els)};
decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"set">>, _attrs, _} = _el
					 | _els],
					Xdata, Rsm, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/rsm">> ->
	  decode_xabber_synchronization_query_els(__TopXMLNS,
						  __Opts, _els, Xdata,
						  xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
									 __Opts,
									 _el),
						  __Els);
      _ ->
	  decode_xabber_synchronization_query_els(__TopXMLNS,
						  __Opts, _els, Xdata, Rsm,
						  [_el | __Els])
    end;
decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"x">>, _attrs, _} = _el
					 | _els],
					Xdata, Rsm, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"jabber:x:data">> ->
	  decode_xabber_synchronization_query_els(__TopXMLNS,
						  __Opts, _els,
						  xep0004:decode_xdata(<<"jabber:x:data">>,
								       __Opts,
								       _el),
						  Rsm, __Els);
      _ ->
	  decode_xabber_synchronization_query_els(__TopXMLNS,
						  __Opts, _els, Xdata, Rsm,
						  [_el | __Els])
    end;
decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts,
					[{xmlel, _name, _attrs, _} = _el
					 | _els],
					Xdata, Rsm, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabber_synchronization_query_els(__TopXMLNS,
						  __Opts, _els, Xdata, Rsm,
						  [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabber_synchronization_query_els(__TopXMLNS,
							__Opts, _els, Xdata,
							Rsm, [_el | __Els]);
	    Mod ->
		decode_xabber_synchronization_query_els(__TopXMLNS,
							__Opts, _els, Xdata,
							Rsm,
							[Mod:do_decode(_name,
								       __XMLNS,
								       _el,
								       __Opts)
							 | __Els])
	  end
    end;
decode_xabber_synchronization_query_els(__TopXMLNS,
					__Opts, [_ | _els], Xdata, Rsm,
					__Els) ->
    decode_xabber_synchronization_query_els(__TopXMLNS,
					    __Opts, _els, Xdata, Rsm, __Els).

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
				     Stamp, Rsm, Xdata, __Els},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_xabber_synchronization_query_$xdata'(Xdata,
									__NewTopXMLNS,
									'encode_xabber_synchronization_query_$rsm'(Rsm,
														   __NewTopXMLNS,
														   []))),
    _attrs =
	encode_xabber_synchronization_query_attr_stamp(Stamp,
						       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										  __TopXMLNS)),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_xabber_synchronization_query_$xdata'(undefined,
					     __TopXMLNS, _acc) ->
    _acc;
'encode_xabber_synchronization_query_$xdata'(Xdata,
					     __TopXMLNS, _acc) ->
    [xep0004:encode_xdata(Xdata, __TopXMLNS) | _acc].

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
    {xabber_synchronization}.

encode_xabber_synchronization({xabber_synchronization},
			      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"synchronization">>, _attrs, _els}.
