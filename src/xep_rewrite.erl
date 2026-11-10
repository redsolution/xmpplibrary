%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_rewrite).

-compile(export_all).

do_decode(<<"message">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replace_message(<<"https://xabber.com/protocol/rewrite">>,
                           Opts,
                           El);
do_decode(<<"message">>,
          <<"https://xabber.com/protocol/rewrite#notify">>, El,
          Opts) ->
    decode_replace_message(<<"https://xabber.com/protocol/rewrite#notify">>,
                           Opts,
                           El);
do_decode(<<"retract-user">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_retract_user(<<"https://xabber.com/protocol/rewrite">>,
                        Opts,
                        El);
do_decode(<<"retract-user">>,
          <<"https://xabber.com/protocol/rewrite#notify">>, El,
          Opts) ->
    decode_retract_user(<<"https://xabber.com/protocol/rewrite#notify">>,
                        Opts,
                        El);
do_decode(<<"invalidate">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_rewrite_invalidate(<<"https://xabber.com/protocol/rewrite">>,
                              Opts,
                              El);
do_decode(<<"query">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_rewrite_query(<<"https://xabber.com/protocol/rewrite">>,
                         Opts,
                         El);
do_decode(<<"replaced">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replaced(<<"https://xabber.com/protocol/rewrite">>,
                    Opts,
                    El);
do_decode(<<"body">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replaced_body(<<"https://xabber.com/protocol/rewrite">>,
                         Opts,
                         El);
do_decode(<<"replace">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replace(<<"https://xabber.com/protocol/rewrite">>,
                   Opts,
                   El);
do_decode(<<"replacement">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replacement_message(<<"https://xabber.com/protocol/rewrite">>,
                               Opts,
                               El);
do_decode(<<"retract-archive">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_retract_archive(<<"https://xabber.com/protocol/rewrite">>,
                           Opts,
                           El);
do_decode(<<"retract-all">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_retract_all(<<"https://xabber.com/protocol/rewrite">>,
                       Opts,
                       El);
do_decode(<<"retract-message">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_retract_message(<<"https://xabber.com/protocol/rewrite">>,
                           Opts,
                           El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"message">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"message">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"retract-user">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"retract-user">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"invalidate">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"replaced">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"body">>, <<"https://xabber.com/protocol/rewrite">>},
     {<<"replace">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"replacement">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"retract-archive">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"retract-all">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"retract-message">>,
      <<"https://xabber.com/protocol/rewrite">>}].

do_encode({retract_message, _, _, _, _, _} =
              Retract_message,
          TopXMLNS) ->
    encode_retract_message(Retract_message, TopXMLNS);
do_encode({retract_all, _, _, _, _, _} = Retract_all,
          TopXMLNS) ->
    encode_retract_all(Retract_all, TopXMLNS);
do_encode({retract_archive, _} = Retract_archive,
          TopXMLNS) ->
    encode_retract_archive(Retract_archive, TopXMLNS);
do_encode({replacement_message, _} = Replacement,
          TopXMLNS) ->
    encode_replacement_message(Replacement, TopXMLNS);
do_encode({replace, _, _, _, _, _} = Replace,
          TopXMLNS) ->
    encode_replace(Replace, TopXMLNS);
do_encode({replaced_text, _, _} = Body, TopXMLNS) ->
    encode_replaced_body(Body, TopXMLNS);
do_encode({replaced, _, _} = Replaced, TopXMLNS) ->
    encode_replaced(Replaced, TopXMLNS);
do_encode({rewrite_query, _, _} = Query, TopXMLNS) ->
    encode_rewrite_query(Query, TopXMLNS);
do_encode({rewrite_invalidate, _, _, _} = Invalidate,
          TopXMLNS) ->
    encode_rewrite_invalidate(Invalidate, TopXMLNS);
do_encode({retract_user, _, _, _, _, _, _, _} =
              Retract_user,
          TopXMLNS) ->
    encode_retract_user(Retract_user, TopXMLNS);
do_encode({replace_message, _, _, _, _, _, _} = Message,
          TopXMLNS) ->
    encode_replace_message(Message, TopXMLNS).

do_get_name({replace, _, _, _, _, _}) -> <<"replace">>;
do_get_name({replace_message, _, _, _, _, _, _}) ->
    <<"message">>;
do_get_name({replaced, _, _}) -> <<"replaced">>;
do_get_name({replaced_text, _, _}) -> <<"body">>;
do_get_name({replacement_message, _}) ->
    <<"replacement">>;
do_get_name({retract_all, _, _, _, _, _}) ->
    <<"retract-all">>;
do_get_name({retract_archive, _}) ->
    <<"retract-archive">>;
do_get_name({retract_message, _, _, _, _, _}) ->
    <<"retract-message">>;
do_get_name({retract_user, _, _, _, _, _, _, _}) ->
    <<"retract-user">>;
do_get_name({rewrite_invalidate, _, _, _}) ->
    <<"invalidate">>;
do_get_name({rewrite_query, _, _}) -> <<"query">>.

do_get_ns({replace, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({replace_message, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({replaced, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({replaced_text, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({replacement_message, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({retract_all, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({retract_archive, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({retract_message, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({retract_user, Xmlns, _, _, _, _, _, _}) ->
    Xmlns;
do_get_ns({rewrite_invalidate, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({rewrite_query, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>.

get_els({replace_message,
         _from,
         _to,
         _body,
         _stanza_id,
         _replaced,
         _sub_els}) ->
    _sub_els.

set_els({replace_message,
         _from,
         _to,
         _body,
         _stanza_id,
         _replaced,
         _},
        _sub_els) ->
    {replace_message,
     _from,
     _to,
     _body,
     _stanza_id,
     _replaced,
     _sub_els}.

pp(retract_message, 5) ->
    [sid, oid, symmetric, version, conversation];
pp(retract_all, 5) ->
    [symmetric, version, conversation, type, sender];
pp(retract_archive, 1) -> [version];
pp(replacement_message, 1) -> [message];
pp(replace, 5) ->
    [sid, oid, replacement, version, conversation];
pp(replaced_text, 2) -> [lang, data];
pp(replaced, 2) -> [stamp, body];
pp(rewrite_query, 2) -> [version, 'less-than'];
pp(rewrite_invalidate, 3) ->
    [version, conversation, type];
pp(retract_user, 7) ->
    [xmlns, id, by, symmetric, version, conversation, type];
pp(replace_message, 6) ->
    [from, to, body, stanza_id, replaced, sub_els];
pp(_, _) -> no.

records() ->
    [{retract_message, 5},
     {retract_all, 5},
     {retract_archive, 1},
     {replacement_message, 1},
     {replace, 5},
     {replaced_text, 2},
     {replaced, 2},
     {rewrite_query, 2},
     {rewrite_invalidate, 3},
     {retract_user, 7},
     {replace_message, 6}].

dec_bool(<<"false">>) -> false;
dec_bool(<<"0">>) -> false;
dec_bool(<<"true">>) -> true;
dec_bool(<<"1">>) -> true.

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
        Int when Int =< Max, Min == infinity -> Int;
        Int when Int =< Max, Int >= Min -> Int
    end.

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_bool(false) -> <<"false">>;
enc_bool(true) -> <<"true">>.

enc_int(Int) -> erlang:integer_to_binary(Int).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

decode_replace_message(__TopXMLNS, __Opts,
                       {xmlel, <<"message">>, _attrs, _els}) ->
    {Replaced, Stanza_id, Body, __Els} =
        decode_replace_message_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   undefined,
                                   undefined,
                                   undefined,
                                   []),
    {From, To} = decode_replace_message_attrs(__TopXMLNS,
                                              _attrs,
                                              undefined,
                                              undefined),
    {replace_message,
     From,
     To,
     Body,
     Stanza_id,
     Replaced,
     __Els}.

decode_replace_message_els(__TopXMLNS, __Opts, [],
                           Replaced, Stanza_id, Body, __Els) ->
    {Replaced, Stanza_id, Body, lists:reverse(__Els)};
decode_replace_message_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"body">>, _attrs, _} = _el | _els],
                           Replaced, Stanza_id, Body, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/rewrite">> ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replaced,
                                       Stanza_id,
                                       decode_replaced_body(<<"https://xabber.com/protocol/rewrite">>,
                                                            __Opts,
                                                            _el),
                                       __Els);
        _ ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replaced,
                                       Stanza_id,
                                       Body,
                                       [_el | __Els])
    end;
decode_replace_message_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"stanza-id">>, _attrs, _} = _el | _els],
                           Replaced, Stanza_id, Body, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:sid:0">> ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replaced,
                                       xep0359:decode_stanza_id(<<"urn:xmpp:sid:0">>,
                                                                __Opts,
                                                                _el),
                                       Body,
                                       __Els);
        _ ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replaced,
                                       Stanza_id,
                                       Body,
                                       [_el | __Els])
    end;
decode_replace_message_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"replaced">>, _attrs, _} = _el | _els],
                           Replaced, Stanza_id, Body, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/rewrite">> ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       decode_replaced(<<"https://xabber.com/protocol/rewrite">>,
                                                       __Opts,
                                                       _el),
                                       Stanza_id,
                                       Body,
                                       __Els);
        _ ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replaced,
                                       Stanza_id,
                                       Body,
                                       [_el | __Els])
    end;
decode_replace_message_els(__TopXMLNS, __Opts,
                           [{xmlel, _name, _attrs, _} = _el | _els], Replaced,
                           Stanza_id, Body, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replaced,
                                       Stanza_id,
                                       Body,
                                       [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_replace_message_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Replaced,
                                               Stanza_id,
                                               Body,
                                               [_el | __Els]);
                Mod ->
                    decode_replace_message_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Replaced,
                                               Stanza_id,
                                               Body,
                                               [Mod:do_decode(_name,
                                                              __XMLNS,
                                                              _el,
                                                              __Opts)
                                                | __Els])
            end
    end;
decode_replace_message_els(__TopXMLNS, __Opts,
                           [_ | _els], Replaced, Stanza_id, Body, __Els) ->
    decode_replace_message_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replaced,
                               Stanza_id,
                               Body,
                               __Els).

decode_replace_message_attrs(__TopXMLNS,
                             [{<<"from">>, _val} | _attrs], _From, To) ->
    decode_replace_message_attrs(__TopXMLNS,
                                 _attrs,
                                 _val,
                                 To);
decode_replace_message_attrs(__TopXMLNS,
                             [{<<"to">>, _val} | _attrs], From, _To) ->
    decode_replace_message_attrs(__TopXMLNS,
                                 _attrs,
                                 From,
                                 _val);
decode_replace_message_attrs(__TopXMLNS, [_ | _attrs],
                             From, To) ->
    decode_replace_message_attrs(__TopXMLNS,
                                 _attrs,
                                 From,
                                 To);
decode_replace_message_attrs(__TopXMLNS, [], From,
                             To) ->
    {decode_replace_message_attr_from(__TopXMLNS, From),
     decode_replace_message_attr_to(__TopXMLNS, To)}.

encode_replace_message({replace_message,
                        From,
                        To,
                        Body,
                        Stanza_id,
                        Replaced,
                        __Els},
                       __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
                                                [<<"https://xabber.com/protocol/rewrite">>,
                                                 <<"https://xabber.com/protocol/rewrite#notify">>],
                                                __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse('encode_replace_message_$replaced'(Replaced,
                                                                __NewTopXMLNS,
                                                                'encode_replace_message_$stanza_id'(Stanza_id,
                                                                                                    __NewTopXMLNS,
                                                                                                    'encode_replace_message_$body'(Body,
                                                                                                                                   __NewTopXMLNS,
                                                                                                                                   [])))),
    _attrs = encode_replace_message_attr_to(To,
                                            encode_replace_message_attr_from(From,
                                                                             xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                        __TopXMLNS))),
    {xmlel, <<"message">>, _attrs, _els}.

'encode_replace_message_$replaced'(undefined,
                                   __TopXMLNS, _acc) ->
    _acc;
'encode_replace_message_$replaced'(Replaced, __TopXMLNS,
                                   _acc) ->
    [encode_replaced(Replaced, __TopXMLNS) | _acc].

'encode_replace_message_$stanza_id'(undefined,
                                    __TopXMLNS, _acc) ->
    _acc;
'encode_replace_message_$stanza_id'(Stanza_id,
                                    __TopXMLNS, _acc) ->
    [xep0359:encode_stanza_id(Stanza_id, __TopXMLNS)
     | _acc].

'encode_replace_message_$body'(undefined, __TopXMLNS,
                               _acc) ->
    _acc;
'encode_replace_message_$body'(Body, __TopXMLNS,
                               _acc) ->
    [encode_replaced_body(Body, __TopXMLNS) | _acc].

decode_replace_message_attr_from(__TopXMLNS,
                                 undefined) ->
    undefined;
decode_replace_message_attr_from(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"from">>,
                           <<"message">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_replace_message_attr_from(undefined, _acc) ->
    _acc;
encode_replace_message_attr_from(_val, _acc) ->
    [{<<"from">>, jid:encode(_val)} | _acc].

decode_replace_message_attr_to(__TopXMLNS, undefined) ->
    undefined;
decode_replace_message_attr_to(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"to">>,
                           <<"message">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_replace_message_attr_to(undefined, _acc) -> _acc;
encode_replace_message_attr_to(_val, _acc) ->
    [{<<"to">>, jid:encode(_val)} | _acc].

decode_retract_user(__TopXMLNS, __Opts,
                    {xmlel, <<"retract-user">>, _attrs, _els}) ->
    {Type,
     Xmlns,
     Id,
     Version,
     Conversation,
     Symmetric,
     By} =
        decode_retract_user_attrs(__TopXMLNS,
                                  _attrs,
                                  undefined,
                                  undefined,
                                  undefined,
                                  undefined,
                                  undefined,
                                  undefined,
                                  undefined),
    {retract_user,
     Xmlns,
     Id,
     By,
     Symmetric,
     Version,
     Conversation,
     Type}.

decode_retract_user_attrs(__TopXMLNS,
                          [{<<"type">>, _val} | _attrs], _Type, Xmlns, Id,
                          Version, Conversation, Symmetric, By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              _val,
                              Xmlns,
                              Id,
                              Version,
                              Conversation,
                              Symmetric,
                              By);
decode_retract_user_attrs(__TopXMLNS,
                          [{<<"xmlns">>, _val} | _attrs], Type, _Xmlns, Id,
                          Version, Conversation, Symmetric, By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              Type,
                              _val,
                              Id,
                              Version,
                              Conversation,
                              Symmetric,
                              By);
decode_retract_user_attrs(__TopXMLNS,
                          [{<<"id">>, _val} | _attrs], Type, Xmlns, _Id,
                          Version, Conversation, Symmetric, By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              Type,
                              Xmlns,
                              _val,
                              Version,
                              Conversation,
                              Symmetric,
                              By);
decode_retract_user_attrs(__TopXMLNS,
                          [{<<"version">>, _val} | _attrs], Type, Xmlns, Id,
                          _Version, Conversation, Symmetric, By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              Type,
                              Xmlns,
                              Id,
                              _val,
                              Conversation,
                              Symmetric,
                              By);
decode_retract_user_attrs(__TopXMLNS,
                          [{<<"conversation">>, _val} | _attrs], Type, Xmlns,
                          Id, Version, _Conversation, Symmetric, By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              Type,
                              Xmlns,
                              Id,
                              Version,
                              _val,
                              Symmetric,
                              By);
decode_retract_user_attrs(__TopXMLNS,
                          [{<<"symmetric">>, _val} | _attrs], Type, Xmlns, Id,
                          Version, Conversation, _Symmetric, By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              Type,
                              Xmlns,
                              Id,
                              Version,
                              Conversation,
                              _val,
                              By);
decode_retract_user_attrs(__TopXMLNS,
                          [{<<"by">>, _val} | _attrs], Type, Xmlns, Id, Version,
                          Conversation, Symmetric, _By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              Type,
                              Xmlns,
                              Id,
                              Version,
                              Conversation,
                              Symmetric,
                              _val);
decode_retract_user_attrs(__TopXMLNS, [_ | _attrs],
                          Type, Xmlns, Id, Version, Conversation, Symmetric,
                          By) ->
    decode_retract_user_attrs(__TopXMLNS,
                              _attrs,
                              Type,
                              Xmlns,
                              Id,
                              Version,
                              Conversation,
                              Symmetric,
                              By);
decode_retract_user_attrs(__TopXMLNS, [], Type, Xmlns,
                          Id, Version, Conversation, Symmetric, By) ->
    {decode_retract_user_attr_type(__TopXMLNS, Type),
     decode_retract_user_attr_xmlns(__TopXMLNS, Xmlns),
     decode_retract_user_attr_id(__TopXMLNS, Id),
     decode_retract_user_attr_version(__TopXMLNS, Version),
     decode_retract_user_attr_conversation(__TopXMLNS,
                                           Conversation),
     decode_retract_user_attr_symmetric(__TopXMLNS,
                                        Symmetric),
     decode_retract_user_attr_by(__TopXMLNS, By)}.

encode_retract_user({retract_user,
                     Xmlns,
                     Id,
                     By,
                     Symmetric,
                     Version,
                     Conversation,
                     Type},
                    __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
                                                [<<"https://xabber.com/protocol/rewrite">>,
                                                 <<"https://xabber.com/protocol/rewrite#notify">>],
                                                __TopXMLNS),
    _els = [],
    _attrs = encode_retract_user_attr_by(By,
                                         encode_retract_user_attr_symmetric(Symmetric,
                                                                            encode_retract_user_attr_conversation(Conversation,
                                                                                                                  encode_retract_user_attr_version(Version,
                                                                                                                                                   encode_retract_user_attr_id(Id,
                                                                                                                                                                               encode_retract_user_attr_type(Type,
                                                                                                                                                                                                             xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                        __TopXMLNS))))))),
    {xmlel, <<"retract-user">>, _attrs, _els}.

decode_retract_user_attr_type(__TopXMLNS, undefined) ->
    <<>>;
decode_retract_user_attr_type(__TopXMLNS, _val) -> _val.

encode_retract_user_attr_type(<<>>, _acc) -> _acc;
encode_retract_user_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_retract_user_attr_xmlns(__TopXMLNS, undefined) ->
    <<>>;
decode_retract_user_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_retract_user_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_retract_user_attr_id(__TopXMLNS, _val) -> _val.

encode_retract_user_attr_id(<<>>, _acc) -> _acc;
encode_retract_user_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_retract_user_attr_version(__TopXMLNS,
                                 undefined) ->
    undefined;
decode_retract_user_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"retract-user">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_user_attr_version(undefined, _acc) ->
    _acc;
encode_retract_user_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_retract_user_attr_conversation(__TopXMLNS,
                                      undefined) ->
    undefined;
decode_retract_user_attr_conversation(__TopXMLNS,
                                      _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"retract-user">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_user_attr_conversation(undefined,
                                      _acc) ->
    _acc;
encode_retract_user_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_retract_user_attr_symmetric(__TopXMLNS,
                                   undefined) ->
    undefined;
decode_retract_user_attr_symmetric(__TopXMLNS, _val) ->
    case catch dec_bool(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"symmetric">>,
                           <<"retract-user">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_user_attr_symmetric(undefined, _acc) ->
    _acc;
encode_retract_user_attr_symmetric(_val, _acc) ->
    [{<<"symmetric">>, enc_bool(_val)} | _acc].

decode_retract_user_attr_by(__TopXMLNS, undefined) ->
    undefined;
decode_retract_user_attr_by(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"by">>,
                           <<"retract-user">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_user_attr_by(undefined, _acc) -> _acc;
encode_retract_user_attr_by(_val, _acc) ->
    [{<<"by">>, jid:encode(_val)} | _acc].

decode_rewrite_invalidate(__TopXMLNS, __Opts,
                          {xmlel, <<"invalidate">>, _attrs, _els}) ->
    {Type, Version, Conversation} =
        decode_rewrite_invalidate_attrs(__TopXMLNS,
                                        _attrs,
                                        undefined,
                                        undefined,
                                        undefined),
    {rewrite_invalidate, Version, Conversation, Type}.

decode_rewrite_invalidate_attrs(__TopXMLNS,
                                [{<<"type">>, _val} | _attrs], _Type, Version,
                                Conversation) ->
    decode_rewrite_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    _val,
                                    Version,
                                    Conversation);
decode_rewrite_invalidate_attrs(__TopXMLNS,
                                [{<<"version">>, _val} | _attrs], Type,
                                _Version, Conversation) ->
    decode_rewrite_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    Type,
                                    _val,
                                    Conversation);
decode_rewrite_invalidate_attrs(__TopXMLNS,
                                [{<<"conversation">>, _val} | _attrs], Type,
                                Version, _Conversation) ->
    decode_rewrite_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    Type,
                                    Version,
                                    _val);
decode_rewrite_invalidate_attrs(__TopXMLNS,
                                [_ | _attrs], Type, Version, Conversation) ->
    decode_rewrite_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    Type,
                                    Version,
                                    Conversation);
decode_rewrite_invalidate_attrs(__TopXMLNS, [], Type,
                                Version, Conversation) ->
    {decode_rewrite_invalidate_attr_type(__TopXMLNS, Type),
     decode_rewrite_invalidate_attr_version(__TopXMLNS,
                                            Version),
     decode_rewrite_invalidate_attr_conversation(__TopXMLNS,
                                                 Conversation)}.

encode_rewrite_invalidate({rewrite_invalidate,
                           Version,
                           Conversation,
                           Type},
                          __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_rewrite_invalidate_attr_conversation(Conversation,
                                                    encode_rewrite_invalidate_attr_version(Version,
                                                                                           encode_rewrite_invalidate_attr_type(Type,
                                                                                                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                          __TopXMLNS)))),
    {xmlel, <<"invalidate">>, _attrs, _els}.

decode_rewrite_invalidate_attr_type(__TopXMLNS,
                                    undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"type">>,
                   <<"invalidate">>,
                   __TopXMLNS}});
decode_rewrite_invalidate_attr_type(__TopXMLNS, _val) ->
    _val.

encode_rewrite_invalidate_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_rewrite_invalidate_attr_version(__TopXMLNS,
                                       undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"version">>,
                   <<"invalidate">>,
                   __TopXMLNS}});
decode_rewrite_invalidate_attr_version(__TopXMLNS,
                                       _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"invalidate">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_rewrite_invalidate_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_rewrite_invalidate_attr_conversation(__TopXMLNS,
                                            undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"conversation">>,
                   <<"invalidate">>,
                   __TopXMLNS}});
decode_rewrite_invalidate_attr_conversation(__TopXMLNS,
                                            _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"invalidate">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_rewrite_invalidate_attr_conversation(_val,
                                            _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_rewrite_query(__TopXMLNS, __Opts,
                     {xmlel, <<"query">>, _attrs, _els}) ->
    {Version, Less_than} =
        decode_rewrite_query_attrs(__TopXMLNS,
                                   _attrs,
                                   undefined,
                                   undefined),
    {rewrite_query, Version, Less_than}.

decode_rewrite_query_attrs(__TopXMLNS,
                           [{<<"version">>, _val} | _attrs], _Version,
                           Less_than) ->
    decode_rewrite_query_attrs(__TopXMLNS,
                               _attrs,
                               _val,
                               Less_than);
decode_rewrite_query_attrs(__TopXMLNS,
                           [{<<"less-than">>, _val} | _attrs], Version,
                           _Less_than) ->
    decode_rewrite_query_attrs(__TopXMLNS,
                               _attrs,
                               Version,
                               _val);
decode_rewrite_query_attrs(__TopXMLNS, [_ | _attrs],
                           Version, Less_than) ->
    decode_rewrite_query_attrs(__TopXMLNS,
                               _attrs,
                               Version,
                               Less_than);
decode_rewrite_query_attrs(__TopXMLNS, [], Version,
                           Less_than) ->
    {decode_rewrite_query_attr_version(__TopXMLNS, Version),
     'decode_rewrite_query_attr_less-than'(__TopXMLNS,
                                           Less_than)}.

encode_rewrite_query({rewrite_query,
                      Version,
                      Less_than},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        'encode_rewrite_query_attr_less-than'(Less_than,
                                              encode_rewrite_query_attr_version(Version,
                                                                                xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                           __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

decode_rewrite_query_attr_version(__TopXMLNS,
                                  undefined) ->
    undefined;
decode_rewrite_query_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"query">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_rewrite_query_attr_version(undefined, _acc) ->
    _acc;
encode_rewrite_query_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

'decode_rewrite_query_attr_less-than'(__TopXMLNS,
                                      undefined) ->
    undefined;
'decode_rewrite_query_attr_less-than'(__TopXMLNS,
                                      _val) ->
    case catch dec_int(_val, 1, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"less-than">>,
                           <<"query">>,
                           __TopXMLNS}});
        _res -> _res
    end.

'encode_rewrite_query_attr_less-than'(undefined,
                                      _acc) ->
    _acc;
'encode_rewrite_query_attr_less-than'(_val, _acc) ->
    [{<<"less-than">>, enc_int(_val)} | _acc].

decode_replaced(__TopXMLNS, __Opts,
                {xmlel, <<"replaced">>, _attrs, _els}) ->
    Body = decode_replaced_els(__TopXMLNS,
                               __Opts,
                               _els,
                               undefined),
    Stamp = decode_replaced_attrs(__TopXMLNS,
                                  _attrs,
                                  undefined),
    {replaced, Stamp, Body}.

decode_replaced_els(__TopXMLNS, __Opts, [], Body) ->
    Body;
decode_replaced_els(__TopXMLNS, __Opts,
                    [{xmlel, <<"body">>, _attrs, _} = _el | _els], Body) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/rewrite">> ->
            decode_replaced_els(__TopXMLNS,
                                __Opts,
                                _els,
                                decode_replaced_body(<<"https://xabber.com/protocol/rewrite">>,
                                                     __Opts,
                                                     _el));
        _ -> decode_replaced_els(__TopXMLNS, __Opts, _els, Body)
    end;
decode_replaced_els(__TopXMLNS, __Opts, [_ | _els],
                    Body) ->
    decode_replaced_els(__TopXMLNS, __Opts, _els, Body).

decode_replaced_attrs(__TopXMLNS,
                      [{<<"stamp">>, _val} | _attrs], _Stamp) ->
    decode_replaced_attrs(__TopXMLNS, _attrs, _val);
decode_replaced_attrs(__TopXMLNS, [_ | _attrs],
                      Stamp) ->
    decode_replaced_attrs(__TopXMLNS, _attrs, Stamp);
decode_replaced_attrs(__TopXMLNS, [], Stamp) ->
    decode_replaced_attr_stamp(__TopXMLNS, Stamp).

encode_replaced({replaced, Stamp, Body}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = lists:reverse('encode_replaced_$body'(Body,
                                                 __NewTopXMLNS,
                                                 [])),
    _attrs = encode_replaced_attr_stamp(Stamp,
                                        xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                   __TopXMLNS)),
    {xmlel, <<"replaced">>, _attrs, _els}.

'encode_replaced_$body'(undefined, __TopXMLNS, _acc) ->
    _acc;
'encode_replaced_$body'(Body, __TopXMLNS, _acc) ->
    [encode_replaced_body(Body, __TopXMLNS) | _acc].

decode_replaced_attr_stamp(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"stamp">>,
                   <<"replaced">>,
                   __TopXMLNS}});
decode_replaced_attr_stamp(__TopXMLNS, _val) ->
    case catch dec_utc(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"stamp">>,
                           <<"replaced">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_replaced_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, enc_utc(_val)} | _acc].

decode_replaced_body(__TopXMLNS, __Opts,
                     {xmlel, <<"body">>, _attrs, _els}) ->
    Data = decode_replaced_body_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    <<>>),
    Lang = decode_replaced_body_attrs(__TopXMLNS,
                                      _attrs,
                                      undefined),
    {replaced_text, Lang, Data}.

decode_replaced_body_els(__TopXMLNS, __Opts, [],
                         Data) ->
    decode_replaced_body_cdata(__TopXMLNS, Data);
decode_replaced_body_els(__TopXMLNS, __Opts,
                         [{xmlcdata, _data} | _els], Data) ->
    decode_replaced_body_els(__TopXMLNS,
                             __Opts,
                             _els,
                             <<Data/binary, _data/binary>>);
decode_replaced_body_els(__TopXMLNS, __Opts, [_ | _els],
                         Data) ->
    decode_replaced_body_els(__TopXMLNS,
                             __Opts,
                             _els,
                             Data).

decode_replaced_body_attrs(__TopXMLNS,
                           [{<<"xml:lang">>, _val} | _attrs], _Lang) ->
    decode_replaced_body_attrs(__TopXMLNS, _attrs, _val);
decode_replaced_body_attrs(__TopXMLNS, [_ | _attrs],
                           Lang) ->
    decode_replaced_body_attrs(__TopXMLNS, _attrs, Lang);
decode_replaced_body_attrs(__TopXMLNS, [], Lang) ->
    'decode_replaced_body_attr_xml:lang'(__TopXMLNS, Lang).

encode_replaced_body({replaced_text, Lang, Data},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_replaced_body_cdata(Data, []),
    _attrs = 'encode_replaced_body_attr_xml:lang'(Lang,
                                                  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                             __TopXMLNS)),
    {xmlel, <<"body">>, _attrs, _els}.

'decode_replaced_body_attr_xml:lang'(__TopXMLNS,
                                     undefined) ->
    <<>>;
'decode_replaced_body_attr_xml:lang'(__TopXMLNS,
                                     _val) ->
    _val.

'encode_replaced_body_attr_xml:lang'(<<>>, _acc) ->
    _acc;
'encode_replaced_body_attr_xml:lang'(_val, _acc) ->
    [{<<"xml:lang">>, _val} | _acc].

decode_replaced_body_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_replaced_body_cdata(__TopXMLNS, _val) -> _val.

encode_replaced_body_cdata(<<>>, _acc) -> _acc;
encode_replaced_body_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_replace(__TopXMLNS, __Opts,
               {xmlel, <<"replace">>, _attrs, _els}) ->
    {Replacement, Oid, Sid} = decode_replace_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 error,
                                                 undefined,
                                                 error),
    {Version, Conversation} =
        decode_replace_attrs(__TopXMLNS,
                             _attrs,
                             undefined,
                             undefined),
    {replace, Sid, Oid, Replacement, Version, Conversation}.

decode_replace_els(__TopXMLNS, __Opts, [], Replacement,
                   Oid, Sid) ->
    {case Replacement of
         error ->
             erlang:error({xmpp_codec,
                           {missing_tag, <<"replacement">>, __TopXMLNS}});
         {value, Replacement1} -> Replacement1
     end,
     Oid,
     case Sid of
         error ->
             erlang:error({xmpp_codec,
                           {missing_tag, <<"stanza-id">>, __TopXMLNS}});
         {value, Sid1} -> Sid1
     end};
decode_replace_els(__TopXMLNS, __Opts,
                   [{xmlel, <<"stanza-id">>, _attrs, _} = _el | _els],
                   Replacement, Oid, Sid) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:sid:0">> ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replacement,
                               Oid,
                               {value,
                                xep0359:decode_stanza_id(<<"urn:xmpp:sid:0">>,
                                                         __Opts,
                                                         _el)});
        _ ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replacement,
                               Oid,
                               Sid)
    end;
decode_replace_els(__TopXMLNS, __Opts,
                   [{xmlel, <<"origin-id">>, _attrs, _} = _el | _els],
                   Replacement, Oid, Sid) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:sid:0">> ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replacement,
                               xep0359:decode_origin_id(<<"urn:xmpp:sid:0">>,
                                                        __Opts,
                                                        _el),
                               Sid);
        _ ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replacement,
                               Oid,
                               Sid)
    end;
decode_replace_els(__TopXMLNS, __Opts,
                   [{xmlel, <<"replacement">>, _attrs, _} = _el | _els],
                   Replacement, Oid, Sid) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/rewrite">> ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               {value,
                                decode_replacement_message(<<"https://xabber.com/protocol/rewrite">>,
                                                           __Opts,
                                                           _el)},
                               Oid,
                               Sid);
        _ ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replacement,
                               Oid,
                               Sid)
    end;
decode_replace_els(__TopXMLNS, __Opts, [_ | _els],
                   Replacement, Oid, Sid) ->
    decode_replace_els(__TopXMLNS,
                       __Opts,
                       _els,
                       Replacement,
                       Oid,
                       Sid).

decode_replace_attrs(__TopXMLNS,
                     [{<<"version">>, _val} | _attrs], _Version,
                     Conversation) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         _val,
                         Conversation);
