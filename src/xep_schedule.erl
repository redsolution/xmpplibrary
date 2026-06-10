%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_schedule).

-compile(export_all).

do_decode(<<"deferred">>,
          <<"https://xabber.com/protocol/schedule">>, El, Opts) ->
    decode_schedule_deferred(<<"https://xabber.com/protocol/schedule">>,
                             Opts,
                             El);
do_decode(<<"failed">>,
          <<"https://xabber.com/protocol/schedule">>, El, Opts) ->
    decode_schedule_failed(<<"https://xabber.com/protocol/schedule">>,
                           Opts,
                           El);
do_decode(<<"cancelled">>,
          <<"https://xabber.com/protocol/schedule">>, El, Opts) ->
    decode_schedule_cancelled(<<"https://xabber.com/protocol/schedule">>,
                              Opts,
                              El);
do_decode(<<"cancel">>,
          <<"https://xabber.com/protocol/schedule">>, El, Opts) ->
    decode_schedule_cancel(<<"https://xabber.com/protocol/schedule">>,
                           Opts,
                           El);
do_decode(<<"query">>,
          <<"https://xabber.com/protocol/schedule">>, El, Opts) ->
    decode_schedule_query(<<"https://xabber.com/protocol/schedule">>,
                          Opts,
                          El);
do_decode(<<"scheduled">>,
          <<"https://xabber.com/protocol/schedule">>, El, Opts) ->
    decode_schedule_scheduled(<<"https://xabber.com/protocol/schedule">>,
                              Opts,
                              El);
do_decode(<<"schedule">>,
          <<"https://xabber.com/protocol/schedule">>, El, Opts) ->
    decode_schedule_schedule(<<"https://xabber.com/protocol/schedule">>,
                             Opts,
                             El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"deferred">>,
      <<"https://xabber.com/protocol/schedule">>},
     {<<"failed">>,
      <<"https://xabber.com/protocol/schedule">>},
     {<<"cancelled">>,
      <<"https://xabber.com/protocol/schedule">>},
     {<<"cancel">>,
      <<"https://xabber.com/protocol/schedule">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/schedule">>},
     {<<"scheduled">>,
      <<"https://xabber.com/protocol/schedule">>},
     {<<"schedule">>,
      <<"https://xabber.com/protocol/schedule">>}].

do_encode({schedule_schedule, _, _, _, _} = Schedule,
          TopXMLNS) ->
    encode_schedule_schedule(Schedule, TopXMLNS);
do_encode({schedule_scheduled, _, _, _, _, _, _} =
              Scheduled,
          TopXMLNS) ->
    encode_schedule_scheduled(Scheduled, TopXMLNS);
do_encode({schedule_query, _, _, _} = Query,
          TopXMLNS) ->
    encode_schedule_query(Query, TopXMLNS);
do_encode({schedule_cancel, _} = Cancel, TopXMLNS) ->
    encode_schedule_cancel(Cancel, TopXMLNS);
do_encode({schedule_cancelled, _} = Cancelled,
          TopXMLNS) ->
    encode_schedule_cancelled(Cancelled, TopXMLNS);
do_encode({schedule_failed, _} = Failed, TopXMLNS) ->
    encode_schedule_failed(Failed, TopXMLNS);
do_encode({schedule_deferred, _, _} = Deferred,
          TopXMLNS) ->
    encode_schedule_deferred(Deferred, TopXMLNS).

do_get_name({schedule_cancel, _}) -> <<"cancel">>;
do_get_name({schedule_cancelled, _}) -> <<"cancelled">>;
do_get_name({schedule_deferred, _, _}) ->
    <<"deferred">>;
do_get_name({schedule_failed, _}) -> <<"failed">>;
do_get_name({schedule_query, _, _, _}) -> <<"query">>;
do_get_name({schedule_schedule, _, _, _, _}) ->
    <<"schedule">>;
do_get_name({schedule_scheduled, _, _, _, _, _, _}) ->
    <<"scheduled">>.

do_get_ns({schedule_cancel, _}) ->
    <<"https://xabber.com/protocol/schedule">>;
do_get_ns({schedule_cancelled, _}) ->
    <<"https://xabber.com/protocol/schedule">>;
