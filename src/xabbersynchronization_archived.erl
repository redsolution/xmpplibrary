%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbersynchronization_archived).

-compile(export_all).

do_decode(<<"unarchived">>,
	  <<"https://xabber.com/protocol/archived">>, El, Opts) ->
    decode_xabber_unarchived_conversation(<<"https://xabber.com/protocol/archived">>,
					  Opts, El);
do_decode(<<"archived">>,
	  <<"https://xabber.com/protocol/archived">>, El, Opts) ->
    decode_xabber_archived_conversation(<<"https://xabber.com/protocol/archived">>,
					Opts, El);
do_decode(<<"unarchive">>,
	  <<"https://xabber.com/protocol/archived">>, El, Opts) ->
    decode_xabber_synchronization_unarchive(<<"https://xabber.com/protocol/archived">>,
					    Opts, El);
do_decode(<<"archive">>,
	  <<"https://xabber.com/protocol/archived">>, El, Opts) ->
    decode_xabber_synchronization_archive(<<"https://xabber.com/protocol/archived">>,
					  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"unarchived">>,
      <<"https://xabber.com/protocol/archived">>},
     {<<"archived">>,
      <<"https://xabber.com/protocol/archived">>},
     {<<"unarchive">>,
      <<"https://xabber.com/protocol/archived">>},
     {<<"archive">>,
      <<"https://xabber.com/protocol/archived">>}].

do_encode({xabber_synchronization_archive, _} = Archive,
	  TopXMLNS) ->
    encode_xabber_synchronization_archive(Archive,
					  TopXMLNS);
do_encode({xabber_synchronization_unarchive, _} =
	      Unarchive,
	  TopXMLNS) ->
    encode_xabber_synchronization_unarchive(Unarchive,
					    TopXMLNS);
do_encode({xabber_archived_conversation} = Archived,
	  TopXMLNS) ->
    encode_xabber_archived_conversation(Archived, TopXMLNS);
do_encode({xabber_unarchived_conversation} = Unarchived,
	  TopXMLNS) ->
    encode_xabber_unarchived_conversation(Unarchived,
					  TopXMLNS).

do_get_name({xabber_archived_conversation}) ->
    <<"archived">>;
do_get_name({xabber_synchronization_archive, _}) ->
    <<"archive">>;
do_get_name({xabber_synchronization_unarchive, _}) ->
    <<"unarchive">>;
do_get_name({xabber_unarchived_conversation}) ->
    <<"unarchived">>.

do_get_ns({xabber_archived_conversation}) ->
    <<"https://xabber.com/protocol/archived">>;
do_get_ns({xabber_synchronization_archive, _}) ->
    <<"https://xabber.com/protocol/archived">>;
do_get_ns({xabber_synchronization_unarchive, _}) ->
    <<"https://xabber.com/protocol/archived">>;
do_get_ns({xabber_unarchived_conversation}) ->
    <<"https://xabber.com/protocol/archived">>.

pp(xabber_synchronization_archive, 1) -> [conversation];
pp(xabber_synchronization_unarchive, 1) ->
    [conversation];
pp(xabber_archived_conversation, 0) -> [];
pp(xabber_unarchived_conversation, 0) -> [];
pp(_, _) -> no.

records() ->
    [{xabber_synchronization_archive, 1},
     {xabber_synchronization_unarchive, 1},
     {xabber_archived_conversation, 0},
     {xabber_unarchived_conversation, 0}].

decode_xabber_unarchived_conversation(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"unarchived">>, _attrs,
				       _els}) ->
    {xabber_unarchived_conversation}.

encode_xabber_unarchived_conversation({xabber_unarchived_conversation},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/archived">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unarchived">>, _attrs, _els}.

decode_xabber_archived_conversation(__TopXMLNS, __Opts,
				    {xmlel, <<"archived">>, _attrs, _els}) ->
    {xabber_archived_conversation}.

