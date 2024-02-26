%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: groups_status.xdata
%% Form type: https://xabber.com/protocol/groups#status
%% Document: XEP-GROUPS

-module(groups_status).

-compile({nowarn_unused_function,
	  [{dec_int, 3}, {dec_int, 1}, {dec_enum, 2},
	   {dec_enum_int, 2}, {dec_enum_int, 4}, {enc_int, 1},
	   {enc_enum, 1}, {enc_enum_int, 1}, {not_empty, 1},
	   {dec_bool, 1}, {enc_bool, 1}, {dec_ip, 1},
	   {enc_ip, 1}]}).

-compile(nowarn_unused_vars).

-dialyzer({nowarn_function, {dec_int, 3}}).

-export([encode/1, encode/2, encode/3]).

-export([decode/1, decode/2, decode/3, format_error/1,
	 io_format_error/1]).

-include("xmpp_codec.hrl").

-include("groups_status.hrl").

-export_type([property/0, result/0, form/0,
	      error_reason/0]).

-define(T(S), <<S>>).

-spec format_error(error_reason()) -> binary().

-spec io_format_error(error_reason()) -> {binary(),
					  [binary()]}.

-spec decode([xdata_field()]) -> result().

-spec decode([xdata_field()],
	     [binary(), ...]) -> result().

-spec decode([xdata_field()], [binary(), ...],
	     [binary()]) -> result().

-spec decode([xdata_field()], [binary(), ...],
	     [binary()], result()) -> result().

-spec do_decode([xdata_field()], binary(), [binary()],
		result()) -> result().

-spec encode(form()) -> [xdata_field()].

-spec encode(form(), binary()) -> [xdata_field()].

-spec encode(form(), binary(),
	     [header1 | header2 | status | fiesta | discussion |
	      regulated | limited | restricted |
	      inactive]) -> [xdata_field()].

dec_int(Val) -> dec_int(Val, infinity, infinity).

dec_int(Val, Min, Max) ->
    case erlang:binary_to_integer(Val) of
      Int when Int =< Max, Min == infinity -> Int;
      Int when Int =< Max, Int >= Min -> Int
    end.

enc_int(Int) -> integer_to_binary(Int).

dec_enum(Val, Enums) ->
    AtomVal = erlang:binary_to_existing_atom(Val, utf8),
    case lists:member(AtomVal, Enums) of
      true -> AtomVal
    end.

enc_enum(Atom) -> erlang:atom_to_binary(Atom, utf8).

dec_enum_int(Val, Enums) ->
    try dec_int(Val) catch _:_ -> dec_enum(Val, Enums) end.

dec_enum_int(Val, Enums, Min, Max) ->
    try dec_int(Val, Min, Max) catch
      _:_ -> dec_enum(Val, Enums)
    end.

enc_enum_int(Int) when is_integer(Int) -> enc_int(Int);
enc_enum_int(Atom) -> enc_enum(Atom).

dec_bool(<<"1">>) -> true;
dec_bool(<<"0">>) -> false;
dec_bool(<<"true">>) -> true;
dec_bool(<<"false">>) -> false.

enc_bool(true) -> <<"1">>;
enc_bool(false) -> <<"0">>.

not_empty(<<_, _/binary>> = Val) -> Val.

dec_ip(Val) ->
    {ok, Addr} = inet_parse:address(binary_to_list(Val)),
    Addr.

enc_ip({0, 0, 0, 0, 0, 65535, A, B}) ->
    enc_ip({(A bsr 8) band 255, A band 255,
	    (B bsr 8) band 255, B band 255});
enc_ip(Addr) -> list_to_binary(inet_parse:ntoa(Addr)).

format_error({form_type_mismatch, Type}) ->
    <<"FORM_TYPE doesn't match '", Type/binary, "'">>;
format_error({bad_var_value, Var, Type}) ->
    <<"Bad value of field '", Var/binary, "' of type '",
      Type/binary, "'">>;
format_error({missing_value, Var, Type}) ->
    <<"Missing value of field '", Var/binary, "' of type '",
      Type/binary, "'">>;
format_error({too_many_values, Var, Type}) ->
    <<"Too many values for field '", Var/binary,
      "' of type '", Type/binary, "'">>;
format_error({unknown_var, Var, Type}) ->
    <<"Unknown field '", Var/binary, "' of type '",
      Type/binary, "'">>;
