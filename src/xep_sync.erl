%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_sync).

-compile(export_all).

do_decode(<<"call">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_call(<<"https://xabber.com/protocol/synchronization">>,
                     Opts,
                     El);
do_decode(<<"last-message">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_last(<<"https://xabber.com/protocol/synchronization">>,
                     Opts,
                     El);
do_decode(<<"delivered">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_delivered(<<"https://xabber.com/protocol/synchronization">>,
                          Opts,
                          El);
do_decode(<<"displayed">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_displayed(<<"https://xabber.com/protocol/synchronization">>,
                          Opts,
                          El);
do_decode(<<"unread">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_unread(<<"https://xabber.com/protocol/synchronization">>,
                       Opts,
                       El);
do_decode(<<"retract">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_retract(<<"https://xabber.com/protocol/synchronization">>,
                        Opts,
                        El);
do_decode(<<"metadata">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_metadata(<<"https://xabber.com/protocol/synchronization">>,
                         Opts,
                         El);
do_decode(<<"conversation">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_conversation(<<"https://xabber.com/protocol/synchronization">>,
                             Opts,
                             El);
do_decode(<<"query">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_query(<<"https://xabber.com/protocol/synchronization">>,
                      Opts,
                      El);
do_decode(<<"synchronization">>,
          <<"https://xabber.com/protocol/synchronization">>, El,
          Opts) ->
    decode_sync_synchronization(<<"https://xabber.com/protocol/synchronization">>,
                                Opts,
                                El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"call">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"last-message">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"delivered">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"displayed">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"unread">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"retract">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"metadata">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"conversation">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/synchronization">>},
     {<<"synchronization">>,
      <<"https://xabber.com/protocol/synchronization">>}].

do_encode({sync_synchronization} = Synchronization,
          TopXMLNS) ->
    encode_sync_synchronization(Synchronization, TopXMLNS);
do_encode({sync_query, _, _, _, _} = Query, TopXMLNS) ->
    encode_sync_query(Query, TopXMLNS);
do_encode({sync_conversation, _, _, _, _, _, _, _, _} =
              Conversation,
          TopXMLNS) ->
    encode_sync_conversation(Conversation, TopXMLNS);
do_encode({sync_metadata, _, _} = Metadata, TopXMLNS) ->
    encode_sync_metadata(Metadata, TopXMLNS);
do_encode({sync_retract, _} = Retract, TopXMLNS) ->
    encode_sync_retract(Retract, TopXMLNS);
do_encode({sync_unread, _, _} = Unread, TopXMLNS) ->
    encode_sync_unread(Unread, TopXMLNS);
do_encode({sync_displayed, _} = Displayed, TopXMLNS) ->
    encode_sync_displayed(Displayed, TopXMLNS);
do_encode({sync_delivered, _} = Delivered, TopXMLNS) ->
    encode_sync_delivered(Delivered, TopXMLNS);
do_encode({sync_last, _} = Last_message, TopXMLNS) ->
    encode_sync_last(Last_message, TopXMLNS);
do_encode({sync_call, _} = Call, TopXMLNS) ->
    encode_sync_call(Call, TopXMLNS).

do_get_name({sync_call, _}) -> <<"call">>;
do_get_name({sync_conversation,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _}) ->
    <<"conversation">>;
do_get_name({sync_delivered, _}) -> <<"delivered">>;
do_get_name({sync_displayed, _}) -> <<"displayed">>;
do_get_name({sync_last, _}) -> <<"last-message">>;
do_get_name({sync_metadata, _, _}) -> <<"metadata">>;
do_get_name({sync_query, _, _, _, _}) -> <<"query">>;
do_get_name({sync_retract, _}) -> <<"retract">>;
do_get_name({sync_synchronization}) ->
    <<"synchronization">>;
do_get_name({sync_unread, _, _}) -> <<"unread">>.

do_get_ns({sync_call, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_conversation,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_delivered, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_displayed, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_last, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_metadata, _, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_query, _, _, _, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_retract, _}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_synchronization}) ->
    <<"https://xabber.com/protocol/synchronization">>;
do_get_ns({sync_unread, _, _}) ->
    <<"https://xabber.com/protocol/synchronization">>.

get_els({sync_query, _stamp, _rsm, _xdata, _sub_els}) ->
    _sub_els;
get_els({sync_conversation,
         _type,
         _jid,
         _status,
         _stamp,
         _thread,
         _mute,
         _pinned,
         _sub_els}) ->
    _sub_els;
get_els({sync_metadata, _node, _sub_els}) -> _sub_els;
get_els({sync_last, _sub_els}) -> _sub_els;
get_els({sync_call, _sub_els}) -> _sub_els.

set_els({sync_query, _stamp, _rsm, _xdata, _},
        _sub_els) ->
    {sync_query, _stamp, _rsm, _xdata, _sub_els};
set_els({sync_conversation,
         _type,
         _jid,
         _status,
         _stamp,
         _thread,
         _mute,
         _pinned,
         _},
        _sub_els) ->
    {sync_conversation,
     _type,
     _jid,
     _status,
     _stamp,
     _thread,
     _mute,
     _pinned,
     _sub_els};
set_els({sync_metadata, _node, _}, _sub_els) ->
    {sync_metadata, _node, _sub_els};
set_els({sync_last, _}, _sub_els) ->
    {sync_last, _sub_els};
set_els({sync_call, _}, _sub_els) ->
    {sync_call, _sub_els}.

pp(sync_synchronization, 0) -> [];
pp(sync_query, 4) -> [stamp, rsm, xdata, sub_els];
pp(sync_conversation, 8) ->
    [type,
     jid,
     status,
     stamp,
     thread,
     mute,
     pinned,
     sub_els];
pp(sync_metadata, 2) -> [node, sub_els];
pp(sync_retract, 1) -> [version];
pp(sync_unread, 2) -> [count, 'after'];
pp(sync_displayed, 1) -> [id];
pp(sync_delivered, 1) -> [id];
pp(sync_last, 1) -> [sub_els];
pp(sync_call, 1) -> [sub_els];
pp(_, _) -> no.

records() ->
    [{sync_synchronization, 0},
     {sync_query, 4},
     {sync_conversation, 8},
     {sync_metadata, 2},
     {sync_retract, 1},
     {sync_unread, 2},
     {sync_displayed, 1},
     {sync_delivered, 1},
     {sync_last, 1},
     {sync_call, 1}].

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

decode_sync_call(__TopXMLNS, __Opts,
                 {xmlel, <<"call">>, _attrs, _els}) ->
    __Els = decode_sync_call_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 []),
    {sync_call, __Els}.

decode_sync_call_els(__TopXMLNS, __Opts, [], __Els) ->
    lists:reverse(__Els);
decode_sync_call_els(__TopXMLNS, __Opts,
                     [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_sync_call_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_sync_call_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         [_el | __Els]);
                Mod ->
                    decode_sync_call_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         [Mod:do_decode(_name,
                                                        __XMLNS,
                                                        _el,
                                                        __Opts)
                                          | __Els])
            end
    end;
decode_sync_call_els(__TopXMLNS, __Opts, [_ | _els],
                     __Els) ->
    decode_sync_call_els(__TopXMLNS, __Opts, _els, __Els).

encode_sync_call({sync_call, __Els}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"call">>, _attrs, _els}.

decode_sync_last(__TopXMLNS, __Opts,
                 {xmlel, <<"last-message">>, _attrs, _els}) ->
    __Els = decode_sync_last_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 []),
    {sync_last, __Els}.

decode_sync_last_els(__TopXMLNS, __Opts, [], __Els) ->
    lists:reverse(__Els);
decode_sync_last_els(__TopXMLNS, __Opts,
                     [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_sync_last_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_sync_last_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         [_el | __Els]);
                Mod ->
                    decode_sync_last_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         [Mod:do_decode(_name,
                                                        __XMLNS,
                                                        _el,
                                                        __Opts)
                                          | __Els])
            end
    end;
decode_sync_last_els(__TopXMLNS, __Opts, [_ | _els],
                     __Els) ->
    decode_sync_last_els(__TopXMLNS, __Opts, _els, __Els).

encode_sync_last({sync_last, __Els}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"last-message">>, _attrs, _els}.

decode_sync_delivered(__TopXMLNS, __Opts,
                      {xmlel, <<"delivered">>, _attrs, _els}) ->
    Id = decode_sync_delivered_attrs(__TopXMLNS,
                                     _attrs,
                                     undefined),
    {sync_delivered, Id}.

decode_sync_delivered_attrs(__TopXMLNS,
                            [{<<"id">>, _val} | _attrs], _Id) ->
    decode_sync_delivered_attrs(__TopXMLNS, _attrs, _val);
decode_sync_delivered_attrs(__TopXMLNS, [_ | _attrs],
                            Id) ->
    decode_sync_delivered_attrs(__TopXMLNS, _attrs, Id);
decode_sync_delivered_attrs(__TopXMLNS, [], Id) ->
    decode_sync_delivered_attr_id(__TopXMLNS, Id).

encode_sync_delivered({sync_delivered, Id},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_sync_delivered_attr_id(Id,
                                           xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                      __TopXMLNS)),
    {xmlel, <<"delivered">>, _attrs, _els}.

decode_sync_delivered_attr_id(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"id">>, <<"delivered">>, __TopXMLNS}});
decode_sync_delivered_attr_id(__TopXMLNS, _val) -> _val.

encode_sync_delivered_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_sync_displayed(__TopXMLNS, __Opts,
                      {xmlel, <<"displayed">>, _attrs, _els}) ->
    Id = decode_sync_displayed_attrs(__TopXMLNS,
                                     _attrs,
                                     undefined),
    {sync_displayed, Id}.

decode_sync_displayed_attrs(__TopXMLNS,
                            [{<<"id">>, _val} | _attrs], _Id) ->
    decode_sync_displayed_attrs(__TopXMLNS, _attrs, _val);
decode_sync_displayed_attrs(__TopXMLNS, [_ | _attrs],
                            Id) ->
    decode_sync_displayed_attrs(__TopXMLNS, _attrs, Id);
decode_sync_displayed_attrs(__TopXMLNS, [], Id) ->
    decode_sync_displayed_attr_id(__TopXMLNS, Id).

encode_sync_displayed({sync_displayed, Id},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_sync_displayed_attr_id(Id,
                                           xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                      __TopXMLNS)),
    {xmlel, <<"displayed">>, _attrs, _els}.

decode_sync_displayed_attr_id(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"id">>, <<"displayed">>, __TopXMLNS}});
decode_sync_displayed_attr_id(__TopXMLNS, _val) -> _val.

encode_sync_displayed_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_sync_unread(__TopXMLNS, __Opts,
                   {xmlel, <<"unread">>, _attrs, _els}) ->
    {Count, After} = decode_sync_unread_attrs(__TopXMLNS,
                                              _attrs,
                                              undefined,
                                              undefined),
    {sync_unread, Count, After}.

decode_sync_unread_attrs(__TopXMLNS,
                         [{<<"count">>, _val} | _attrs], _Count, After) ->
    decode_sync_unread_attrs(__TopXMLNS,
                             _attrs,
                             _val,
                             After);
decode_sync_unread_attrs(__TopXMLNS,
                         [{<<"after">>, _val} | _attrs], Count, _After) ->
    decode_sync_unread_attrs(__TopXMLNS,
                             _attrs,
                             Count,
                             _val);
decode_sync_unread_attrs(__TopXMLNS, [_ | _attrs],
                         Count, After) ->
    decode_sync_unread_attrs(__TopXMLNS,
                             _attrs,
                             Count,
                             After);
decode_sync_unread_attrs(__TopXMLNS, [], Count,
                         After) ->
    {decode_sync_unread_attr_count(__TopXMLNS, Count),
     decode_sync_unread_attr_after(__TopXMLNS, After)}.

encode_sync_unread({sync_unread, Count, After},
                   __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_sync_unread_attr_after(After,
                                           encode_sync_unread_attr_count(Count,
                                                                         xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                    __TopXMLNS))),
    {xmlel, <<"unread">>, _attrs, _els}.

decode_sync_unread_attr_count(__TopXMLNS, undefined) ->
    undefined;
decode_sync_unread_attr_count(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"count">>,
                           <<"unread">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_sync_unread_attr_count(undefined, _acc) -> _acc;
encode_sync_unread_attr_count(_val, _acc) ->
    [{<<"count">>, enc_int(_val)} | _acc].

decode_sync_unread_attr_after(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr, <<"after">>, <<"unread">>, __TopXMLNS}});
decode_sync_unread_attr_after(__TopXMLNS, _val) -> _val.

encode_sync_unread_attr_after(_val, _acc) ->
    [{<<"after">>, _val} | _acc].

decode_sync_retract(__TopXMLNS, __Opts,
                    {xmlel, <<"retract">>, _attrs, _els}) ->
    Version = decode_sync_retract_attrs(__TopXMLNS,
                                        _attrs,
                                        undefined),
    {sync_retract, Version}.

decode_sync_retract_attrs(__TopXMLNS,
                          [{<<"version">>, _val} | _attrs], _Version) ->
    decode_sync_retract_attrs(__TopXMLNS, _attrs, _val);
decode_sync_retract_attrs(__TopXMLNS, [_ | _attrs],
                          Version) ->
    decode_sync_retract_attrs(__TopXMLNS, _attrs, Version);
decode_sync_retract_attrs(__TopXMLNS, [], Version) ->
    decode_sync_retract_attr_version(__TopXMLNS, Version).

encode_sync_retract({sync_retract, Version},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_sync_retract_attr_version(Version,
                                              xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                         __TopXMLNS)),
    {xmlel, <<"retract">>, _attrs, _els}.

decode_sync_retract_attr_version(__TopXMLNS,
                                 undefined) ->
    undefined;
decode_sync_retract_attr_version(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"version">>,
                           <<"retract">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_sync_retract_attr_version(undefined, _acc) ->
    _acc;
encode_sync_retract_attr_version(_val, _acc) ->
    [{<<"version">>, enc_int(_val)} | _acc].

decode_sync_metadata(__TopXMLNS, __Opts,
                     {xmlel, <<"metadata">>, _attrs, _els}) ->
    __Els = decode_sync_metadata_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     []),
    Node = decode_sync_metadata_attrs(__TopXMLNS,
                                      _attrs,
                                      undefined),
    {sync_metadata, Node, __Els}.

decode_sync_metadata_els(__TopXMLNS, __Opts, [],
                         __Els) ->
    lists:reverse(__Els);
decode_sync_metadata_els(__TopXMLNS, __Opts,
                         [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_sync_metadata_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_sync_metadata_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             [_el | __Els]);
                Mod ->
                    decode_sync_metadata_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             [Mod:do_decode(_name,
                                                            __XMLNS,
                                                            _el,
                                                            __Opts)
                                              | __Els])
            end
    end;
decode_sync_metadata_els(__TopXMLNS, __Opts, [_ | _els],
                         __Els) ->
    decode_sync_metadata_els(__TopXMLNS,
                             __Opts,
                             _els,
                             __Els).

decode_sync_metadata_attrs(__TopXMLNS,
                           [{<<"node">>, _val} | _attrs], _Node) ->
    decode_sync_metadata_attrs(__TopXMLNS, _attrs, _val);
decode_sync_metadata_attrs(__TopXMLNS, [_ | _attrs],
                           Node) ->
    decode_sync_metadata_attrs(__TopXMLNS, _attrs, Node);
decode_sync_metadata_attrs(__TopXMLNS, [], Node) ->
    decode_sync_metadata_attr_node(__TopXMLNS, Node).

encode_sync_metadata({sync_metadata, Node, __Els},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els],
    _attrs = encode_sync_metadata_attr_node(Node,
                                            xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                       __TopXMLNS)),
    {xmlel, <<"metadata">>, _attrs, _els}.