do_get_ns({schedule_deferred, _, _}) ->
    <<"https://xabber.com/protocol/schedule">>;
do_get_ns({schedule_failed, _}) ->
    <<"https://xabber.com/protocol/schedule">>;
do_get_ns({schedule_query, _, _, _}) ->
    <<"https://xabber.com/protocol/schedule">>;
do_get_ns({schedule_schedule, _, _, _, _}) ->
    <<"https://xabber.com/protocol/schedule">>;
do_get_ns({schedule_scheduled, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/schedule">>.

pp(schedule_schedule, 4) ->
    [conversation, type, 'deliver-at', message];
pp(schedule_scheduled, 6) ->
    [id, conversation, type, 'deliver-at', status, message];
pp(schedule_query, 3) ->
    [conversation, type, scheduled];
pp(schedule_cancel, 1) -> [id];
pp(schedule_cancelled, 1) -> [id];
pp(schedule_failed, 1) -> [id];
pp(schedule_deferred, 2) -> [id, 'deliver-at'];
pp(_, _) -> no.

records() ->
    [{schedule_schedule, 4},
     {schedule_scheduled, 6},
     {schedule_query, 3},
     {schedule_cancel, 1},
     {schedule_cancelled, 1},
     {schedule_failed, 1},
     {schedule_deferred, 2}].

dec_enum(Val, Enums) ->
    AtomVal = erlang:binary_to_existing_atom(Val, utf8),
    case lists:member(AtomVal, Enums) of
        true -> AtomVal
    end.

dec_utc(Val) -> xmpp_util:decode_timestamp(Val).

enc_enum(Atom) -> erlang:atom_to_binary(Atom, utf8).

enc_utc(Val) -> xmpp_util:encode_timestamp(Val).

decode_schedule_deferred(__TopXMLNS, __Opts,
                         {xmlel, <<"deferred">>, _attrs, _els}) ->
    {Id, Deliver_at} =
        decode_schedule_deferred_attrs(__TopXMLNS,
                                       _attrs,
                                       undefined,
                                       undefined),
    {schedule_deferred, Id, Deliver_at}.

decode_schedule_deferred_attrs(__TopXMLNS,
                               [{<<"id">>, _val} | _attrs], _Id, Deliver_at) ->
    decode_schedule_deferred_attrs(__TopXMLNS,
                                   _attrs,
                                   _val,
                                   Deliver_at);
decode_schedule_deferred_attrs(__TopXMLNS,
                               [{<<"deliver-at">>, _val} | _attrs], Id,
                               _Deliver_at) ->
    decode_schedule_deferred_attrs(__TopXMLNS,
                                   _attrs,
                                   Id,
                                   _val);
decode_schedule_deferred_attrs(__TopXMLNS, [_ | _attrs],
                               Id, Deliver_at) ->
    decode_schedule_deferred_attrs(__TopXMLNS,
                                   _attrs,
                                   Id,
                                   Deliver_at);
decode_schedule_deferred_attrs(__TopXMLNS, [], Id,
                               Deliver_at) ->
    {decode_schedule_deferred_attr_id(__TopXMLNS, Id),
     'decode_schedule_deferred_attr_deliver-at'(__TopXMLNS,
                                                Deliver_at)}.

encode_schedule_deferred({schedule_deferred,
                          Id,
                          Deliver_at},
                         __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/schedule">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        'encode_schedule_deferred_attr_deliver-at'(Deliver_at,
                                                   encode_schedule_deferred_attr_id(Id,
                                                                                    xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                               __TopXMLNS))),
    {xmlel, <<"deferred">>, _attrs, _els}.

decode_schedule_deferred_attr_id(__TopXMLNS,
                                 undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"id">>, <<"deferred">>, __TopXMLNS}});
decode_schedule_deferred_attr_id(__TopXMLNS, _val) ->
    _val.

encode_schedule_deferred_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

'decode_schedule_deferred_attr_deliver-at'(__TopXMLNS,
                                           undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"deliver-at">>,
                   <<"deferred">>,
                   __TopXMLNS}});
'decode_schedule_deferred_attr_deliver-at'(__TopXMLNS,
                                           _val) ->
    case catch dec_utc(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"deliver-at">>,
                           <<"deferred">>,
                           __TopXMLNS}});
        _res -> _res
    end.