format_error({missing_required_var, Var, Type}) ->
    <<"Missing required field '", Var/binary, "' of type '",
      Type/binary, "'">>.

io_format_error({form_type_mismatch, Type}) ->
    {<<"FORM_TYPE doesn't match '~s'">>, [Type]};
io_format_error({bad_var_value, Var, Type}) ->
    {<<"Bad value of field '~s' of type '~s'">>,
     [Var, Type]};
io_format_error({missing_value, Var, Type}) ->
    {<<"Missing value of field '~s' of type "
       "'~s'">>,
     [Var, Type]};
io_format_error({too_many_values, Var, Type}) ->
    {<<"Too many values for field '~s' of type "
       "'~s'">>,
     [Var, Type]};
io_format_error({unknown_var, Var, Type}) ->
    {<<"Unknown field '~s' of type '~s'">>, [Var, Type]};
io_format_error({missing_required_var, Var, Type}) ->
    {<<"Missing required field '~s' of type "
       "'~s'">>,
     [Var, Type]}.

decode(Fs) ->
    decode(Fs,
	   [<<"https://xabber.com/protocol/groups#status">>], [],
	   []).

decode(Fs, XMLNSList) -> decode(Fs, XMLNSList, [], []).

decode(Fs, XMLNSList, Required) ->
    decode(Fs, XMLNSList, Required, []).

decode(Fs, [_ | _] = XMLNSList, Required, Acc) ->
    case lists:keyfind(<<"FORM_TYPE">>, #xdata_field.var,
		       Fs)
	of
      false -> do_decode(Fs, hd(XMLNSList), Required, Acc);
      #xdata_field{values = [XMLNS]} ->
	  case lists:member(XMLNS, XMLNSList) of
	    true -> do_decode(Fs, XMLNS, Required, Acc);
	    false ->
		erlang:error({?MODULE, {form_type_mismatch, XMLNS}})
	  end
    end.

encode(Cfg) -> encode(Cfg, <<"en">>, []).

encode(Cfg, Lang) -> encode(Cfg, Lang, []).

encode(List, Lang, Required) ->
    Fs = [case Opt of
	    {header1, Val} ->
		[encode_header1(Val, Lang,
				lists:member(header1, Required))];
	    {header2, Val} ->
		[encode_header2(Val, Lang,
				lists:member(header2, Required))];
	    {status, Val} ->
		[encode_status(Val, Lang,
			       lists:member(status, Required))];
	    {fiesta, Val} ->
		[encode_fiesta(Val, Lang,
			       lists:member(fiesta, Required))];
	    {discussion, Val} ->
		[encode_discussion(Val, Lang,
				   lists:member(discussion, Required))];
	    {regulated, Val} ->
		[encode_regulated(Val, Lang,
				  lists:member(regulated, Required))];
	    {limited, Val} ->
		[encode_limited(Val, Lang,
				lists:member(limited, Required))];
	    {restricted, Val} ->
		[encode_restricted(Val, Lang,
				   lists:member(restricted, Required))];
	    {inactive, Val} ->
		[encode_inactive(Val, Lang,
				 lists:member(inactive, Required))];
	    #xdata_field{} -> [Opt]
	  end
	  || Opt <- List],
    FormType = #xdata_field{var = <<"FORM_TYPE">>,
			    type = hidden,
			    values =
				[<<"https://xabber.com/protocol/groups#status">>]},
    [FormType | lists:flatten(Fs)].

do_decode([#xdata_field{var = <<"header1">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"header1">>, Required),
		    [{header1, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"header1">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"header1">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"header1">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"header1">>} | _],
	  XMLNS, _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"header1">>, XMLNS}});
do_decode([#xdata_field{var = <<"header2">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"header2">>, Required),
		    [{header2, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"header2">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"header2">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"header2">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"header2">>} | _],
	  XMLNS, _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"header2">>, XMLNS}});
do_decode([#xdata_field{var = <<"status">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"status">>, Required),
		    [{status, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"status">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"status">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"status">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"status">>} | _], XMLNS,
	  _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"status">>, XMLNS}});
do_decode([#xdata_field{var = <<"fiesta">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"fiesta">>, Required),
		    [{fiesta, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"fiesta">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"fiesta">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"fiesta">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"fiesta">>} | _], XMLNS,
	  _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"fiesta">>, XMLNS}});
