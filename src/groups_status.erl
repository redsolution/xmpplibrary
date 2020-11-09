%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: groups_status.xdata
%% Form type: https://xabber.com/protocol/groups#status
%% Document: XEP-GROUPS

-module(groups_status).

-export([decode/1, decode/2, encode/1, encode/2,
	 format_error/1, io_format_error/1]).

-include("xmpp_codec.hrl").

-include("groups_status.hrl").

-export_type([property/0, result/0, form/0]).

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

decode(Fs) -> decode(Fs, []).

decode(Fs, Acc) ->
    case lists:keyfind(<<"FORM_TYPE">>, #xdata_field.var,
		       Fs)
	of
      false -> decode(Fs, Acc, []);
      #xdata_field{values =
		       [<<"https://xabber.com/protocol/groups#status">>]} ->
	  decode(Fs, Acc, []);
      _ ->
	  erlang:error({?MODULE,
			{form_type_mismatch,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end.

encode(Cfg) -> encode(Cfg, <<"en">>).

encode(List, Lang) when is_list(List) ->
    Fs = [case Opt of
	    {header1, Val} -> [encode_header1(Val, Lang)];
	    {header1, _, _} -> erlang:error({badarg, Opt});
	    {header2, Val} -> [encode_header2(Val, Lang)];
	    {header2, _, _} -> erlang:error({badarg, Opt});
	    {status, Val} -> [encode_status(Val, Lang)];
	    {status, _, _} -> erlang:error({badarg, Opt});
	    {fiesta, Val} -> [encode_fiesta(Val, Lang)];
	    {fiesta, _, _} -> erlang:error({badarg, Opt});
	    {discussion, Val} -> [encode_discussion(Val, Lang)];
	    {discussion, _, _} -> erlang:error({badarg, Opt});
	    {regulated, Val} -> [encode_regulated(Val, Lang)];
	    {regulated, _, _} -> erlang:error({badarg, Opt});
	    {limited, Val} -> [encode_limited(Val, Lang)];
	    {limited, _, _} -> erlang:error({badarg, Opt});
	    {restricted, Val} -> [encode_restricted(Val, Lang)];
	    {restricted, _, _} -> erlang:error({badarg, Opt});
	    {inactive, Val} -> [encode_inactive(Val, Lang)];
	    {inactive, _, _} -> erlang:error({badarg, Opt});
	    #xdata_field{} -> [Opt];
	    _ -> []
	  end
	  || Opt <- List],
    FormType = #xdata_field{var = <<"FORM_TYPE">>,
			    type = hidden,
			    values =
				[<<"https://xabber.com/protocol/groups#status">>]},
    [FormType | lists:flatten(Fs)].

decode([#xdata_field{var = <<"header1">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{header1, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"header1">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"header1">>, values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"header1">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"header1">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"header1">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"header2">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{header2, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"header2">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"header2">>, values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"header2">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"header2">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"header2">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"status">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result -> decode(Fs, [{status, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"status">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"status">>, values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"status">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"status">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"status">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"fiesta">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result -> decode(Fs, [{fiesta, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"fiesta">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"fiesta">>, values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"fiesta">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"fiesta">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"fiesta">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"discussion">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{discussion, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"discussion">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"discussion">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"discussion">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"discussion">>} | _], _,
       _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"discussion">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"regulated">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{regulated, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"regulated">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"regulated">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"regulated">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"regulated">>} | _], _,
       _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"regulated">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"limited">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{limited, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"limited">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"limited">>, values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"limited">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"limited">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"limited">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"restricted">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{restricted, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"restricted">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"restricted">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"restricted">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"restricted">>} | _], _,
       _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"restricted">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = <<"inactive">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{inactive, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"inactive">>,
			 <<"https://xabber.com/protocol/groups#status">>}})
    end;
decode([#xdata_field{var = <<"inactive">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"inactive">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"inactive">>} | _], _,
       _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"inactive">>,
		   <<"https://xabber.com/protocol/groups#status">>}});
decode([#xdata_field{var = Var} | Fs], Acc, Required) ->
    if Var /= <<"FORM_TYPE">> ->
	   erlang:error({?MODULE,
			 {unknown_var, Var,
			  <<"https://xabber.com/protocol/groups#status">>}});
       true -> decode(Fs, Acc, Required)
    end;
decode([], Acc, []) -> Acc.

encode_header1(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"header1">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc = <<>>, label = <<>>}.

encode_header2(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"header2">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc = <<>>, label = <<>>}.

encode_status(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"status">>, values = Values,
		 required = false, type = 'text-single', options = Opts,
		 desc = <<>>,
		 label = xmpp_tr:tr(Lang, <<"Status of group">>)}.

encode_fiesta(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"fiesta">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				<<"Everything is allowed, no restrictions. "
				  "Stickers, pictures, voice messages are "
				  "allowed.">>),
		 label = <<>>}.

encode_discussion(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"discussion">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				<<"Regular chat. There is no limit on the "
				  "number of messages. Limited voice messages">>),
		 label = <<>>}.

encode_regulated(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"regulated">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				<<"Regulated chat. Only text messages and "
				  "images. Limit on the number of messages "
				  "per minute.">>),
		 label = <<>>}.

encode_limited(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"limited">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				<<"Limited discussion. Text messages only. "
				  "Limit on the number of messages per "
				  "minute.">>),
		 label = <<>>}.

encode_restricted(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"restricted">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc =
		     xmpp_tr:tr(Lang,
				<<"Chat is allowed only for administrators">>),
		 label = <<>>}.

encode_inactive(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"inactive">>, values = Values,
		 required = false, type = fixed, options = Opts,
		 desc = xmpp_tr:tr(Lang, <<"Chat is off">>),
		 label = <<>>}.
