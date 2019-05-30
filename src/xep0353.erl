%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep0353).

-compile(export_all).

do_decode(<<"accept">>, <<"urn:xmpp:jingle-message:0">>,
	  El, Opts) ->
    decode_jingle_accept(<<"urn:xmpp:jingle-message:0">>,
			 Opts, El);
do_decode(<<"reject">>, <<"urn:xmpp:jingle-message:0">>,
	  El, Opts) ->
    decode_jingle_reject(<<"urn:xmpp:jingle-message:0">>,
			 Opts, El);
do_decode(<<"propose">>,
	  <<"urn:xmpp:jingle-message:0">>, El, Opts) ->
    decode_jingle_propose(<<"urn:xmpp:jingle-message:0">>,
			  Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"accept">>, <<"urn:xmpp:jingle-message:0">>},
     {<<"reject">>, <<"urn:xmpp:jingle-message:0">>},
     {<<"propose">>, <<"urn:xmpp:jingle-message:0">>}].

do_encode({jingle_propose, _, _} = Propose, TopXMLNS) ->
    encode_jingle_propose(Propose, TopXMLNS);
do_encode({jingle_reject, _, _} = Reject, TopXMLNS) ->
    encode_jingle_reject(Reject, TopXMLNS);
do_encode({jingle_accept, _} = Accept, TopXMLNS) ->
    encode_jingle_accept(Accept, TopXMLNS).

do_get_name({jingle_accept, _}) -> <<"accept">>;
do_get_name({jingle_propose, _, _}) -> <<"propose">>;
do_get_name({jingle_reject, _, _}) -> <<"reject">>.

do_get_ns({jingle_accept, _}) ->
    <<"urn:xmpp:jingle-message:0">>;
do_get_ns({jingle_propose, _, _}) ->
    <<"urn:xmpp:jingle-message:0">>;
do_get_ns({jingle_reject, _, _}) ->
    <<"urn:xmpp:jingle-message:0">>.

get_els({jingle_propose, _id, _sub_els}) -> _sub_els;
get_els({jingle_reject, _id, _sub_els}) -> _sub_els.

set_els({jingle_propose, _id, _}, _sub_els) ->
    {jingle_propose, _id, _sub_els};
set_els({jingle_reject, _id, _}, _sub_els) ->
    {jingle_reject, _id, _sub_els}.

pp(jingle_propose, 2) -> [id, sub_els];
pp(jingle_reject, 2) -> [id, sub_els];
pp(jingle_accept, 1) -> [id];
pp(_, _) -> no.

records() ->
    [{jingle_propose, 2}, {jingle_reject, 2},
     {jingle_accept, 1}].

decode_jingle_accept(__TopXMLNS, __Opts,
		     {xmlel, <<"accept">>, _attrs, _els}) ->
    Id = decode_jingle_accept_attrs(__TopXMLNS, _attrs,
				    undefined),
    {jingle_accept, Id}.

decode_jingle_accept_attrs(__TopXMLNS,
			   [{<<"id">>, _val} | _attrs], _Id) ->
    decode_jingle_accept_attrs(__TopXMLNS, _attrs, _val);
decode_jingle_accept_attrs(__TopXMLNS, [_ | _attrs],
			   Id) ->
    decode_jingle_accept_attrs(__TopXMLNS, _attrs, Id);
decode_jingle_accept_attrs(__TopXMLNS, [], Id) ->
    decode_jingle_accept_attr_id(__TopXMLNS, Id).

encode_jingle_accept({jingle_accept, Id}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:jingle-message:0">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_jingle_accept_attr_id(Id,
					  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								     __TopXMLNS)),
    {xmlel, <<"accept">>, _attrs, _els}.

decode_jingle_accept_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_jingle_accept_attr_id(__TopXMLNS, _val) -> _val.

encode_jingle_accept_attr_id(<<>>, _acc) -> _acc;
encode_jingle_accept_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_jingle_reject(__TopXMLNS, __Opts,
		     {xmlel, <<"reject">>, _attrs, _els}) ->
    __Els = decode_jingle_reject_els(__TopXMLNS, __Opts,
				     _els, []),
    Id = decode_jingle_reject_attrs(__TopXMLNS, _attrs,
				    undefined),
    {jingle_reject, Id, __Els}.