decode_sync_metadata_attr_node(__TopXMLNS, undefined) ->
    <<>>;
decode_sync_metadata_attr_node(__TopXMLNS, _val) ->
    _val.

encode_sync_metadata_attr_node(<<>>, _acc) -> _acc;
encode_sync_metadata_attr_node(_val, _acc) ->
    [{<<"node">>, _val} | _acc].

decode_sync_conversation(__TopXMLNS, __Opts,
                         {xmlel, <<"conversation">>, _attrs, _els}) ->
    __Els = decode_sync_conversation_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         []),
    {Jid, Type, Status, Stamp, Thread, Mute, Pinned} =
        decode_sync_conversation_attrs(__TopXMLNS,
                                       _attrs,
                                       undefined,
                                       undefined,
                                       undefined,
                                       undefined,
                                       undefined,
                                       undefined,
                                       undefined),
    {sync_conversation,
     Type,
     Jid,
     Status,
     Stamp,
     Thread,
     Mute,
     Pinned,
     __Els}.

decode_sync_conversation_els(__TopXMLNS, __Opts, [],
                             __Els) ->
    lists:reverse(__Els);
decode_sync_conversation_els(__TopXMLNS, __Opts,
                             [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_sync_conversation_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_sync_conversation_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 [_el | __Els]);
                Mod ->
                    decode_sync_conversation_els(__TopXMLNS,
                                                 __Opts,
                                                 _els,
                                                 [Mod:do_decode(_name,
                                                                __XMLNS,
                                                                _el,
                                                                __Opts)
                                                  | __Els])
            end
    end;
decode_sync_conversation_els(__TopXMLNS, __Opts,
                             [_ | _els], __Els) ->
    decode_sync_conversation_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 __Els).