'encode_schedule_deferred_attr_deliver-at'(_val,
                                           _acc) ->
    [{<<"deliver-at">>, enc_utc(_val)} | _acc].

decode_schedule_failed(__TopXMLNS, __Opts,
                       {xmlel, <<"failed">>, _attrs, _els}) ->
    Id = decode_schedule_failed_attrs(__TopXMLNS,
                                      _attrs,
                                      undefined),
    {schedule_failed, Id}.

decode_schedule_failed_attrs(__TopXMLNS,
                             [{<<"id">>, _val} | _attrs], _Id) ->
    decode_schedule_failed_attrs(__TopXMLNS, _attrs, _val);
decode_schedule_failed_attrs(__TopXMLNS, [_ | _attrs],
                             Id) ->
    decode_schedule_failed_attrs(__TopXMLNS, _attrs, Id);
decode_schedule_failed_attrs(__TopXMLNS, [], Id) ->
    decode_schedule_failed_attr_id(__TopXMLNS, Id).

encode_schedule_failed({schedule_failed, Id},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/schedule">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_schedule_failed_attr_id(Id,
                                            xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                       __TopXMLNS)),
    {xmlel, <<"failed">>, _attrs, _els}.

decode_schedule_failed_attr_id(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"id">>, <<"failed">>, __TopXMLNS}});
decode_schedule_failed_attr_id(__TopXMLNS, _val) ->
    _val.

encode_schedule_failed_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_schedule_cancelled(__TopXMLNS, __Opts,
                          {xmlel, <<"cancelled">>, _attrs, _els}) ->
    Id = decode_schedule_cancelled_attrs(__TopXMLNS,
                                         _attrs,
                                         undefined),
    {schedule_cancelled, Id}.

decode_schedule_cancelled_attrs(__TopXMLNS,
                                [{<<"id">>, _val} | _attrs], _Id) ->
    decode_schedule_cancelled_attrs(__TopXMLNS,
                                    _attrs,
                                    _val);
decode_schedule_cancelled_attrs(__TopXMLNS,
                                [_ | _attrs], Id) ->
    decode_schedule_cancelled_attrs(__TopXMLNS, _attrs, Id);
decode_schedule_cancelled_attrs(__TopXMLNS, [], Id) ->
    decode_schedule_cancelled_attr_id(__TopXMLNS, Id).

encode_schedule_cancelled({schedule_cancelled, Id},
                          __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/schedule">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_schedule_cancelled_attr_id(Id,
                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                          __TopXMLNS)),
    {xmlel, <<"cancelled">>, _attrs, _els}.

decode_schedule_cancelled_attr_id(__TopXMLNS,
                                  undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"id">>, <<"cancelled">>, __TopXMLNS}});
decode_schedule_cancelled_attr_id(__TopXMLNS, _val) ->
    _val.

encode_schedule_cancelled_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_schedule_cancel(__TopXMLNS, __Opts,
                       {xmlel, <<"cancel">>, _attrs, _els}) ->
    Id = decode_schedule_cancel_attrs(__TopXMLNS,
                                      _attrs,
                                      undefined),
    {schedule_cancel, Id}.

decode_schedule_cancel_attrs(__TopXMLNS,
                             [{<<"id">>, _val} | _attrs], _Id) ->
    decode_schedule_cancel_attrs(__TopXMLNS, _attrs, _val);
decode_schedule_cancel_attrs(__TopXMLNS, [_ | _attrs],
                             Id) ->
    decode_schedule_cancel_attrs(__TopXMLNS, _attrs, Id);
decode_schedule_cancel_attrs(__TopXMLNS, [], Id) ->
    decode_schedule_cancel_attr_id(__TopXMLNS, Id).

encode_schedule_cancel({schedule_cancel, Id},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/schedule">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_schedule_cancel_attr_id(Id,
                                            xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                       __TopXMLNS)),
    {xmlel, <<"cancel">>, _attrs, _els}.

decode_schedule_cancel_attr_id(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"id">>, <<"cancel">>, __TopXMLNS}});
decode_schedule_cancel_attr_id(__TopXMLNS, _val) ->
    _val.

