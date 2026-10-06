%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_httpiq).

-compile(export_all).

do_decode(<<"token">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_token(<<"https://xabber.com/protocol/http-iq">>,
                        Opts,
                        El);
do_decode(<<"value">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_token_value(<<"https://xabber.com/protocol/http-iq">>,
                              Opts,
                              El);
do_decode(<<"expires">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_token_expires(<<"https://xabber.com/protocol/http-iq">>,
                                Opts,
                                El);
do_decode(<<"ttl">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_token_ttl(<<"https://xabber.com/protocol/http-iq">>,
                            Opts,
                            El);
do_decode(<<"scope">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_token_scope(<<"https://xabber.com/protocol/http-iq">>,
                              Opts,
                              El);
do_decode(<<"endpoints">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_endpoints(<<"https://xabber.com/protocol/http-iq">>,
                            Opts,
                            El);
do_decode(<<"protocol">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_protocol(<<"https://xabber.com/protocol/http-iq">>,
                           Opts,
                           El);
do_decode(<<"endpoint">>,
          <<"https://xabber.com/protocol/http-iq">>, El, Opts) ->
    decode_httpiq_endpoint(<<"https://xabber.com/protocol/http-iq">>,
                           Opts,
                           El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"token">>,
      <<"https://xabber.com/protocol/http-iq">>},
     {<<"value">>,
      <<"https://xabber.com/protocol/http-iq">>},
     {<<"expires">>,
      <<"https://xabber.com/protocol/http-iq">>},
     {<<"ttl">>, <<"https://xabber.com/protocol/http-iq">>},
     {<<"scope">>,
      <<"https://xabber.com/protocol/http-iq">>},
     {<<"endpoints">>,
      <<"https://xabber.com/protocol/http-iq">>},
     {<<"protocol">>,
      <<"https://xabber.com/protocol/http-iq">>},
     {<<"endpoint">>,
      <<"https://xabber.com/protocol/http-iq">>}].

do_encode({httpiq_endpoint, _, _} = Endpoint,
          TopXMLNS) ->
    encode_httpiq_endpoint(Endpoint, TopXMLNS);
do_encode({httpiq_protocol, _, _} = Protocol,
          TopXMLNS) ->
    encode_httpiq_protocol(Protocol, TopXMLNS);
do_encode({httpiq_endpoints, _} = Endpoints,
          TopXMLNS) ->
    encode_httpiq_endpoints(Endpoints, TopXMLNS);
do_encode({httpiq_token, _, _, _, _} = Token,
          TopXMLNS) ->
    encode_httpiq_token(Token, TopXMLNS).

do_get_name({httpiq_endpoint, _, _}) -> <<"endpoint">>;
do_get_name({httpiq_endpoints, _}) -> <<"endpoints">>;
do_get_name({httpiq_protocol, _, _}) -> <<"protocol">>;
do_get_name({httpiq_token, _, _, _, _}) -> <<"token">>.

do_get_ns({httpiq_endpoint, _, _}) ->
    <<"https://xabber.com/protocol/http-iq">>;
do_get_ns({httpiq_endpoints, _}) ->
    <<"https://xabber.com/protocol/http-iq">>;
do_get_ns({httpiq_protocol, _, _}) ->
    <<"https://xabber.com/protocol/http-iq">>;
do_get_ns({httpiq_token, _, _, _, _}) ->
    <<"https://xabber.com/protocol/http-iq">>.

pp(httpiq_endpoint, 2) -> [name, url];
pp(httpiq_protocol, 2) -> [var, endpoints];
pp(httpiq_endpoints, 1) -> [protocols];
pp(httpiq_token, 4) -> [scopes, ttl, expires, value];
pp(_, _) -> no.

records() ->
    [{httpiq_endpoint, 2},
     {httpiq_protocol, 2},
     {httpiq_endpoints, 1},
     {httpiq_token, 4}].

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
        Int when Int =< Max, Min == infinity -> Int;
        Int when Int =< Max, Int >= Min -> Int
    end.

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_int(Int) -> erlang:integer_to_binary(Int).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

decode_httpiq_token(__TopXMLNS, __Opts,
                    {xmlel, <<"token">>, _attrs, _els}) ->
    {Expires, Scopes, Value, Ttl} =
        decode_httpiq_token_els(__TopXMLNS,
                                __Opts,
                                _els,
                                undefined,
                                [],
                                undefined,
                                undefined),
    {httpiq_token, Scopes, Ttl, Expires, Value}.

decode_httpiq_token_els(__TopXMLNS, __Opts, [], Expires,
                        Scopes, Value, Ttl) ->
    {Expires, lists:reverse(Scopes), Value, Ttl};
decode_httpiq_token_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"scope">>, _attrs, _} = _el | _els], Expires,
                        Scopes, Value, Ttl) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/http-iq">> ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Expires,
                                    [decode_httpiq_token_scope(<<"https://xabber.com/protocol/http-iq">>,
                                                               __Opts,
                                                               _el)
                                     | Scopes],
                                    Value,
                                    Ttl);
        _ ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Expires,
                                    Scopes,
                                    Value,
                                    Ttl)
    end;
decode_httpiq_token_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"ttl">>, _attrs, _} = _el | _els], Expires,
                        Scopes, Value, Ttl) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/http-iq">> ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Expires,
                                    Scopes,
                                    Value,
                                    decode_httpiq_token_ttl(<<"https://xabber.com/protocol/http-iq">>,
                                                            __Opts,
                                                            _el));
        _ ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Expires,
                                    Scopes,
                                    Value,
                                    Ttl)
    end;
