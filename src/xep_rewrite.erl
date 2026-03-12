%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_rewrite).

-compile(export_all).

do_decode(<<"invalidate">>,
          <<"https://xabber.com/protocol/rewrite#notify">>, El,
          Opts) ->
    decode_retract_invalidate(<<"https://xabber.com/protocol/rewrite#notify">>,
                              Opts,
                              El);
do_decode(<<"query">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_retract_query(<<"https://xabber.com/protocol/rewrite">>,
                         Opts,
                         El);
do_decode(<<"replaced">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replaced(<<"https://xabber.com/protocol/rewrite">>,
                    Opts,
                    El);
do_decode(<<"body">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replace_message_body(<<"https://xabber.com/protocol/rewrite">>,
                                Opts,
                                El);
do_decode(<<"body">>,
          <<"https://xabber.com/protocol/rewrite#notify">>, El,
          Opts) ->
    decode_replace_message_body(<<"https://xabber.com/protocol/rewrite#notify">>,
                                Opts,
                                El);
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
do_decode(<<"replace">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_replace(<<"https://xabber.com/protocol/rewrite">>,
                   Opts,
                   El);
do_decode(<<"replace">>,
          <<"https://xabber.com/protocol/rewrite#notify">>, El,
          Opts) ->
    decode_replace(<<"https://xabber.com/protocol/rewrite#notify">>,
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
do_decode(<<"retract-all">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_retract_all(<<"https://xabber.com/protocol/rewrite">>,
                       Opts,
                       El);
do_decode(<<"retract-all">>,
          <<"https://xabber.com/protocol/rewrite#notify">>, El,
          Opts) ->
    decode_retract_all(<<"https://xabber.com/protocol/rewrite#notify">>,
                       Opts,
                       El);
do_decode(<<"retract-message">>,
          <<"https://xabber.com/protocol/rewrite">>, El, Opts) ->
    decode_retract_message(<<"https://xabber.com/protocol/rewrite">>,
                           Opts,
                           El);
do_decode(<<"retract-message">>,
          <<"https://xabber.com/protocol/rewrite#notify">>, El,
          Opts) ->
    decode_retract_message(<<"https://xabber.com/protocol/rewrite#notify">>,
                           Opts,
                           El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"invalidate">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"replaced">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"body">>, <<"https://xabber.com/protocol/rewrite">>},
     {<<"body">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"message">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"message">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"replace">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"replace">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"retract-user">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"retract-user">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"retract-all">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"retract-all">>,
      <<"https://xabber.com/protocol/rewrite#notify">>},
     {<<"retract-message">>,
      <<"https://xabber.com/protocol/rewrite">>},
     {<<"retract-message">>,
      <<"https://xabber.com/protocol/rewrite#notify">>}].

do_encode({retract_message, _, _, _, _, _, _, _} =
              Retract_message,
          TopXMLNS) ->
    encode_retract_message(Retract_message, TopXMLNS);
do_encode({retract_all, _, _, _, _, _} = Retract_all,
          TopXMLNS) ->
    encode_retract_all(Retract_all, TopXMLNS);
do_encode({retract_user, _, _, _, _, _, _, _} =
              Retract_user,
          TopXMLNS) ->
    encode_retract_user(Retract_user, TopXMLNS);
do_encode({replace, _, _, _, _, _, _, _, _} = Replace,
          TopXMLNS) ->
    encode_replace(Replace, TopXMLNS);
do_encode({replace_message, _, _, _, _, _, _} = Message,
          TopXMLNS) ->
    encode_replace_message(Message, TopXMLNS);
do_encode({replaced, _, _} = Replaced, TopXMLNS) ->
    encode_replaced(Replaced, TopXMLNS);
do_encode({retract_query, _, _, _} = Query, TopXMLNS) ->
    encode_retract_query(Query, TopXMLNS);
do_encode({retract_invalidate, _, _, _} = Invalidate,
          TopXMLNS) ->
    encode_retract_invalidate(Invalidate, TopXMLNS).

do_get_name({replace, _, _, _, _, _, _, _, _}) ->
    <<"replace">>;
do_get_name({replace_message, _, _, _, _, _, _}) ->
    <<"message">>;
do_get_name({replaced, _, _}) -> <<"replaced">>;
do_get_name({retract_all, _, _, _, _, _}) ->
    <<"retract-all">>;
do_get_name({retract_invalidate, _, _, _}) ->
    <<"invalidate">>;
do_get_name({retract_message, _, _, _, _, _, _, _}) ->
    <<"retract-message">>;
do_get_name({retract_query, _, _, _}) -> <<"query">>;
do_get_name({retract_user, _, _, _, _, _, _, _}) ->
    <<"retract-user">>.

do_get_ns({replace, Xmlns, _, _, _, _, _, _, _}) ->
    Xmlns;
do_get_ns({replace_message, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({replaced, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({retract_all, Xmlns, _, _, _, _}) -> Xmlns;
do_get_ns({retract_invalidate, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite#notify">>;
do_get_ns({retract_message, Xmlns, _, _, _, _, _, _}) ->
    Xmlns;
do_get_ns({retract_query, _, _, _}) ->
    <<"https://xabber.com/protocol/rewrite">>;
do_get_ns({retract_user, Xmlns, _, _, _, _, _, _}) ->
    Xmlns.

get_els({replace,
         _xmlns,
         _id,
         _by,
         _version,
         _conversation,
         _type,
         _replace_message,
         _sub_els}) ->
    _sub_els;
get_els({replace_message,
         _from,
         _to,
         _body,
         _stanza_id,
         _replaced,
         _sub_els}) ->
    _sub_els.

set_els({replace,
         _xmlns,
         _id,
         _by,
         _version,
         _conversation,
         _type,
         _replace_message,
         _},
        _sub_els) ->
    {replace,
     _xmlns,
     _id,
     _by,
     _version,
     _conversation,
     _type,
     _replace_message,
     _sub_els};
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

pp(retract_message, 7) ->
    [xmlns, id, by, symmetric, version, conversation, type];
pp(retract_all, 5) ->
    [xmlns, symmetric, version, conversation, type];
pp(retract_user, 7) ->
    [xmlns, id, by, symmetric, version, conversation, type];
pp(replace, 8) ->
    [xmlns,
     id,
     by,
     version,
     conversation,
     type,
     replace_message,
     sub_els];
pp(replace_message, 6) ->
    [from, to, body, stanza_id, replaced, sub_els];
pp(replaced, 2) -> [stamp, body];
pp(retract_query, 3) -> [version, 'less-than', type];
pp(retract_invalidate, 3) ->
    [version, conversation, type];
pp(_, _) -> no.

records() ->
    [{retract_message, 7},
     {retract_all, 5},
     {retract_user, 7},
     {replace, 8},
     {replace_message, 6},
     {replaced, 2},
     {retract_query, 3},
     {retract_invalidate, 3}].

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

decode_retract_invalidate(__TopXMLNS, __Opts,
                          {xmlel, <<"invalidate">>, _attrs, _els}) ->
    {Version, Conversation, Type} =
        decode_retract_invalidate_attrs(__TopXMLNS,
                                        _attrs,
                                        undefined,
                                        undefined,
                                        undefined),
    {retract_invalidate, Version, Conversation, Type}.

decode_retract_invalidate_attrs(__TopXMLNS,
                                [{<<"version">>, _val} | _attrs], _Version,
                                Conversation, Type) ->
    decode_retract_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    _val,
                                    Conversation,
                                    Type);
decode_retract_invalidate_attrs(__TopXMLNS,
                                [{<<"conversation">>, _val} | _attrs], Version,
                                _Conversation, Type) ->
    decode_retract_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    Version,
                                    _val,
                                    Type);
decode_retract_invalidate_attrs(__TopXMLNS,
                                [{<<"type">>, _val} | _attrs], Version,
                                Conversation, _Type) ->
    decode_retract_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    Version,
                                    Conversation,
                                    _val);
decode_retract_invalidate_attrs(__TopXMLNS,
                                [_ | _attrs], Version, Conversation, Type) ->
    decode_retract_invalidate_attrs(__TopXMLNS,
                                    _attrs,
                                    Version,
                                    Conversation,
                                    Type);
decode_retract_invalidate_attrs(__TopXMLNS, [], Version,
                                Conversation, Type) ->
    {decode_retract_invalidate_attr_version(__TopXMLNS,
                                            Version),
     decode_retract_invalidate_attr_conversation(__TopXMLNS,
                                                 Conversation),
     decode_retract_invalidate_attr_type(__TopXMLNS, Type)}.

encode_retract_invalidate({retract_invalidate,
                           Version,
                           Conversation,
                           Type},
                          __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite#notify">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_retract_invalidate_attr_type(Type,
                                                 encode_retract_invalidate_attr_conversation(Conversation,
                                                                                             encode_retract_invalidate_attr_version(Version,
                                                                                                                                    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                               __TopXMLNS)))),
    {xmlel, <<"invalidate">>, _attrs, _els}.

decode_retract_invalidate_attr_version(__TopXMLNS,
                                       undefined) ->
    undefined;
decode_retract_invalidate_attr_version(__TopXMLNS,
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

encode_retract_invalidate_attr_version(undefined,
                                       _acc) ->
    _acc;
encode_retract_invalidate_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_retract_invalidate_attr_conversation(__TopXMLNS,
                                            undefined) ->
    undefined;
decode_retract_invalidate_attr_conversation(__TopXMLNS,
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

encode_retract_invalidate_attr_conversation(undefined,
                                            _acc) ->
    _acc;
encode_retract_invalidate_attr_conversation(_val,
                                            _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_retract_invalidate_attr_type(__TopXMLNS,
                                    undefined) ->
    <<>>;
decode_retract_invalidate_attr_type(__TopXMLNS, _val) ->
    _val.

encode_retract_invalidate_attr_type(<<>>, _acc) -> _acc;
encode_retract_invalidate_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_retract_query(__TopXMLNS, __Opts,
                     {xmlel, <<"query">>, _attrs, _els}) ->
    {Type, Version, Less_than} =
        decode_retract_query_attrs(__TopXMLNS,
                                   _attrs,
                                   undefined,
                                   undefined,
                                   undefined),
    {retract_query, Version, Less_than, Type}.

decode_retract_query_attrs(__TopXMLNS,
                           [{<<"type">>, _val} | _attrs], _Type, Version,
                           Less_than) ->
    decode_retract_query_attrs(__TopXMLNS,
                               _attrs,
                               _val,
                               Version,
                               Less_than);
decode_retract_query_attrs(__TopXMLNS,
                           [{<<"version">>, _val} | _attrs], Type, _Version,
                           Less_than) ->
    decode_retract_query_attrs(__TopXMLNS,
                               _attrs,
                               Type,
                               _val,
                               Less_than);
decode_retract_query_attrs(__TopXMLNS,
                           [{<<"less-than">>, _val} | _attrs], Type, Version,
                           _Less_than) ->
    decode_retract_query_attrs(__TopXMLNS,
                               _attrs,
                               Type,
                               Version,
                               _val);
decode_retract_query_attrs(__TopXMLNS, [_ | _attrs],
                           Type, Version, Less_than) ->
    decode_retract_query_attrs(__TopXMLNS,
                               _attrs,
                               Type,
                               Version,
                               Less_than);
decode_retract_query_attrs(__TopXMLNS, [], Type,
                           Version, Less_than) ->
    {decode_retract_query_attr_type(__TopXMLNS, Type),
     decode_retract_query_attr_version(__TopXMLNS, Version),
     'decode_retract_query_attr_less-than'(__TopXMLNS,
                                           Less_than)}.

encode_retract_query({retract_query,
                      Version,
                      Less_than,
                      Type},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        'encode_retract_query_attr_less-than'(Less_than,
                                              encode_retract_query_attr_version(Version,
                                                                                encode_retract_query_attr_type(Type,
                                                                                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                          __TopXMLNS)))),
    {xmlel, <<"query">>, _attrs, _els}.

decode_retract_query_attr_type(__TopXMLNS, undefined) ->
    <<>>;
decode_retract_query_attr_type(__TopXMLNS, _val) ->
    _val.

encode_retract_query_attr_type(<<>>, _acc) -> _acc;
encode_retract_query_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_retract_query_attr_version(__TopXMLNS,
                                  undefined) ->
    undefined;
decode_retract_query_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"query">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_query_attr_version(undefined, _acc) ->
    _acc;
encode_retract_query_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

'decode_retract_query_attr_less-than'(__TopXMLNS,
                                      undefined) ->
    undefined;
'decode_retract_query_attr_less-than'(__TopXMLNS,
                                      _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"less-than">>,
                           <<"query">>,
                           __TopXMLNS}});
        _res -> _res
    end.

'encode_retract_query_attr_less-than'(undefined,
                                      _acc) ->
    _acc;
'encode_retract_query_attr_less-than'(_val, _acc) ->
    [{<<"less-than">>, enc_int(_val)} | _acc].

decode_replaced(__TopXMLNS, __Opts,
                {xmlel, <<"replaced">>, _attrs, _els}) ->
    {Stamp, Body} = decode_replaced_attrs(__TopXMLNS,
                                          _attrs,
                                          undefined,
                                          undefined),
    {replaced, Stamp, Body}.

decode_replaced_attrs(__TopXMLNS,
                      [{<<"stamp">>, _val} | _attrs], _Stamp, Body) ->
    decode_replaced_attrs(__TopXMLNS, _attrs, _val, Body);
decode_replaced_attrs(__TopXMLNS,
                      [{<<"body">>, _val} | _attrs], Stamp, _Body) ->
    decode_replaced_attrs(__TopXMLNS, _attrs, Stamp, _val);
decode_replaced_attrs(__TopXMLNS, [_ | _attrs], Stamp,
                      Body) ->
    decode_replaced_attrs(__TopXMLNS, _attrs, Stamp, Body);
decode_replaced_attrs(__TopXMLNS, [], Stamp, Body) ->
    {decode_replaced_attr_stamp(__TopXMLNS, Stamp),
     decode_replaced_attr_body(__TopXMLNS, Body)}.

encode_replaced({replaced, Stamp, Body}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/rewrite">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_replaced_attr_body(Body,
                                       encode_replaced_attr_stamp(Stamp,
                                                                  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                             __TopXMLNS))),
    {xmlel, <<"replaced">>, _attrs, _els}.

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

decode_replaced_attr_body(__TopXMLNS, undefined) ->
    <<>>;
decode_replaced_attr_body(__TopXMLNS, _val) -> _val.

encode_replaced_attr_body(<<>>, _acc) -> _acc;
encode_replaced_attr_body(_val, _acc) ->
    [{<<"body">>, _val} | _acc].

decode_replace_message_body(__TopXMLNS, __Opts,
                            {xmlel, <<"body">>, _attrs, _els}) ->
    Cdata = decode_replace_message_body_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            <<>>),
    Cdata.

decode_replace_message_body_els(__TopXMLNS, __Opts, [],
                                Cdata) ->
    decode_replace_message_body_cdata(__TopXMLNS, Cdata);
decode_replace_message_body_els(__TopXMLNS, __Opts,
                                [{xmlcdata, _data} | _els], Cdata) ->
    decode_replace_message_body_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    <<Cdata/binary, _data/binary>>);
decode_replace_message_body_els(__TopXMLNS, __Opts,
                                [_ | _els], Cdata) ->
    decode_replace_message_body_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Cdata).

encode_replace_message_body(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
                                                [<<"https://xabber.com/protocol/rewrite">>,
                                                 <<"https://xabber.com/protocol/rewrite#notify">>],
                                                __TopXMLNS),
    _els = encode_replace_message_body_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"body">>, _attrs, _els}.

decode_replace_message_body_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_replace_message_body_cdata(__TopXMLNS, _val) ->
    _val.

encode_replace_message_body_cdata(<<>>, _acc) -> _acc;
encode_replace_message_body_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

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
                                       decode_replace_message_body(<<"https://xabber.com/protocol/rewrite">>,
                                                                   __Opts,
                                                                   _el),
                                       __Els);
        <<"https://xabber.com/protocol/rewrite#notify">> ->
            decode_replace_message_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replaced,
                                       Stanza_id,
                                       decode_replace_message_body(<<"https://xabber.com/protocol/rewrite#notify">>,
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
    [encode_replace_message_body(Body, __TopXMLNS) | _acc].

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

decode_replace(__TopXMLNS, __Opts,
               {xmlel, <<"replace">>, _attrs, _els}) ->
    {Replace_message, __Els} =
        decode_replace_els(__TopXMLNS,
                           __Opts,
                           _els,
                           undefined,
                           []),
    {Type, Xmlns, Id, Version, Conversation, By} =
        decode_replace_attrs(__TopXMLNS,
                             _attrs,
                             undefined,
                             undefined,
                             undefined,
                             undefined,
                             undefined,
                             undefined),
    {replace,
     Xmlns,
     Id,
     By,
     Version,
     Conversation,
     Type,
     Replace_message,
     __Els}.

decode_replace_els(__TopXMLNS, __Opts, [],
                   Replace_message, __Els) ->
    {Replace_message, lists:reverse(__Els)};
decode_replace_els(__TopXMLNS, __Opts,
                   [{xmlel, <<"message">>, _attrs, _} = _el | _els],
                   Replace_message, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/rewrite">> ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               decode_replace_message(<<"https://xabber.com/protocol/rewrite">>,
                                                      __Opts,
                                                      _el),
                               __Els);
        <<"https://xabber.com/protocol/rewrite#notify">> ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               decode_replace_message(<<"https://xabber.com/protocol/rewrite#notify">>,
                                                      __Opts,
                                                      _el),
                               __Els);
        _ ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replace_message,
                               [_el | __Els])
    end;
