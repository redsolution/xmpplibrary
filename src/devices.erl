%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(devices).

-compile(export_all).

do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/devices#items">>, El,
	  Opts) ->
    decode_devices_query_items(<<"https://xabber.com/protocol/devices#items">>,
			       Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_devices_query(<<"https://xabber.com/protocol/devices">>,
			 Opts, El);
do_decode(<<"omemo-id">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_omemo_id(<<"https://xabber.com/protocol/devices">>,
			   Opts, El);
do_decode(<<"ip">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_ip(<<"https://xabber.com/protocol/devices">>,
		     Opts, El);
do_decode(<<"last-auth">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_last_auth(<<"https://xabber.com/protocol/devices">>,
			    Opts, El);
do_decode(<<"expire">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_expire(<<"https://xabber.com/protocol/devices">>,
			 Opts, El);
do_decode(<<"public-label">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_public_label(<<"https://xabber.com/protocol/devices">>,
			       Opts, El);
do_decode(<<"info">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_info(<<"https://xabber.com/protocol/devices">>,
		       Opts, El);
do_decode(<<"client">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_client(<<"https://xabber.com/protocol/devices">>,
			 Opts, El);
do_decode(<<"secret">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_secret(<<"https://xabber.com/protocol/devices">>,
			 Opts, El);
do_decode(<<"revoke-all">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_devices_revoke_all(<<"https://xabber.com/protocol/devices">>,
			      Opts, El);
do_decode(<<"devices">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_devices_feature(<<"https://xabber.com/protocol/devices">>,
			   Opts, El);
do_decode(<<"revoke">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_devices_revoke(<<"https://xabber.com/protocol/devices">>,
			  Opts, El);
do_decode(<<"device">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_devices_device(<<"https://xabber.com/protocol/devices">>,
			  Opts, El);
do_decode(<<"register">>,
	  <<"https://xabber.com/protocol/devices">>, El, Opts) ->
    decode_device_register(<<"https://xabber.com/protocol/devices">>,
			   Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>,
      <<"https://xabber.com/protocol/devices#items">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"omemo-id">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"ip">>, <<"https://xabber.com/protocol/devices">>},
     {<<"last-auth">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"expire">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"public-label">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"info">>, <<"https://xabber.com/protocol/devices">>},
     {<<"client">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"secret">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"revoke-all">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"devices">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"revoke">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"device">>,
      <<"https://xabber.com/protocol/devices">>},
     {<<"register">>,
      <<"https://xabber.com/protocol/devices">>}].

do_encode({device_register, _} = Register, TopXMLNS) ->
    encode_device_register(Register, TopXMLNS);
do_encode({devices_device, _, _, _, _, _, _, _, _, _} =
	      Device,
	  TopXMLNS) ->
    encode_devices_device(Device, TopXMLNS);
do_encode({devices_revoke, _} = Revoke, TopXMLNS) ->
    encode_devices_revoke(Revoke, TopXMLNS);
do_encode({devices_feature} = Devices, TopXMLNS) ->
    encode_devices_feature(Devices, TopXMLNS);
do_encode({devices_revoke_all} = Revoke_all,
	  TopXMLNS) ->
    encode_devices_revoke_all(Revoke_all, TopXMLNS);
do_encode({devices_query, _} = Query, TopXMLNS) ->
    encode_devices_query(Query, TopXMLNS);
do_encode({devices_query_items, _} = Query, TopXMLNS) ->
    encode_devices_query_items(Query, TopXMLNS).

do_get_name({device_register, _}) -> <<"register">>;
do_get_name({devices_device, _, _, _, _, _, _, _, _,
	     _}) ->
    <<"device">>;
do_get_name({devices_feature}) -> <<"devices">>;
do_get_name({devices_query, _}) -> <<"query">>;
do_get_name({devices_query_items, _}) -> <<"query">>;
do_get_name({devices_revoke, _}) -> <<"revoke">>;
do_get_name({devices_revoke_all}) -> <<"revoke-all">>.

do_get_ns({device_register, _}) ->
    <<"https://xabber.com/protocol/devices">>;
do_get_ns({devices_device, _, _, _, _, _, _, _, _,
	   _}) ->
    <<"https://xabber.com/protocol/devices">>;
do_get_ns({devices_feature}) ->
    <<"https://xabber.com/protocol/devices">>;
do_get_ns({devices_query, _}) ->
    <<"https://xabber.com/protocol/devices">>;
do_get_ns({devices_query_items, _}) ->
    <<"https://xabber.com/protocol/devices#items">>;
do_get_ns({devices_revoke, _}) ->
    <<"https://xabber.com/protocol/devices">>;
do_get_ns({devices_revoke_all}) ->
    <<"https://xabber.com/protocol/devices">>.

pp(device_register, 1) -> [device];
pp(devices_device, 9) ->
    [secret, id, expire, client, info, public_label, ip,
     last_auth, omemo_id];
pp(devices_revoke, 1) -> [devices];
pp(devices_feature, 0) -> [];
pp(devices_revoke_all, 0) -> [];
pp(devices_query, 1) -> [device];
pp(devices_query_items, 1) -> [devices];
pp(_, _) -> no.

records() ->
    [{device_register, 1}, {devices_device, 9},
     {devices_revoke, 1}, {devices_feature, 0},
     {devices_revoke_all, 0}, {devices_query, 1},
     {devices_query_items, 1}].

decode_devices_query_items(__TopXMLNS, __Opts,
			   {xmlel, <<"query">>, _attrs, _els}) ->
    Devices = decode_devices_query_items_els(__TopXMLNS,
					     __Opts, _els, []),
    {devices_query_items, Devices}.

decode_devices_query_items_els(__TopXMLNS, __Opts, [],
			       Devices) ->
    lists:reverse(Devices);
decode_devices_query_items_els(__TopXMLNS, __Opts,
			       [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			       Devices) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_query_items_els(__TopXMLNS, __Opts, _els,
					 [decode_devices_device(<<"https://xabber.com/protocol/devices">>,
								__Opts, _el)
					  | Devices]);
      _ ->
	  decode_devices_query_items_els(__TopXMLNS, __Opts, _els,
					 Devices)
    end;
decode_devices_query_items_els(__TopXMLNS, __Opts,
			       [_ | _els], Devices) ->
    decode_devices_query_items_els(__TopXMLNS, __Opts, _els,
				   Devices).

encode_devices_query_items({devices_query_items,
			    Devices},
			   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices#items">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_devices_query_items_$devices'(Devices,
							    __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_devices_query_items_$devices'([], __TopXMLNS,
				      _acc) ->
    _acc;
'encode_devices_query_items_$devices'([Devices | _els],
				      __TopXMLNS, _acc) ->
    'encode_devices_query_items_$devices'(_els, __TopXMLNS,
					  [encode_devices_device(Devices,
								 __TopXMLNS)
					   | _acc]).

decode_devices_query(__TopXMLNS, __Opts,
		     {xmlel, <<"query">>, _attrs, _els}) ->
    Device = decode_devices_query_els(__TopXMLNS, __Opts,
				      _els, error),
    {devices_query, Device}.

decode_devices_query_els(__TopXMLNS, __Opts, [],
			 Device) ->
    case Device of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"device">>, __TopXMLNS}});
      {value, Device1} -> Device1
    end;
decode_devices_query_els(__TopXMLNS, __Opts,
			 [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			 Device) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_query_els(__TopXMLNS, __Opts, _els,
				   {value,
				    decode_devices_device(<<"https://xabber.com/protocol/devices">>,
							  __Opts, _el)});
      _ ->
	  decode_devices_query_els(__TopXMLNS, __Opts, _els,
				   Device)
    end;
decode_devices_query_els(__TopXMLNS, __Opts, [_ | _els],
			 Device) ->
    decode_devices_query_els(__TopXMLNS, __Opts, _els,
			     Device).

encode_devices_query({devices_query, Device},
		     __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_devices_query_$device'(Device,
						     __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_devices_query_$device'(Device, __TopXMLNS,
			       _acc) ->
    [encode_devices_device(Device, __TopXMLNS) | _acc].

decode_device_omemo_id(__TopXMLNS, __Opts,
		       {xmlel, <<"omemo-id">>, _attrs, _els}) ->
    Cdata = decode_device_omemo_id_els(__TopXMLNS, __Opts,
				       _els, <<>>),
    Cdata.

decode_device_omemo_id_els(__TopXMLNS, __Opts, [],
			   Cdata) ->
    decode_device_omemo_id_cdata(__TopXMLNS, Cdata);
decode_device_omemo_id_els(__TopXMLNS, __Opts,
			   [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_omemo_id_els(__TopXMLNS, __Opts, _els,
			       <<Cdata/binary, _data/binary>>);
decode_device_omemo_id_els(__TopXMLNS, __Opts,
			   [_ | _els], Cdata) ->
    decode_device_omemo_id_els(__TopXMLNS, __Opts, _els,
			       Cdata).

encode_device_omemo_id(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = encode_device_omemo_id_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"omemo-id">>, _attrs, _els}.

decode_device_omemo_id_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_device_omemo_id_cdata(__TopXMLNS, _val) -> _val.

encode_device_omemo_id_cdata(<<>>, _acc) -> _acc;
encode_device_omemo_id_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_device_ip(__TopXMLNS, __Opts,
		 {xmlel, <<"ip">>, _attrs, _els}) ->
    Cdata = decode_device_ip_els(__TopXMLNS, __Opts, _els,
				 <<>>),
    Cdata.

decode_device_ip_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_device_ip_cdata(__TopXMLNS, Cdata);
decode_device_ip_els(__TopXMLNS, __Opts,
		     [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_ip_els(__TopXMLNS, __Opts, _els,
			 <<Cdata/binary, _data/binary>>);
decode_device_ip_els(__TopXMLNS, __Opts, [_ | _els],
		     Cdata) ->
    decode_device_ip_els(__TopXMLNS, __Opts, _els, Cdata).

encode_device_ip(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = encode_device_ip_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"ip">>, _attrs, _els}.

decode_device_ip_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_device_ip_cdata(__TopXMLNS, _val) -> _val.

encode_device_ip_cdata(<<>>, _acc) -> _acc;
encode_device_ip_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_device_last_auth(__TopXMLNS, __Opts,
			{xmlel, <<"last-auth">>, _attrs, _els}) ->
    Cdata = decode_device_last_auth_els(__TopXMLNS, __Opts,
					_els, <<>>),
    Cdata.

decode_device_last_auth_els(__TopXMLNS, __Opts, [],
			    Cdata) ->
    decode_device_last_auth_cdata(__TopXMLNS, Cdata);
decode_device_last_auth_els(__TopXMLNS, __Opts,
			    [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_last_auth_els(__TopXMLNS, __Opts, _els,
				<<Cdata/binary, _data/binary>>);
decode_device_last_auth_els(__TopXMLNS, __Opts,
			    [_ | _els], Cdata) ->
    decode_device_last_auth_els(__TopXMLNS, __Opts, _els,
				Cdata).

encode_device_last_auth(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = encode_device_last_auth_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"last-auth">>, _attrs, _els}.

decode_device_last_auth_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_device_last_auth_cdata(__TopXMLNS, _val) -> _val.

encode_device_last_auth_cdata(<<>>, _acc) -> _acc;
encode_device_last_auth_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_device_expire(__TopXMLNS, __Opts,
		     {xmlel, <<"expire">>, _attrs, _els}) ->
    Cdata = decode_device_expire_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    Cdata.

decode_device_expire_els(__TopXMLNS, __Opts, [],
			 Cdata) ->
    decode_device_expire_cdata(__TopXMLNS, Cdata);
decode_device_expire_els(__TopXMLNS, __Opts,
			 [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_expire_els(__TopXMLNS, __Opts, _els,
			     <<Cdata/binary, _data/binary>>);
decode_device_expire_els(__TopXMLNS, __Opts, [_ | _els],
			 Cdata) ->
    decode_device_expire_els(__TopXMLNS, __Opts, _els,
			     Cdata).

encode_device_expire(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = encode_device_expire_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"expire">>, _attrs, _els}.

decode_device_expire_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_device_expire_cdata(__TopXMLNS, _val) -> _val.

encode_device_expire_cdata(<<>>, _acc) -> _acc;
encode_device_expire_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_device_public_label(__TopXMLNS, __Opts,
			   {xmlel, <<"public-label">>, _attrs, _els}) ->
    Cdata = decode_device_public_label_els(__TopXMLNS,
					   __Opts, _els, <<>>),
    Cdata.

decode_device_public_label_els(__TopXMLNS, __Opts, [],
			       Cdata) ->
    decode_device_public_label_cdata(__TopXMLNS, Cdata);
decode_device_public_label_els(__TopXMLNS, __Opts,
			       [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_public_label_els(__TopXMLNS, __Opts, _els,
				   <<Cdata/binary, _data/binary>>);
decode_device_public_label_els(__TopXMLNS, __Opts,
			       [_ | _els], Cdata) ->
    decode_device_public_label_els(__TopXMLNS, __Opts, _els,
				   Cdata).

encode_device_public_label(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = encode_device_public_label_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"public-label">>, _attrs, _els}.

decode_device_public_label_cdata(__TopXMLNS, <<>>) ->
    <<>>;
decode_device_public_label_cdata(__TopXMLNS, _val) ->
    _val.

encode_device_public_label_cdata(<<>>, _acc) -> _acc;
encode_device_public_label_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_device_info(__TopXMLNS, __Opts,
		   {xmlel, <<"info">>, _attrs, _els}) ->
    Cdata = decode_device_info_els(__TopXMLNS, __Opts, _els,
				   <<>>),
    Cdata.

decode_device_info_els(__TopXMLNS, __Opts, [], Cdata) ->
    decode_device_info_cdata(__TopXMLNS, Cdata);
decode_device_info_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_info_els(__TopXMLNS, __Opts, _els,
			   <<Cdata/binary, _data/binary>>);
decode_device_info_els(__TopXMLNS, __Opts, [_ | _els],
		       Cdata) ->
    decode_device_info_els(__TopXMLNS, __Opts, _els, Cdata).

encode_device_info(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = encode_device_info_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"info">>, _attrs, _els}.

decode_device_info_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_device_info_cdata(__TopXMLNS, _val) -> _val.

encode_device_info_cdata(<<>>, _acc) -> _acc;
encode_device_info_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_device_client(__TopXMLNS, __Opts,
		     {xmlel, <<"client">>, _attrs, _els}) ->
    Cdata = decode_device_client_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    Cdata.

decode_device_client_els(__TopXMLNS, __Opts, [],
			 Cdata) ->
    decode_device_client_cdata(__TopXMLNS, Cdata);
decode_device_client_els(__TopXMLNS, __Opts,
			 [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_client_els(__TopXMLNS, __Opts, _els,
			     <<Cdata/binary, _data/binary>>);
decode_device_client_els(__TopXMLNS, __Opts, [_ | _els],
			 Cdata) ->
    decode_device_client_els(__TopXMLNS, __Opts, _els,
			     Cdata).

encode_device_client(Cdata, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = encode_device_client_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"client">>, _attrs, _els}.

decode_device_client_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_device_client_cdata(__TopXMLNS, _val) -> _val.

encode_device_client_cdata(<<>>, _acc) -> _acc;
encode_device_client_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_device_secret(__TopXMLNS, __Opts,
		     {xmlel, <<"secret">>, _attrs, _els}) ->
    Cdata = decode_device_secret_els(__TopXMLNS, __Opts,
				     _els, <<>>),
    Cdata.

decode_device_secret_els(__TopXMLNS, __Opts, [],
			 Cdata) ->
    decode_device_secret_cdata(__TopXMLNS, Cdata);
decode_device_secret_els(__TopXMLNS, __Opts,
			 [{xmlcdata, _data} | _els], Cdata) ->
    decode_device_secret_els(__TopXMLNS, __Opts, _els,
			     <<Cdata/binary, _data/binary>>);
decode_device_secret_els(__TopXMLNS, __Opts, [_ | _els],
			 Cdata) ->
    decode_device_secret_els(__TopXMLNS, __Opts, _els,
			     Cdata).

encode_device_secret(Cdata, __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(<<>>,
						[<<"https://xabber.com/protocol/devices">>],
						__TopXMLNS),
    _els = encode_device_secret_cdata(Cdata, []),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"secret">>, _attrs, _els}.

decode_device_secret_cdata(__TopXMLNS, <<>>) ->
    erlang:error({xmpp_codec,
		  {missing_cdata, <<>>, <<"secret">>, __TopXMLNS}});
decode_device_secret_cdata(__TopXMLNS, _val) -> _val.

encode_device_secret_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].

decode_devices_revoke_all(__TopXMLNS, __Opts,
			  {xmlel, <<"revoke-all">>, _attrs, _els}) ->
    {devices_revoke_all}.

encode_devices_revoke_all({devices_revoke_all},
			  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"revoke-all">>, _attrs, _els}.

decode_devices_feature(__TopXMLNS, __Opts,
		       {xmlel, <<"devices">>, _attrs, _els}) ->
    {devices_feature}.

encode_devices_feature({devices_feature}, __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"devices">>, _attrs, _els}.

decode_devices_revoke(__TopXMLNS, __Opts,
		      {xmlel, <<"revoke">>, _attrs, _els}) ->
    Devices = decode_devices_revoke_els(__TopXMLNS, __Opts,
					_els, []),
    {devices_revoke, Devices}.

decode_devices_revoke_els(__TopXMLNS, __Opts, [],
			  Devices) ->
    lists:reverse(Devices);
decode_devices_revoke_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			  Devices) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_revoke_els(__TopXMLNS, __Opts, _els,
				    [decode_devices_device(<<"https://xabber.com/protocol/devices">>,
							   __Opts, _el)
				     | Devices]);
      _ ->
	  decode_devices_revoke_els(__TopXMLNS, __Opts, _els,
				    Devices)
    end;
decode_devices_revoke_els(__TopXMLNS, __Opts,
			  [_ | _els], Devices) ->
    decode_devices_revoke_els(__TopXMLNS, __Opts, _els,
			      Devices).

encode_devices_revoke({devices_revoke, Devices},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_devices_revoke_$devices'(Devices,
						       __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"revoke">>, _attrs, _els}.

'encode_devices_revoke_$devices'([], __TopXMLNS,
				 _acc) ->
    _acc;
'encode_devices_revoke_$devices'([Devices | _els],
				 __TopXMLNS, _acc) ->
    'encode_devices_revoke_$devices'(_els, __TopXMLNS,
				     [encode_devices_device(Devices, __TopXMLNS)
				      | _acc]).

decode_devices_device(__TopXMLNS, __Opts,
		      {xmlel, <<"device">>, _attrs, _els}) ->
    {Ip, Omemo_id, Client, Secret, Expire, Last_auth,
     Public_label, Info} =
	decode_devices_device_els(__TopXMLNS, __Opts, _els,
				  undefined, undefined, undefined, undefined,
				  undefined, undefined, undefined, undefined),
    Id = decode_devices_device_attrs(__TopXMLNS, _attrs,
				     undefined),
    {devices_device, Secret, Id, Expire, Client, Info,
     Public_label, Ip, Last_auth, Omemo_id}.

decode_devices_device_els(__TopXMLNS, __Opts, [], Ip,
			  Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    {Ip, Omemo_id, Client, Secret, Expire, Last_auth,
     Public_label, Info};
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"secret">>, _attrs, _} = _el | _els], Ip,
			  Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client,
				    decode_device_secret(<<"https://xabber.com/protocol/devices">>,
							 __Opts, _el),
				    Expire, Last_auth, Public_label, Info);
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"client">>, _attrs, _} = _el | _els], Ip,
			  Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id,
				    decode_device_client(<<"https://xabber.com/protocol/devices">>,
							 __Opts, _el),
				    Secret, Expire, Last_auth, Public_label,
				    Info);
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"info">>, _attrs, _} = _el | _els], Ip,
			  Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label,
				    decode_device_info(<<"https://xabber.com/protocol/devices">>,
						       __Opts, _el));
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"public-label">>, _attrs, _} = _el | _els],
			  Ip, Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    decode_device_public_label(<<"https://xabber.com/protocol/devices">>,
							       __Opts, _el),
				    Info);
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"ip">>, _attrs, _} = _el | _els], Ip,
			  Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els,
				    decode_device_ip(<<"https://xabber.com/protocol/devices">>,
						     __Opts, _el),
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info);
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"last-auth">>, _attrs, _} = _el | _els],
			  Ip, Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire,
				    decode_device_last_auth(<<"https://xabber.com/protocol/devices">>,
							    __Opts, _el),
				    Public_label, Info);
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"expire">>, _attrs, _} = _el | _els], Ip,
			  Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret,
				    decode_device_expire(<<"https://xabber.com/protocol/devices">>,
							 __Opts, _el),
				    Last_auth, Public_label, Info);
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [{xmlel, <<"omemo-id">>, _attrs, _} = _el | _els], Ip,
			  Omemo_id, Client, Secret, Expire, Last_auth,
			  Public_label, Info) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    decode_device_omemo_id(<<"https://xabber.com/protocol/devices">>,
							   __Opts, _el),
				    Client, Secret, Expire, Last_auth,
				    Public_label, Info);
      _ ->
	  decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
				    Omemo_id, Client, Secret, Expire, Last_auth,
				    Public_label, Info)
    end;
