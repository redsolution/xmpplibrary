%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: sync_query.xdata
%% Form type: https://xabber.com/protocol/synchronization
%% Document: XEP-SYNC

-module(sync_query).

-export([decode/1, decode/2, encode/1, encode/2,
	 format_error/1, io_format_error/1]).

-include("xmpp_codec.hrl").

-include("sync_query.hrl").

-export_type([property/0, result/0, form/0]).

dec_bool(<<"1">>) -> true;
dec_bool(<<"0">>) -> false;
dec_bool(<<"true">>) -> true;
dec_bool(<<"false">>) -> false.

enc_bool(true) -> <<"1">>;
enc_bool(false) -> <<"0">>.

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
		       [<<"https://xabber.com/protocol/synchronization">>]} ->
	  decode(Fs, Acc, []);
      _ ->
	  erlang:error({?MODULE,
			{form_type_mismatch,
			 <<"https://xabber.com/protocol/synchronization">>}})
    end.

encode(Cfg) -> encode(Cfg, <<"en">>).

encode(List, Lang) when is_list(List) ->
    Fs = [case Opt of
	    {pinned_first, Val} -> [encode_pinned_first(Val, Lang)];
	    {pinned_first, _, _} -> erlang:error({badarg, Opt});
	    {filter_pinned, Val} ->
		[encode_filter_pinned(Val, Lang)];
	    {filter_pinned, _, _} -> erlang:error({badarg, Opt});
	    {filter_archived, Val} ->
		[encode_filter_archived(Val, Lang)];
	    {filter_archived, _, _} -> erlang:error({badarg, Opt});
	    #xdata_field{} -> [Opt];
	    _ -> []
	  end
	  || Opt <- List],
    FormType = #xdata_field{var = <<"FORM_TYPE">>,
			    type = hidden,
			    values =
				[<<"https://xabber.com/protocol/synchronization">>]},
    [FormType | lists:flatten(Fs)].

decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "pinned_first">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{pinned_first, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/synchronization}"
			   "pinned_first">>,
			 <<"https://xabber.com/protocol/synchronization">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "pinned_first">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/synchronization}"
				"pinned_first">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "pinned_first">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/synchronization}"
		     "pinned_first">>,
		   <<"https://xabber.com/protocol/synchronization">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_pinned">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_pinned, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_pinned">>,
			 <<"https://xabber.com/protocol/synchronization">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_pinned">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/synchronization}"
				"filter_pinned">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_pinned">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/synchronization}"
		     "filter_pinned">>,
		   <<"https://xabber.com/protocol/synchronization">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_archived">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_archived, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_archived">>,
			 <<"https://xabber.com/protocol/synchronization">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_archived">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/synchronization}"
				"filter_archived">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/synchronization}"
			   "filter_archived">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/synchronization}"
		     "filter_archived">>,
		   <<"https://xabber.com/protocol/synchronization">>}});
decode([#xdata_field{var = Var} | Fs], Acc, Required) ->
    if Var /= <<"FORM_TYPE">> ->
	   erlang:error({?MODULE,
			 {unknown_var, Var,
			  <<"https://xabber.com/protocol/synchronization">>}});
       true -> decode(Fs, Acc, Required)
    end;
decode([], Acc, []) -> Acc.

encode_pinned_first(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/synchronization}"
		       "pinned_first">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Pinned conversations will be first in "
				  "query">>)}.

encode_filter_pinned(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/synchronization}"
		       "filter_pinned">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only pinned conversations">>)}.

encode_filter_archived(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/synchronization}"
		       "filter_archived">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only archived conversations">>)}.