decode_replace_attrs(__TopXMLNS,
                     [{<<"conversation">>, _val} | _attrs], Version,
                     _Conversation) ->
    decode_replace_attrs(__TopXMLNS, _attrs, Version, _val);
decode_replace_attrs(__TopXMLNS, [_ | _attrs], Version,
                     Conversation) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         Version,
                         Conversation);
decode_replace_attrs(__TopXMLNS, [], Version,
                     Conversation) ->
    {decode_replace_attr_version(__TopXMLNS, Version),
     decode_replace_attr_conversation(__TopXMLNS,
                                      Conversation)}.

encode_replace({replace,
                Sid,
                Oid,
                Replacement,
                Version,
                Conversation},
               __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_replace_$replacement'(Replacement,
                                                    __NewTopXMLNS,
                                                    'encode_replace_$oid'(Oid,
                                                                          __NewTopXMLNS,
                                                                          'encode_replace_$sid'(Sid,
                                                                                                __NewTopXMLNS,
                                                                                                [])))),
    _attrs = encode_replace_attr_conversation(Conversation,
                                              encode_replace_attr_version(Version,
                                                                          xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                     __TopXMLNS))),
    {xmlel, <<"replace">>, _attrs, _els}.

'encode_replace_$replacement'(Replacement, __TopXMLNS,
                              _acc) ->
    [encode_replacement_message(Replacement, __TopXMLNS)
     | _acc].