encode_schedule_cancel_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_schedule_query(__TopXMLNS, __Opts,
                      {xmlel, <<"query">>, _attrs, _els}) ->
    Scheduled = decode_schedule_query_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          []),
    {Conversation, Type} =
        decode_schedule_query_attrs(__TopXMLNS,
                                    _attrs,
                                    undefined,
                                    undefined),
    {schedule_query, Conversation, Type, Scheduled}.

decode_schedule_query_els(__TopXMLNS, __Opts, [],
                          Scheduled) ->
    lists:reverse(Scheduled);
decode_schedule_query_els(__TopXMLNS, __Opts,
                          [{xmlel, <<"scheduled">>, _attrs, _} = _el | _els],
                          Scheduled) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/schedule">> ->
            decode_schedule_query_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      [decode_schedule_scheduled(<<"https://xabber.com/protocol/schedule">>,
                                                                 __Opts,
                                                                 _el)
                                       | Scheduled]);
        _ ->
            decode_schedule_query_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      Scheduled)
    end;
decode_schedule_query_els(__TopXMLNS, __Opts,
                          [_ | _els], Scheduled) ->
    decode_schedule_query_els(__TopXMLNS,
                              __Opts,
                              _els,
                              Scheduled).

decode_schedule_query_attrs(__TopXMLNS,
                            [{<<"conversation">>, _val} | _attrs],
                            _Conversation, Type) ->
    decode_schedule_query_attrs(__TopXMLNS,
                                _attrs,
                                _val,
                                Type);
decode_schedule_query_attrs(__TopXMLNS,
                            [{<<"type">>, _val} | _attrs], Conversation,
                            _Type) ->
    decode_schedule_query_attrs(__TopXMLNS,
                                _attrs,
                                Conversation,
                                _val);
decode_schedule_query_attrs(__TopXMLNS, [_ | _attrs],
                            Conversation, Type) ->
    decode_schedule_query_attrs(__TopXMLNS,
                                _attrs,
                                Conversation,
                                Type);
decode_schedule_query_attrs(__TopXMLNS, [],
                            Conversation, Type) ->
    {decode_schedule_query_attr_conversation(__TopXMLNS,
                                             Conversation),
     decode_schedule_query_attr_type(__TopXMLNS, Type)}.

encode_schedule_query({schedule_query,
                       Conversation,
                       Type,
                       Scheduled},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/schedule">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_schedule_query_$scheduled'(Scheduled,
                                                         __NewTopXMLNS,
                                                         [])),
    _attrs = encode_schedule_query_attr_type(Type,
                                             encode_schedule_query_attr_conversation(Conversation,
                                                                                     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                __TopXMLNS))),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_schedule_query_$scheduled'([], __TopXMLNS,
                                   _acc) ->
    _acc;
'encode_schedule_query_$scheduled'([Scheduled | _els],
                                   __TopXMLNS, _acc) ->
    'encode_schedule_query_$scheduled'(_els,
                                       __TopXMLNS,
                                       [encode_schedule_scheduled(Scheduled,
                                                                  __TopXMLNS)
                                        | _acc]).

decode_schedule_query_attr_conversation(__TopXMLNS,
                                        undefined) ->
    undefined;
decode_schedule_query_attr_conversation(__TopXMLNS,
                                        _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"query">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_schedule_query_attr_conversation(undefined,
                                        _acc) ->
    _acc;
encode_schedule_query_attr_conversation(_val, _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_schedule_query_attr_type(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_schedule_query_attr_type(__TopXMLNS, _val) ->
    _val.

encode_schedule_query_attr_type(<<>>, _acc) -> _acc;
encode_schedule_query_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_schedule_scheduled(__TopXMLNS, __Opts,
                          {xmlel, <<"scheduled">>, _attrs, _els}) ->
    Message = decode_schedule_scheduled_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            undefined),
    {Id, Conversation, Type, Deliver_at, Status} =
        decode_schedule_scheduled_attrs(__TopXMLNS,
                                        _attrs,
                                        undefined,
                                        undefined,
                                        undefined,
                                        undefined,
                                        undefined),
    {schedule_scheduled,
     Id,
     Conversation,
     Type,
     Deliver_at,
     Status,
     Message}.

decode_schedule_scheduled_els(__TopXMLNS, __Opts, [],
                              Message) ->
    Message;
decode_schedule_scheduled_els(__TopXMLNS, __Opts,
                              [{xmlel, <<"message">>, _attrs, _} = _el | _els],
                              Message) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:client">> ->
            decode_schedule_scheduled_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          rfc6120:decode_message(<<"jabber:client">>,
                                                                 __Opts,
                                                                 _el));
        <<"jabber:server">> ->
            decode_schedule_scheduled_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          rfc6120:decode_message(<<"jabber:server">>,
                                                                 __Opts,
                                                                 _el));
        <<"jabber:component:accept">> ->
            decode_schedule_scheduled_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          rfc6120:decode_message(<<"jabber:component:accept">>,
                                                                 __Opts,
                                                                 _el));
        _ ->
            decode_schedule_scheduled_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Message)
    end;
