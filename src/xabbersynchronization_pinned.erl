%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbersynchronization_pinned).

-compile(export_all).

do_decode(<<"unpinned">>,
	  <<"http://xabber.com/protocol/pinned">>, El, Opts) ->
    decode_xabber_unpinned_conversation(<<"http://xabber.com/protocol/pinned">>,
					Opts, El);
do_decode(<<"pinned">>,
	  <<"http://xabber.com/protocol/pinned">>, El, Opts) ->
    decode_xabber_pinned_conversation(<<"http://xabber.com/protocol/pinned">>,
				      Opts, El);
do_decode(<<"unpin">>,
	  <<"http://xabber.com/protocol/pinned">>, El, Opts) ->
    decode_xabber_synchronization_unpin(<<"http://xabber.com/protocol/pinned">>,
					Opts, El);
do_decode(<<"pin">>,
	  <<"http://xabber.com/protocol/pinned">>, El, Opts) ->
    decode_xabber_synchronization_pin(<<"http://xabber.com/protocol/pinned">>,
				      Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"unpinned">>,
      <<"http://xabber.com/protocol/pinned">>},
     {<<"pinned">>, <<"http://xabber.com/protocol/pinned">>},
     {<<"unpin">>, <<"http://xabber.com/protocol/pinned">>},
     {<<"pin">>, <<"http://xabber.com/protocol/pinned">>}].

do_encode({xabber_synchronization_pin, _} = Pin,
	  TopXMLNS) ->
    encode_xabber_synchronization_pin(Pin, TopXMLNS);
do_encode({xabber_synchronization_unpin, _} = Unpin,
	  TopXMLNS) ->
    encode_xabber_synchronization_unpin(Unpin, TopXMLNS);
do_encode({xabber_pinned_conversation} = Pinned,
	  TopXMLNS) ->
    encode_xabber_pinned_conversation(Pinned, TopXMLNS);
do_encode({xabber_unpinned_conversation} = Unpinned,
	  TopXMLNS) ->
    encode_xabber_unpinned_conversation(Unpinned, TopXMLNS).

do_get_name({xabber_pinned_conversation}) ->
    <<"pinned">>;
do_get_name({xabber_synchronization_pin, _}) ->
    <<"pin">>;
do_get_name({xabber_synchronization_unpin, _}) ->
    <<"unpin">>;
do_get_name({xabber_unpinned_conversation}) ->
    <<"unpinned">>.

do_get_ns({xabber_pinned_conversation}) ->
    <<"http://xabber.com/protocol/pinned">>;
do_get_ns({xabber_synchronization_pin, _}) ->
    <<"http://xabber.com/protocol/pinned">>;
do_get_ns({xabber_synchronization_unpin, _}) ->
    <<"http://xabber.com/protocol/pinned">>;
do_get_ns({xabber_unpinned_conversation}) ->
    <<"http://xabber.com/protocol/pinned">>.

pp(xabber_synchronization_pin, 1) -> [conversation];
pp(xabber_synchronization_unpin, 1) -> [conversation];
pp(xabber_pinned_conversation, 0) -> [];
pp(xabber_unpinned_conversation, 0) -> [];
pp(_, _) -> no.

records() ->
    [{xabber_synchronization_pin, 1},
     {xabber_synchronization_unpin, 1},
     {xabber_pinned_conversation, 0},
     {xabber_unpinned_conversation, 0}].

decode_xabber_unpinned_conversation(__TopXMLNS, __Opts,
				    {xmlel, <<"unpinned">>, _attrs, _els}) ->
    {xabber_unpinned_conversation}.

encode_xabber_unpinned_conversation({xabber_unpinned_conversation},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/pinned">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unpinned">>, _attrs, _els}.

decode_xabber_pinned_conversation(__TopXMLNS, __Opts,
				  {xmlel, <<"pinned">>, _attrs, _els}) ->
    {xabber_pinned_conversation}.

