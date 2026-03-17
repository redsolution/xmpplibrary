%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_files).

-compile(export_all).

do_decode(<<"media-type">>,
          <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_files_media_type(<<"https://xabber.com/protocol/files">>,
                            Opts,
                            El);
do_decode(<<"file">>,
          <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_files_file(<<"https://xabber.com/protocol/files">>,
                      Opts,
                      El);
do_decode(<<"sources">>,
          <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_files_sources(<<"https://xabber.com/protocol/files">>,
                         Opts,
                         El);
do_decode(<<"file-sharing">>,
          <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_files_file_sharing(<<"https://xabber.com/protocol/files">>,
                              Opts,
                              El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"media-type">>,
      <<"https://xabber.com/protocol/files">>},
     {<<"file">>, <<"https://xabber.com/protocol/files">>},
     {<<"sources">>,
      <<"https://xabber.com/protocol/files">>},
     {<<"file-sharing">>,
      <<"https://xabber.com/protocol/files">>}].

do_encode({files_file_sharing, _, _} = File_sharing,
          TopXMLNS) ->
    encode_files_file_sharing(File_sharing, TopXMLNS);
do_encode({files_sources, _} = Sources, TopXMLNS) ->
    encode_files_sources(Sources, TopXMLNS);
do_encode({files_file, _, _} = File, TopXMLNS) ->
    encode_files_file(File, TopXMLNS).

do_get_name({files_file, _, _}) -> <<"file">>;
do_get_name({files_file_sharing, _, _}) ->
    <<"file-sharing">>;
do_get_name({files_sources, _}) -> <<"sources">>.

do_get_ns({files_file, _, _}) ->
    <<"https://xabber.com/protocol/files">>;
do_get_ns({files_file_sharing, _, _}) ->
    <<"https://xabber.com/protocol/files">>;
do_get_ns({files_sources, _}) ->
    <<"https://xabber.com/protocol/files">>.

get_els({files_sources, _sub_els}) -> _sub_els;
get_els({files_file, _type, _sub_els}) -> _sub_els.

set_els({files_sources, _}, _sub_els) ->
    {files_sources, _sub_els};
set_els({files_file, _type, _}, _sub_els) ->
    {files_file, _type, _sub_els}.

pp(files_file_sharing, 2) -> [file, sources];
pp(files_sources, 1) -> [sub_els];
pp(files_file, 2) -> [type, sub_els];
pp(_, _) -> no.

records() ->
    [{files_file_sharing, 2},
     {files_sources, 1},
     {files_file, 2}].

decode_files_media_type(__TopXMLNS, __Opts,
                        {xmlel, <<"media-type">>, _attrs, _els}) ->
    Cdata = decode_files_media_type_els(__TopXMLNS,
                                        __Opts,
                                        _els,
                                        <<>>),
    Cdata.

decode_files_media_type_els(__TopXMLNS, __Opts, [],
                            Cdata) ->
    decode_files_media_type_cdata(__TopXMLNS, Cdata);
decode_files_media_type_els(__TopXMLNS, __Opts,
                            [{xmlcdata, _data} | _els], Cdata) ->
    decode_files_media_type_els(__TopXMLNS,
                                __Opts,
                                _els,
                                <<Cdata/binary, _data/binary>>);
decode_files_media_type_els(__TopXMLNS, __Opts,
                            [_ | _els], Cdata) ->
    decode_files_media_type_els(__TopXMLNS,
                                __Opts,
                                _els,
                                Cdata).

encode_files_media_type(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_files_media_type_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"media-type">>, _attrs, _els}.

decode_files_media_type_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
                  {missing_cdata, <<>>, <<"media-type">>, __TopXMLNS}});
decode_files_media_type_cdata(__TopXMLNS, _val) -> _val.

encode_files_media_type_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_files_file(__TopXMLNS, __Opts,
                  {xmlel, <<"file">>, _attrs, _els}) ->
    {Type, __Els} = decode_files_file_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          undefined,
                                          []),
    {files_file, Type, __Els}.

decode_files_file_els(__TopXMLNS, __Opts, [], Type,
                      __Els) ->
    {Type, lists:reverse(__Els)};
decode_files_file_els(__TopXMLNS, __Opts,
                      [{xmlel, <<"media-type">>, _attrs, _} = _el | _els],
                      Type, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/files">> ->
            decode_files_file_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  decode_files_media_type(<<"https://xabber.com/protocol/files">>,
                                                          __Opts,
                                                          _el),
                                  __Els);
        _ ->
            decode_files_file_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Type,
                                  [_el | __Els])
    end;
