%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(xep_groups_perms).

-compile(export_all).

do_decode(<<"owner">>,
	  <<"https://xabber.com/protocol/groups/permissions">>,
	  El, Opts) ->
    decode_groups_perms_owner(<<"https://xabber.com/protocol/groups/permissions">>,
			      Opts, El);
do_decode(<<"delete">>,
	  <<"https://xabber.com/protocol/groups/permissions">>,
	  El, Opts) ->
    decode_groups_perms_delete(<<"https://xabber.com/protocol/groups/permissions">>,
			       Opts, El);
do_decode(<<"delete">>,
	  <<"https://xabber.com/protocol/groups/permission"
	    "s#default">>,
	  El, Opts) ->
    decode_groups_perms_delete(<<"https://xabber.com/protocol/groups/permission"
				 "s#default">>,
			       Opts, El);
do_decode(<<"delete">>,
	  <<"https://xabber.com/protocol/groups/permission"
	    "s#new">>,
	  El, Opts) ->
    decode_groups_perms_delete(<<"https://xabber.com/protocol/groups/permission"
				 "s#new">>,
			       Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups/permissions">>,
	  El, Opts) ->
    decode_groups_perms_query(<<"https://xabber.com/protocol/groups/permissions">>,
			      Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups/permission"
	    "s#default">>,
	  El, Opts) ->
    decode_groups_perms_query(<<"https://xabber.com/protocol/groups/permission"
				"s#default">>,
			      Opts, El);
do_decode(<<"query">>,
	  <<"https://xabber.com/protocol/groups/permission"
	    "s#new">>,
	  El, Opts) ->
    decode_groups_perms_query(<<"https://xabber.com/protocol/groups/permission"
				"s#new">>,
			      Opts, El);
do_decode(<<"permissions">>,
	  <<"https://xabber.com/protocol/groups/permissions">>,
	  El, Opts) ->
    decode_groups_perms(<<"https://xabber.com/protocol/groups/permissions">>,
			Opts, El);
do_decode(<<"permission">>,
	  <<"https://xabber.com/protocol/groups/permissions">>,
	  El, Opts) ->
    decode_groups_perm(<<"https://xabber.com/protocol/groups/permissions">>,
		       Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"owner">>,
      <<"https://xabber.com/protocol/groups/permissions">>},
     {<<"delete">>,
      <<"https://xabber.com/protocol/groups/permissions">>},
     {<<"delete">>,
      <<"https://xabber.com/protocol/groups/permission"
	"s#default">>},
     {<<"delete">>,
      <<"https://xabber.com/protocol/groups/permission"
	"s#new">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups/permissions">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups/permission"
	"s#default">>},
     {<<"query">>,
      <<"https://xabber.com/protocol/groups/permission"
	"s#new">>},
     {<<"permissions">>,
      <<"https://xabber.com/protocol/groups/permissions">>},
     {<<"permission">>,
      <<"https://xabber.com/protocol/groups/permissions">>}].

do_encode({groups_perm, _, _, _, _, _, _, _, _} =
	      Permission,
	  TopXMLNS) ->
    encode_groups_perm(Permission, TopXMLNS);
do_encode({groups_perms, _, _, _} = Permissions,
	  TopXMLNS) ->
    encode_groups_perms(Permissions, TopXMLNS);
do_encode({groups_perms_query, _, _, _} = Query,
	  TopXMLNS) ->
    encode_groups_perms_query(Query, TopXMLNS);
do_encode({groups_perms_delete, _, _} = Delete,
	  TopXMLNS) ->
    encode_groups_perms_delete(Delete, TopXMLNS);
do_encode({groups_owner, _} = Owner, TopXMLNS) ->
    encode_groups_perms_owner(Owner, TopXMLNS).

do_get_name({groups_owner, _}) -> <<"owner">>;
do_get_name({groups_perm, _, _, _, _, _, _, _, _}) ->
    <<"permission">>;
do_get_name({groups_perms, _, _, _}) ->
    <<"permissions">>;
do_get_name({groups_perms_delete, _, _}) ->
    <<"delete">>;
do_get_name({groups_perms_query, _, _, _}) ->
    <<"query">>.