'encode_replace_$oid'(undefined, __TopXMLNS, _acc) ->
    _acc;
'encode_replace_$oid'(Oid, __TopXMLNS, _acc) ->
    [xep0359:encode_origin_id(Oid, __TopXMLNS) | _acc].

'encode_replace_$sid'(Sid, __TopXMLNS, _acc) ->
    [xep0359:encode_stanza_id(Sid, __TopXMLNS) | _acc].

decode_replace_attr_version(__TopXMLNS, undefined) ->
    undefined;
decode_replace_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"replace">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_replace_attr_version(undefined, _acc) -> _acc;
encode_replace_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_replace_attr_conversation(__TopXMLNS,
                                 undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"conversation">>,
                   <<"replace">>,
                   __TopXMLNS}});
decode_replace_attr_conversation(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"replace">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_replace_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_replacement_message(__TopXMLNS, __Opts,
                           {xmlel, <<"replacement">>, _attrs, _els}) ->
    Message = decode_replacement_message_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             error),
    {replacement_message, Message}.

decode_replacement_message_els(__TopXMLNS, __Opts, [],
                               Message) ->
    case Message of
        error ->
            erlang:error({xmpp_codec,
                          {missing_tag, <<"message">>, __TopXMLNS}});
        {value, Message1} -> Message1
    end;