decode_files_file_els(__TopXMLNS, __Opts,
                      [{xmlel, _name, _attrs, _} = _el | _els], Type,
                      __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_files_file_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Type,
                                  [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_files_file_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Type,
                                          [_el | __Els]);
                Mod ->
                    decode_files_file_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Type,
                                          [Mod:do_decode(_name,
                                                         __XMLNS,
                                                         _el,
                                                         __Opts)
                                           | __Els])
            end
    end;
decode_files_file_els(__TopXMLNS, __Opts, [_ | _els],
                      Type, __Els) ->
    decode_files_file_els(__TopXMLNS,
                          __Opts,
                          _els,
                          Type,
                          __Els).

encode_files_file({files_file, Type, __Els},
                  __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++
               lists:reverse('encode_files_file_$type'(Type,
                                                       __NewTopXMLNS,
                                                       [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"file">>, _attrs, _els}.

'encode_files_file_$type'(undefined, __TopXMLNS,
                          _acc) ->
    _acc;
'encode_files_file_$type'(Type, __TopXMLNS, _acc) ->
    [encode_files_media_type(Type, __TopXMLNS) | _acc].

decode_files_sources(__TopXMLNS, __Opts,
                     {xmlel, <<"sources">>, _attrs, _els}) ->
    __Els = decode_files_sources_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     []),
    {files_sources, __Els}.

decode_files_sources_els(__TopXMLNS, __Opts, [],
                         __Els) ->
    lists:reverse(__Els);
decode_files_sources_els(__TopXMLNS, __Opts,
                         [{xmlel, _name, _attrs, _} = _el | _els], __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_files_sources_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_files_sources_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             [_el | __Els]);
                Mod ->
                    decode_files_sources_els(__TopXMLNS,
                                             __Opts,
                                             _els,
                                             [Mod:do_decode(_name,
                                                            __XMLNS,
                                                            _el,
                                                            __Opts)
                                              | __Els])
            end
    end;
decode_files_sources_els(__TopXMLNS, __Opts, [_ | _els],
                         __Els) ->
    decode_files_sources_els(__TopXMLNS,
                             __Opts,
                             _els,
                             __Els).

encode_files_sources({files_sources, __Els},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"sources">>, _attrs, _els}.

decode_files_file_sharing(__TopXMLNS, __Opts,
                          {xmlel, <<"file-sharing">>, _attrs, _els}) ->
    {Sources, File} =
        decode_files_file_sharing_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      error,
                                      error),
    {files_file_sharing, File, Sources}.

decode_files_file_sharing_els(__TopXMLNS, __Opts, [],
                              Sources, File) ->
    {case Sources of
         error ->
             erlang:error({xmpp_codec,
                           {missing_tag, <<"sources">>, __TopXMLNS}});
         {value, Sources1} -> Sources1
     end,
     case File of
         error ->
             erlang:error({xmpp_codec,
                           {missing_tag, <<"file">>, __TopXMLNS}});
         {value, File1} -> File1
     end};
decode_files_file_sharing_els(__TopXMLNS, __Opts,
                              [{xmlel, <<"file">>, _attrs, _} = _el | _els],
                              Sources, File) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/files">> ->
            decode_files_file_sharing_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Sources,
                                          {value,
                                           decode_files_file(<<"https://xabber.com/protocol/files">>,
                                                             __Opts,
                                                             _el)});
        _ ->
            decode_files_file_sharing_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Sources,
                                          File)
    end;
decode_files_file_sharing_els(__TopXMLNS, __Opts,
                              [{xmlel, <<"sources">>, _attrs, _} = _el | _els],
                              Sources, File) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"https://xabber.com/protocol/files">> ->
            decode_files_file_sharing_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          {value,
                                           decode_files_sources(<<"https://xabber.com/protocol/files">>,
                                                                __Opts,
                                                                _el)},
                                          File);
        _ ->
            decode_files_file_sharing_els(__TopXMLNS,
                                          __Opts,
                                          _els,
                                          Sources,
                                          File)
    end;
decode_files_file_sharing_els(__TopXMLNS, __Opts,
                              [_ | _els], Sources, File) ->
    decode_files_file_sharing_els(__TopXMLNS,
                                  __Opts,
                                  _els,
                                  Sources,
                                  File).

encode_files_file_sharing({files_file_sharing,
                           File,
                           Sources},
                          __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_files_file_sharing_$sources'(Sources,
                                                           __NewTopXMLNS,
                                                           'encode_files_file_sharing_$file'(File,
                                                                                             __NewTopXMLNS,
                                                                                             []))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                        __TopXMLNS),
    {xmlel, <<"file-sharing">>, _attrs, _els}.

'encode_files_file_sharing_$sources'(Sources,
                                     __TopXMLNS, _acc) ->
    [encode_files_sources(Sources, __TopXMLNS) | _acc].

'encode_files_file_sharing_$file'(File, __TopXMLNS,
                                  _acc) ->
    [encode_files_file(File, __TopXMLNS) | _acc].