do_get_ns({groups_owner, _}) ->
    <<"https://xabber.com/protocol/groups/permissions">>;
do_get_ns({groups_perm, _, _, _, _, _, _, _, _}) ->
    <<"https://xabber.com/protocol/groups/permissions">>;
do_get_ns({groups_perms, _, _, _}) ->
    <<"https://xabber.com/protocol/groups/permissions">>;
do_get_ns({groups_perms_delete, Xmlns, _}) -> Xmlns;
do_get_ns({groups_perms_query, Xmlns, _, _}) -> Xmlns.

pp(groups_perm, 8) ->
    [name, role, status, seconds, expires, tag, fixed,
     display_name];
pp(groups_perms, 3) -> [role, actor, perms];
pp(groups_perms_query, 3) -> [xmlns, id, perms];
pp(groups_perms_delete, 2) -> [xmlns, id];
pp(groups_owner, 1) -> [id];
pp(_, _) -> no.

records() ->
    [{groups_perm, 8}, {groups_perms, 3},
     {groups_perms_query, 3}, {groups_perms_delete, 2},
     {groups_owner, 1}].

dec_bool(<<"false">>) -> false;
dec_bool(<<"0">>) -> false;
dec_bool(<<"true">>) -> true;
dec_bool(<<"1">>) -> true.

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_bool(false) -> <<"false">>;
enc_bool(true) -> <<"true">>.

enc_int(Int) -> erlang:integer_to_binary(Int).

decode_groups_perms_owner(__TopXMLNS, __Opts,
			  {xmlel, <<"owner">>, _attrs, _els}) ->
    Id = decode_groups_perms_owner_attrs(__TopXMLNS, _attrs,
					 undefined),
    {groups_owner, Id}.

decode_groups_perms_owner_attrs(__TopXMLNS,
				[{<<"id">>, _val} | _attrs], _Id) ->
    decode_groups_perms_owner_attrs(__TopXMLNS, _attrs,
				    _val);
decode_groups_perms_owner_attrs(__TopXMLNS,
				[_ | _attrs], Id) ->
    decode_groups_perms_owner_attrs(__TopXMLNS, _attrs, Id);
decode_groups_perms_owner_attrs(__TopXMLNS, [], Id) ->
    decode_groups_perms_owner_attr_id(__TopXMLNS, Id).

encode_groups_perms_owner({groups_owner, Id},
			  __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups/permissions">>,
				    [], __TopXMLNS),
    _els = [],
    _attrs = encode_groups_perms_owner_attr_id(Id,
					       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									  __TopXMLNS)),
    {xmlel, <<"owner">>, _attrs, _els}.

decode_groups_perms_owner_attr_id(__TopXMLNS,
				  undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"id">>, <<"owner">>, __TopXMLNS}});
decode_groups_perms_owner_attr_id(__TopXMLNS, _val) ->
    _val.

encode_groups_perms_owner_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_perms_delete(__TopXMLNS, __Opts,
			   {xmlel, <<"delete">>, _attrs, _els}) ->
    {Id, Xmlns} =
	decode_groups_perms_delete_attrs(__TopXMLNS, _attrs,
					 undefined, undefined),
    {groups_perms_delete, Xmlns, Id}.

decode_groups_perms_delete_attrs(__TopXMLNS,
				 [{<<"id">>, _val} | _attrs], _Id, Xmlns) ->
    decode_groups_perms_delete_attrs(__TopXMLNS, _attrs,
				     _val, Xmlns);
decode_groups_perms_delete_attrs(__TopXMLNS,
				 [{<<"xmlns">>, _val} | _attrs], Id, _Xmlns) ->
    decode_groups_perms_delete_attrs(__TopXMLNS, _attrs, Id,
				     _val);
decode_groups_perms_delete_attrs(__TopXMLNS,
				 [_ | _attrs], Id, Xmlns) ->
    decode_groups_perms_delete_attrs(__TopXMLNS, _attrs, Id,
				     Xmlns);
decode_groups_perms_delete_attrs(__TopXMLNS, [], Id,
				 Xmlns) ->
    {decode_groups_perms_delete_attr_id(__TopXMLNS, Id),
     decode_groups_perms_delete_attr_xmlns(__TopXMLNS,
					   Xmlns)}.

