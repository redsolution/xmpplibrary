%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_otb).

-compile(export_all).

do_decode(<<"media-type">>,
	  <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_xabber_media_type_otb(<<"https://xabber.com/protocol/files">>,
				 Opts, El);
do_decode(<<"file">>,
	  <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_xabber_file(<<"https://xabber.com/protocol/files">>,
		       Opts, El);
do_decode(<<"sources">>,
	  <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_xabber_file_sources(<<"https://xabber.com/protocol/files">>,
			       Opts, El);
do_decode(<<"file-sharing">>,
	  <<"https://xabber.com/protocol/files">>, El, Opts) ->
    decode_xabber_file_sharing(<<"https://xabber.com/protocol/files">>,
			       Opts, El);
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

do_encode({xabber_file_sharing, _, _} = File_sharing,
	  TopXMLNS) ->
    encode_xabber_file_sharing(File_sharing, TopXMLNS);
do_encode({xabber_sources, _} = Sources, TopXMLNS) ->
    encode_xabber_file_sources(Sources, TopXMLNS);
do_encode({xabber_file, _, _} = File, TopXMLNS) ->
    encode_xabber_file(File, TopXMLNS).

do_get_name({xabber_file, _, _}) -> <<"file">>;
do_get_name({xabber_file_sharing, _, _}) ->
    <<"file-sharing">>;
do_get_name({xabber_sources, _}) -> <<"sources">>.

do_get_ns({xabber_file, _, _}) ->
    <<"https://xabber.com/protocol/files">>;
do_get_ns({xabber_file_sharing, _, _}) ->
    <<"https://xabber.com/protocol/files">>;
do_get_ns({xabber_sources, _}) ->
    <<"https://xabber.com/protocol/files">>.

get_els({xabber_sources, _sub_els}) -> _sub_els;
get_els({xabber_file, _type, _sub_els}) -> _sub_els.

set_els({xabber_sources, _}, _sub_els) ->
    {xabber_sources, _sub_els};
set_els({xabber_file, _type, _}, _sub_els) ->
    {xabber_file, _type, _sub_els}.

pp(xabber_file_sharing, 2) -> [file, sources];
pp(xabber_sources, 1) -> [sub_els];
pp(xabber_file, 2) -> [type, sub_els];
pp(_, _) -> no.

records() ->
    [{xabber_file_sharing, 2}, {xabber_sources, 1},
     {xabber_file, 2}].

decode_xabber_media_type_otb(__TopXMLNS, __Opts,
			     {xmlel, <<"media-type">>, _attrs, _els}) ->
    Cdata = decode_xabber_media_type_otb_els(__TopXMLNS,
					     __Opts, _els, <<>>),
    Cdata.

decode_xabber_media_type_otb_els(__TopXMLNS, __Opts, [],
				 Cdata) ->
    decode_xabber_media_type_otb_cdata(__TopXMLNS, Cdata);
decode_xabber_media_type_otb_els(__TopXMLNS, __Opts,
				 [{xmlcdata, _data} | _els], Cdata) ->
    decode_xabber_media_type_otb_els(__TopXMLNS, __Opts,
				     _els, <<Cdata/binary, _data/binary>>);
decode_xabber_media_type_otb_els(__TopXMLNS, __Opts,
				 [_ | _els], Cdata) ->
    decode_xabber_media_type_otb_els(__TopXMLNS, __Opts,
				     _els, Cdata).

encode_xabber_media_type_otb(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
				    [], __TopXMLNS),
    _els = encode_xabber_media_type_otb_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"media-type">>, _attrs, _els}.

decode_xabber_media_type_otb_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"media-type">>, __TopXMLNS}});
decode_xabber_media_type_otb_cdata(__TopXMLNS, _val) ->
    _val.

encode_xabber_media_type_otb_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_xabber_file(__TopXMLNS, __Opts,
		   {xmlel, <<"file">>, _attrs, _els}) ->
    {Type, __Els} = decode_xabber_file_els(__TopXMLNS,
					   __Opts, _els, undefined, []),
    {xabber_file, Type, __Els}.

decode_xabber_file_els(__TopXMLNS, __Opts, [], Type,
		       __Els) ->
    {Type, lists:reverse(__Els)};
decode_xabber_file_els(__TopXMLNS, __Opts,
		       [{xmlel, <<"media-type">>, _attrs, _} = _el | _els],
		       Type, __Els) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/files">> ->
	  decode_xabber_file_els(__TopXMLNS, __Opts, _els,
				 decode_xabber_media_type_otb(<<"https://xabber.com/protocol/files">>,
							      __Opts, _el),
				 __Els);
      _ ->
	  decode_xabber_file_els(__TopXMLNS, __Opts, _els, Type,
				 [_el | __Els])
    end;
