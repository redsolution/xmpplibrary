%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_permissions).

-compile(export_all).

do_decode(<<"newbies">>,
          <<"https://xabber.com/protocol/permissions">>, El,
          Opts) ->
    decode_perms_newbies(<<"https://xabber.com/protocol/permissions">>,
                         Opts,
                         El);
do_decode(<<"defaults">>,
          <<"https://xabber.com/protocol/permissions">>, El,
          Opts) ->
    decode_perms_defaults(<<"https://xabber.com/protocol/permissions">>,
                          Opts,
                          El);
do_decode(<<"delete">>,
          <<"https://xabber.com/protocol/permissions">>, El,
          Opts) ->
    decode_perms_delete(<<"https://xabber.com/protocol/permissions">>,
                        Opts,
                        El);
do_decode(<<"permissions">>,
          <<"https://xabber.com/protocol/permissions">>, El,
          Opts) ->
    decode_perms_permissions(<<"https://xabber.com/protocol/permissions">>,
                             Opts,
                             El);
do_decode(<<"permission">>,
          <<"https://xabber.com/protocol/permissions">>, El,
          Opts) ->
    decode_perms_permission(<<"https://xabber.com/protocol/permissions">>,
                            Opts,
                            El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"newbies">>,
      <<"https://xabber.com/protocol/permissions">>},
     {<<"defaults">>,
      <<"https://xabber.com/protocol/permissions">>},
     {<<"delete">>,
      <<"https://xabber.com/protocol/permissions">>},
     {<<"permissions">>,
      <<"https://xabber.com/protocol/permissions">>},
     {<<"permission">>,
      <<"https://xabber.com/protocol/permissions">>}].

do_encode({perms_permission, _, _, _, _, _, _, _, _} =
              Permission,
          TopXMLNS) ->
    encode_perms_permission(Permission, TopXMLNS);
do_encode({perms_permissions, _, _, _, _, _} =
              Permissions,
          TopXMLNS) ->
    encode_perms_permissions(Permissions, TopXMLNS);
do_encode({perms_delete, _} = Delete, TopXMLNS) ->
    encode_perms_delete(Delete, TopXMLNS);
do_encode({perms_defaults, _} = Defaults, TopXMLNS) ->
    encode_perms_defaults(Defaults, TopXMLNS);
do_encode({perms_newbies, _} = Newbies, TopXMLNS) ->
    encode_perms_newbies(Newbies, TopXMLNS).

do_get_name({perms_defaults, _}) -> <<"defaults">>;
do_get_name({perms_delete, _}) -> <<"delete">>;
do_get_name({perms_newbies, _}) -> <<"newbies">>;
do_get_name({perms_permission,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _}) ->
    <<"permission">>;
do_get_name({perms_permissions, _, _, _, _, _}) ->
    <<"permissions">>.

do_get_ns({perms_defaults, _}) ->
    <<"https://xabber.com/protocol/permissions">>;
do_get_ns({perms_delete, _}) ->
    <<"https://xabber.com/protocol/permissions">>;
do_get_ns({perms_newbies, _}) ->
    <<"https://xabber.com/protocol/permissions">>;