encode_groups_perms_delete({groups_perms_delete, Xmlns,
			    Id},
			   __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/groups/permissions">>,
						 <<"https://xabber.com/protocol/groups/permission"
						   "s#default">>,
						 <<"https://xabber.com/protocol/groups/permission"
						   "s#new">>],
						__TopXMLNS),
    _els = [],
    _attrs = encode_groups_perms_delete_attr_id(Id,
						xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									   __TopXMLNS)),
    {xmlel, <<"delete">>, _attrs, _els}.

decode_groups_perms_delete_attr_id(__TopXMLNS,
				   undefined) ->
    <<>>;
decode_groups_perms_delete_attr_id(__TopXMLNS, _val) ->
    _val.

encode_groups_perms_delete_attr_id(<<>>, _acc) -> _acc;
encode_groups_perms_delete_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_perms_delete_attr_xmlns(__TopXMLNS,
				      undefined) ->
    <<>>;
decode_groups_perms_delete_attr_xmlns(__TopXMLNS,
				      _val) ->
    _val.

decode_groups_perms_query(__TopXMLNS, __Opts,
			  {xmlel, <<"query">>, _attrs, _els}) ->
    Perms = decode_groups_perms_query_els(__TopXMLNS,
					  __Opts, _els, undefined),
    {Id, Xmlns} =
	decode_groups_perms_query_attrs(__TopXMLNS, _attrs,
					undefined, undefined),
    {groups_perms_query, Xmlns, Id, Perms}.

decode_groups_perms_query_els(__TopXMLNS, __Opts, [],
			      Perms) ->
    Perms;
decode_groups_perms_query_els(__TopXMLNS, __Opts,
			      [{xmlel, <<"permissions">>, _attrs, _} = _el
			       | _els],
			      Perms) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups/permissions">> ->
	  decode_groups_perms_query_els(__TopXMLNS, __Opts, _els,
					decode_groups_perms(<<"https://xabber.com/protocol/groups/permissions">>,
							    __Opts, _el));
      _ ->
	  decode_groups_perms_query_els(__TopXMLNS, __Opts, _els,
					Perms)
    end;
decode_groups_perms_query_els(__TopXMLNS, __Opts,
			      [_ | _els], Perms) ->
    decode_groups_perms_query_els(__TopXMLNS, __Opts, _els,
				  Perms).

decode_groups_perms_query_attrs(__TopXMLNS,
				[{<<"id">>, _val} | _attrs], _Id, Xmlns) ->
    decode_groups_perms_query_attrs(__TopXMLNS, _attrs,
				    _val, Xmlns);
decode_groups_perms_query_attrs(__TopXMLNS,
				[{<<"xmlns">>, _val} | _attrs], Id, _Xmlns) ->
    decode_groups_perms_query_attrs(__TopXMLNS, _attrs, Id,
				    _val);
decode_groups_perms_query_attrs(__TopXMLNS,
				[_ | _attrs], Id, Xmlns) ->
    decode_groups_perms_query_attrs(__TopXMLNS, _attrs, Id,
				    Xmlns);
decode_groups_perms_query_attrs(__TopXMLNS, [], Id,
				Xmlns) ->
    {decode_groups_perms_query_attr_id(__TopXMLNS, Id),
     decode_groups_perms_query_attr_xmlns(__TopXMLNS,
					  Xmlns)}.

encode_groups_perms_query({groups_perms_query, Xmlns,
			   Id, Perms},
			  __TopXMLNS) ->
    __NewTopXMLNS = xmpp_codec:choose_top_xmlns(Xmlns,
						[<<"https://xabber.com/protocol/groups/permissions">>,
						 <<"https://xabber.com/protocol/groups/permission"
						   "s#default">>,
						 <<"https://xabber.com/protocol/groups/permission"
						   "s#new">>],
						__TopXMLNS),
    _els =
	lists:reverse('encode_groups_perms_query_$perms'(Perms,
							 __NewTopXMLNS, [])),
    _attrs = encode_groups_perms_query_attr_id(Id,
					       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
									  __TopXMLNS)),
    {xmlel, <<"query">>, _attrs, _els}.