decode_replacement_message_els(__TopXMLNS, __Opts,
                               [{xmlel, <<"message">>, _attrs, _} = _el | _els],
                               Message) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:client">> ->
            decode_replacement_message_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           {value,
                                            rfc6120:decode_message(<<"jabber:client">>,
                                                                   __Opts,
                                                                   _el)});
        <<"jabber:server">> ->
            decode_replacement_message_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           {value,
                                            rfc6120:decode_message(<<"jabber:server">>,
                                                                   __Opts,
                                                                   _el)});
        <<"jabber:component:accept">> ->
            decode_replacement_message_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           {value,
                                            rfc6120:decode_message(<<"jabber:component:accept">>,
                                                                   __Opts,
                                                                   _el)});
        _ ->
            decode_replacement_message_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           Message)
    end;
decode_replacement_message_els(__TopXMLNS, __Opts,
                               [_ | _els], Message) ->
    decode_replacement_message_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   Message).

encode_replacement_message({replacement_message,
                            Message},
                           __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_replacement_message_$message'(Message,
                                                            __NewTopXMLNS,
                                                            [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"replacement">>, _attrs, _els}.

'encode_replacement_message_$message'(Message,
                                      __TopXMLNS, _acc) ->
    [rfc6120:encode_message(Message, __TopXMLNS) | _acc].

decode_retract_archive(__TopXMLNS, __Opts,
                       {xmlel, <<"retract-archive">>, _attrs, _els}) ->
    Version = decode_retract_archive_attrs(__TopXMLNS,
                                           _attrs,
                                           undefined),
    {retract_archive, Version}.

decode_retract_archive_attrs(__TopXMLNS,
                             [{<<"version">>, _val} | _attrs], _Version) ->
    decode_retract_archive_attrs(__TopXMLNS, _attrs, _val);
decode_retract_archive_attrs(__TopXMLNS, [_ | _attrs],
                             Version) ->
    decode_retract_archive_attrs(__TopXMLNS,
                                 _attrs,
                                 Version);
decode_retract_archive_attrs(__TopXMLNS, [], Version) ->
    decode_retract_archive_attr_version(__TopXMLNS,
                                        Version).

encode_retract_archive({retract_archive, Version},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_retract_archive_attr_version(Version,
                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                            __TopXMLNS)),
    {xmlel, <<"retract-archive">>, _attrs, _els}.

decode_retract_archive_attr_version(__TopXMLNS,
                                    undefined) ->
    undefined;
decode_retract_archive_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"retract-archive">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_archive_attr_version(undefined, _acc) ->
    _acc;
encode_retract_archive_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_retract_all(__TopXMLNS, __Opts,
                   {xmlel, <<"retract-all">>, _attrs, _els}) ->
    {Version, Conversation, Sender, Symmetric, Type} =
        decode_retract_all_attrs(__TopXMLNS,
                                 _attrs,
                                 undefined,
                                 undefined,
                                 undefined,
                                 undefined,
                                 undefined),
    {retract_all,
     Symmetric,
     Version,
     Conversation,
     Type,
     Sender}.

decode_retract_all_attrs(__TopXMLNS,
                         [{<<"version">>, _val} | _attrs], _Version,
                         Conversation, Sender, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             _val,
                             Conversation,
                             Sender,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"conversation">>, _val} | _attrs], Version,
                         _Conversation, Sender, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Version,
                             _val,
                             Sender,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"sender">>, _val} | _attrs], Version, Conversation,
                         _Sender, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Version,
                             Conversation,
                             _val,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"symmetric">>, _val} | _attrs], Version,
                         Conversation, Sender, _Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Version,
                             Conversation,
                             Sender,
                             _val,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"type">>, _val} | _attrs], Version, Conversation,
                         Sender, Symmetric, _Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Version,
                             Conversation,
                             Sender,
                             Symmetric,
                             _val);