do_get_ns({perms_permission, _, _, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/permissions">>;
do_get_ns({perms_permissions, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/permissions">>.

get_els({perms_delete, _sub_els}) -> _sub_els.

set_els({perms_delete, _}, _sub_els) ->
    {perms_delete, _sub_els}.

pp(perms_permission, 8) ->
    [name,
     level,
     status,
     seconds,
     expires,
     tag,
     fixed,
     display];
pp(perms_permissions, 5) ->
    [target, label, actor, stamp, perms];
pp(perms_delete, 1) -> [sub_els];
pp(perms_defaults, 1) -> [perms];
pp(perms_newbies, 1) -> [perms];
pp(_, _) -> no.

records() ->
    [{perms_permission, 8},
     {perms_permissions, 5},
     {perms_delete, 1},
     {perms_defaults, 1},
     {perms_newbies, 1}].

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

decode_perms_newbies(__TopXMLNS, __Opts,
                     {xmlel, <<"newbies">>, _attrs, _els}) ->
    Perms = decode_perms_newbies_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     undefined),
    {perms_newbies, Perms}.

decode_perms_newbies_els(__TopXMLNS, __Opts, [],
                         Perms) ->
    Perms;
decode_perms_newbies_els(__TopXMLNS, __Opts,
                         [{xmlel, <<"permissions">>, _attrs, _} = _el | _els],
                         Perms) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/permissions">> ->
            decode_perms_newbies_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     decode_perms_permissions(<<"https://xabber.com/protocol/permissions">>,
                                                              __Opts,
                                                              _el));
        _ ->
            decode_perms_newbies_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Perms)
    end;
decode_perms_newbies_els(__TopXMLNS, __Opts, [_ | _els],
                         Perms) ->
    decode_perms_newbies_els(__TopXMLNS,
                             __Opts,
                             _els,
                             Perms).

encode_perms_newbies({perms_newbies, Perms},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/permissions">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_perms_newbies_$perms'(Perms,
                                                    __NewTopXMLNS,
                                                    [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"newbies">>, _attrs, _els}.

'encode_perms_newbies_$perms'(undefined, __TopXMLNS,
                              _acc) ->
    _acc;
'encode_perms_newbies_$perms'(Perms, __TopXMLNS,
                              _acc) ->
    [encode_perms_permissions(Perms, __TopXMLNS) | _acc].

decode_perms_defaults(__TopXMLNS, __Opts,
                      {xmlel, <<"defaults">>, _attrs, _els}) ->
    Perms = decode_perms_defaults_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      undefined),
    {perms_defaults, Perms}.

decode_perms_defaults_els(__TopXMLNS, __Opts, [],
                          Perms) ->
    Perms;
decode_perms_defaults_els(__TopXMLNS, __Opts,
                          [{xmlel, <<"permissions">>, _attrs, _} = _el | _els],
                          Perms) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/permissions">> ->
            decode_perms_defaults_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      decode_perms_permissions(<<"https://xabber.com/protocol/permissions">>,
                                                               __Opts,
                                                               _el));
        _ ->
            decode_perms_defaults_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      Perms)
    end;
decode_perms_defaults_els(__TopXMLNS, __Opts,
                          [_ | _els], Perms) ->
    decode_perms_defaults_els(__TopXMLNS,
                              __Opts,
                              _els,
                              Perms).

encode_perms_defaults({perms_defaults, Perms},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/permissions">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_perms_defaults_$perms'(Perms,
                                                     __NewTopXMLNS,
                                                     [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"defaults">>, _attrs, _els}.

'encode_perms_defaults_$perms'(undefined, __TopXMLNS,
                               _acc) ->
    _acc;
'encode_perms_defaults_$perms'(Perms, __TopXMLNS,
                               _acc) ->
    [encode_perms_permissions(Perms, __TopXMLNS) | _acc].

decode_perms_delete(__TopXMLNS, __Opts,
                    {xmlel, <<"delete">>, _attrs, _els}) ->
    __Els = decode_perms_delete_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    []),
    {perms_delete, __Els}.

decode_perms_delete_els(__TopXMLNS, __Opts, [],
                        __Els) ->
    lists:reverse(__Els);