decode_replace_els(__TopXMLNS, __Opts,
                   [{xmlel, _name, _attrs, _} = _el | _els],
                   Replace_message, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_replace_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Replace_message,
                               [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_replace_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replace_message,
                                       [_el | __Els]);
                Mod ->
                    decode_replace_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Replace_message,
                                       [Mod:do_decode(_name,
                                                      __XMLNS,
                                                      _el,
                                                      __Opts)
                                        | __Els])
            end
    end;
decode_replace_els(__TopXMLNS, __Opts, [_ | _els],
                   Replace_message, __Els) ->
    decode_replace_els(__TopXMLNS,
                       __Opts,
                       _els,
                       Replace_message,
                       __Els).

decode_replace_attrs(__TopXMLNS,
                     [{<<"type">>, _val} | _attrs], _Type, Xmlns, Id,
                     Version, Conversation, By) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         _val,
                         Xmlns,
                         Id,
                         Version,
                         Conversation,
                         By);
decode_replace_attrs(__TopXMLNS,
                     [{<<"xmlns">>, _val} | _attrs], Type, _Xmlns, Id,
                     Version, Conversation, By) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         Type,
                         _val,
                         Id,
                         Version,
                         Conversation,
                         By);
decode_replace_attrs(__TopXMLNS,
                     [{<<"id">>, _val} | _attrs], Type, Xmlns, _Id, Version,
                     Conversation, By) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         Type,
                         Xmlns,
                         _val,
                         Version,
                         Conversation,
                         By);