decode_jingle_reject_els(__TopXMLNS, __Opts, [],
			 __Els) ->
    lists:reverse(__Els);
decode_jingle_reject_els(__TopXMLNS, __Opts,
			 [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_jingle_reject_els(__TopXMLNS, __Opts, _els,
				   [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_jingle_reject_els(__TopXMLNS, __Opts, _els,
					 [_el | __Els]);
	    Mod ->
		decode_jingle_reject_els(__TopXMLNS, __Opts, _els,
					 [Mod:do_decode(_name, __XMLNS, _el,
							__Opts)
					  | __Els])
	  end
    end;
decode_jingle_reject_els(__TopXMLNS, __Opts, [_ | _els],
			 __Els) ->
    decode_jingle_reject_els(__TopXMLNS, __Opts, _els,
			     __Els).

decode_jingle_reject_attrs(__TopXMLNS,
			   [{<<"id">>, _val} | _attrs], _Id) ->
    decode_jingle_reject_attrs(__TopXMLNS, _attrs, _val);
decode_jingle_reject_attrs(__TopXMLNS, [_ | _attrs],
			   Id) ->
    decode_jingle_reject_attrs(__TopXMLNS, _attrs, Id);
decode_jingle_reject_attrs(__TopXMLNS, [], Id) ->
    decode_jingle_reject_attr_id(__TopXMLNS, Id).

encode_jingle_reject({jingle_reject, Id, __Els},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:jingle-message:0">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_jingle_reject_attr_id(Id,
					  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								     __TopXMLNS)),
    {xmlel, <<"reject">>, _attrs, _els}.

decode_jingle_reject_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_jingle_reject_attr_id(__TopXMLNS, _val) -> _val.

encode_jingle_reject_attr_id(<<>>, _acc) -> _acc;
encode_jingle_reject_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_jingle_propose(__TopXMLNS, __Opts,
		      {xmlel, <<"propose">>, _attrs, _els}) ->
    __Els = decode_jingle_propose_els(__TopXMLNS, __Opts,
				      _els, []),
    Id = decode_jingle_propose_attrs(__TopXMLNS, _attrs,
				     undefined),
    {jingle_propose, Id, __Els}.

decode_jingle_propose_els(__TopXMLNS, __Opts, [],
			  __Els) ->
    lists:reverse(__Els);
decode_jingle_propose_els(__TopXMLNS, __Opts,
			  [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_jingle_propose_els(__TopXMLNS, __Opts, _els,
				    [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_jingle_propose_els(__TopXMLNS, __Opts, _els,
					  [_el | __Els]);
	    Mod ->
		decode_jingle_propose_els(__TopXMLNS, __Opts, _els,
					  [Mod:do_decode(_name, __XMLNS, _el,
							 __Opts)
					   | __Els])
	  end
    end;
decode_jingle_propose_els(__TopXMLNS, __Opts,
			  [_ | _els], __Els) ->
    decode_jingle_propose_els(__TopXMLNS, __Opts, _els,
			      __Els).

decode_jingle_propose_attrs(__TopXMLNS,
			    [{<<"id">>, _val} | _attrs], _Id) ->
    decode_jingle_propose_attrs(__TopXMLNS, _attrs, _val);
decode_jingle_propose_attrs(__TopXMLNS, [_ | _attrs],
			    Id) ->
    decode_jingle_propose_attrs(__TopXMLNS, _attrs, Id);
decode_jingle_propose_attrs(__TopXMLNS, [], Id) ->
    decode_jingle_propose_attr_id(__TopXMLNS, Id).

encode_jingle_propose({jingle_propose, Id, __Els},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:jingle-message:0">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = encode_jingle_propose_attr_id(Id,
					   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								      __TopXMLNS)),
    {xmlel, <<"propose">>, _attrs, _els}.

decode_jingle_propose_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_jingle_propose_attr_id(__TopXMLNS, _val) -> _val.

encode_jingle_propose_attr_id(<<>>, _acc) -> _acc;
encode_jingle_propose_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].