decode_httpiq_token_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"expires">>, _attrs, _} = _el | _els],
                        Expires, Scopes, Value, Ttl) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/http-iq">> ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    decode_httpiq_token_expires(<<"https://xabber.com/protocol/http-iq">>,
                                                                __Opts,
                                                                _el),
                                    Scopes,
                                    Value,
                                    Ttl);
        _ ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Expires,
                                    Scopes,
                                    Value,
                                    Ttl)
    end;
decode_httpiq_token_els(__TopXMLNS, __Opts,
                        [{xmlel, <<"value">>, _attrs, _} = _el | _els], Expires,
                        Scopes, Value, Ttl) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/http-iq">> ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Expires,
                                    Scopes,
                                    decode_httpiq_token_value(<<"https://xabber.com/protocol/http-iq">>,
                                                              __Opts,
                                                              _el),
                                    Ttl);
        _ ->
            decode_httpiq_token_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Expires,
                                    Scopes,
                                    Value,
                                    Ttl)
    end;
decode_httpiq_token_els(__TopXMLNS, __Opts, [_ | _els],
                        Expires, Scopes, Value, Ttl) ->
    decode_httpiq_token_els(__TopXMLNS,
                            __Opts,
                            _els,
                            Expires,
                            Scopes,
                            Value,
                            Ttl).

encode_httpiq_token({httpiq_token,
                     Scopes,
                     Ttl,
                     Expires,
                     Value},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_httpiq_token_$expires'(Expires,
                                                     __NewTopXMLNS,
                                                     'encode_httpiq_token_$scopes'(Scopes,
                                                                                   __NewTopXMLNS,
                                                                                   'encode_httpiq_token_$value'(Value,
                                                                                                                __NewTopXMLNS,
                                                                                                                'encode_httpiq_token_$ttl'(Ttl,
                                                                                                                                           __NewTopXMLNS,
                                                                                                                                           []))))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"token">>, _attrs, _els}.

'encode_httpiq_token_$expires'(undefined, __TopXMLNS,
                               _acc) ->
    _acc;
'encode_httpiq_token_$expires'(Expires, __TopXMLNS,
                               _acc) ->
    [encode_httpiq_token_expires(Expires, __TopXMLNS)
     | _acc].

'encode_httpiq_token_$scopes'([], __TopXMLNS, _acc) ->
    _acc;
'encode_httpiq_token_$scopes'([Scopes | _els],
                              __TopXMLNS, _acc) ->
    'encode_httpiq_token_$scopes'(_els,
                                  __TopXMLNS,
                                  [encode_httpiq_token_scope(Scopes, __TopXMLNS)
                                   | _acc]).

'encode_httpiq_token_$value'(undefined, __TopXMLNS,
                             _acc) ->
    _acc;
'encode_httpiq_token_$value'(Value, __TopXMLNS, _acc) ->
    [encode_httpiq_token_value(Value, __TopXMLNS) | _acc].

'encode_httpiq_token_$ttl'(undefined, __TopXMLNS,
                           _acc) ->
    _acc;