decode_schedule_scheduled_els(__TopXMLNS, __Opts,
                              [_ | _els], Message) ->
    decode_schedule_scheduled_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Message).

decode_schedule_scheduled_attrs(__TopXMLNS,
                                [{<<"id">>, _val} | _attrs], _Id, Conversation,
                                Type, Deliver_at, Status) ->
    decode_schedule_scheduled_attrs(__TopXMLNS,
                                    _attrs,
                                    _val,
                                    Conversation,
                                    Type,
                                    Deliver_at,
                                    Status);
decode_schedule_scheduled_attrs(__TopXMLNS,
                                [{<<"conversation">>, _val} | _attrs], Id,
                                _Conversation, Type, Deliver_at, Status) ->
    decode_schedule_scheduled_attrs(__TopXMLNS,
                                    _attrs,
                                    Id,
                                    _val,
                                    Type,
                                    Deliver_at,
                                    Status);
decode_schedule_scheduled_attrs(__TopXMLNS,
                                [{<<"type">>, _val} | _attrs], Id, Conversation,
                                _Type, Deliver_at, Status) ->
    decode_schedule_scheduled_attrs(__TopXMLNS,
                                    _attrs,
                                    Id,
                                    Conversation,
                                    _val,
                                    Deliver_at,
                                    Status);
decode_schedule_scheduled_attrs(__TopXMLNS,
                                [{<<"deliver-at">>, _val} | _attrs], Id,
                                Conversation, Type, _Deliver_at, Status) ->
    decode_schedule_scheduled_attrs(__TopXMLNS,
                                    _attrs,
                                    Id,
                                    Conversation,
                                    Type,
                                    _val,
                                    Status);
decode_schedule_scheduled_attrs(__TopXMLNS,
                                [{<<"status">>, _val} | _attrs], Id,
                                Conversation, Type, Deliver_at, _Status) ->
    decode_schedule_scheduled_attrs(__TopXMLNS,
                                    _attrs,
                                    Id,
                                    Conversation,
                                    Type,
                                    Deliver_at,
                                    _val);
decode_schedule_scheduled_attrs(__TopXMLNS,
                                [_ | _attrs], Id, Conversation, Type,
                                Deliver_at, Status) ->
    decode_schedule_scheduled_attrs(__TopXMLNS,
                                    _attrs,
                                    Id,
                                    Conversation,
                                    Type,
                                    Deliver_at,
                                    Status);
decode_schedule_scheduled_attrs(__TopXMLNS, [], Id,
                                Conversation, Type, Deliver_at, Status) ->
    {decode_schedule_scheduled_attr_id(__TopXMLNS, Id),
     decode_schedule_scheduled_attr_conversation(__TopXMLNS,
                                                 Conversation),
     decode_schedule_scheduled_attr_type(__TopXMLNS, Type),
     'decode_schedule_scheduled_attr_deliver-at'(__TopXMLNS,
                                                 Deliver_at),
     decode_schedule_scheduled_attr_status(__TopXMLNS,
                                           Status)}.

