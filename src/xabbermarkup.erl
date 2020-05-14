%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xabbermarkup).

-compile(export_all).

do_decode(<<"mention">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_xabber_groupchat_mention(<<"https://xabber.com/protocol/markup">>,
				    Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"mention">>,
      <<"https://xabber.com/protocol/markup">>}].

do_encode({xabber_groupchat_mention, _, _} = Mention,
	  TopXMLNS) ->
    encode_xabber_groupchat_mention(Mention, TopXMLNS).

do_get_name({xabber_groupchat_mention, _, _}) ->
    <<"mention">>.

do_get_ns({xabber_groupchat_mention, _, _}) ->
    <<"https://xabber.com/protocol/markup">>.

pp(xabber_groupchat_mention, 2) -> [node, cdata];
pp(_, _) -> no.

records() -> [{xabber_groupchat_mention, 2}].

decode_xabber_groupchat_mention(__TopXMLNS, __Opts,
				{xmlel, <<"mention">>, _attrs, _els}) ->
    Cdata = decode_xabber_groupchat_mention_els(__TopXMLNS,
						__Opts, _els, <<>>),
    Node = decode_xabber_groupchat_mention_attrs(__TopXMLNS,
						 _attrs, undefined),
    {xabber_groupchat_mention, Node, Cdata}.

decode_xabber_groupchat_mention_els(__TopXMLNS, __Opts,
				    [], Cdata) ->
    decode_xabber_groupchat_mention_cdata(__TopXMLNS,
					  Cdata);
decode_xabber_groupchat_mention_els(__TopXMLNS, __Opts,
				    [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabber_groupchat_mention_els(__TopXMLNS, __Opts,
					_els, <<Cdata/binary, _data/binary>>);
decode_xabber_groupchat_mention_els(__TopXMLNS, __Opts,
				    [_ | _els], Cdata) ->
    decode_xabber_groupchat_mention_els(__TopXMLNS, __Opts,
					_els, Cdata).

decode_xabber_groupchat_mention_attrs(__TopXMLNS,
				      [{<<"node">>, _val} | _attrs], _Node) ->
    decode_xabber_groupchat_mention_attrs(__TopXMLNS,
					  _attrs, _val);
decode_xabber_groupchat_mention_attrs(__TopXMLNS,
				      [_ | _attrs], Node) ->
    decode_xabber_groupchat_mention_attrs(__TopXMLNS,
					  _attrs, Node);
decode_xabber_groupchat_mention_attrs(__TopXMLNS, [],
				      Node) ->
    decode_xabber_groupchat_mention_attr_node(__TopXMLNS,
					      Node).

encode_xabber_groupchat_mention({xabber_groupchat_mention,
				 Node, Cdata},
				__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = encode_xabber_groupchat_mention_cdata(Cdata, []),
    _attrs = encode_xabber_groupchat_mention_attr_node(Node,
						       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
										  __TopXMLNS)),
    {xmlel, <<"mention">>, _attrs, _els}.

decode_xabber_groupchat_mention_attr_node(__TopXMLNS,
					  undefined) ->
    <<>>;
decode_xabber_groupchat_mention_attr_node(__TopXMLNS,
					  _val) ->
    _val.

encode_xabber_groupchat_mention_attr_node(<<>>, _acc) ->
    _acc;
encode_xabber_groupchat_mention_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].

decode_xabber_groupchat_mention_cdata(__TopXMLNS,
				      <<>>) ->
    <<>>;
decode_xabber_groupchat_mention_cdata(__TopXMLNS,
				      _val) ->
    _val.

encode_xabber_groupchat_mention_cdata(<<>>, _acc) ->
    _acc;
encode_xabber_groupchat_mention_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
