%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_xen).

-compile(export_all).

do_decode(<<"prefs">>, <<"urn:xabber:xen:0">>, El,
	  Opts) ->
    decode_xen_prefs(<<"urn:xabber:xen:0">>, Opts, El);
do_decode(<<"notify">>, <<"urn:xabber:xen:0">>, El,
	  Opts) ->
    decode_notify(<<"urn:xabber:xen:0">>, Opts, El);
do_decode(<<"jid">>, <<"urn:xabber:xen:0">>, El,
	  Opts) ->
    decode_xen_jid(<<"urn:xabber:xen:0">>, Opts, El);
do_decode(<<"notification">>, <<"urn:xabber:xen:0">>,
	  El, Opts) ->
    decode_xen_notification(<<"urn:xabber:xen:0">>, Opts,
			    El);
do_decode(<<"fallback">>, <<"urn:xabber:xen:0">>, El,
	  Opts) ->
    decode_xen_fallback(<<"urn:xabber:xen:0">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"prefs">>, <<"urn:xabber:xen:0">>},
     {<<"notify">>, <<"urn:xabber:xen:0">>},
     {<<"jid">>, <<"urn:xabber:xen:0">>},
     {<<"notification">>, <<"urn:xabber:xen:0">>},
     {<<"fallback">>, <<"urn:xabber:xen:0">>}].

do_encode({text, _, _} = Fallback, TopXMLNS) ->
    encode_xen_fallback(Fallback, TopXMLNS);
do_encode({xen_notification, _, _} = Notification,
	  TopXMLNS) ->
    encode_xen_notification(Notification, TopXMLNS);
do_encode({xen_jid, _, _} = Jid, TopXMLNS) ->
    encode_xen_jid(Jid, TopXMLNS);
do_encode({notify, _, _, _} = Notify, TopXMLNS) ->
    encode_notify(Notify, TopXMLNS);
do_encode({xen_prefs, _, _} = Prefs, TopXMLNS) ->
    encode_xen_prefs(Prefs, TopXMLNS).

do_get_name({notify, _, _, _}) -> <<"notify">>;
do_get_name({text, _, _}) -> <<"fallback">>;
do_get_name({xen_jid, _, _}) -> <<"jid">>;
do_get_name({xen_notification, _, _}) ->
    <<"notification">>;
do_get_name({xen_prefs, _, _}) -> <<"prefs">>.

do_get_ns({notify, _, _, _}) -> <<"urn:xabber:xen:0">>;
do_get_ns({text, _, _}) -> <<"urn:xabber:xen:0">>;
do_get_ns({xen_jid, _, _}) -> <<"urn:xabber:xen:0">>;
do_get_ns({xen_notification, _, _}) ->
    <<"urn:xabber:xen:0">>;
do_get_ns({xen_prefs, _, _}) -> <<"urn:xabber:xen:0">>.

get_els({xen_notification, _category, _sub_els}) ->
    _sub_els.

set_els({xen_notification, _category, _}, _sub_els) ->
    {xen_notification, _category, _sub_els}.

pp(text, 2) -> [lang, data];
pp(xen_notification, 2) -> [category, sub_els];
pp(xen_jid, 2) -> [rule, jid];
pp(notify, 3) -> [notification, fallback, addresses];
pp(xen_prefs, 2) -> [default, jids];
pp(_, _) -> no.

records() ->
    [{text, 2}, {xen_notification, 2}, {xen_jid, 2},
     {notify, 3}, {xen_prefs, 2}].

dec_enum(Val, Enums) ->
    AtomVal = erlang:binary_to_existing_atom(Val, utf8),
    case lists:member(AtomVal, Enums) of
      true -> AtomVal
    end.

enc_enum(Atom) -> erlang:atom_to_binary(Atom, utf8).

decode_xen_prefs(__TopXMLNS, __Opts,
		 {xmlel, <<"prefs">>, _attrs, _els}) ->
    Jids = decode_xen_prefs_els(__TopXMLNS, __Opts, _els,
				[]),
    Default = decode_xen_prefs_attrs(__TopXMLNS, _attrs,
				     undefined),
    {xen_prefs, Default, Jids}.

decode_xen_prefs_els(__TopXMLNS, __Opts, [], Jids) ->
    lists:reverse(Jids);
