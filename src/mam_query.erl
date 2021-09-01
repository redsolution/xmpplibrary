%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: mam_query.xdata
%% Form type: urn:xmpp:mam:1
%% Document: XEP-0313

-module(mam_query).

-export([decode/1, decode/2, encode/1, encode/2,
	 format_error/1, io_format_error/1]).

-include("xmpp_codec.hrl").

-include("mam_query.hrl").

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
      #xdata_field{values = [<<"urn:xmpp:mam:1">>]} ->
	  decode(Fs, Acc, []);
      _ ->
	  erlang:error({?MODULE,
			{form_type_mismatch, <<"urn:xmpp:mam:1">>}})
    end.

encode(Cfg) -> encode(Cfg, <<"en">>).

encode(List, Lang) when is_list(List) ->
    Fs = [case Opt of
	    {with, Val} -> [encode_with(Val, Lang)];
	    {with, _, _} -> erlang:error({badarg, Opt});
	    {start, Val} -> [encode_start(Val, Lang)];
	    {start, _, _} -> erlang:error({badarg, Opt});
	    {'end', Val} -> [encode_end(Val, Lang)];
	    {'end', _, _} -> erlang:error({badarg, Opt});
	    {withtext, Val} -> [encode_withtext(Val, Lang)];
	    {withtext, _, _} -> erlang:error({badarg, Opt});
	    {'before-id', Val} -> ['encode_before-id'(Val, Lang)];
	    {'before-id', _, _} -> erlang:error({badarg, Opt});
	    {'after-id', Val} -> ['encode_after-id'(Val, Lang)];
	    {'after-id', _, _} -> erlang:error({badarg, Opt});
	    {ids, Val} -> [encode_ids(Val, Lang)];
	    {ids, _, _} -> erlang:error({badarg, Opt});
	    {filter_encrypted, Val} ->
		[encode_filter_encrypted(Val, Lang)];
	    {filter_encrypted, _, _} -> erlang:error({badarg, Opt});
	    {filter_audio, Val} -> [encode_filter_audio(Val, Lang)];
	    {filter_audio, _, _} -> erlang:error({badarg, Opt});
	    {filter_image, Val} -> [encode_filter_image(Val, Lang)];
	    {filter_image, _, _} -> erlang:error({badarg, Opt});
	    {filter_document, Val} ->
		[encode_filter_document(Val, Lang)];
	    {filter_document, _, _} -> erlang:error({badarg, Opt});
	    {filter_video, Val} -> [encode_filter_video(Val, Lang)];
	    {filter_video, _, _} -> erlang:error({badarg, Opt});
	    {filter_voice, Val} -> [encode_filter_voice(Val, Lang)];
	    {filter_voice, _, _} -> erlang:error({badarg, Opt});
	    {filter_sticker, Val} ->
		[encode_filter_sticker(Val, Lang)];
	    {filter_sticker, _, _} -> erlang:error({badarg, Opt});
	    {'stanza-id', Val} -> ['encode_stanza-id'(Val, Lang)];
	    {'stanza-id', _, _} -> erlang:error({badarg, Opt});
	    #xdata_field{} -> [Opt];
	    _ -> []
	  end
	  || Opt <- List],
    FormType = #xdata_field{var = <<"FORM_TYPE">>,
			    type = hidden, values = [<<"urn:xmpp:mam:1">>]},
    [FormType | lists:flatten(Fs)].

decode([#xdata_field{var = <<"with">>, values = [Value]}
	| Fs],
       Acc, Required) ->
    try jid:decode(Value) of
      Result -> decode(Fs, [{with, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"with">>, <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var = <<"with">>, values = []} = F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"with">>, values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"with">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"with">>, <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var = <<"start">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try xmpp_util:decode_timestamp(Value) of
      Result -> decode(Fs, [{start, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"start">>, <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var = <<"start">>, values = []} = F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"start">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"start">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"start">>, <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var = <<"end">>, values = [Value]}
	| Fs],
       Acc, Required) ->
    try xmpp_util:decode_timestamp(Value) of
      Result -> decode(Fs, [{'end', Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"end">>, <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var = <<"end">>, values = []} = F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"end">>, values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"end">>} | _], _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"end">>, <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var = <<"withtext">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{withtext, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"withtext">>, <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var = <<"withtext">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"withtext">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"withtext">>} | _], _,
       _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"withtext">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var = <<"before-id">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{'before-id', Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"before-id">>, <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var = <<"before-id">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"before-id">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"before-id">>} | _], _,
       _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"before-id">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var = <<"after-id">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{'after-id', Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"after-id">>, <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var = <<"after-id">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var = <<"after-id">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var = <<"after-id">>} | _], _,
       _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"after-id">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var = <<"ids">>, values = Values}
	| Fs],
       Acc, Required) ->
    try [Value || Value <- Values] of
      Result -> decode(Fs, [{ids, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"ids">>, <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_e"
			   "ncrypted">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_encrypted, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/archive}filter_e"
			   "ncrypted">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_e"
			   "ncrypted">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/archive}filter_e"
				"ncrypted">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_e"
			   "ncrypted">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/archive}filter_e"
		     "ncrypted">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_a"
			   "udio">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_audio, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/archive}filter_a"
			   "udio">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_a"
			   "udio">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/archive}filter_a"
				"udio">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_a"
			   "udio">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/archive}filter_a"
		     "udio">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_i"
			   "mage">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_image, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/archive}filter_i"
			   "mage">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_i"
			   "mage">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/archive}filter_i"
				"mage">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_i"
			   "mage">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/archive}filter_i"
		     "mage">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_d"
			   "ocument">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_document, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/archive}filter_d"
			   "ocument">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_d"
			   "ocument">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/archive}filter_d"
				"ocument">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_d"
			   "ocument">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/archive}filter_d"
		     "ocument">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "ideo">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_video, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "ideo">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "ideo">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/archive}filter_v"
				"ideo">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "ideo">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/archive}filter_v"
		     "ideo">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "oice">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_voice, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "oice">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "oice">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/archive}filter_v"
				"oice">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_v"
			   "oice">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/archive}filter_v"
		     "oice">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_s"
			   "ticker">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try dec_bool(Value) of
      Result ->
	  decode(Fs, [{filter_sticker, Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value,
			 <<"{https://xabber.com/protocol/archive}filter_s"
			   "ticker">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_s"
			   "ticker">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{https://xabber.com/protocol/archive}filter_s"
				"ticker">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{https://xabber.com/protocol/archive}filter_s"
			   "ticker">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values,
		   <<"{https://xabber.com/protocol/archive}filter_s"
		     "ticker">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var =
			 <<"{urn:xmpp:sid:0}stanza-id">>,
		     values = [Value]}
	| Fs],
       Acc, Required) ->
    try Value of
      Result ->
	  decode(Fs, [{'stanza-id', Result} | Acc], Required)
    catch
      _:_ ->
	  erlang:error({?MODULE,
			{bad_var_value, <<"{urn:xmpp:sid:0}stanza-id">>,
			 <<"urn:xmpp:mam:1">>}})
    end;
decode([#xdata_field{var =
			 <<"{urn:xmpp:sid:0}stanza-id">>,
		     values = []} =
	    F
	| Fs],
       Acc, Required) ->
    decode([F#xdata_field{var =
			      <<"{urn:xmpp:sid:0}stanza-id">>,
			  values = [<<>>]}
	    | Fs],
	   Acc, Required);