decode_retract_all_attrs(__TopXMLNS, [_ | _attrs],
                         Version, Conversation, Sender, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Version,
                             Conversation,
                             Sender,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS, [], Version,
                         Conversation, Sender, Symmetric, Type) ->
    {decode_retract_all_attr_version(__TopXMLNS, Version),
     decode_retract_all_attr_conversation(__TopXMLNS,
                                          Conversation),
     decode_retract_all_attr_sender(__TopXMLNS, Sender),
     decode_retract_all_attr_symmetric(__TopXMLNS,
                                       Symmetric),
     decode_retract_all_attr_type(__TopXMLNS, Type)}.

encode_retract_all({retract_all,
                    Symmetric,
                    Version,
                    Conversation,
                    Type,
                    Sender},
                   __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_retract_all_attr_type(Type,
                                          encode_retract_all_attr_symmetric(Symmetric,
                                                                            encode_retract_all_attr_sender(Sender,
                                                                                                           encode_retract_all_attr_conversation(Conversation,
                                                                                                                                                encode_retract_all_attr_version(Version,
                                                                                                                                                                                xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                           __TopXMLNS)))))),
    {xmlel, <<"retract-all">>, _attrs, _els}.

decode_retract_all_attr_version(__TopXMLNS,
                                undefined) ->
    undefined;
