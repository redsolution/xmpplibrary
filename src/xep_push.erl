%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_push).

-compile(export_all).

do_decode(<<"encrypted">>,
          <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_xpush_encrypted(<<"https://xabber.com/protocol/push">>,
                           Opts,
                           El);
do_decode(<<"key">>,
          <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_xpush_encryption_key(<<"https://xabber.com/protocol/push">>,
                                Opts,
                                El);
do_decode(<<"encryption">>,
          <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_xpush_encryption(<<"https://xabber.com/protocol/push">>,
                            Opts,
                            El);
do_decode(<<"notification">>,
          <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_xpush_notification(<<"https://xabber.com/protocol/push">>,
                              Opts,
                              El);
do_decode(<<"disable">>,
          <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_xpush_disable(<<"https://xabber.com/protocol/push">>,
                         Opts,
                         El);
do_decode(<<"enable">>,
          <<"https://xabber.com/protocol/push">>, El, Opts) ->
    decode_xpush_enable(<<"https://xabber.com/protocol/push">>,
                        Opts,
                        El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"encrypted">>,
      <<"https://xabber.com/protocol/push">>},
     {<<"key">>, <<"https://xabber.com/protocol/push">>},
     {<<"encryption">>,
      <<"https://xabber.com/protocol/push">>},
     {<<"notification">>,
      <<"https://xabber.com/protocol/push">>},
     {<<"disable">>, <<"https://xabber.com/protocol/push">>},
     {<<"enable">>, <<"https://xabber.com/protocol/push">>}].

do_encode({xpush_enable, _, _, _, _, _} = Enable,
          TopXMLNS) ->
    encode_xpush_enable(Enable, TopXMLNS);
do_encode({xpush_disable} = Disable, TopXMLNS) ->
    encode_xpush_disable(Disable, TopXMLNS);
do_encode({xpush_notification, _, _} = Notification,
          TopXMLNS) ->
    encode_xpush_notification(Notification, TopXMLNS);
do_encode({xpush_encryption, _, _} = Encryption,
          TopXMLNS) ->
    encode_xpush_encryption(Encryption, TopXMLNS);
do_encode({xpush_encryption_key, _} = Key, TopXMLNS) ->
    encode_xpush_encryption_key(Key, TopXMLNS);
do_encode({xpush_encrypted, _, _} = Encrypted,
          TopXMLNS) ->
    encode_xpush_encrypted(Encrypted, TopXMLNS).

do_get_name({xpush_disable}) -> <<"disable">>;
do_get_name({xpush_enable, _, _, _, _, _}) ->
    <<"enable">>;
do_get_name({xpush_encrypted, _, _}) -> <<"encrypted">>;
do_get_name({xpush_encryption, _, _}) ->
    <<"encryption">>;
do_get_name({xpush_encryption_key, _}) -> <<"key">>;
do_get_name({xpush_notification, _, _}) ->
    <<"notification">>.

do_get_ns({xpush_disable}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({xpush_enable, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({xpush_encrypted, _, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({xpush_encryption, _, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({xpush_encryption_key, _}) ->
    <<"https://xabber.com/protocol/push">>;
do_get_ns({xpush_notification, _, _}) ->
    <<"https://xabber.com/protocol/push">>.

get_els({xpush_notification, _xdata, _sub_els}) ->
    _sub_els.

set_els({xpush_notification, _xdata, _}, _sub_els) ->
    {xpush_notification, _xdata, _sub_els}.

pp(xpush_enable, 5) ->
    [jid, node, mode, encryption, xdata];
pp(xpush_disable, 0) -> [];
pp(xpush_notification, 2) -> [xdata, sub_els];
pp(xpush_encryption, 2) -> [algorithm, key];
pp(xpush_encryption_key, 1) -> [data];
pp(xpush_encrypted, 2) -> ['iv-length', data];
pp(_, _) -> no.

records() ->
    [{xpush_enable, 5},
     {xpush_disable, 0},
     {xpush_notification, 2},
     {xpush_encryption, 2},
     {xpush_encryption_key, 1},
     {xpush_encrypted, 2}].

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

decode_xpush_encrypted(__TopXMLNS, __Opts,
                       {xmlel, <<"encrypted">>, _attrs, _els}) ->
    Data = decode_xpush_encrypted_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      <<>>),
    Iv_length = decode_xpush_encrypted_attrs(__TopXMLNS,
                                             _attrs,
                                             undefined),
    {xpush_encrypted, Iv_length, Data}.

decode_xpush_encrypted_els(__TopXMLNS, __Opts, [],
                           Data) ->
    decode_xpush_encrypted_cdata(__TopXMLNS, Data);
decode_xpush_encrypted_els(__TopXMLNS, __Opts,
                           [{xmlcdata, _data} | _els], Data) ->
    decode_xpush_encrypted_els(__TopXMLNS,
                               __Opts,
                               _els,
                               <<Data/binary, _data/binary>>);
decode_xpush_encrypted_els(__TopXMLNS, __Opts,
                           [_ | _els], Data) ->
    decode_xpush_encrypted_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Data).

decode_xpush_encrypted_attrs(__TopXMLNS,
                             [{<<"iv-length">>, _val} | _attrs], _Iv_length) ->
    decode_xpush_encrypted_attrs(__TopXMLNS, _attrs, _val);
decode_xpush_encrypted_attrs(__TopXMLNS, [_ | _attrs],
                             Iv_length) ->
    decode_xpush_encrypted_attrs(__TopXMLNS,
                                 _attrs,
                                 Iv_length);
decode_xpush_encrypted_attrs(__TopXMLNS, [],
                             Iv_length) ->
    'decode_xpush_encrypted_attr_iv-length'(__TopXMLNS,
                                            Iv_length).

encode_xpush_encrypted({xpush_encrypted,
                        Iv_length,
                        Data},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_xpush_encrypted_cdata(Data, []),
    _attrs =
        'encode_xpush_encrypted_attr_iv-length'(Iv_length,
                                                xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                           __TopXMLNS)),
    {xmlel, <<"encrypted">>, _attrs, _els}.

'decode_xpush_encrypted_attr_iv-length'(__TopXMLNS,
                                        undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"iv-length">>,
                   <<"encrypted">>,
                   __TopXMLNS}});
'decode_xpush_encrypted_attr_iv-length'(__TopXMLNS,
                                        _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"iv-length">>,
                           <<"encrypted">>,
                           __TopXMLNS}});
        _res -> _res
    end.

'encode_xpush_encrypted_attr_iv-length'(_val, _acc) ->
    [{<<"iv-length">>, enc_int(_val)} | _acc].

decode_xpush_encrypted_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
                  {missing_cdata, <<>>, <<"encrypted">>, __TopXMLNS}});
decode_xpush_encrypted_cdata(__TopXMLNS, _val) ->
    case catch base64:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_cdata_value,
                           <<>>,
                           <<"encrypted">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_xpush_encrypted_cdata(_val, _acc) ->
    [{xmlcdata, base64:encode(_val)} | _acc].

decode_xpush_encryption_key(__TopXMLNS, __Opts,
                            {xmlel, <<"key">>, _attrs, _els}) ->
    Data = decode_xpush_encryption_key_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           <<>>),
    {xpush_encryption_key, Data}.

decode_xpush_encryption_key_els(__TopXMLNS, __Opts, [],
                                Data) ->
    decode_xpush_encryption_key_cdata(__TopXMLNS, Data);
decode_xpush_encryption_key_els(__TopXMLNS, __Opts,
                                [{xmlcdata, _data} | _els], Data) ->
    decode_xpush_encryption_key_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    <<Data/binary, _data/binary>>);
decode_xpush_encryption_key_els(__TopXMLNS, __Opts,
                                [_ | _els], Data) ->
    decode_xpush_encryption_key_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Data).