encode_schedule_scheduled({schedule_scheduled,
                           Id,
                           Conversation,
                           Type,
                           Deliver_at,
                           Status,
                           Message},
                          __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/schedule">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_schedule_scheduled_$message'(Message,
                                                           __NewTopXMLNS,
                                                           [])),
    _attrs = encode_schedule_scheduled_attr_status(Status,
                                                   'encode_schedule_scheduled_attr_deliver-at'(Deliver_at,
                                                                                               encode_schedule_scheduled_attr_type(Type,
                                                                                                                                   encode_schedule_scheduled_attr_conversation(Conversation,
                                                                                                                                                                               encode_schedule_scheduled_attr_id(Id,
                                                                                                                                                                                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                            __TopXMLNS)))))),
    {xmlel, <<"scheduled">>, _attrs, _els}.

'encode_schedule_scheduled_$message'(undefined,
                                     __TopXMLNS, _acc) ->
    _acc;
'encode_schedule_scheduled_$message'(Message,
                                     __TopXMLNS, _acc) ->
    [rfc6120:encode_message(Message, __TopXMLNS) | _acc].

decode_schedule_scheduled_attr_id(__TopXMLNS,
                                  undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"id">>, <<"scheduled">>, __TopXMLNS}});
decode_schedule_scheduled_attr_id(__TopXMLNS, _val) ->
    _val.

encode_schedule_scheduled_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_schedule_scheduled_attr_conversation(__TopXMLNS,
                                            undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"conversation">>,
                   <<"scheduled">>,
                   __TopXMLNS}});
decode_schedule_scheduled_attr_conversation(__TopXMLNS,
                                            _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"scheduled">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_schedule_scheduled_attr_conversation(_val,
                                            _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_schedule_scheduled_attr_type(__TopXMLNS,
                                    undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"type">>,
                   <<"scheduled">>,
                   __TopXMLNS}});
decode_schedule_scheduled_attr_type(__TopXMLNS, _val) ->
    _val.

encode_schedule_scheduled_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

'decode_schedule_scheduled_attr_deliver-at'(__TopXMLNS,
                                            undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"deliver-at">>,
                   <<"scheduled">>,
                   __TopXMLNS}});
'decode_schedule_scheduled_attr_deliver-at'(__TopXMLNS,
                                            _val) ->
    case catch dec_utc(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"deliver-at">>,
                           <<"scheduled">>,
                           __TopXMLNS}});
        _res -> _res
    end.

'encode_schedule_scheduled_attr_deliver-at'(_val,
                                            _acc) ->
    [{<<"deliver-at">>, enc_utc(_val)} | _acc].

decode_schedule_scheduled_attr_status(__TopXMLNS,
                                      undefined) ->
    undefined;
decode_schedule_scheduled_attr_status(__TopXMLNS,
                                      _val) ->
    case catch dec_enum(_val, [pending, failed]) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"status">>,
                           <<"scheduled">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_schedule_scheduled_attr_status(undefined,
                                      _acc) ->
    _acc;
encode_schedule_scheduled_attr_status(_val, _acc) ->
    [{<<"status">>, enc_enum(_val)} | _acc].

decode_schedule_schedule(__TopXMLNS, __Opts,
                         {xmlel, <<"schedule">>, _attrs, _els}) ->
    Message = decode_schedule_schedule_els(__TopXMLNS,
                                           __Opts,
                                           _els,
                                           error),
    {Conversation, Type, Deliver_at} =
        decode_schedule_schedule_attrs(__TopXMLNS,
                                       _attrs,
                                       undefined,
                                       undefined,
                                       undefined),
    {schedule_schedule,
     Conversation,
     Type,
     Deliver_at,
     Message}.

decode_schedule_schedule_els(__TopXMLNS, __Opts, [],
                             Message) ->
    case Message of
        error ->
            erlang:error({xmpp_codec,
                          {missing_tag, <<"message">>, __TopXMLNS}});
        {value, Message1} -> Message1
    end;
decode_schedule_schedule_els(__TopXMLNS, __Opts,
                             [{xmlel, <<"message">>, _attrs, _} = _el | _els],
                             Message) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:client">> ->
            decode_schedule_schedule_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         {value,
                                          rfc6120:decode_message(<<"jabber:client">>,
                                                                 __Opts,
                                                                 _el)});
        <<"jabber:server">> ->
            decode_schedule_schedule_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         {value,
                                          rfc6120:decode_message(<<"jabber:server">>,
                                                                 __Opts,
                                                                 _el)});
        <<"jabber:component:accept">> ->
            decode_schedule_schedule_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         {value,
                                          rfc6120:decode_message(<<"jabber:component:accept">>,
                                                                 __Opts,
                                                                 _el)});
        _ ->
            decode_schedule_schedule_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         Message)
    end;