decode_sync_conversation_attrs(__TopXMLNS,
                               [{<<"jid">>, _val} | _attrs], _Jid, Type, Status,
                               Stamp, Thread, Mute, Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   _val,
                                   Type,
                                   Status,
                                   Stamp,
                                   Thread,
                                   Mute,
                                   Pinned);
decode_sync_conversation_attrs(__TopXMLNS,
                               [{<<"type">>, _val} | _attrs], Jid, _Type,
                               Status, Stamp, Thread, Mute, Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   Jid,
                                   _val,
                                   Status,
                                   Stamp,
                                   Thread,
                                   Mute,
                                   Pinned);
decode_sync_conversation_attrs(__TopXMLNS,
                               [{<<"status">>, _val} | _attrs], Jid, Type,
                               _Status, Stamp, Thread, Mute, Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   Jid,
                                   Type,
                                   _val,
                                   Stamp,
                                   Thread,
                                   Mute,
                                   Pinned);
decode_sync_conversation_attrs(__TopXMLNS,
                               [{<<"stamp">>, _val} | _attrs], Jid, Type,
                               Status, _Stamp, Thread, Mute, Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   Jid,
                                   Type,
                                   Status,
                                   _val,
                                   Thread,
                                   Mute,
                                   Pinned);
decode_sync_conversation_attrs(__TopXMLNS,
                               [{<<"thread">>, _val} | _attrs], Jid, Type,
                               Status, Stamp, _Thread, Mute, Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   Jid,
                                   Type,
                                   Status,
                                   Stamp,
                                   _val,
                                   Mute,
                                   Pinned);