'encode_httpiq_token_$ttl'(Ttl, __TopXMLNS, _acc) ->
    [encode_httpiq_token_ttl(Ttl, __TopXMLNS) | _acc].

decode_httpiq_token_value(__TopXMLNS, __Opts,
                          {xmlel, <<"value">>, _attrs, _els}) ->
    Cdata = decode_httpiq_token_value_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          <<>>),
    Cdata.

decode_httpiq_token_value_els(__TopXMLNS, __Opts, [],
                              Cdata) ->
    decode_httpiq_token_value_cdata(__TopXMLNS, Cdata);
decode_httpiq_token_value_els(__TopXMLNS, __Opts,
                              [{xmlcdata, _data} | _els], Cdata) ->
    decode_httpiq_token_value_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  <<Cdata/binary, _data/binary>>);
decode_httpiq_token_value_els(__TopXMLNS, __Opts,
                              [_ | _els], Cdata) ->
    decode_httpiq_token_value_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Cdata).

encode_httpiq_token_value(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_httpiq_token_value_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"value">>, _attrs, _els}.

decode_httpiq_token_value_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_httpiq_token_value_cdata(__TopXMLNS, _val) ->
    _val.

encode_httpiq_token_value_cdata(<<>>, _acc) -> _acc;
encode_httpiq_token_value_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_httpiq_token_expires(__TopXMLNS, __Opts,
                            {xmlel, <<"expires">>, _attrs, _els}) ->
    Cdata = decode_httpiq_token_expires_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            <<>>),
    Cdata.

decode_httpiq_token_expires_els(__TopXMLNS, __Opts, [],
                                Cdata) ->
    decode_httpiq_token_expires_cdata(__TopXMLNS, Cdata);
decode_httpiq_token_expires_els(__TopXMLNS, __Opts,
                                [{xmlcdata, _data} | _els], Cdata) ->
    decode_httpiq_token_expires_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    <<Cdata/binary, _data/binary>>);
decode_httpiq_token_expires_els(__TopXMLNS, __Opts,
                                [_ | _els], Cdata) ->
    decode_httpiq_token_expires_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    Cdata).

encode_httpiq_token_expires(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_httpiq_token_expires_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"expires">>, _attrs, _els}.

decode_httpiq_token_expires_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_httpiq_token_expires_cdata(__TopXMLNS, _val) ->
    case catch dec_utc(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_cdata_value, <<>>, <<"expires">>, __TopXMLNS}});
        _res -> _res
    end.

encode_httpiq_token_expires_cdata(undefined, _acc) ->
    _acc;
encode_httpiq_token_expires_cdata(_val, _acc) ->
    [{xmlcdata, enc_utc(_val)} | _acc].

decode_httpiq_token_ttl(__TopXMLNS, __Opts,
                        {xmlel, <<"ttl">>, _attrs, _els}) ->
    Cdata = decode_httpiq_token_ttl_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        <<>>),
    Cdata.

decode_httpiq_token_ttl_els(__TopXMLNS, __Opts, [],
                            Cdata) ->
    decode_httpiq_token_ttl_cdata(__TopXMLNS, Cdata);
decode_httpiq_token_ttl_els(__TopXMLNS, __Opts,
                            [{xmlcdata, _data} | _els], Cdata) ->
    decode_httpiq_token_ttl_els(__TopXMLNS,
                                __Opts,
                                _els,
                                <<Cdata/binary, _data/binary>>);
decode_httpiq_token_ttl_els(__TopXMLNS, __Opts,
                            [_ | _els], Cdata) ->
    decode_httpiq_token_ttl_els(__TopXMLNS,
                                __Opts,
                                _els,
                                Cdata).

encode_httpiq_token_ttl(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_httpiq_token_ttl_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"ttl">>, _attrs, _els}.

decode_httpiq_token_ttl_cdata(__TopXMLNS, <<>>) ->
    undefined;
decode_httpiq_token_ttl_cdata(__TopXMLNS, _val) ->
    case catch dec_int(_val, 1, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_cdata_value, <<>>, <<"ttl">>, __TopXMLNS}});
        _res -> _res
    end.

encode_httpiq_token_ttl_cdata(undefined, _acc) -> _acc;
encode_httpiq_token_ttl_cdata(_val, _acc) ->
    [{xmlcdata, enc_int(_val)} | _acc].