decode_devices_device_els(__TopXMLNS, __Opts,
			  [_ | _els], Ip, Omemo_id, Client, Secret, Expire,
			  Last_auth, Public_label, Info) ->
    decode_devices_device_els(__TopXMLNS, __Opts, _els, Ip,
			      Omemo_id, Client, Secret, Expire, Last_auth,
			      Public_label, Info).

decode_devices_device_attrs(__TopXMLNS,
			    [{<<"id">>, _val} | _attrs], _Id) ->
    decode_devices_device_attrs(__TopXMLNS, _attrs, _val);
decode_devices_device_attrs(__TopXMLNS, [_ | _attrs],
			    Id) ->
    decode_devices_device_attrs(__TopXMLNS, _attrs, Id);
decode_devices_device_attrs(__TopXMLNS, [], Id) ->
    decode_devices_device_attr_id(__TopXMLNS, Id).

encode_devices_device({devices_device, Secret, Id,
		       Expire, Client, Info, Public_label, Ip, Last_auth,
		       Omemo_id},
		      __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_devices_device_$ip'(Ip,
						     __NewTopXMLNS,
						     'encode_devices_device_$omemo_id'(Omemo_id,
										       __NewTopXMLNS,
										       'encode_devices_device_$client'(Client,
														       __NewTopXMLNS,
														       'encode_devices_device_$secret'(Secret,
																		       __NewTopXMLNS,
																		       'encode_devices_device_$expire'(Expire,
																						       __NewTopXMLNS,
																						       'encode_devices_device_$last_auth'(Last_auth,
																											  __NewTopXMLNS,
																											  'encode_devices_device_$public_label'(Public_label,
																																__NewTopXMLNS,
																																'encode_devices_device_$info'(Info,
																																			      __NewTopXMLNS,
																																			      []))))))))),
    _attrs = encode_devices_device_attr_id(Id,
					   xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
								      __TopXMLNS)),
    {xmlel, <<"device">>, _attrs, _els}.