decode_sync_conversation_attrs(__TopXMLNS,
                               [{<<"mute">>, _val} | _attrs], Jid, Type, Status,
                               Stamp, Thread, _Mute, Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   Jid,
                                   Type,
                                   Status,
                                   Stamp,
                                   Thread,
                                   _val,
                                   Pinned);
decode_sync_conversation_attrs(__TopXMLNS,
                               [{<<"pinned">>, _val} | _attrs], Jid, Type,
                               Status, Stamp, Thread, Mute, _Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   Jid,
                                   Type,
                                   Status,
                                   Stamp,
                                   Thread,
                                   Mute,
                                   _val);
decode_sync_conversation_attrs(__TopXMLNS, [_ | _attrs],
                               Jid, Type, Status, Stamp, Thread, Mute,
                               Pinned) ->
    decode_sync_conversation_attrs(__TopXMLNS,
                                   _attrs,
                                   Jid,
                                   Type,
                                   Status,
                                   Stamp,
                                   Thread,
                                   Mute,
                                   Pinned);
decode_sync_conversation_attrs(__TopXMLNS, [], Jid,
                               Type, Status, Stamp, Thread, Mute, Pinned) ->
    {decode_sync_conversation_attr_jid(__TopXMLNS, Jid),
     decode_sync_conversation_attr_type(__TopXMLNS, Type),
     decode_sync_conversation_attr_status(__TopXMLNS,
                                          Status),
     decode_sync_conversation_attr_stamp(__TopXMLNS, Stamp),
     decode_sync_conversation_attr_thread(__TopXMLNS,
                                          Thread),
     decode_sync_conversation_attr_mute(__TopXMLNS, Mute),
     decode_sync_conversation_attr_pinned(__TopXMLNS,
                                          Pinned)}.