'encode_groups_perms_query_$perms'(undefined,
				   __TopXMLNS, _acc) ->
    _acc;
'encode_groups_perms_query_$perms'(Perms, __TopXMLNS,
				   _acc) ->
    [encode_groups_perms(Perms, __TopXMLNS) | _acc].

decode_groups_perms_query_attr_id(__TopXMLNS,
				  undefined) ->
    <<>>;
decode_groups_perms_query_attr_id(__TopXMLNS, _val) ->
    _val.

encode_groups_perms_query_attr_id(<<>>, _acc) -> _acc;
encode_groups_perms_query_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_groups_perms_query_attr_xmlns(__TopXMLNS,
				     undefined) ->
    <<>>;
decode_groups_perms_query_attr_xmlns(__TopXMLNS,
				     _val) ->
    _val.

decode_groups_perms(__TopXMLNS, __Opts,
		    {xmlel, <<"permissions">>, _attrs, _els}) ->
    Perms = decode_groups_perms_els(__TopXMLNS, __Opts,
				    _els, []),
    {Role, Actor} = decode_groups_perms_attrs(__TopXMLNS,
					      _attrs, undefined, undefined),
    {groups_perms, Role, Actor, Perms}.

decode_groups_perms_els(__TopXMLNS, __Opts, [],
			Perms) ->
    lists:reverse(Perms);
decode_groups_perms_els(__TopXMLNS, __Opts,
			[{xmlel, <<"permission">>, _attrs, _} = _el | _els],
			Perms) ->
    case xmpp_codec:get_attr(<<"xmlns">>, _attrs,
			     __TopXMLNS)
	of
      <<"https://xabber.com/protocol/groups/permissions">> ->
	  decode_groups_perms_els(__TopXMLNS, __Opts, _els,
				  [decode_groups_perm(<<"https://xabber.com/protocol/groups/permissions">>,
						      __Opts, _el)
				   | Perms]);
      _ ->
	  decode_groups_perms_els(__TopXMLNS, __Opts, _els, Perms)
    end;
decode_groups_perms_els(__TopXMLNS, __Opts, [_ | _els],
			Perms) ->
    decode_groups_perms_els(__TopXMLNS, __Opts, _els,
			    Perms).

decode_groups_perms_attrs(__TopXMLNS,
			  [{<<"role">>, _val} | _attrs], _Role, Actor) ->
    decode_groups_perms_attrs(__TopXMLNS, _attrs, _val,
			      Actor);
decode_groups_perms_attrs(__TopXMLNS,
			  [{<<"actor">>, _val} | _attrs], Role, _Actor) ->
    decode_groups_perms_attrs(__TopXMLNS, _attrs, Role,
			      _val);
decode_groups_perms_attrs(__TopXMLNS, [_ | _attrs],
			  Role, Actor) ->
    decode_groups_perms_attrs(__TopXMLNS, _attrs, Role,
			      Actor);
decode_groups_perms_attrs(__TopXMLNS, [], Role,
			  Actor) ->
    {decode_groups_perms_attr_role(__TopXMLNS, Role),
     decode_groups_perms_attr_actor(__TopXMLNS, Actor)}.

encode_groups_perms({groups_perms, Role, Actor, Perms},
		    __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups/permissions">>,
				    [], __TopXMLNS),
    _els = lists:reverse('encode_groups_perms_$perms'(Perms,
						      __NewTopXMLNS, [])),
    _attrs = encode_groups_perms_attr_actor(Actor,
					    encode_groups_perms_attr_role(Role,
									  xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
												     __TopXMLNS))),
    {xmlel, <<"permissions">>, _attrs, _els}.

'encode_groups_perms_$perms'([], __TopXMLNS, _acc) ->
    _acc;
'encode_groups_perms_$perms'([Perms | _els], __TopXMLNS,
			     _acc) ->
    'encode_groups_perms_$perms'(_els, __TopXMLNS,
				 [encode_groups_perm(Perms, __TopXMLNS)
				  | _acc]).