decode_xen_prefs_els(__TopXMLNS, __Opts,
		     [{xmlel, <<"jid">>, _attrs, _} = _el | _els], Jids) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xabber:xen:0">> ->
	  decode_xen_prefs_els(__TopXMLNS, __Opts, _els,
			       [decode_xen_jid(<<"urn:xabber:xen:0">>, __Opts,
					       _el)
				| Jids]);
      _ ->
	  decode_xen_prefs_els(__TopXMLNS, __Opts, _els, Jids)
    end;
decode_xen_prefs_els(__TopXMLNS, __Opts, [_ | _els],
		     Jids) ->
    decode_xen_prefs_els(__TopXMLNS, __Opts, _els, Jids).

decode_xen_prefs_attrs(__TopXMLNS,
		       [{<<"default">>, _val} | _attrs], _Default) ->
    decode_xen_prefs_attrs(__TopXMLNS, _attrs, _val);
decode_xen_prefs_attrs(__TopXMLNS, [_ | _attrs],
		       Default) ->
    decode_xen_prefs_attrs(__TopXMLNS, _attrs, Default);
decode_xen_prefs_attrs(__TopXMLNS, [], Default) ->
    decode_xen_prefs_attr_default(__TopXMLNS, Default).

encode_xen_prefs({xen_prefs, Default, Jids},
		 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xabber:xen:0">>, [],
				    __TopXMLNS),
    _els = lists:reverse('encode_xen_prefs_$jids'(Jids,
						  __NewTopXMLNS, [])),
    _attrs = encode_xen_prefs_attr_default(Default,
					   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								      __TopXMLNS)),
    {xmlel, <<"prefs">>, _attrs, _els}.

'encode_xen_prefs_$jids'([], __TopXMLNS, _acc) -> _acc;
'encode_xen_prefs_$jids'([Jids | _els], __TopXMLNS,
			 _acc) ->
    'encode_xen_prefs_$jids'(_els, __TopXMLNS,
			     [encode_xen_jid(Jids, __TopXMLNS) | _acc]).

decode_xen_prefs_attr_default(__TopXMLNS, undefined) ->
    undefined;
decode_xen_prefs_attr_default(__TopXMLNS, _val) ->
    case catch dec_enum(_val,
			[reject, allow, roster, remove])
	of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"default">>, <<"prefs">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_xen_prefs_attr_default(undefined, _acc) -> _acc;
encode_xen_prefs_attr_default(_val, _acc) ->
    [{<<"default">>, enc_enum(_val)} | _acc].

decode_notify(__TopXMLNS, __Opts,
	      {xmlel, <<"notify">>, _attrs, _els}) ->
    {Addresses, Fallback, Notification} =
	decode_notify_els(__TopXMLNS, __Opts, _els, error, [],
			  error),
    {notify, Notification, Fallback, Addresses}.

decode_notify_els(__TopXMLNS, __Opts, [], Addresses,
		  Fallback, Notification) ->
    {case Addresses of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"addresses">>, __TopXMLNS}});
       {value, Addresses1} -> Addresses1
     end,
     lists:reverse(Fallback),
     case Notification of
       error ->
	   erlang:error({xmpp_codec,
			 {missing_tag, <<"notification">>, __TopXMLNS}});
       {value, Notification1} -> Notification1
     end};