encode_xabber_archived_conversation({xabber_archived_conversation},
				    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/archived">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"archived">>, _attrs, _els}.

decode_xabber_synchronization_unarchive(__TopXMLNS,
					__Opts,
					{xmlel, <<"unarchive">>, _attrs,
					 _els}) ->
    Conversation =
	decode_xabber_synchronization_unarchive_els(__TopXMLNS,
						    __Opts, _els, error),
    {xabber_synchronization_unarchive, Conversation}.

decode_xabber_synchronization_unarchive_els(__TopXMLNS,
					    __Opts, [], Conversation) ->
    case Conversation of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"conversation">>, __TopXMLNS}});
      {value, Conversation1} -> Conversation1
    end;
decode_xabber_synchronization_unarchive_els(__TopXMLNS,
					    __Opts,
					    [{xmlel, <<"conversation">>, _attrs,
					      _} =
						 _el
					     | _els],
					    Conversation) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/synchronization">> ->
	  decode_xabber_synchronization_unarchive_els(__TopXMLNS,
						      __Opts, _els,
						      {value,
						       xabbersynchronization:decode_xabber_conversation(<<"https://xabber.com/protocol/synchronization">>,
													__Opts,
													_el)});
      _ ->
	  decode_xabber_synchronization_unarchive_els(__TopXMLNS,
						      __Opts, _els,
						      Conversation)
    end;
decode_xabber_synchronization_unarchive_els(__TopXMLNS,
					    __Opts, [_ | _els], Conversation) ->
    decode_xabber_synchronization_unarchive_els(__TopXMLNS,
						__Opts, _els, Conversation).

encode_xabber_synchronization_unarchive({xabber_synchronization_unarchive,
					 Conversation},
					__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/archived">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_synchronization_unarchive_$conversation'(Conversation,
									      __NewTopXMLNS,
									      [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"unarchive">>, _attrs, _els}.

'encode_xabber_synchronization_unarchive_$conversation'(Conversation,
							__TopXMLNS, _acc) ->
    [xabbersynchronization:encode_xabber_conversation(Conversation,
						      __TopXMLNS)
     | _acc].

decode_xabber_synchronization_archive(__TopXMLNS,
				      __Opts,
				      {xmlel, <<"archive">>, _attrs, _els}) ->
    Conversation =
	decode_xabber_synchronization_archive_els(__TopXMLNS,
						  __Opts, _els, error),
    {xabber_synchronization_archive, Conversation}.

decode_xabber_synchronization_archive_els(__TopXMLNS,
					  __Opts, [], Conversation) ->
    case Conversation of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"conversation">>, __TopXMLNS}});
      {value, Conversation1} -> Conversation1
    end;
decode_xabber_synchronization_archive_els(__TopXMLNS,
					  __Opts,
					  [{xmlel, <<"conversation">>, _attrs,
					    _} =
					       _el
					   | _els],
					  Conversation) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/synchronization">> ->
	  decode_xabber_synchronization_archive_els(__TopXMLNS,
						    __Opts, _els,
						    {value,
						     xabbersynchronization:decode_xabber_conversation(<<"https://xabber.com/protocol/synchronization">>,
												      __Opts,
												      _el)});
      _ ->
	  decode_xabber_synchronization_archive_els(__TopXMLNS,
						    __Opts, _els, Conversation)
    end;
decode_xabber_synchronization_archive_els(__TopXMLNS,
					  __Opts, [_ | _els], Conversation) ->
    decode_xabber_synchronization_archive_els(__TopXMLNS,
					      __Opts, _els, Conversation).

encode_xabber_synchronization_archive({xabber_synchronization_archive,
				       Conversation},
				      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/archived">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_synchronization_archive_$conversation'(Conversation,
									    __NewTopXMLNS,
									    [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"archive">>, _attrs, _els}.

'encode_xabber_synchronization_archive_$conversation'(Conversation,
						      __TopXMLNS, _acc) ->
    [xabbersynchronization:encode_xabber_conversation(Conversation,
						      __TopXMLNS)
     | _acc].