decode_groups_perms_attr_role(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_perms_attr_role(__TopXMLNS, _val) -> _val.

encode_groups_perms_attr_role(<<>>, _acc) -> _acc;
encode_groups_perms_attr_role(_val, _acc) ->
    [{<<"role">>, _val} | _acc].

decode_groups_perms_attr_actor(__TopXMLNS, undefined) ->
    undefined;
decode_groups_perms_attr_actor(__TopXMLNS, _val) ->
    _val.

encode_groups_perms_attr_actor(undefined, _acc) -> _acc;
encode_groups_perms_attr_actor(_val, _acc) ->
    [{<<"actor">>, _val} | _acc].

decode_groups_perm(__TopXMLNS, __Opts,
		   {xmlel, <<"permission">>, _attrs, _els}) ->
    Display_name = decode_groups_perm_els(__TopXMLNS,
					  __Opts, _els, <<>>),
    {Name, Role, Status, Seconds, Expires, Tag, Fixed} =
	decode_groups_perm_attrs(__TopXMLNS, _attrs, undefined,
				 undefined, undefined, undefined, undefined,
				 undefined, undefined),
    {groups_perm, Name, Role, Status, Seconds, Expires, Tag,
     Fixed, Display_name}.

decode_groups_perm_els(__TopXMLNS, __Opts, [],
		       Display_name) ->
    decode_groups_perm_cdata(__TopXMLNS, Display_name);
decode_groups_perm_els(__TopXMLNS, __Opts,
		       [{xmlcdata, _data} | _els], Display_name) ->
    decode_groups_perm_els(__TopXMLNS, __Opts, _els,
			   <<Display_name/binary, _data/binary>>);
decode_groups_perm_els(__TopXMLNS, __Opts, [_ | _els],
		       Display_name) ->
    decode_groups_perm_els(__TopXMLNS, __Opts, _els,
			   Display_name).

decode_groups_perm_attrs(__TopXMLNS,
			 [{<<"name">>, _val} | _attrs], _Name, Role, Status,
			 Seconds, Expires, Tag, Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, _val, Role,
			     Status, Seconds, Expires, Tag, Fixed);
decode_groups_perm_attrs(__TopXMLNS,
			 [{<<"role">>, _val} | _attrs], Name, _Role, Status,
			 Seconds, Expires, Tag, Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, Name, _val,
			     Status, Seconds, Expires, Tag, Fixed);
decode_groups_perm_attrs(__TopXMLNS,
			 [{<<"status">>, _val} | _attrs], Name, Role, _Status,
			 Seconds, Expires, Tag, Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, Name, Role,
			     _val, Seconds, Expires, Tag, Fixed);
decode_groups_perm_attrs(__TopXMLNS,
			 [{<<"seconds">>, _val} | _attrs], Name, Role, Status,
			 _Seconds, Expires, Tag, Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, Name, Role,
			     Status, _val, Expires, Tag, Fixed);
decode_groups_perm_attrs(__TopXMLNS,
			 [{<<"expires">>, _val} | _attrs], Name, Role, Status,
			 Seconds, _Expires, Tag, Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, Name, Role,
			     Status, Seconds, _val, Tag, Fixed);
decode_groups_perm_attrs(__TopXMLNS,
			 [{<<"tag">>, _val} | _attrs], Name, Role, Status,
			 Seconds, Expires, _Tag, Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, Name, Role,
			     Status, Seconds, Expires, _val, Fixed);
decode_groups_perm_attrs(__TopXMLNS,
			 [{<<"fixed">>, _val} | _attrs], Name, Role, Status,
			 Seconds, Expires, Tag, _Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, Name, Role,
			     Status, Seconds, Expires, Tag, _val);
decode_groups_perm_attrs(__TopXMLNS, [_ | _attrs], Name,
			 Role, Status, Seconds, Expires, Tag, Fixed) ->
    decode_groups_perm_attrs(__TopXMLNS, _attrs, Name, Role,
			     Status, Seconds, Expires, Tag, Fixed);
decode_groups_perm_attrs(__TopXMLNS, [], Name, Role,
			 Status, Seconds, Expires, Tag, Fixed) ->
    {decode_groups_perm_attr_name(__TopXMLNS, Name),
     decode_groups_perm_attr_role(__TopXMLNS, Role),
     decode_groups_perm_attr_status(__TopXMLNS, Status),
     decode_groups_perm_attr_seconds(__TopXMLNS, Seconds),
     decode_groups_perm_attr_expires(__TopXMLNS, Expires),
     decode_groups_perm_attr_tag(__TopXMLNS, Tag),
     decode_groups_perm_attr_fixed(__TopXMLNS, Fixed)}.

encode_groups_perm({groups_perm, Name, Role, Status,
		    Seconds, Expires, Tag, Fixed, Display_name},
		   __TopXMLNS) ->
    __NewTopXMLNS =
	xmpp_codec:choose_top_xmlns(<<"https://xabber.com/protocol/groups/permissions">>,
				    [], __TopXMLNS),
    _els = encode_groups_perm_cdata(Display_name, []),
    _attrs = encode_groups_perm_attr_fixed(Fixed,
					   encode_groups_perm_attr_tag(Tag,
								       encode_groups_perm_attr_expires(Expires,
												       encode_groups_perm_attr_seconds(Seconds,
																       encode_groups_perm_attr_status(Status,
																				      encode_groups_perm_attr_role(Role,
																								   encode_groups_perm_attr_name(Name,
																												xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
																															   __TopXMLNS)))))))),
    {xmlel, <<"permission">>, _attrs, _els}.

