%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_markup).

-compile(export_all).

do_decode(<<"quote">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_markup_quote(<<"https://xabber.com/protocol/markup">>,
			Opts, El);
do_decode(<<"link">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_markup_link(<<"https://xabber.com/protocol/markup">>,
		       Opts, El);
do_decode(<<"strike">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_markup_strike(<<"https://xabber.com/protocol/markup">>,
			 Opts, El);
do_decode(<<"underline">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_markup_underline(<<"https://xabber.com/protocol/markup">>,
			    Opts, El);
do_decode(<<"italic">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_markup_italic(<<"https://xabber.com/protocol/markup">>,
			 Opts, El);
do_decode(<<"bold">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_markup_bold(<<"https://xabber.com/protocol/markup">>,
		       Opts, El);
do_decode(<<"mention">>,
	  <<"https://xabber.com/protocol/markup">>, El, Opts) ->
    decode_markup_mention(<<"https://xabber.com/protocol/markup">>,
			  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"quote">>,
      <<"https://xabber.com/protocol/markup">>},
     {<<"link">>, <<"https://xabber.com/protocol/markup">>},
     {<<"strike">>,
      <<"https://xabber.com/protocol/markup">>},
     {<<"underline">>,
      <<"https://xabber.com/protocol/markup">>},
     {<<"italic">>,
      <<"https://xabber.com/protocol/markup">>},
     {<<"bold">>, <<"https://xabber.com/protocol/markup">>},
     {<<"mention">>,
      <<"https://xabber.com/protocol/markup">>}].

do_encode({markup_mention, _, _} = Mention, TopXMLNS) ->
    encode_markup_mention(Mention, TopXMLNS);
do_encode({bmarkup_bold} = Bold, TopXMLNS) ->
    encode_markup_bold(Bold, TopXMLNS);
do_encode({markup_italic} = Italic, TopXMLNS) ->
    encode_markup_italic(Italic, TopXMLNS);
do_encode({markup_underline} = Underline, TopXMLNS) ->
    encode_markup_underline(Underline, TopXMLNS);
do_encode({markup_strike} = Strike, TopXMLNS) ->
    encode_markup_strike(Strike, TopXMLNS);
do_encode({markup_link, _} = Link, TopXMLNS) ->
    encode_markup_link(Link, TopXMLNS);
do_encode({markup_quote} = Quote, TopXMLNS) ->
    encode_markup_quote(Quote, TopXMLNS).

do_get_name({bmarkup_bold}) -> <<"bold">>;
do_get_name({markup_italic}) -> <<"italic">>;
do_get_name({markup_link, _}) -> <<"link">>;
do_get_name({markup_mention, _, _}) -> <<"mention">>;
do_get_name({markup_quote}) -> <<"quote">>;
do_get_name({markup_strike}) -> <<"strike">>;
do_get_name({markup_underline}) -> <<"underline">>.

do_get_ns({bmarkup_bold}) ->
    <<"https://xabber.com/protocol/markup">>;
do_get_ns({markup_italic}) ->
    <<"https://xabber.com/protocol/markup">>;
do_get_ns({markup_link, _}) ->
    <<"https://xabber.com/protocol/markup">>;
do_get_ns({markup_mention, _, _}) ->
    <<"https://xabber.com/protocol/markup">>;
do_get_ns({markup_quote}) ->
    <<"https://xabber.com/protocol/markup">>;
do_get_ns({markup_strike}) ->
    <<"https://xabber.com/protocol/markup">>;
do_get_ns({markup_underline}) ->
    <<"https://xabber.com/protocol/markup">>.

pp(markup_mention, 2) -> [node, cdata];
pp(bmarkup_bold, 0) -> [];
pp(markup_italic, 0) -> [];
pp(markup_underline, 0) -> [];
pp(markup_strike, 0) -> [];
pp(markup_link, 1) -> [cdata];
pp(markup_quote, 0) -> [];
pp(_, _) -> no.

records() ->
    [{markup_mention, 2}, {bmarkup_bold, 0},
     {markup_italic, 0}, {markup_underline, 0},
     {markup_strike, 0}, {markup_link, 1},
     {markup_quote, 0}].

decode_markup_quote(__TopXMLNS, __Opts,
		    {xmlel, <<"quote">>, _attrs, _els}) ->
    {markup_quote}.

encode_markup_quote({markup_quote}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"quote">>, _attrs, _els}.

decode_markup_link(__TopXMLNS, __Opts,
		   {xmlel, <<"link">>, _attrs, _els}) ->
    Cdata = decode_markup_link_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    {markup_link, Cdata}.

decode_markup_link_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_markup_link_cdata(__TopXMLNS, Cdata);
decode_markup_link_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Cdata) ->
    decode_markup_link_els(__TopXMLNS, __Opts, _els,
			   <<Cdata/binary, _data/binary>>);
decode_markup_link_els(__TopXMLNS, __Opts, [_ | _els],
		       Cdata) ->
    decode_markup_link_els(__TopXMLNS, __Opts, _els, Cdata).

encode_markup_link({markup_link, Cdata}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = encode_markup_link_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"link">>, _attrs, _els}.

decode_markup_link_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_markup_link_cdata(__TopXMLNS, _val) -> _val.

encode_markup_link_cdata(<<>>, _acc) -> _acc;
encode_markup_link_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_markup_strike(__TopXMLNS, __Opts,
		     {xmlel, <<"strike">>, _attrs, _els}) ->
    {markup_strike}.

encode_markup_strike({markup_strike}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"strike">>, _attrs, _els}.

decode_markup_underline(__TopXMLNS, __Opts,
			{xmlel, <<"underline">>, _attrs, _els}) ->
    {markup_underline}.

encode_markup_underline({markup_underline},
			__TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"underline">>, _attrs, _els}.

decode_markup_italic(__TopXMLNS, __Opts,
		     {xmlel, <<"italic">>, _attrs, _els}) ->
    {markup_italic}.

encode_markup_italic({markup_italic}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"italic">>, _attrs, _els}.

decode_markup_bold(__TopXMLNS, __Opts,
		   {xmlel, <<"bold">>, _attrs, _els}) ->
    {bmarkup_bold}.

encode_markup_bold({bmarkup_bold}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"bold">>, _attrs, _els}.

decode_markup_mention(__TopXMLNS, __Opts,
		      {xmlel, <<"mention">>, _attrs, _els}) ->
    Cdata = decode_markup_mention_els(__TopXMLNS, __Opts,
				      _els, <<>>),
    Node = decode_markup_mention_attrs(__TopXMLNS, _attrs,
				       undefined),
    {markup_mention, Node, Cdata}.

decode_markup_mention_els(__TopXMLNS, __Opts, [],
			  Cdata) ->
    decode_markup_mention_cdata(__TopXMLNS, Cdata);
decode_markup_mention_els(__TopXMLNS, __Opts,
			  [{xmlcdata, _data} | _els], Cdata) ->
    decode_markup_mention_els(__TopXMLNS, __Opts, _els,
			      <<Cdata/binary, _data/binary>>);
decode_markup_mention_els(__TopXMLNS, __Opts,
			  [_ | _els], Cdata) ->
    decode_markup_mention_els(__TopXMLNS, __Opts, _els,
			      Cdata).

decode_markup_mention_attrs(__TopXMLNS,
			    [{<<"node">>, _val} | _attrs], _Node) ->
    decode_markup_mention_attrs(__TopXMLNS, _attrs, _val);
decode_markup_mention_attrs(__TopXMLNS, [_ | _attrs],
			    Node) ->
    decode_markup_mention_attrs(__TopXMLNS, _attrs, Node);
decode_markup_mention_attrs(__TopXMLNS, [], Node) ->
    decode_markup_mention_attr_node(__TopXMLNS, Node).

encode_markup_mention({markup_mention, Node, Cdata},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/markup">>,
				    [], __TopXMLNS),
    _els = encode_markup_mention_cdata(Cdata, []),
    _attrs = encode_markup_mention_attr_node(Node,
					     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									__TopXMLNS)),
    {xmlel, <<"mention">>, _attrs, _els}.

decode_markup_mention_attr_node(__TopXMLNS,
				undefined) ->
    <<>>;
decode_markup_mention_attr_node(__TopXMLNS, _val) ->
    _val.

encode_markup_mention_attr_node(<<>>, _acc) -> _acc;
encode_markup_mention_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].

decode_markup_mention_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_markup_mention_cdata(__TopXMLNS, _val) -> _val.

encode_markup_mention_cdata(<<>>, _acc) -> _acc;
encode_markup_mention_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