decode_replace_attrs(__TopXMLNS,
                     [{<<"version">>, _val} | _attrs], Type, Xmlns, Id,
                     _Version, Conversation, By) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         Type,
                         Xmlns,
                         Id,
                         _val,
                         Conversation,
                         By);
decode_replace_attrs(__TopXMLNS,
                     [{<<"conversation">>, _val} | _attrs], Type, Xmlns, Id,
                     Version, _Conversation, By) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         Type,
                         Xmlns,
                         Id,
                         Version,
                         _val,
                         By);
decode_replace_attrs(__TopXMLNS,
                     [{<<"by">>, _val} | _attrs], Type, Xmlns, Id, Version,
                     Conversation, _By) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         Type,
                         Xmlns,
                         Id,
                         Version,
                         Conversation,
                         _val);
decode_replace_attrs(__TopXMLNS, [_ | _attrs], Type,
                     Xmlns, Id, Version, Conversation, By) ->
    decode_replace_attrs(__TopXMLNS,
                         _attrs,
                         Type,
                         Xmlns,
                         Id,
                         Version,
                         Conversation,
                         By);
decode_replace_attrs(__TopXMLNS, [], Type, Xmlns, Id,
                     Version, Conversation, By) ->
    {decode_replace_attr_type(__TopXMLNS, Type),
     decode_replace_attr_xmlns(__TopXMLNS, Xmlns),
     decode_replace_attr_id(__TopXMLNS, Id),
     decode_replace_attr_version(__TopXMLNS, Version),
     decode_replace_attr_conversation(__TopXMLNS,
                                      Conversation),
     decode_replace_attr_by(__TopXMLNS, By)}.