decode_httpiq_token_scope(__TopXMLNS, __Opts,
                          {xmlel, <<"scope">>, _attrs, _els}) ->
    Cdata = decode_httpiq_token_scope_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          <<>>),
    Cdata.

decode_httpiq_token_scope_els(__TopXMLNS, __Opts, [],
                              Cdata) ->
    decode_httpiq_token_scope_cdata(__TopXMLNS, Cdata);
decode_httpiq_token_scope_els(__TopXMLNS, __Opts,
                              [{xmlcdata, _data} | _els], Cdata) ->
    decode_httpiq_token_scope_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  <<Cdata/binary, _data/binary>>);
decode_httpiq_token_scope_els(__TopXMLNS, __Opts,
                              [_ | _els], Cdata) ->
    decode_httpiq_token_scope_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Cdata).

encode_httpiq_token_scope(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_httpiq_token_scope_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"scope">>, _attrs, _els}.

decode_httpiq_token_scope_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
                  {missing_cdata, <<>>, <<"scope">>, __TopXMLNS}});
decode_httpiq_token_scope_cdata(__TopXMLNS, _val) ->
    _val.

encode_httpiq_token_scope_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_httpiq_endpoints(__TopXMLNS, __Opts,
                        {xmlel, <<"endpoints">>, _attrs, _els}) ->
    Protocols = decode_httpiq_endpoints_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            []),
    {httpiq_endpoints, Protocols}.

decode_httpiq_endpoints_els(__TopXMLNS, __Opts, [],
                            Protocols) ->
    lists:reverse(Protocols);
decode_httpiq_endpoints_els(__TopXMLNS, __Opts,
                            [{xmlel, <<"protocol">>, _attrs, _} = _el | _els],
                            Protocols) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/http-iq">> ->
            decode_httpiq_endpoints_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        [decode_httpiq_protocol(<<"https://xabber.com/protocol/http-iq">>,
                                                                __Opts,
                                                                _el)
                                         | Protocols]);
        _ ->
            decode_httpiq_endpoints_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        Protocols)
    end;
decode_httpiq_endpoints_els(__TopXMLNS, __Opts,
                            [_ | _els], Protocols) ->
    decode_httpiq_endpoints_els(__TopXMLNS,
                                __Opts,
                                _els,
                                Protocols).

encode_httpiq_endpoints({httpiq_endpoints, Protocols},
                        __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_httpiq_endpoints_$protocols'(Protocols,
                                                           __NewTopXMLNS,
                                                           [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"endpoints">>, _attrs, _els}.

'encode_httpiq_endpoints_$protocols'([], __TopXMLNS,
                                     _acc) ->
    _acc;
'encode_httpiq_endpoints_$protocols'([Protocols | _els],
                                     __TopXMLNS, _acc) ->
    'encode_httpiq_endpoints_$protocols'(_els,
                                         __TopXMLNS,
                                         [encode_httpiq_protocol(Protocols,
                                                                 __TopXMLNS)
                                          | _acc]).

decode_httpiq_protocol(__TopXMLNS, __Opts,
                       {xmlel, <<"protocol">>, _attrs, _els}) ->
    Endpoints = decode_httpiq_protocol_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           []),
    Var = decode_httpiq_protocol_attrs(__TopXMLNS,
                                       _attrs,
                                       undefined),
    {httpiq_protocol, Var, Endpoints}.

decode_httpiq_protocol_els(__TopXMLNS, __Opts, [],
                           Endpoints) ->
    lists:reverse(Endpoints);
decode_httpiq_protocol_els(__TopXMLNS, __Opts,
                           [{xmlel, <<"endpoint">>, _attrs, _} = _el | _els],
                           Endpoints) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/http-iq">> ->
            decode_httpiq_protocol_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       [decode_httpiq_endpoint(<<"https://xabber.com/protocol/http-iq">>,
                                                               __Opts,
                                                               _el)
                                        | Endpoints]);
        _ ->
            decode_httpiq_protocol_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Endpoints)
    end;
decode_httpiq_protocol_els(__TopXMLNS, __Opts,
                           [_ | _els], Endpoints) ->
    decode_httpiq_protocol_els(__TopXMLNS,
                               __Opts,
                               _els,
                               Endpoints).