encode_sync_conversation({sync_conversation,
                          Type,
                          Jid,
                          Status,
                          Stamp,
                          Thread,
                          Mute,
                          Pinned,
                          __Els},
                         __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els],
    _attrs = encode_sync_conversation_attr_pinned(Pinned,
                                                  encode_sync_conversation_attr_mute(Mute,
                                                                                     encode_sync_conversation_attr_thread(Thread,
                                                                                                                          encode_sync_conversation_attr_stamp(Stamp,
                                                                                                                                                              encode_sync_conversation_attr_status(Status,
                                                                                                                                                                                                   encode_sync_conversation_attr_type(Type,
                                                                                                                                                                                                                                      encode_sync_conversation_attr_jid(Jid,
                                                                                                                                                                                                                                                                        xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                                                                   __TopXMLNS)))))))),
    {xmlel, <<"conversation">>, _attrs, _els}.

decode_sync_conversation_attr_jid(__TopXMLNS,
                                  undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"jid">>,
                   <<"conversation">>,
                   __TopXMLNS}});
decode_sync_conversation_attr_jid(__TopXMLNS, _val) ->
    case catch jid:decode(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"jid">>,
                           <<"conversation">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_sync_conversation_attr_jid(_val, _acc) ->
    [{<<"jid">>, jid:encode(_val)} | _acc].

decode_sync_conversation_attr_type(__TopXMLNS,
                                   undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"type">>,
                   <<"conversation">>,
                   __TopXMLNS}});