encode_replace({replace,
                Xmlns,
                Id,
                By,
                Version,
                Conversation,
                Type,
                Replace_message,
                __Els},
               __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
                                                [<<"https://xabber.com/protocol/rewrite">>,
                                                 <<"https://xabber.com/protocol/rewrite#notify">>],
                                                __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse('encode_replace_$replace_message'(Replace_message,
                                                               __NewTopXMLNS,
                                                               [])),
    _attrs = encode_replace_attr_by(By,
                                    encode_replace_attr_conversation(Conversation,
                                                                     encode_replace_attr_version(Version,
                                                                                                 encode_replace_attr_id(Id,
                                                                                                                        encode_replace_attr_type(Type,
                                                                                                                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                            __TopXMLNS)))))),
    {xmlel, <<"replace">>, _attrs, _els}.

'encode_replace_$replace_message'(undefined, __TopXMLNS,
                                  _acc) ->
    _acc;
'encode_replace_$replace_message'(Replace_message,
                                  __TopXMLNS, _acc) ->
    [encode_replace_message(Replace_message, __TopXMLNS)
     | _acc].

decode_replace_attr_type(__TopXMLNS, undefined) -> <<>>;
decode_replace_attr_type(__TopXMLNS, _val) -> _val.

encode_replace_attr_type(<<>>, _acc) -> _acc;
encode_replace_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_replace_attr_xmlns(__TopXMLNS, undefined) ->
    <<>>;