encode_xpush_encryption_key({xpush_encryption_key,
                             Data},
                            __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_xpush_encryption_key_cdata(Data, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"key">>, _attrs, _els}.

decode_xpush_encryption_key_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
                  {missing_cdata, <<>>, <<"key">>, __TopXMLNS}});
decode_xpush_encryption_key_cdata(__TopXMLNS, _val) ->
    case catch base64:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_cdata_value, <<>>, <<"key">>, __TopXMLNS}});
        _res -> _res
    end.

encode_xpush_encryption_key_cdata(_val, _acc) ->
    [{xmlcdata, base64:encode(_val)} | _acc].

decode_xpush_encryption(__TopXMLNS, __Opts,
                        {xmlel, <<"encryption">>, _attrs, _els}) ->
    Key = decode_xpush_encryption_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      error),
    Algorithm = decode_xpush_encryption_attrs(__TopXMLNS,
                                              _attrs,
                                              undefined),
    {xpush_encryption, Algorithm, Key}.

decode_xpush_encryption_els(__TopXMLNS, __Opts, [],
                            Key) ->
    case Key of
        error ->
            erlang:error({xmpp_codec,
                          {missing_tag, <<"key">>, __TopXMLNS}});
        {value, Key1} -> Key1
    end;
decode_xpush_encryption_els(__TopXMLNS, __Opts,
                            [{xmlel, <<"key">>, _attrs, _} = _el | _els],
                            Key) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/push">> ->
            decode_xpush_encryption_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        {value,
                                         decode_xpush_encryption_key(<<"https://xabber.com/protocol/push">>,
                                                                     __Opts,
                                                                     _el)});
        _ ->
            decode_xpush_encryption_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Key)
    end;
