%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep0384).

-compile(export_all).

do_decode(<<"encrypted">>, <<"urn:xmpp:omemo:1">>, El,
	  Opts) ->
    decode_encrypted_message(<<"urn:xmpp:omemo:1">>, Opts,
			     El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"encrypted">>, <<"urn:xmpp:omemo:1">>}].

do_encode({encrypted_message, _} = Encrypted,
	  TopXMLNS) ->
    encode_encrypted_message(Encrypted, TopXMLNS).

do_get_name({encrypted_message, _}) -> <<"encrypted">>.

do_get_ns({encrypted_message, _}) ->
    <<"urn:xmpp:omemo:1">>.

get_els({encrypted_message, _sub_els}) -> _sub_els.

set_els({encrypted_message, _}, _sub_els) ->
    {encrypted_message, _sub_els}.

pp(encrypted_message, 1) -> [sub_els];
pp(_, _) -> no.

records() -> [{encrypted_message, 1}].

decode_encrypted_message(__TopXMLNS, __Opts,
			 {xmlel, <<"encrypted">>, _attrs, _els}) ->
    __Els = decode_encrypted_message_els(__TopXMLNS, __Opts,
					 _els, []),
    {encrypted_message, __Els}.

decode_encrypted_message_els(__TopXMLNS, __Opts, [],
			     __Els) ->
    lists:reverse(__Els);
decode_encrypted_message_els(__TopXMLNS, __Opts,
			     [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_encrypted_message_els(__TopXMLNS, __Opts, _els,
				       [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_encrypted_message_els(__TopXMLNS, __Opts, _els,
					     [_el | __Els]);
	    Mod ->
		decode_encrypted_message_els(__TopXMLNS, __Opts, _els,
					     [Mod:do_decode(_name, __XMLNS, _el,
							    __Opts)
					      | __Els])
	  end
    end;
decode_encrypted_message_els(__TopXMLNS, __Opts,
			     [_ | _els], __Els) ->
    decode_encrypted_message_els(__TopXMLNS, __Opts, _els,
				 __Els).

encode_encrypted_message({encrypted_message, __Els},
			 __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"urn:xmpp:omemo:1">>, [],
				    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"encrypted">>, _attrs, _els}.