decode_replace_attr_xmlns(__TopXMLNS, _val) -> _val.

decode_replace_attr_id(__TopXMLNS, undefined) ->
    undefined;
decode_replace_attr_id(__TopXMLNS, _val) -> _val.

encode_replace_attr_id(undefined, _acc) -> _acc;
encode_replace_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

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
    undefined;
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

encode_replace_attr_conversation(undefined, _acc) ->
    _acc;
encode_replace_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_replace_attr_by(__TopXMLNS, undefined) ->
    undefined;
decode_replace_attr_by(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"by">>,
                           <<"replace">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_replace_attr_by(undefined, _acc) -> _acc;
encode_replace_attr_by(_val, _acc) ->
    [{<<"by">>, jid:encode(_val)} | _acc].

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

decode_retract_all(__TopXMLNS, __Opts,
                   {xmlel, <<"retract-all">>, _attrs, _els}) ->
    {Xmlns, Version, Conversation, Symmetric, Type} =
        decode_retract_all_attrs(__TopXMLNS,
                                 _attrs,
                                 undefined,
                                 undefined,
                                 undefined,
                                 undefined,
                                 undefined),
    {retract_all,
     Xmlns,
     Symmetric,
     Version,
     Conversation,
     Type}.

decode_retract_all_attrs(__TopXMLNS,
                         [{<<"xmlns">>, _val} | _attrs], _Xmlns, Version,
                         Conversation, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             _val,
                             Version,
                             Conversation,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"version">>, _val} | _attrs], Xmlns, _Version,
                         Conversation, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Xmlns,
                             _val,
                             Conversation,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"conversation">>, _val} | _attrs], Xmlns, Version,
                         _Conversation, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Xmlns,
                             Version,
                             _val,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"symmetric">>, _val} | _attrs], Xmlns, Version,
                         Conversation, _Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Xmlns,
                             Version,
                             Conversation,
                             _val,
                             Type);