decode_notify_els(__TopXMLNS, __Opts,
		  [{xmlel, <<"notification">>, _attrs, _} = _el | _els],
		  Addresses, Fallback, Notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xabber:xen:0">> ->
	  decode_notify_els(__TopXMLNS, __Opts, _els, Addresses,
			    Fallback,
			    {value,
			     decode_xen_notification(<<"urn:xabber:xen:0">>,
						     __Opts, _el)});
      _ ->
	  decode_notify_els(__TopXMLNS, __Opts, _els, Addresses,
			    Fallback, Notification)
    end;
decode_notify_els(__TopXMLNS, __Opts,
		  [{xmlel, <<"addresses">>, _attrs, _} = _el | _els],
		  Addresses, Fallback, Notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://jabber.org/protocol/address">> ->
	  decode_notify_els(__TopXMLNS, __Opts, _els,
			    {value,
			     xep0033:decode_addresses(<<"http://jabber.org/protocol/address">>,
						      __Opts, _el)},
			    Fallback, Notification);
      _ ->
	  decode_notify_els(__TopXMLNS, __Opts, _els, Addresses,
			    Fallback, Notification)
    end;
decode_notify_els(__TopXMLNS, __Opts,
		  [{xmlel, <<"fallback">>, _attrs, _} = _el | _els],
		  Addresses, Fallback, Notification) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"urn:xabber:xen:0">> ->
	  decode_notify_els(__TopXMLNS, __Opts, _els, Addresses,
			    [decode_xen_fallback(<<"urn:xabber:xen:0">>, __Opts,
						 _el)
			     | Fallback],
			    Notification);
      _ ->
	  decode_notify_els(__TopXMLNS, __Opts, _els, Addresses,
			    Fallback, Notification)
    end;
decode_notify_els(__TopXMLNS, __Opts, [_ | _els],
		  Addresses, Fallback, Notification) ->
    decode_notify_els(__TopXMLNS, __Opts, _els, Addresses,
		      Fallback, Notification).

encode_notify({notify, Notification, Fallback,
	       Addresses},
	      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xabber:xen:0">>, [],
				    __TopXMLNS),
    _els =
	lists:reverse('encode_notify_$addresses'(Addresses,
						 __NewTopXMLNS,
						 'encode_notify_$fallback'(Fallback,
									   __NewTopXMLNS,
									   'encode_notify_$notification'(Notification,
													 __NewTopXMLNS,
													 [])))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"notify">>, _attrs, _els}.

'encode_notify_$addresses'(Addresses, __TopXMLNS,
			   _acc) ->
    [xep0033:encode_addresses(Addresses, __TopXMLNS)
     | _acc].

'encode_notify_$fallback'([], __TopXMLNS, _acc) -> _acc;
'encode_notify_$fallback'([Fallback | _els], __TopXMLNS,
			  _acc) ->
    'encode_notify_$fallback'(_els, __TopXMLNS,
			      [encode_xen_fallback(Fallback, __TopXMLNS)
			       | _acc]).

'encode_notify_$notification'(Notification, __TopXMLNS,
			      _acc) ->
    [encode_xen_notification(Notification, __TopXMLNS)
     | _acc].

decode_xen_jid(__TopXMLNS, __Opts,
	       {xmlel, <<"jid">>, _attrs, _els}) ->
    Jid = decode_xen_jid_els(__TopXMLNS, __Opts, _els,
			     <<>>),
    Rule = decode_xen_jid_attrs(__TopXMLNS, _attrs,
				undefined),
    {xen_jid, Rule, Jid}.

decode_xen_jid_els(__TopXMLNS, __Opts, [], Jid) ->
    decode_xen_jid_cdata(__TopXMLNS, Jid);
decode_xen_jid_els(__TopXMLNS, __Opts,
		   [{xmlcdata, _data} | _els], Jid) ->
    decode_xen_jid_els(__TopXMLNS, __Opts, _els,
		       <<Jid/binary, _data/binary>>);
decode_xen_jid_els(__TopXMLNS, __Opts, [_ | _els],
		   Jid) ->
    decode_xen_jid_els(__TopXMLNS, __Opts, _els, Jid).

decode_xen_jid_attrs(__TopXMLNS,
		     [{<<"rule">>, _val} | _attrs], _Rule) ->
    decode_xen_jid_attrs(__TopXMLNS, _attrs, _val);
decode_xen_jid_attrs(__TopXMLNS, [_ | _attrs], Rule) ->
    decode_xen_jid_attrs(__TopXMLNS, _attrs, Rule);
decode_xen_jid_attrs(__TopXMLNS, [], Rule) ->
    decode_xen_jid_attr_rule(__TopXMLNS, Rule).

encode_xen_jid({xen_jid, Rule, Jid}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xabber:xen:0">>, [],
				    __TopXMLNS),
    _els = encode_xen_jid_cdata(Jid, []),
    _attrs = encode_xen_jid_attr_rule(Rule,
				      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								 __TopXMLNS)),
    {xmlel, <<"jid">>, _attrs, _els}.

decode_xen_jid_attr_rule(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"rule">>, <<"jid">>, __TopXMLNS}});
decode_xen_jid_attr_rule(__TopXMLNS, _val) ->
    case catch dec_enum(_val, [reject, allow, remove]) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"rule">>, <<"jid">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xen_jid_attr_rule(_val, _acc) ->
    [{<<"rule">>, enc_enum(_val)} | _acc].

decode_xen_jid_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"jid">>, __TopXMLNS}});
decode_xen_jid_cdata(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_cdata_value, <<>>, <<"jid">>, __TopXMLNS}});
      _res -> _res
    end.

encode_xen_jid_cdata(_val, _acc) ->
    [{xmlcdata, jid:encode(_val)} | _acc].