decode_httpiq_protocol_attrs(__TopXMLNS,
                             [{<<"var">>, _val} | _attrs], _Var) ->
    decode_httpiq_protocol_attrs(__TopXMLNS, _attrs, _val);
decode_httpiq_protocol_attrs(__TopXMLNS, [_ | _attrs],
                             Var) ->
    decode_httpiq_protocol_attrs(__TopXMLNS, _attrs, Var);
decode_httpiq_protocol_attrs(__TopXMLNS, [], Var) ->
    decode_httpiq_protocol_attr_var(__TopXMLNS, Var).

encode_httpiq_protocol({httpiq_protocol,
                        Var,
                        Endpoints},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_httpiq_protocol_$endpoints'(Endpoints,
                                                          __NewTopXMLNS,
                                                          [])),
    _attrs = encode_httpiq_protocol_attr_var(Var,
                                             xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                        __TopXMLNS)),
    {xmlel, <<"protocol">>, _attrs, _els}.

'encode_httpiq_protocol_$endpoints'([], __TopXMLNS,
                                    _acc) ->
    _acc;
'encode_httpiq_protocol_$endpoints'([Endpoints | _els],
                                    __TopXMLNS, _acc) ->
    'encode_httpiq_protocol_$endpoints'(_els,
                                        __TopXMLNS,
                                        [encode_httpiq_endpoint(Endpoints,
                                                                __TopXMLNS)
                                         | _acc]).

decode_httpiq_protocol_attr_var(__TopXMLNS,
                                undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"var">>, <<"protocol">>, __TopXMLNS}});
decode_httpiq_protocol_attr_var(__TopXMLNS, _val) ->
    _val.

encode_httpiq_protocol_attr_var(_val, _acc) ->
    [{<<"var">>, _val} | _acc].

decode_httpiq_endpoint(__TopXMLNS, __Opts,
                       {xmlel, <<"endpoint">>, _attrs, _els}) ->
    {Name, Url} = decode_httpiq_endpoint_attrs(__TopXMLNS,
                                               _attrs,
                                               undefined,
                                               undefined),
    {httpiq_endpoint, Name, Url}.

decode_httpiq_endpoint_attrs(__TopXMLNS,
                             [{<<"name">>, _val} | _attrs], _Name, Url) ->
    decode_httpiq_endpoint_attrs(__TopXMLNS,
                                 _attrs,
                                 _val,
                                 Url);
decode_httpiq_endpoint_attrs(__TopXMLNS,
                             [{<<"url">>, _val} | _attrs], Name, _Url) ->
    decode_httpiq_endpoint_attrs(__TopXMLNS,
                                 _attrs,
                                 Name,
                                 _val);
decode_httpiq_endpoint_attrs(__TopXMLNS, [_ | _attrs],
                             Name, Url) ->
    decode_httpiq_endpoint_attrs(__TopXMLNS,
                                 _attrs,
                                 Name,
                                 Url);
decode_httpiq_endpoint_attrs(__TopXMLNS, [], Name,
                             Url) ->
    {decode_httpiq_endpoint_attr_name(__TopXMLNS, Name),
     decode_httpiq_endpoint_attr_url(__TopXMLNS, Url)}.

encode_httpiq_endpoint({httpiq_endpoint, Name, Url},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/http-iq">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_httpiq_endpoint_attr_url(Url,
                                             encode_httpiq_endpoint_attr_name(Name,
                                                                              xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                         __TopXMLNS))),
    {xmlel, <<"endpoint">>, _attrs, _els}.

decode_httpiq_endpoint_attr_name(__TopXMLNS,
                                 undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"name">>,
                   <<"endpoint">>,
                   __TopXMLNS}});
decode_httpiq_endpoint_attr_name(__TopXMLNS, _val) ->
    _val.

encode_httpiq_endpoint_attr_name(_val, _acc) ->
    [{<<"name">>, _val} | _acc].

decode_httpiq_endpoint_attr_url(__TopXMLNS,
                                undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"url">>, <<"endpoint">>, __TopXMLNS}});
decode_httpiq_endpoint_attr_url(__TopXMLNS, _val) ->
    _val.

encode_httpiq_endpoint_attr_url(_val, _acc) ->
    [{<<"url">>, _val} | _acc].