decode_perms_delete_els(__TopXMLNS, __Opts,
                        [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_perms_delete_els(__TopXMLNS,
                                    __Opts,
                                    _els,
                                    [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_perms_delete_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            [_el | __Els]);
                Mod ->
                    decode_perms_delete_els(__TopXMLNS,
                                            __Opts,
                                            _els,
                                            [Mod:do_decode(_name,
                                                           __XMLNS,
                                                           _el,
                                                           __Opts)
                                             | __Els])
            end
    end;
decode_perms_delete_els(__TopXMLNS, __Opts, [_ | _els],
                        __Els) ->
    decode_perms_delete_els(__TopXMLNS,
                            __Opts,
                            _els,
                            __Els).

encode_perms_delete({perms_delete, __Els},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/permissions">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"delete">>, _attrs, _els}.

decode_perms_permissions(__TopXMLNS, __Opts,
                         {xmlel, <<"permissions">>, _attrs, _els}) ->
    Perms = decode_perms_permissions_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         []),
    {Target, Label, Actor, Stamp} =
        decode_perms_permissions_attrs(__TopXMLNS,
                                       _attrs,
                                       undefined,
                                       undefined,
                                       undefined,
                                       undefined),
    {perms_permissions, Target, Label, Actor, Stamp, Perms}.

decode_perms_permissions_els(__TopXMLNS, __Opts, [],
                             Perms) ->
    lists:reverse(Perms);
decode_perms_permissions_els(__TopXMLNS, __Opts,
                             [{xmlel, <<"permission">>, _attrs, _} = _el
                              | _els],
                             Perms) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/permissions">> ->
            decode_perms_permissions_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         [decode_perms_permission(<<"https://xabber.com/protocol/permissions">>,
                                                                  __Opts,
                                                                  _el)
                                          | Perms]);
        _ ->
            decode_perms_permissions_els(__TopXMLNS,
                                         __Opts,
                                         _els,
                                         Perms)
    end;
decode_perms_permissions_els(__TopXMLNS, __Opts,
                             [_ | _els], Perms) ->
    decode_perms_permissions_els(__TopXMLNS,
                                 __Opts,
                                 _els,
                                 Perms).

decode_perms_permissions_attrs(__TopXMLNS,
                               [{<<"target">>, _val} | _attrs], _Target, Label,
                               Actor, Stamp) ->
    decode_perms_permissions_attrs(__TopXMLNS,
                                   _attrs,
                                   _val,
                                   Label,
                                   Actor,
                                   Stamp);
decode_perms_permissions_attrs(__TopXMLNS,
                               [{<<"label">>, _val} | _attrs], Target, _Label,
                               Actor, Stamp) ->
    decode_perms_permissions_attrs(__TopXMLNS,
                                   _attrs,
                                   Target,
                                   _val,
                                   Actor,
                                   Stamp);
decode_perms_permissions_attrs(__TopXMLNS,
                               [{<<"actor">>, _val} | _attrs], Target, Label,
                               _Actor, Stamp) ->
    decode_perms_permissions_attrs(__TopXMLNS,
                                   _attrs,
                                   Target,
                                   Label,
                                   _val,
                                   Stamp);
decode_perms_permissions_attrs(__TopXMLNS,
                               [{<<"stamp">>, _val} | _attrs], Target, Label,
                               Actor, _Stamp) ->
    decode_perms_permissions_attrs(__TopXMLNS,
                                   _attrs,
                                   Target,
                                   Label,
                                   Actor,
                                   _val);
decode_perms_permissions_attrs(__TopXMLNS, [_ | _attrs],
                               Target, Label, Actor, Stamp) ->
    decode_perms_permissions_attrs(__TopXMLNS,
                                   _attrs,
                                   Target,
                                   Label,
                                   Actor,
                                   Stamp);
decode_perms_permissions_attrs(__TopXMLNS, [], Target,
                               Label, Actor, Stamp) ->
    {decode_perms_permissions_attr_target(__TopXMLNS,
                                          Target),
     decode_perms_permissions_attr_label(__TopXMLNS, Label),
     decode_perms_permissions_attr_actor(__TopXMLNS, Actor),
     decode_perms_permissions_attr_stamp(__TopXMLNS, Stamp)}.

encode_perms_permissions({perms_permissions,
                          Target,
                          Label,
                          Actor,
                          Stamp,
                          Perms},
                         __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/permissions">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_perms_permissions_$perms'(Perms,
                                                        __NewTopXMLNS,
                                                        [])),
    _attrs = encode_perms_permissions_attr_stamp(Stamp,
                                                 encode_perms_permissions_attr_actor(Actor,
                                                                                     encode_perms_permissions_attr_label(Label,
                                                                                                                         encode_perms_permissions_attr_target(Target,
                                                                                                                                                              xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                         __TopXMLNS))))),
    {xmlel, <<"permissions">>, _attrs, _els}.

'encode_perms_permissions_$perms'([], __TopXMLNS,
                                  _acc) ->
    _acc;
'encode_perms_permissions_$perms'([Perms | _els],
                                  __TopXMLNS, _acc) ->
    'encode_perms_permissions_$perms'(_els,
                                      __TopXMLNS,
                                      [encode_perms_permission(Perms,
                                                               __TopXMLNS)
                                       | _acc]).

decode_perms_permissions_attr_target(__TopXMLNS,
                                     undefined) ->
    undefined;
decode_perms_permissions_attr_target(__TopXMLNS,
                                     _val) ->
    _val.

encode_perms_permissions_attr_target(undefined, _acc) ->
    _acc;
encode_perms_permissions_attr_target(_val, _acc) ->
    [{<<"target">>, _val} | _acc].

decode_perms_permissions_attr_label(__TopXMLNS,
                                    undefined) ->
    undefined;
decode_perms_permissions_attr_label(__TopXMLNS, _val) ->
    _val.

encode_perms_permissions_attr_label(undefined, _acc) ->
    _acc;