decode_xpush_encryption_els(__TopXMLNS, __Opts,
                            [_ | _els], Key) ->
    decode_xpush_encryption_els(__TopXMLNS,
                                __Opts,
                                _els,
                                Key).

decode_xpush_encryption_attrs(__TopXMLNS,
                              [{<<"algorithm">>, _val} | _attrs], _Algorithm) ->
    decode_xpush_encryption_attrs(__TopXMLNS, _attrs, _val);
decode_xpush_encryption_attrs(__TopXMLNS, [_ | _attrs],
                              Algorithm) ->
    decode_xpush_encryption_attrs(__TopXMLNS,
                                  _attrs,
                                  Algorithm);
decode_xpush_encryption_attrs(__TopXMLNS, [],
                              Algorithm) ->
    decode_xpush_encryption_attr_algorithm(__TopXMLNS,
                                           Algorithm).

encode_xpush_encryption({xpush_encryption,
                         Algorithm,
                         Key},
                        __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
                                    [],
                                    __TopXMLNS),
    _els = lists:reverse('encode_xpush_encryption_$key'(Key,
                                                        __NewTopXMLNS,
                                                        [])),
    _attrs =
        encode_xpush_encryption_attr_algorithm(Algorithm,
                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                          __TopXMLNS)),
    {xmlel, <<"encryption">>, _attrs, _els}.

'encode_xpush_encryption_$key'(Key, __TopXMLNS, _acc) ->
    [encode_xpush_encryption_key(Key, __TopXMLNS) | _acc].

decode_xpush_encryption_attr_algorithm(__TopXMLNS,
                                       undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"algorithm">>,
                   <<"encryption">>,
                   __TopXMLNS}});
decode_xpush_encryption_attr_algorithm(__TopXMLNS,
                                       _val) ->
    _val.

encode_xpush_encryption_attr_algorithm(_val, _acc) ->
    [{<<"algorithm">>, _val} | _acc].

decode_xpush_notification(__TopXMLNS, __Opts,
                          {xmlel, <<"notification">>, _attrs, _els}) ->
    {Xdata, __Els} =
        decode_xpush_notification_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      undefined,
                                      []),
    {xpush_notification, Xdata, __Els}.