decode([#xdata_field{var =
			 <<"{urn:xmpp:sid:0}stanza-id">>}
	| _],
       _, _) ->
    erlang:error({?MODULE,
		  {too_many_values, <<"{urn:xmpp:sid:0}stanza-id">>,
		   <<"urn:xmpp:mam:1">>}});
decode([#xdata_field{var = Var} | Fs], Acc, Required) ->
    if Var /= <<"FORM_TYPE">> ->
	   erlang:error({?MODULE,
			 {unknown_var, Var, <<"urn:xmpp:mam:1">>}});
       true -> decode(Fs, Acc, Required)
    end;
decode([], Acc, []) -> Acc.

encode_with(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [jid:encode(Value)]
	     end,
    Opts = [],
    #xdata_field{var = <<"with">>, values = Values,
		 required = false, type = 'jid-single', options = Opts,
		 desc = <<>>, label = xmpp_tr:tr(Lang, <<"User JID">>)}.

encode_start(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"start">>, values = Values,
		 required = false, type = 'text-single', options = Opts,
		 desc = <<>>,
		 label = xmpp_tr:tr(Lang, <<"Search from the date">>)}.

encode_end(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"end">>, values = Values,
		 required = false, type = 'text-single', options = Opts,
		 desc = <<>>,
		 label = xmpp_tr:tr(Lang, <<"Search until the date">>)}.

encode_withtext(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"withtext">>, values = Values,
		 required = false, type = 'text-single', options = Opts,
		 desc = <<>>,
		 label = xmpp_tr:tr(Lang, <<"Search the text">>)}.

'encode_before-id'(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"before-id">>, values = Values,
		 required = false, type = 'text-single', options = Opts,
		 desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"A stanza ID indicating the last message "
				  "in the query results.">>)}.

'encode_after-id'(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"after-id">>, values = Values,
		 required = false, type = 'text-single', options = Opts,
		 desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"A stanza ID indicating the first message "
				  "in the query results.">>)}.

encode_ids(Value, Lang) ->
    Values = case Value of
	       [] -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"ids">>, values = Values,
		 required = false, type = 'text-multi', options = Opts,
		 desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"A list of stanza IDs corresponding to "
				  "messages that should be included in "
				  "query results.">>)}.

encode_filter_encrypted(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/archive}filter_e"
		       "ncrypted">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only the encrypted messages">>)}.

encode_filter_audio(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/archive}filter_a"
		       "udio">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only the messages with audio">>)}.

encode_filter_image(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/archive}filter_i"
		       "mage">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only the messages with images">>)}.

encode_filter_document(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/archive}filter_d"
		       "ocument">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only the messages with documents">>)}.

encode_filter_video(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/archive}filter_v"
		       "ideo">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only the messages with videos">>)}.

encode_filter_voice(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/archive}filter_v"
		       "oice">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang, <<"Fetch only the voice messages">>)}.

encode_filter_sticker(Value, Lang) ->
    Values = case Value of
	       undefined -> [];
	       Value -> [enc_bool(Value)]
	     end,
    Opts = [],
    #xdata_field{var =
		     <<"{https://xabber.com/protocol/archive}filter_s"
		       "ticker">>,
		 values = Values, required = false, type = boolean,
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch only the messages with stickers">>)}.

'encode_stanza-id'(Value, Lang) ->
    Values = case Value of
	       <<>> -> [];
	       Value -> [Value]
	     end,
    Opts = [],
    #xdata_field{var = <<"{urn:xmpp:sid:0}stanza-id">>,
		 values = Values, required = false, type = 'text-single',
		 options = Opts, desc = <<>>,
		 label =
		     xmpp_tr:tr(Lang,
				<<"Fetch one message from conversation">>)}.