encode_xabber_pinned_conversation({xabber_pinned_conversation},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/pinned">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"pinned">>, _attrs, _els}.

decode_xabber_synchronization_unpin(__TopXMLNS, __Opts,
				    {xmlel, <<"unpin">>, _attrs, _els}) ->
    Conversation =
	decode_xabber_synchronization_unpin_els(__TopXMLNS,
						__Opts, _els, error),
    {xabber_synchronization_unpin, Conversation}.

decode_xabber_synchronization_unpin_els(__TopXMLNS,
					__Opts, [], Conversation) ->
    case Conversation of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"conversation">>, __TopXMLNS}});
      {value, Conversation1} -> Conversation1
    end;
decode_xabber_synchronization_unpin_els(__TopXMLNS,
					__Opts,
					[{xmlel, <<"conversation">>, _attrs,
					  _} =
					     _el
					 | _els],
					Conversation) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_synchronization_unpin_els(__TopXMLNS,
						  __Opts, _els,
						  {value,
						   xabbersynchronization:decode_xabber_conversation(<<"http://xabber.com/protocol/synchronization">>,
												    __Opts,
												    _el)});
      _ ->
	  decode_xabber_synchronization_unpin_els(__TopXMLNS,
						  __Opts, _els, Conversation)
    end;
decode_xabber_synchronization_unpin_els(__TopXMLNS,
					__Opts, [_ | _els], Conversation) ->
    decode_xabber_synchronization_unpin_els(__TopXMLNS,
					    __Opts, _els, Conversation).

encode_xabber_synchronization_unpin({xabber_synchronization_unpin,
				     Conversation},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/pinned">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_synchronization_unpin_$conversation'(Conversation,
									  __NewTopXMLNS,
									  [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unpin">>, _attrs, _els}.

'encode_xabber_synchronization_unpin_$conversation'(Conversation,
						    __TopXMLNS, _acc) ->
    [xabbersynchronization:encode_xabber_conversation(Conversation,
						      __TopXMLNS)
     | _acc].

decode_xabber_synchronization_pin(__TopXMLNS, __Opts,
				  {xmlel, <<"pin">>, _attrs, _els}) ->
    Conversation =
	decode_xabber_synchronization_pin_els(__TopXMLNS,
					      __Opts, _els, error),
    {xabber_synchronization_pin, Conversation}.

decode_xabber_synchronization_pin_els(__TopXMLNS,
				      __Opts, [], Conversation) ->
    case Conversation of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"conversation">>, __TopXMLNS}});
      {value, Conversation1} -> Conversation1
    end;
decode_xabber_synchronization_pin_els(__TopXMLNS,
				      __Opts,
				      [{xmlel, <<"conversation">>, _attrs, _} =
					   _el
				       | _els],
				      Conversation) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"http://xabber.com/protocol/synchronization">> ->
	  decode_xabber_synchronization_pin_els(__TopXMLNS,
						__Opts, _els,
						{value,
						 xabbersynchronization:decode_xabber_conversation(<<"http://xabber.com/protocol/synchronization">>,
												  __Opts,
												  _el)});
      _ ->
	  decode_xabber_synchronization_pin_els(__TopXMLNS,
						__Opts, _els, Conversation)
    end;
decode_xabber_synchronization_pin_els(__TopXMLNS,
				      __Opts, [_ | _els], Conversation) ->
    decode_xabber_synchronization_pin_els(__TopXMLNS,
					  __Opts, _els, Conversation).

encode_xabber_synchronization_pin({xabber_synchronization_pin,
				   Conversation},
				  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"http://xabber.com/protocol/pinned">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_synchronization_pin_$conversation'(Conversation,
									__NewTopXMLNS,
									[])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"pin">>, _attrs, _els}.

'encode_xabber_synchronization_pin_$conversation'(Conversation,
						  __TopXMLNS, _acc) ->
    [xabbersynchronization:encode_xabber_conversation(Conversation,
						      __TopXMLNS)
     | _acc].