encode_perms_permissions_attr_label(_val, _acc) ->
    [{<<"label">>, _val} | _acc].

decode_perms_permissions_attr_actor(__TopXMLNS,
                                    undefined) ->
    undefined;
decode_perms_permissions_attr_actor(__TopXMLNS, _val) ->
    _val.

encode_perms_permissions_attr_actor(undefined, _acc) ->
    _acc;
encode_perms_permissions_attr_actor(_val, _acc) ->
    [{<<"actor">>, _val} | _acc].

decode_perms_permissions_attr_stamp(__TopXMLNS,
                                    undefined) ->
    undefined;
decode_perms_permissions_attr_stamp(__TopXMLNS, _val) ->
    case catch dec_utc(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"stamp">>,
                           <<"permissions">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_perms_permissions_attr_stamp(undefined, _acc) ->
    _acc;
encode_perms_permissions_attr_stamp(_val, _acc) ->
    [{<<"stamp">>, enc_utc(_val)} | _acc].

decode_perms_permission(__TopXMLNS, __Opts,
                        {xmlel, <<"permission">>, _attrs, _els}) ->
    {Name,
     Display,
     Level,
     Status,
     Seconds,
     Expires,
     Tag,
     Fixed} =
        decode_perms_permission_attrs(__TopXMLNS,
                                      _attrs,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined,
                                      undefined),
    {perms_permission,
     Name,
     Level,
     Status,
     Seconds,
     Expires,
     Tag,
     Fixed,
     Display}.

decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"name">>, _val} | _attrs], _Name, Display,
                              Level, Status, Seconds, Expires, Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  _val,
                                  Display,
                                  Level,
                                  Status,
                                  Seconds,
                                  Expires,
                                  Tag,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"display">>, _val} | _attrs], Name, _Display,
                              Level, Status, Seconds, Expires, Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  _val,
                                  Level,
                                  Status,
                                  Seconds,
                                  Expires,
                                  Tag,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"level">>, _val} | _attrs], Name, Display,
                              _Level, Status, Seconds, Expires, Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  Display,
                                  _val,
                                  Status,
                                  Seconds,
                                  Expires,
                                  Tag,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"status">>, _val} | _attrs], Name, Display,
                              Level, _Status, Seconds, Expires, Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  Display,
                                  Level,
                                  _val,
                                  Seconds,
                                  Expires,
                                  Tag,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"seconds">>, _val} | _attrs], Name, Display,
                              Level, Status, _Seconds, Expires, Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  Display,
                                  Level,
                                  Status,
                                  _val,
                                  Expires,
                                  Tag,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"expires">>, _val} | _attrs], Name, Display,
                              Level, Status, Seconds, _Expires, Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  Display,
                                  Level,
                                  Status,
                                  Seconds,
                                  _val,
                                  Tag,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"tag">>, _val} | _attrs], Name, Display,
                              Level, Status, Seconds, Expires, _Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  Display,
                                  Level,
                                  Status,
                                  Seconds,
                                  Expires,
                                  _val,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS,
                              [{<<"fixed">>, _val} | _attrs], Name, Display,
                              Level, Status, Seconds, Expires, Tag, _Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  Display,
                                  Level,
                                  Status,
                                  Seconds,
                                  Expires,
                                  Tag,
                                  _val);
decode_perms_permission_attrs(__TopXMLNS, [_ | _attrs],
                              Name, Display, Level, Status, Seconds, Expires,
                              Tag, Fixed) ->
    decode_perms_permission_attrs(__TopXMLNS,
                                  _attrs,
                                  Name,
                                  Display,
                                  Level,
                                  Status,
                                  Seconds,
                                  Expires,
                                  Tag,
                                  Fixed);
decode_perms_permission_attrs(__TopXMLNS, [], Name,
                              Display, Level, Status, Seconds, Expires, Tag,
                              Fixed) ->
    {decode_perms_permission_attr_name(__TopXMLNS, Name),
     decode_perms_permission_attr_display(__TopXMLNS,
                                          Display),
     decode_perms_permission_attr_level(__TopXMLNS, Level),
     decode_perms_permission_attr_status(__TopXMLNS, Status),
     decode_perms_permission_attr_seconds(__TopXMLNS,
                                          Seconds),
     decode_perms_permission_attr_expires(__TopXMLNS,
                                          Expires),
     decode_perms_permission_attr_tag(__TopXMLNS, Tag),
     decode_perms_permission_attr_fixed(__TopXMLNS, Fixed)}.