decode_xen_notification(__TopXMLNS, __Opts,
			{xmlel, <<"notification">>, _attrs, _els}) ->
    __Els = decode_xen_notification_els(__TopXMLNS, __Opts,
					_els, []),
    Category = decode_xen_notification_attrs(__TopXMLNS,
					     _attrs, undefined),
    {xen_notification, Category, __Els}.

decode_xen_notification_els(__TopXMLNS, __Opts, [],
			    __Els) ->
    lists:reverse(__Els);
decode_xen_notification_els(__TopXMLNS, __Opts,
			    [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    decode_xen_notification_els(__TopXMLNS, __Opts, _els,
				[_el | __Els]);
decode_xen_notification_els(__TopXMLNS, __Opts,
			    [_ | _els], __Els) ->
    decode_xen_notification_els(__TopXMLNS, __Opts, _els,
				__Els).

decode_xen_notification_attrs(__TopXMLNS,
			      [{<<"category">>, _val} | _attrs], _Category) ->
    decode_xen_notification_attrs(__TopXMLNS, _attrs, _val);
decode_xen_notification_attrs(__TopXMLNS, [_ | _attrs],
			      Category) ->
    decode_xen_notification_attrs(__TopXMLNS, _attrs,
				  Category);
decode_xen_notification_attrs(__TopXMLNS, [],
			      Category) ->
    decode_xen_notification_attr_category(__TopXMLNS,
					  Category).

encode_xen_notification({xen_notification, Category,
			 __Els},
			__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xabber:xen:0">>, [],
				    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_xen_notification_attr_category(Category,
						   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									      __TopXMLNS)),
    {xmlel, <<"notification">>, _attrs, _els}.

decode_xen_notification_attr_category(__TopXMLNS,
				      undefined) ->
    <<>>;
decode_xen_notification_attr_category(__TopXMLNS,
				      _val) ->
    _val.

encode_xen_notification_attr_category(<<>>, _acc) ->
    _acc;
encode_xen_notification_attr_category(_val, _acc) ->
    [{<<"category">>, _val} | _acc].

decode_xen_fallback(__TopXMLNS, __Opts,
		    {xmlel, <<"fallback">>, _attrs, _els}) ->
    Data = decode_xen_fallback_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    Lang = decode_xen_fallback_attrs(__TopXMLNS, _attrs,
				     undefined),
    {text, Lang, Data}.

decode_xen_fallback_els(__TopXMLNS, __Opts, [], Data) ->
    decode_xen_fallback_cdata(__TopXMLNS, Data);
decode_xen_fallback_els(__TopXMLNS, __Opts,
			[{xmlcdata, _data} | _els], Data) ->
    decode_xen_fallback_els(__TopXMLNS, __Opts, _els,
			    <<Data/binary, _data/binary>>);
decode_xen_fallback_els(__TopXMLNS, __Opts, [_ | _els],
			Data) ->
    decode_xen_fallback_els(__TopXMLNS, __Opts, _els, Data).

decode_xen_fallback_attrs(__TopXMLNS,
			  [{<<"xml:lang">>, _val} | _attrs], _Lang) ->
    decode_xen_fallback_attrs(__TopXMLNS, _attrs, _val);
decode_xen_fallback_attrs(__TopXMLNS, [_ | _attrs],
			  Lang) ->
    decode_xen_fallback_attrs(__TopXMLNS, _attrs, Lang);
decode_xen_fallback_attrs(__TopXMLNS, [], Lang) ->
    'decode_xen_fallback_attr_xml:lang'(__TopXMLNS, Lang).

encode_xen_fallback({text, Lang, Data}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xabber:xen:0">>, [],
				    __TopXMLNS),
    _els = encode_xen_fallback_cdata(Data, []),
    _attrs = 'encode_xen_fallback_attr_xml:lang'(Lang,
						 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									    __TopXMLNS)),
    {xmlel, <<"fallback">>, _attrs, _els}.

'decode_xen_fallback_attr_xml:lang'(__TopXMLNS,
				    undefined) ->
    <<>>;
'decode_xen_fallback_attr_xml:lang'(__TopXMLNS, _val) ->
    _val.

'encode_xen_fallback_attr_xml:lang'(<<>>, _acc) -> _acc;
'encode_xen_fallback_attr_xml:lang'(_val, _acc) ->
    [{<<"xml:lang">>, _val} | _acc].

decode_xen_fallback_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_xen_fallback_cdata(__TopXMLNS, _val) -> _val.

encode_xen_fallback_cdata(<<>>, _acc) -> _acc;
encode_xen_fallback_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