decode_xabber_file_els(__TopXMLNS, __Opts,
		       [{xmlel, _name, _attrs, _} = _el | _els], Type,
		       __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabber_file_els(__TopXMLNS, __Opts, _els, Type,
				 [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabber_file_els(__TopXMLNS, __Opts, _els, Type,
				       [_el | __Els]);
	    Mod ->
		decode_xabber_file_els(__TopXMLNS, __Opts, _els, Type,
				       [Mod:do_decode(_name, __XMLNS, _el,
						      __Opts)
					| __Els])
	  end
    end;
decode_xabber_file_els(__TopXMLNS, __Opts, [_ | _els],
		       Type, __Els) ->
    decode_xabber_file_els(__TopXMLNS, __Opts, _els, Type,
			   __Els).

encode_xabber_file({xabber_file, Type, __Els},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els]
	     ++
	     lists:reverse('encode_xabber_file_$type'(Type,
						      __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"file">>, _attrs, _els}.

'encode_xabber_file_$type'(undefined, __TopXMLNS,
			   _acc) ->
    _acc;
'encode_xabber_file_$type'(Type, __TopXMLNS, _acc) ->
    [encode_xabber_media_type_otb(Type, __TopXMLNS) | _acc].

decode_xabber_file_sources(__TopXMLNS, __Opts,
			   {xmlel, <<"sources">>, _attrs, _els}) ->
    __Els = decode_xabber_file_sources_els(__TopXMLNS,
					   __Opts, _els, []),
    {xabber_sources, __Els}.

decode_xabber_file_sources_els(__TopXMLNS, __Opts, [],
			       __Els) ->
    lists:reverse(__Els);
decode_xabber_file_sources_els(__TopXMLNS, __Opts,
			       [{xmlel, _name, _attrs, _} = _el | _els],
			       __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
      true ->
	  decode_xabber_file_sources_els(__TopXMLNS, __Opts, _els,
					 [_el | __Els]);
      false ->
	  __XMLNS = xmpp_codec:get_attr(<<"xmlns">>, _attrs,
					__TopXMLNS),
	  case xmpp_codec:get_mod(_name, __XMLNS) of
	    undefined ->
		decode_xabber_file_sources_els(__TopXMLNS, __Opts, _els,
					       [_el | __Els]);
	    Mod ->
		decode_xabber_file_sources_els(__TopXMLNS, __Opts, _els,
					       [Mod:do_decode(_name, __XMLNS,
							      _el, __Opts)
						| __Els])
	  end
    end;
decode_xabber_file_sources_els(__TopXMLNS, __Opts,
			       [_ | _els], __Els) ->
    decode_xabber_file_sources_els(__TopXMLNS, __Opts, _els,
				   __Els).

encode_xabber_file_sources({xabber_sources, __Els},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
				    [], __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
	    || _el <- __Els],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"sources">>, _attrs, _els}.

decode_xabber_file_sharing(__TopXMLNS, __Opts,
			   {xmlel, <<"file-sharing">>, _attrs, _els}) ->
    {Sources, File} =
	decode_xabber_file_sharing_els(__TopXMLNS, __Opts, _els,
				       error, error),
    {xabber_file_sharing, File, Sources}.

decode_xabber_file_sharing_els(__TopXMLNS, __Opts, [],
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
decode_xabber_file_sharing_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"file">>, _attrs, _} = _el | _els],
			       Sources, File) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/files">> ->
	  decode_xabber_file_sharing_els(__TopXMLNS, __Opts, _els,
					 Sources,
					 {value,
					  decode_xabber_file(<<"https://xabber.com/protocol/files">>,
							     __Opts, _el)});
      _ ->
	  decode_xabber_file_sharing_els(__TopXMLNS, __Opts, _els,
					 Sources, File)
    end;
decode_xabber_file_sharing_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"sources">>, _attrs, _} = _el | _els],
			       Sources, File) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/files">> ->
	  decode_xabber_file_sharing_els(__TopXMLNS, __Opts, _els,
					 {value,
					  decode_xabber_file_sources(<<"https://xabber.com/protocol/files">>,
								     __Opts,
								     _el)},
					 File);
      _ ->
	  decode_xabber_file_sharing_els(__TopXMLNS, __Opts, _els,
					 Sources, File)
    end;
decode_xabber_file_sharing_els(__TopXMLNS, __Opts,
			       [_ | _els], Sources, File) ->
    decode_xabber_file_sharing_els(__TopXMLNS, __Opts, _els,
				   Sources, File).

encode_xabber_file_sharing({xabber_file_sharing, File,
			    Sources},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/files">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_xabber_file_sharing_$sources'(Sources,
							    __NewTopXMLNS,
							    'encode_xabber_file_sharing_$file'(File,
											       __NewTopXMLNS,
											       []))),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"file-sharing">>, _attrs, _els}.

'encode_xabber_file_sharing_$sources'(Sources,
				      __TopXMLNS, _acc) ->
    [encode_xabber_file_sources(Sources, __TopXMLNS)
     | _acc].

'encode_xabber_file_sharing_$file'(File, __TopXMLNS,
				   _acc) ->
    [encode_xabber_file(File, __TopXMLNS) | _acc].