encode_perms_permission({perms_permission,
                         Name,
                         Level,
                         Status,
                         Seconds,
                         Expires,
                         Tag,
                         Fixed,
                         Display},
                        __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/permissions">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_perms_permission_attr_fixed(Fixed,
                                                encode_perms_permission_attr_tag(Tag,
                                                                                 encode_perms_permission_attr_expires(Expires,
                                                                                                                      encode_perms_permission_attr_seconds(Seconds,
                                                                                                                                                           encode_perms_permission_attr_status(Status,
                                                                                                                                                                                               encode_perms_permission_attr_level(Level,
                                                                                                                                                                                                                                  encode_perms_permission_attr_display(Display,
                                                                                                                                                                                                                                                                       encode_perms_permission_attr_name(Name,
                                                                                                                                                                                                                                                                                                         xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                                    __TopXMLNS))))))))),
    {xmlel, <<"permission">>, _attrs, _els}.

decode_perms_permission_attr_name(__TopXMLNS,
                                  undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"name">>,
                   <<"permission">>,
                   __TopXMLNS}});
decode_perms_permission_attr_name(__TopXMLNS, _val) ->
    _val.

encode_perms_permission_attr_name(_val, _acc) ->
    [{<<"name">>, _val} | _acc].

decode_perms_permission_attr_display(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_perms_permission_attr_display(__TopXMLNS,
                                     _val) ->
    _val.

encode_perms_permission_attr_display(<<>>, _acc) ->
    _acc;
encode_perms_permission_attr_display(_val, _acc) ->
    [{<<"display">>, _val} | _acc].

decode_perms_permission_attr_level(__TopXMLNS,
                                   undefined) ->
    <<>>;
decode_perms_permission_attr_level(__TopXMLNS, _val) ->
    _val.

encode_perms_permission_attr_level(<<>>, _acc) -> _acc;
encode_perms_permission_attr_level(_val, _acc) ->
    [{<<"level">>, _val} | _acc].

decode_perms_permission_attr_status(__TopXMLNS,
                                    undefined) ->
    erlang:error({xmpp_codec,
                  {missing_attr,
                   <<"status">>,
                   <<"permission">>,
                   __TopXMLNS}});
decode_perms_permission_attr_status(__TopXMLNS, _val) ->
    case catch dec_bool(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"status">>,
                           <<"permission">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_perms_permission_attr_status(_val, _acc) ->
    [{<<"status">>, enc_bool(_val)} | _acc].

decode_perms_permission_attr_seconds(__TopXMLNS,
                                     undefined) ->
    undefined;
decode_perms_permission_attr_seconds(__TopXMLNS,
                                     _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"seconds">>,
                           <<"permission">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_perms_permission_attr_seconds(undefined, _acc) ->
    _acc;
encode_perms_permission_attr_seconds(_val, _acc) ->
    [{<<"seconds">>, enc_int(_val)} | _acc].

decode_perms_permission_attr_expires(__TopXMLNS,
                                     undefined) ->
    undefined;
decode_perms_permission_attr_expires(__TopXMLNS,
                                     _val) ->
    case catch dec_int(_val, 0, infinity) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"expires">>,
                           <<"permission">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_perms_permission_attr_expires(undefined, _acc) ->
    _acc;
encode_perms_permission_attr_expires(_val, _acc) ->
    [{<<"expires">>, enc_int(_val)} | _acc].

decode_perms_permission_attr_tag(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_perms_permission_attr_tag(__TopXMLNS, _val) ->
    _val.

encode_perms_permission_attr_tag(<<>>, _acc) -> _acc;
encode_perms_permission_attr_tag(_val, _acc) ->
    [{<<"tag">>, _val} | _acc].

decode_perms_permission_attr_fixed(__TopXMLNS,
                                   undefined) ->
    false;
decode_perms_permission_attr_fixed(__TopXMLNS, _val) ->
    case catch dec_bool(_val) of
        {'EXIT', _} ->
            erlang:error({xmpp_codec,
                          {bad_attr_value,
                           <<"fixed">>,
                           <<"permission">>,
                           __TopXMLNS}});
        _res -> _res
    end.

encode_perms_permission_attr_fixed(false, _acc) -> _acc;
encode_perms_permission_attr_fixed(_val, _acc) ->
    [{<<"fixed">>, enc_bool(_val)} | _acc].