'encode_devices_device_$ip'(undefined, __TopXMLNS,
			    _acc) ->
    _acc;
'encode_devices_device_$ip'(Ip, __TopXMLNS, _acc) ->
    [encode_device_ip(Ip, __TopXMLNS) | _acc].

'encode_devices_device_$omemo_id'(undefined, __TopXMLNS,
				  _acc) ->
    _acc;
'encode_devices_device_$omemo_id'(Omemo_id, __TopXMLNS,
				  _acc) ->
    [encode_device_omemo_id(Omemo_id, __TopXMLNS) | _acc].

'encode_devices_device_$client'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_devices_device_$client'(Client, __TopXMLNS,
				_acc) ->
    [encode_device_client(Client, __TopXMLNS) | _acc].

'encode_devices_device_$secret'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_devices_device_$secret'(Secret, __TopXMLNS,
				_acc) ->
    [encode_device_secret(Secret, __TopXMLNS) | _acc].

'encode_devices_device_$expire'(undefined, __TopXMLNS,
				_acc) ->
    _acc;
'encode_devices_device_$expire'(Expire, __TopXMLNS,
				_acc) ->
    [encode_device_expire(Expire, __TopXMLNS) | _acc].

'encode_devices_device_$last_auth'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_devices_device_$last_auth'(Last_auth,
				   __TopXMLNS, _acc) ->
    [encode_device_last_auth(Last_auth, __TopXMLNS) | _acc].