decode_sync_conversation_attr_type(__TopXMLNS, _val) ->
    _val.

encode_sync_conversation_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_sync_conversation_attr_status(__TopXMLNS,
                                     undefined) ->
    undefined;
decode_sync_conversation_attr_status(__TopXMLNS,
                                     _val) ->
    case catch dec_enum(_val, [active, deleted, archived])
        of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"status">>,
                           <<"conversation">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_sync_conversation_attr_status(undefined, _acc) ->
    _acc;
encode_sync_conversation_attr_status(_val, _acc) ->
    [{<<"status">>, enc_enum(_val)} | _acc].

decode_sync_conversation_attr_stamp(__TopXMLNS,
                                    undefined) ->
    <<>>;
decode_sync_conversation_attr_stamp(__TopXMLNS, _val) ->
    _val.

encode_sync_conversation_attr_stamp(<<>>, _acc) -> _acc;
encode_sync_conversation_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, _val} | _acc].

decode_sync_conversation_attr_thread(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_sync_conversation_attr_thread(__TopXMLNS,
                                     _val) ->
    _val.

encode_sync_conversation_attr_thread(<<>>, _acc) ->
    _acc;
encode_sync_conversation_attr_thread(_val, _acc) ->
    [{<<"thread">>, _val} | _acc].

decode_sync_conversation_attr_mute(__TopXMLNS,
                                   undefined) ->
    undefined;
decode_sync_conversation_attr_mute(__TopXMLNS, _val) ->
    _val.

encode_sync_conversation_attr_mute(undefined, _acc) ->
    _acc;
encode_sync_conversation_attr_mute(_val, _acc) ->
    [{<<"mute">>, _val} | _acc].

decode_sync_conversation_attr_pinned(__TopXMLNS,
                                     undefined) ->
    undefined;
decode_sync_conversation_attr_pinned(__TopXMLNS,
                                     _val) ->
    _val.

encode_sync_conversation_attr_pinned(undefined, _acc) ->
    _acc;
encode_sync_conversation_attr_pinned(_val, _acc) ->
    [{<<"pinned">>, _val} | _acc].

decode_sync_query(__TopXMLNS, __Opts,
                  {xmlel, <<"query">>, _attrs, _els}) ->
    {Xdata, Rsm, __Els} = decode_sync_query_els(__TopXMLNS,
                                                __Opts,
                                                _els,
                                                undefined,
                                                undefined,
                                                []),
    Stamp = decode_sync_query_attrs(__TopXMLNS,
                                    _attrs,
                                    undefined),
    {sync_query, Stamp, Rsm, Xdata, __Els}.

decode_sync_query_els(__TopXMLNS, __Opts, [], Xdata,
                      Rsm, __Els) ->
    {Xdata, Rsm, lists:reverse(__Els)};
decode_sync_query_els(__TopXMLNS, __Opts,
                      [{xmlel, <<"set">>, _attrs, _} = _el | _els], Xdata,
                      Rsm, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"http://jabber.org/protocol/rsm">> ->
            decode_sync_query_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Xdata,
                                  xep0059:decode_rsm_set(<<"http://jabber.org/protocol/rsm">>,
                                                         __Opts,
                                                         _el),
                                  __Els);
        _ ->
            decode_sync_query_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Xdata,
                                  Rsm,
                                  [_el | __Els])
    end;