decode_xpush_notification_els(__TopXMLNS, __Opts, [],
                              Xdata, __Els) ->
    {Xdata, lists:reverse(__Els)};
decode_xpush_notification_els(__TopXMLNS, __Opts,
                              [{xmlel, <<"x">>, _attrs, _} = _el | _els], Xdata,
                              __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:x:data">> ->
            decode_xpush_notification_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          xep0004:decode_xdata(<<"jabber:x:data">>,
                                                               __Opts,
                                                               _el),
                                          __Els);
        _ ->
            decode_xpush_notification_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Xdata,
                                          [_el | __Els])
    end;
decode_xpush_notification_els(__TopXMLNS, __Opts,
                              [{xmlel, _name, _attrs, _} = _el | _els], Xdata,
                              __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_xpush_notification_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Xdata,
                                          [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_xpush_notification_els(__TopXMLNS,
                                                  __Opts,
                                                  _els,
                                                  Xdata,
                                                  [_el | __Els]);
                Mod ->
                    decode_xpush_notification_els(__TopXMLNS,
                                                  __Opts,
                                                  _els,
                                                  Xdata,
                                                  [Mod:do_decode(_name,
                                                                 __XMLNS,
                                                                 _el,
                                                                 __Opts)
                                                   | __Els])
            end
    end;
decode_xpush_notification_els(__TopXMLNS, __Opts,
                              [_ | _els], Xdata, __Els) ->
    decode_xpush_notification_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Xdata,
                                  __Els).

encode_xpush_notification({xpush_notification,
                           Xdata,
                           __Els},
                          __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse('encode_xpush_notification_$xdata'(Xdata,
                                                                __NewTopXMLNS,
                                                                [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"notification">>, _attrs, _els}.

'encode_xpush_notification_$xdata'(undefined,
                                   __TopXMLNS, _acc) ->
    _acc;
'encode_xpush_notification_$xdata'(Xdata, __TopXMLNS,
                                   _acc) ->
    [xep0004:encode_xdata(Xdata, __TopXMLNS) | _acc].

decode_xpush_disable(__TopXMLNS, __Opts,
                     {xmlel, <<"disable">>, _attrs, _els}) ->
    {xpush_disable}.

encode_xpush_disable({xpush_disable}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"disable">>, _attrs, _els}.

decode_xpush_enable(__TopXMLNS, __Opts,
                    {xmlel, <<"enable">>, _attrs, _els}) ->
    {Xdata, Encryption} =
        decode_xpush_enable_els(__TopXMLNS,
                                __Opts,
                                _els,
                                undefined,
                                error),
    {Jid, Node, Mode} =
        decode_xpush_enable_attrs(__TopXMLNS,
                                  _attrs,
                                  undefined,
                                  undefined,
                                  undefined),
    {xpush_enable, Jid, Node, Mode, Encryption, Xdata}.

decode_xpush_enable_els(__TopXMLNS, __Opts, [], Xdata,
                        Encryption) ->
    {Xdata,
     case Encryption of
         error ->
             erlang:error({xmpp_codec,
                           {missing_tag, <<"encryption">>, __TopXMLNS}});
         {value, Encryption1} -> Encryption1
     end};
decode_xpush_enable_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"x">>, _attrs, _} = _el | _els], Xdata,
                        Encryption) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:x:data">> ->
            decode_xpush_enable_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    xep0004:decode_xdata(<<"jabber:x:data">>,
                                                         __Opts,
                                                         _el),
                                    Encryption);
        _ ->
            decode_xpush_enable_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Xdata,
                                    Encryption)
    end;
decode_xpush_enable_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"encryption">>, _attrs, _} = _el | _els],
                        Xdata, Encryption) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/push">> ->
            decode_xpush_enable_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Xdata,
                                    {value,
                                     decode_xpush_encryption(<<"https://xabber.com/protocol/push">>,
                                                             __Opts,
                                                             _el)});
        _ ->
            decode_xpush_enable_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Xdata,
                                    Encryption)
    end;