do_decode([#xdata_field{var = <<"discussion">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"discussion">>, Required),
		    [{discussion, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"discussion">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"discussion">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"discussion">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"discussion">>} | _],
	  XMLNS, _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"discussion">>, XMLNS}});
do_decode([#xdata_field{var = <<"regulated">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"regulated">>, Required),
		    [{regulated, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"regulated">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"regulated">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"regulated">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"regulated">>} | _],
	  XMLNS, _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"regulated">>, XMLNS}});
do_decode([#xdata_field{var = <<"limited">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"limited">>, Required),
		    [{limited, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"limited">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"limited">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"limited">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"limited">>} | _],
	  XMLNS, _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"limited">>, XMLNS}});
do_decode([#xdata_field{var = <<"restricted">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"restricted">>, Required),
		    [{restricted, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"restricted">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"restricted">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"restricted">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"restricted">>} | _],
	  XMLNS, _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"restricted">>, XMLNS}});
do_decode([#xdata_field{var = <<"inactive">>,
			values = [Value]}
	   | Fs],
	  XMLNS, Required, Acc) ->
    try Value of
      Result ->
	  do_decode(Fs, XMLNS,
		    lists:delete(<<"inactive">>, Required),
		    [{inactive, Result} | Acc])
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"inactive">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"inactive">>,
			values = []} =
	       F
	   | Fs],
	  XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"inactive">>,
			     values = [<<>>]}
	       | Fs],
	      XMLNS, Required, Acc);
do_decode([#xdata_field{var = <<"inactive">>} | _],
	  XMLNS, _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"inactive">>, XMLNS}});
do_decode([#xdata_field{var = Var} | Fs], XMLNS,
	  Required, Acc) ->
    if Var /= <<"FORM_TYPE">> ->
	   erlang:error({?MODULE, {unknown_var, Var, XMLNS}});
       true -> do_decode(Fs, XMLNS, Required, Acc)
    end;
do_decode([], XMLNS, [Var | _], _) ->
    erlang:error({?MODULE,
		  {missing_required_var, Var, XMLNS}});
do_decode([], _, [], Acc) -> Acc.

-spec encode_header1(binary(), binary(),
		     boolean()) -> xdata_field().

encode_header1(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"header1">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc = <<>>, label = <<>>}.

-spec encode_header2(binary(), binary(),
		     boolean()) -> xdata_field().

encode_header2(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"header2">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc = <<>>, label = <<>>}.

-spec encode_status(binary(), binary(),
		    boolean()) -> xdata_field().

encode_status(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"status">>, values = Values,
		 required = IsRequired, type = 'text-single',
		 options = Opts, desc = <<>>,
		 label = xmpp_tr:tr(Lang, ?T("Status of group"))}.

-spec encode_fiesta(binary(), binary(),
		    boolean()) -> xdata_field().

encode_fiesta(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"fiesta">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				?T("Everything is allowed, no restrictions. "
				   "Stickers, pictures, voice messages are "
				   "allowed.")),
		 label = <<>>}.

-spec encode_discussion(binary(), binary(),
			boolean()) -> xdata_field().

encode_discussion(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"discussion">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				?T("Regular chat. There is no limit on the "
				   "number of messages. Limited voice messages")),
		 label = <<>>}.

-spec encode_regulated(binary(), binary(),
		       boolean()) -> xdata_field().

encode_regulated(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"regulated">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				?T("Regulated chat. Only text messages and "
				   "images. Limit on the number of messages "
				   "per minute.")),
		 label = <<>>}.

-spec encode_limited(binary(), binary(),
		     boolean()) -> xdata_field().

encode_limited(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"limited">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				?T("Limited discussion. Text messages only. "
				   "Limit on the number of messages per "
				   "minute.")),
		 label = <<>>}.

-spec encode_restricted(binary(), binary(),
			boolean()) -> xdata_field().

encode_restricted(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"restricted">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				?T("Chat is allowed only for administrators")),
		 label = <<>>}.

-spec encode_inactive(binary(), binary(),
		      boolean()) -> xdata_field().

encode_inactive(Value, Lang, IsRequired) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"inactive">>, values = Values,
		 required = IsRequired, type = fixed, options = Opts,
		 desc = xmpp_tr:tr(Lang, ?T("Chat is off")),
		 label = <<>>}.