decode_groups_perm_attr_name(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"name">>, <<"permission">>,
		   __TopXMLNS}});
decode_groups_perm_attr_name(__TopXMLNS, _val) -> _val.

encode_groups_perm_attr_name(_val, _acc) ->
    [{<<"name">>, _val} | _acc].

decode_groups_perm_attr_role(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_perm_attr_role(__TopXMLNS, _val) -> _val.

encode_groups_perm_attr_role(<<>>, _acc) -> _acc;
encode_groups_perm_attr_role(_val, _acc) ->
    [{<<"role">>, _val} | _acc].

decode_groups_perm_attr_status(__TopXMLNS, undefined) ->
    erlang:error({xmpp_codec,
		  {missing_attr, <<"status">>, <<"permission">>,
		   __TopXMLNS}});
decode_groups_perm_attr_status(__TopXMLNS, _val) ->
    case catch dec_bool(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"status">>, <<"permission">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_perm_attr_status(_val, _acc) ->
    [{<<"status">>, enc_bool(_val)} | _acc].

decode_groups_perm_attr_seconds(__TopXMLNS,
				undefined) ->
    undefined;
decode_groups_perm_attr_seconds(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"seconds">>, <<"permission">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_perm_attr_seconds(undefined, _acc) ->
    _acc;
encode_groups_perm_attr_seconds(_val, _acc) ->
    [{<<"seconds">>, enc_int(_val)} | _acc].

decode_groups_perm_attr_expires(__TopXMLNS,
				undefined) ->
    undefined;
decode_groups_perm_attr_expires(__TopXMLNS, _val) ->
    case catch dec_int(_val, 0, infinity) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"expires">>, <<"permission">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_perm_attr_expires(undefined, _acc) ->
    _acc;
encode_groups_perm_attr_expires(_val, _acc) ->
    [{<<"expires">>, enc_int(_val)} | _acc].

decode_groups_perm_attr_tag(__TopXMLNS, undefined) ->
    <<>>;
decode_groups_perm_attr_tag(__TopXMLNS, _val) -> _val.

encode_groups_perm_attr_tag(<<>>, _acc) -> _acc;
encode_groups_perm_attr_tag(_val, _acc) ->
    [{<<"tag">>, _val} | _acc].

decode_groups_perm_attr_fixed(__TopXMLNS, undefined) ->
    false;
decode_groups_perm_attr_fixed(__TopXMLNS, _val) ->
    case catch dec_bool(_val) of
      {'EXIT', _} ->
	  erlang:error({xmpp_codec,
			{bad_attr_value, <<"fixed">>, <<"permission">>,
			 __TopXMLNS}});
      _res -> _res
    end.

encode_groups_perm_attr_fixed(false, _acc) -> _acc;
encode_groups_perm_attr_fixed(_val, _acc) ->
    [{<<"fixed">>, enc_bool(_val)} | _acc].

decode_groups_perm_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_groups_perm_cdata(__TopXMLNS, _val) -> _val.

encode_groups_perm_cdata(<<>>, _acc) -> _acc;
encode_groups_perm_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