decode_sync_query_els(__TopXMLNS, __Opts,
                      [{xmlel, <<"x">>, _attrs, _} = _el | _els], Xdata, Rsm,
                      __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"jabber:x:data">> ->
            decode_sync_query_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  xep0004:decode_xdata(<<"jabber:x:data">>,
                                                       __Opts,
                                                       _el),
                                  Rsm,
                                  __Els);
        _ ->
            decode_sync_query_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Xdata,
                                  Rsm,
                                  [_el | __Els])
    end;
decode_sync_query_els(__TopXMLNS, __Opts,
                      [{xmlel, _name, _attrs, _} = _el | _els], Xdata, Rsm,
                      __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_sync_query_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Xdata,
                                  Rsm,
                                  [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_sync_query_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Xdata,
                                          Rsm,
                                          [_el | __Els]);
                Mod ->
                    decode_sync_query_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Xdata,
                                          Rsm,
                                          [Mod:do_decode(_name,
                                                         __XMLNS,
                                                         _el,
                                                         __Opts)
                                           | __Els])
            end
    end;
decode_sync_query_els(__TopXMLNS, __Opts, [_ | _els],
                      Xdata, Rsm, __Els) ->
    decode_sync_query_els(__TopXMLNS,
                          __Opts,
                          _els,
                          Xdata,
                          Rsm,
                          __Els).

decode_sync_query_attrs(__TopXMLNS,
                        [{<<"stamp">>, _val} | _attrs], _Stamp) ->
    decode_sync_query_attrs(__TopXMLNS, _attrs, _val);
decode_sync_query_attrs(__TopXMLNS, [_ | _attrs],
                        Stamp) ->
    decode_sync_query_attrs(__TopXMLNS, _attrs, Stamp);
decode_sync_query_attrs(__TopXMLNS, [], Stamp) ->
    decode_sync_query_attr_stamp(__TopXMLNS, Stamp).

encode_sync_query({sync_query,
                   Stamp,
                   Rsm,
                   Xdata,
                   __Els},
                  __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse('encode_sync_query_$xdata'(Xdata,
                                                        __NewTopXMLNS,
                                                        'encode_sync_query_$rsm'(Rsm,
                                                                                 __NewTopXMLNS,
                                                                                 []))),
    _attrs = encode_sync_query_attr_stamp(Stamp,
                                          xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                     __TopXMLNS)),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_sync_query_$xdata'(undefined, __TopXMLNS,
                           _acc) ->
    _acc;
'encode_sync_query_$xdata'(Xdata, __TopXMLNS, _acc) ->
    [xep0004:encode_xdata(Xdata, __TopXMLNS) | _acc].

'encode_sync_query_$rsm'(undefined, __TopXMLNS, _acc) ->
    _acc;
'encode_sync_query_$rsm'(Rsm, __TopXMLNS, _acc) ->
    [xep0059:encode_rsm_set(Rsm, __TopXMLNS) | _acc].

decode_sync_query_attr_stamp(__TopXMLNS, undefined) ->
    <<>>;
decode_sync_query_attr_stamp(__TopXMLNS, _val) -> _val.

encode_sync_query_attr_stamp(<<>>, _acc) -> _acc;
encode_sync_query_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, _val} | _acc].

decode_sync_synchronization(__TopXMLNS, __Opts,
                            {xmlel, <<"synchronization">>, _attrs, _els}) ->
    {sync_synchronization}.

encode_sync_synchronization({sync_synchronization},
                            __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/synchronization">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"synchronization">>, _attrs, _els}.