decode_retract_all_attrs(__TopXMLNS,
                         [{<<"type">>, _val} | _attrs], Xmlns, Version,
                         Conversation, Symmetric, _Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Xmlns,
                             Version,
                             Conversation,
                             Symmetric,
                             _val);
decode_retract_all_attrs(__TopXMLNS, [_ | _attrs],
                         Xmlns, Version, Conversation, Symmetric, Type) ->
    decode_retract_all_attrs(__TopXMLNS,
                             _attrs,
                             Xmlns,
                             Version,
                             Conversation,
                             Symmetric,
                             Type);
decode_retract_all_attrs(__TopXMLNS, [], Xmlns, Version,
                         Conversation, Symmetric, Type) ->
    {decode_retract_all_attr_xmlns(__TopXMLNS, Xmlns),
     decode_retract_all_attr_version(__TopXMLNS, Version),
     decode_retract_all_attr_conversation(__TopXMLNS,
                                          Conversation),
     decode_retract_all_attr_symmetric(__TopXMLNS,
                                       Symmetric),
     decode_retract_all_attr_type(__TopXMLNS, Type)}.

encode_retract_all({retract_all,
                    Xmlns,
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
    _attrs = encode_retract_all_attr_type(Type,
                                          encode_retract_all_attr_symmetric(Symmetric,
                                                                            encode_retract_all_attr_conversation(Conversation,
                                                                                                                 encode_retract_all_attr_version(Version,
                                                                                                                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                            __TopXMLNS))))),
    {xmlel, <<"retract-all">>, _attrs, _els}.

decode_retract_all_attr_xmlns(__TopXMLNS, undefined) ->
    <<>>;
decode_retract_all_attr_xmlns(__TopXMLNS, _val) -> _val.

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
    undefined;
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

encode_retract_all_attr_conversation(undefined, _acc) ->
    _acc;
encode_retract_all_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

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
    {Type,
     Xmlns,
     Id,
     Version,
     Conversation,
     Symmetric,
     By} =
        decode_retract_message_attrs(__TopXMLNS,
                                     _attrs,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined),
    {retract_message,
     Xmlns,
     Id,
     By,
     Symmetric,
     Version,
     Conversation,
     Type}.

decode_retract_message_attrs(__TopXMLNS,
                             [{<<"type">>, _val} | _attrs], _Type, Xmlns, Id,
                             Version, Conversation, Symmetric, By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 _val,
                                 Xmlns,
                                 Id,
                                 Version,
                                 Conversation,
                                 Symmetric,
                                 By);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"xmlns">>, _val} | _attrs], Type, _Xmlns, Id,
                             Version, Conversation, Symmetric, By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 _val,
                                 Id,
                                 Version,
                                 Conversation,
                                 Symmetric,
                                 By);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"id">>, _val} | _attrs], Type, Xmlns, _Id,
                             Version, Conversation, Symmetric, By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 Xmlns,
                                 _val,
                                 Version,
                                 Conversation,
                                 Symmetric,
                                 By);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"version">>, _val} | _attrs], Type, Xmlns, Id,
                             _Version, Conversation, Symmetric, By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 Xmlns,
                                 Id,
                                 _val,
                                 Conversation,
                                 Symmetric,
                                 By);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"conversation">>, _val} | _attrs], Type, Xmlns,
                             Id, Version, _Conversation, Symmetric, By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 Xmlns,
                                 Id,
                                 Version,
                                 _val,
                                 Symmetric,
                                 By);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"symmetric">>, _val} | _attrs], Type, Xmlns,
                             Id, Version, Conversation, _Symmetric, By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 Xmlns,
                                 Id,
                                 Version,
                                 Conversation,
                                 _val,
                                 By);