decode_xpush_enable_els(__TopXMLNS, __Opts, [_ | _els],
                        Xdata, Encryption) ->
    decode_xpush_enable_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Xdata,
                            Encryption).

decode_xpush_enable_attrs(__TopXMLNS,
                          [{<<"jid">>, _val} | _attrs], _Jid, Node, Mode) ->
    decode_xpush_enable_attrs(__TopXMLNS,
                              _attrs,
                              _val,
                              Node,
                              Mode);
decode_xpush_enable_attrs(__TopXMLNS,
                          [{<<"node">>, _val} | _attrs], Jid, _Node, Mode) ->
    decode_xpush_enable_attrs(__TopXMLNS,
                              _attrs,
                              Jid,
                              _val,
                              Mode);
decode_xpush_enable_attrs(__TopXMLNS,
                          [{<<"mode">>, _val} | _attrs], Jid, Node, _Mode) ->
    decode_xpush_enable_attrs(__TopXMLNS,
                              _attrs,
                              Jid,
                              Node,
                              _val);
decode_xpush_enable_attrs(__TopXMLNS, [_ | _attrs], Jid,
                          Node, Mode) ->
    decode_xpush_enable_attrs(__TopXMLNS,
                              _attrs,
                              Jid,
                              Node,
                              Mode);
decode_xpush_enable_attrs(__TopXMLNS, [], Jid, Node,
                          Mode) ->
    {decode_xpush_enable_attr_jid(__TopXMLNS, Jid),
     decode_xpush_enable_attr_node(__TopXMLNS, Node),
     decode_xpush_enable_attr_mode(__TopXMLNS, Mode)}.

encode_xpush_enable({xpush_enable,
                     Jid,
                     Node,
                     Mode,
                     Encryption,
                     Xdata},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/push">>,
                                    [],
                                    __TopXMLNS),
    _els = lists:reverse('encode_xpush_enable_$xdata'(Xdata,
                                                      __NewTopXMLNS,
                                                      'encode_xpush_enable_$encryption'(Encryption,
                                                                                        __NewTopXMLNS,
                                                                                        []))),
    _attrs = encode_xpush_enable_attr_mode(Mode,
                                           encode_xpush_enable_attr_node(Node,
                                                                         encode_xpush_enable_attr_jid(Jid,
                                                                                                      xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                 __TopXMLNS)))),
    {xmlel, <<"enable">>, _attrs, _els}.

'encode_xpush_enable_$xdata'(undefined, __TopXMLNS,
                             _acc) ->
    _acc;
'encode_xpush_enable_$xdata'(Xdata, __TopXMLNS, _acc) ->
    [xep0004:encode_xdata(Xdata, __TopXMLNS) | _acc].

'encode_xpush_enable_$encryption'(Encryption,
                                  __TopXMLNS, _acc) ->
    [encode_xpush_encryption(Encryption, __TopXMLNS)
     | _acc].

decode_xpush_enable_attr_jid(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"jid">>, <<"enable">>, __TopXMLNS}});
decode_xpush_enable_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"jid">>,
                           <<"enable">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_xpush_enable_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_xpush_enable_attr_node(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"node">>, <<"enable">>, __TopXMLNS}});
decode_xpush_enable_attr_node(__TopXMLNS, _val) -> _val.

encode_xpush_enable_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].

decode_xpush_enable_attr_mode(__TopXMLNS, undefined) ->
    full;
decode_xpush_enable_attr_mode(__TopXMLNS, _val) ->
    case catch dec_enum(_val, [full, summary]) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"mode">>,
                           <<"enable">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_xpush_enable_attr_mode(full, _acc) -> _acc;
encode_xpush_enable_attr_mode(_val, _acc) ->
    [{<<"mode">>, enc_enum(_val)} | _acc].