'encode_devices_device_$public_label'(undefined,
				      __TopXMLNS, _acc) ->
    _acc;
'encode_devices_device_$public_label'(Public_label,
				      __TopXMLNS, _acc) ->
    [encode_device_public_label(Public_label, __TopXMLNS)
     | _acc].

'encode_devices_device_$info'(undefined, __TopXMLNS,
			      _acc) ->
    _acc;
'encode_devices_device_$info'(Info, __TopXMLNS, _acc) ->
    [encode_device_info(Info, __TopXMLNS) | _acc].

decode_devices_device_attr_id(__TopXMLNS, undefined) ->
    undefined;
decode_devices_device_attr_id(__TopXMLNS, _val) -> _val.

encode_devices_device_attr_id(undefined, _acc) -> _acc;
encode_devices_device_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_device_register(__TopXMLNS, __Opts,
		       {xmlel, <<"register">>, _attrs, _els}) ->
    Device = decode_device_register_els(__TopXMLNS, __Opts,
					_els, error),
    {device_register, Device}.

decode_device_register_els(__TopXMLNS, __Opts, [],
			   Device) ->
    case Device of
      error ->
	  erlang:error({xmpp_codec,
			{missing_tag, <<"device">>, __TopXMLNS}});
      {value, Device1} -> Device1
    end;
decode_device_register_els(__TopXMLNS, __Opts,
			   [{xmlel, <<"device">>, _attrs, _} = _el | _els],
			   Device) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/devices">> ->
	  decode_device_register_els(__TopXMLNS, __Opts, _els,
				     {value,
				      decode_devices_device(<<"https://xabber.com/protocol/devices">>,
							    __Opts, _el)});
      _ ->
	  decode_device_register_els(__TopXMLNS, __Opts, _els,
				     Device)
    end;
decode_device_register_els(__TopXMLNS, __Opts,
			   [_ | _els], Device) ->
    decode_device_register_els(__TopXMLNS, __Opts, _els,
			       Device).

encode_device_register({device_register, Device},
		       __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/devices">>,
				    [], __TopXMLNS),
    _els =
	lists:reverse('encode_device_register_$device'(Device,
						       __NewTopXMLNS, [])),
    _attrs = xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
					__TopXMLNS),
    {xmlel, <<"register">>, _attrs, _els}.

'encode_device_register_$device'(Device, __TopXMLNS,
				 _acc) ->
    [encode_devices_device(Device, __TopXMLNS) | _acc].