decode_retract_all_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"retract-all">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_all_attr_version(undefined, _acc) ->
    _acc;
encode_retract_all_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_retract_all_attr_conversation(__TopXMLNS,
                                     undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"conversation">>,
                   <<"retract-all">>,
                   __TopXMLNS}});
decode_retract_all_attr_conversation(__TopXMLNS,
                                     _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"retract-all">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_all_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_retract_all_attr_sender(__TopXMLNS, undefined) ->
    <<>>;
decode_retract_all_attr_sender(__TopXMLNS, _val) ->
    _val.

encode_retract_all_attr_sender(<<>>, _acc) -> _acc;
encode_retract_all_attr_sender(_val, _acc) ->
    [{<<"sender">>, _val} | _acc].

decode_retract_all_attr_symmetric(__TopXMLNS,
                                  undefined) ->
    undefined;
decode_retract_all_attr_symmetric(__TopXMLNS, _val) ->
    case catch dec_bool(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"symmetric">>,
                           <<"retract-all">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_all_attr_symmetric(undefined, _acc) ->
    _acc;
encode_retract_all_attr_symmetric(_val, _acc) ->
    [{<<"symmetric">>, enc_bool(_val)} | _acc].

decode_retract_all_attr_type(__TopXMLNS, undefined) ->
    <<>>;
decode_retract_all_attr_type(__TopXMLNS, _val) -> _val.

encode_retract_all_attr_type(<<>>, _acc) -> _acc;
encode_retract_all_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_retract_message(__TopXMLNS, __Opts,
                       {xmlel, <<"retract-message">>, _attrs, _els}) ->
    {Oid, Sid} = decode_retract_message_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            undefined,
                                            error),
    {Version, Conversation, Symmetric} =
        decode_retract_message_attrs(__TopXMLNS,
                                     _attrs,
                                     undefined,
                                     undefined,
                                     undefined),
    {retract_message,
     Sid,
     Oid,
     Symmetric,
     Version,
     Conversation}.

decode_retract_message_els(__TopXMLNS, __Opts, [], Oid,
                           Sid) ->
    {Oid,
     case Sid of
         error ->
             erlang:error({xmpp_codec,
                           {missing_tag, <<"stanza-id">>, __TopXMLNS}});
         {value, Sid1} -> Sid1
     end};
decode_retract_message_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"stanza-id">>, _attrs, _} = _el | _els],
                           Oid, Sid) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:sid:0">> ->
            decode_retract_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Oid,
                                       {value,
                                        xep0359:decode_stanza_id(<<"urn:xmpp:sid:0">>,
                                                                 __Opts,
                                                                 _el)});
        _ ->
            decode_retract_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Oid,
                                       Sid)
    end;