decode_retract_message_attrs(__TopXMLNS,
                             [{<<"by">>, _val} | _attrs], Type, Xmlns, Id,
                             Version, Conversation, Symmetric, _By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 Xmlns,
                                 Id,
                                 Version,
                                 Conversation,
                                 Symmetric,
                                 _val);
decode_retract_message_attrs(__TopXMLNS, [_ | _attrs],
                             Type, Xmlns, Id, Version, Conversation, Symmetric,
                             By) ->
    decode_retract_message_attrs(__TopXMLNS,
                                 _attrs,
                                 Type,
                                 Xmlns,
                                 Id,
                                 Version,
                                 Conversation,
                                 Symmetric,
                                 By);
decode_retract_message_attrs(__TopXMLNS, [], Type,
                             Xmlns, Id, Version, Conversation, Symmetric, By) ->
    {decode_retract_message_attr_type(__TopXMLNS, Type),
     decode_retract_message_attr_xmlns(__TopXMLNS, Xmlns),
     decode_retract_message_attr_id(__TopXMLNS, Id),
     decode_retract_message_attr_version(__TopXMLNS,
                                         Version),
     decode_retract_message_attr_conversation(__TopXMLNS,
                                              Conversation),
     decode_retract_message_attr_symmetric(__TopXMLNS,
                                           Symmetric),
     decode_retract_message_attr_by(__TopXMLNS, By)}.