decode_schedule_schedule_els(__TopXMLNS, __Opts,
                             [_ | _els], Message) ->
    decode_schedule_schedule_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 Message).

decode_schedule_schedule_attrs(__TopXMLNS,
                               [{<<"conversation">>, _val} | _attrs],
                               _Conversation, Type, Deliver_at) ->
    decode_schedule_schedule_attrs(__TopXMLNS,
                                   _attrs,
                                   _val,
                                   Type,
                                   Deliver_at);
decode_schedule_schedule_attrs(__TopXMLNS,
                               [{<<"type">>, _val} | _attrs], Conversation,
                               _Type, Deliver_at) ->
    decode_schedule_schedule_attrs(__TopXMLNS,
                                   _attrs,
                                   Conversation,
                                   _val,
                                   Deliver_at);
decode_schedule_schedule_attrs(__TopXMLNS,
                               [{<<"deliver-at">>, _val} | _attrs],
                               Conversation, Type, _Deliver_at) ->
    decode_schedule_schedule_attrs(__TopXMLNS,
                                   _attrs,
                                   Conversation,
                                   Type,
                                   _val);
decode_schedule_schedule_attrs(__TopXMLNS, [_ | _attrs],
                               Conversation, Type, Deliver_at) ->
    decode_schedule_schedule_attrs(__TopXMLNS,
                                   _attrs,
                                   Conversation,
                                   Type,
                                   Deliver_at);
decode_schedule_schedule_attrs(__TopXMLNS, [],
                               Conversation, Type, Deliver_at) ->
    {decode_schedule_schedule_attr_conversation(__TopXMLNS,
                                                Conversation),
     decode_schedule_schedule_attr_type(__TopXMLNS, Type),
     'decode_schedule_schedule_attr_deliver-at'(__TopXMLNS,
                                                Deliver_at)}.

encode_schedule_schedule({schedule_schedule,
                          Conversation,
                          Type,
                          Deliver_at,
                          Message},
                         __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/schedule">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_schedule_schedule_$message'(Message,
                                                          __NewTopXMLNS,
                                                          [])),
    _attrs =
        'encode_schedule_schedule_attr_deliver-at'(Deliver_at,
                                                   encode_schedule_schedule_attr_type(Type,
                                                                                      encode_schedule_schedule_attr_conversation(Conversation,
                                                                                                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                            __TopXMLNS)))),
    {xmlel, <<"schedule">>, _attrs, _els}.

'encode_schedule_schedule_$message'(Message, __TopXMLNS,
                                    _acc) ->
    [rfc6120:encode_message(Message, __TopXMLNS) | _acc].

decode_schedule_schedule_attr_conversation(__TopXMLNS,
                                           undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"conversation">>,
                   <<"schedule">>,
                   __TopXMLNS}});
decode_schedule_schedule_attr_conversation(__TopXMLNS,
                                           _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"conversation">>,
                           <<"schedule">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_schedule_schedule_attr_conversation(_val,
                                           _acc) ->
    [{<<"conversation">>, jid:encode(_val)} | _acc].

decode_schedule_schedule_attr_type(__TopXMLNS,
                                   undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"type">>,
                   <<"schedule">>,
                   __TopXMLNS}});
decode_schedule_schedule_attr_type(__TopXMLNS, _val) ->
    _val.

encode_schedule_schedule_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

'decode_schedule_schedule_attr_deliver-at'(__TopXMLNS,
                                           undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"deliver-at">>,
                   <<"schedule">>,
                   __TopXMLNS}});
'decode_schedule_schedule_attr_deliver-at'(__TopXMLNS,
                                           _val) ->
    case catch dec_utc(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"deliver-at">>,
                           <<"schedule">>,
                           __TopXMLNS}});
        _res -> _res
    end.

'encode_schedule_schedule_attr_deliver-at'(_val,
                                           _acc) ->
    [{<<"deliver-at">>, enc_utc(_val)} | _acc].