decode_retract_message_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"origin-id">>, _attrs, _} = _el | _els],
                           Oid, Sid) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:sid:0">> ->
            decode_retract_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       xep0359:decode_origin_id(<<"urn:xmpp:sid:0">>,
                                                                __Opts,
                                                                _el),
                                       Sid);
        _ ->
            decode_retract_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Oid,
                                       Sid)
    end;
decode_retract_message_els(__TopXMLNS, __Opts,
                           [_ | _els], Oid, Sid) ->
    decode_retract_message_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Oid,
                               Sid).

decode_retract_message_attrs(__TopXMLNS,
                             [{<<"version">>, _val} | _attrs], _Version,
                             Conversation, Symmetric) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 _val,
                                 Conversation,
                                 Symmetric);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"conversation">>, _val} | _attrs], Version,
                             _Conversation, Symmetric) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Version,
                                 _val,
                                 Symmetric);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"symmetric">>, _val} | _attrs], Version,
                             Conversation, _Symmetric) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Version,
                                 Conversation,
                                 _val);
decode_retract_message_attrs(__TopXMLNS, [_ | _attrs],
                             Version, Conversation, Symmetric) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Version,
                                 Conversation,
                                 Symmetric);
decode_retract_message_attrs(__TopXMLNS, [], Version,
                             Conversation, Symmetric) ->
    {decode_retract_message_attr_version(__TopXMLNS,
                                         Version),
     decode_retract_message_attr_conversation(__TopXMLNS,
                                              Conversation),
     decode_retract_message_attr_symmetric(__TopXMLNS,
                                           Symmetric)}.