encode_retract_message({retract_message,
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
    _attrs = encode_retract_message_attr_by(By,
                                            encode_retract_message_attr_symmetric(Symmetric,
                                                                                  encode_retract_message_attr_conversation(Conversation,
                                                                                                                           encode_retract_message_attr_version(Version,
                                                                                                                                                               encode_retract_message_attr_id(Id,
                                                                                                                                                                                              encode_retract_message_attr_type(Type,
                                                                                                                                                                                                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                          __TopXMLNS))))))),
    {xmlel, <<"retract-message">>, _attrs, _els}.

decode_retract_message_attr_type(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_retract_message_attr_type(__TopXMLNS, _val) ->
    _val.

encode_retract_message_attr_type(<<>>, _acc) -> _acc;
encode_retract_message_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_retract_message_attr_xmlns(__TopXMLNS,
                                  undefined) ->
    <<>>;
decode_retract_message_attr_xmlns(__TopXMLNS, _val) ->
    _val.

decode_retract_message_attr_id(__TopXMLNS, undefined) ->
    undefined;
decode_retract_message_attr_id(__TopXMLNS, _val) ->
    _val.

encode_retract_message_attr_id(undefined, _acc) -> _acc;
encode_retract_message_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

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
    undefined;
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

encode_retract_message_attr_conversation(undefined,
                                         _acc) ->
    _acc;
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

decode_retract_message_attr_by(__TopXMLNS, undefined) ->
    undefined;
decode_retract_message_attr_by(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"by">>,
                           <<"retract-message">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_retract_message_attr_by(undefined, _acc) -> _acc;
encode_retract_message_attr_by(_val, _acc) ->
    [{<<"by">>, jid:encode(_val)} | _acc].