encode_retract_message({retract_message,
                        Sid,
                        Oid,
                        Symmetric,
                        Version,
                        Conversation},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = lists:reverse('encode_retract_message_$oid'(Oid,
                                                       __NewTopXMLNS,
                                                       'encode_retract_message_$sid'(Sid,
                                                                                     __NewTopXMLNS,
                                                                                     []))),
    _attrs =
        encode_retract_message_attr_symmetric(Symmetric,
                                              encode_retract_message_attr_conversation(Conversation,
                                                                                       encode_retract_message_attr_version(Version,
                                                                                                                           xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                      __TopXMLNS)))),
    {xmlel, <<"retract-message">>, _attrs, _els}.

'encode_retract_message_$oid'(undefined, __TopXMLNS,
                              _acc) ->
    _acc;
'encode_retract_message_$oid'(Oid, __TopXMLNS, _acc) ->
    [xep0359:encode_origin_id(Oid, __TopXMLNS) | _acc].

'encode_retract_message_$sid'(Sid, __TopXMLNS, _acc) ->
    [xep0359:encode_stanza_id(Sid, __TopXMLNS) | _acc].

decode_retract_message_attr_version(__TopXMLNS,
                                    undefined) ->
    undefined;
decode_retract_message_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"retract-message">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_message_attr_version(undefined, _acc) ->
    _acc;
encode_retract_message_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_retract_message_attr_conversation(__TopXMLNS,
                                         undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"conversation">>,
                   <<"retract-message">>,
                   __TopXMLNS}});
decode_retract_message_attr_conversation(__TopXMLNS,
                                         _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"retract-message">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_message_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_retract_message_attr_symmetric(__TopXMLNS,
                                      undefined) ->
    undefined;
decode_retract_message_attr_symmetric(__TopXMLNS,
                                      _val) ->
    case catch dec_bool(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"symmetric">>,
                           <<"retract-message">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_message_attr_symmetric(undefined,
                                      _acc) ->
    _acc;
encode_retract_message_attr_symmetric(_val, _acc) ->
    [{<<"symmetric">>, enc_bool(_val)} | _acc].
