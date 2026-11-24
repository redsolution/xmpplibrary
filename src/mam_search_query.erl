%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: mam_search_query.xdata
%% Form type: urn:xmpp:mam:2:search
%% Document: XEP-MAMEXT

-module(mam_search_query).

-compile({nowarn_unused_function,
          [{dec_int, 3},
           {dec_int, 1},
           {dec_enum, 2},
           {dec_enum_int, 2},
           {dec_enum_int, 4},
           {enc_int, 1},
           {enc_enum, 1},
           {enc_enum_int, 1},
           {not_empty, 1},
           {dec_bool, 1},
           {enc_bool, 1},
           {dec_ip, 1},
           {enc_ip, 1}]}).

-compile(nowarn_unused_vars).

-dialyzer({nowarn_function, {dec_int, 3}}).

-export([encode/1, encode/2, encode/3]).

-export([decode/1,
         decode/2,
         decode/3,
         format_error/1,
         io_format_error/1]).

-include("xmpp_codec.hrl").

-include("mam_search_query.hrl").

-export_type([property/0,
              result/0,
              form/0,
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
             [text |
              with |
              start |
              'end' |
              'conversation-type']) -> [xdata_field()].

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
    enc_ip({(A bsr 8) band 255,
            A band 255,
            (B bsr 8) band 255,
            B band 255});
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
    decode(Fs, [<<"urn:xmpp:mam:2:search">>], [], []).

decode(Fs, XMLNSList) -> decode(Fs, XMLNSList, [], []).

decode(Fs, XMLNSList, Required) ->
    decode(Fs, XMLNSList, Required, []).

decode(Fs, [_ | _] = XMLNSList, Required, Acc) ->
    case lists:keyfind(<<"FORM_TYPE">>,
                       #xdata_field.var,
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
              {text, Val} ->
                  [encode_text(Val, Lang, lists:member(text, Required))];
              {with, Val} ->
                  [encode_with(Val, Lang, lists:member(with, Required))];
              {start, Val} ->
                  [encode_start(Val,
                                Lang,
                                lists:member(start, Required))];
              {'end', Val} ->
                  [encode_end(Val, Lang, lists:member('end', Required))];
              {'conversation-type', Val} ->
                  ['encode_conversation-type'(Val,
                                              Lang,
                                              lists:member('conversation-type',
                                                           Required))];
              #xdata_field{} -> [Opt]
          end
          || Opt <- List],
    FormType = #xdata_field{var = <<"FORM_TYPE">>,
                            type = hidden,
                            values = [<<"urn:xmpp:mam:2:search">>]},
    [FormType | lists:flatten(Fs)].

do_decode([#xdata_field{var = <<"text">>,
                        values = [Value]}
           | Fs],
          XMLNS, Required, Acc) ->
    try Value of
        Result ->
            do_decode(Fs,
                      XMLNS,
                      lists:delete(<<"text">>, Required),
                      [{text, Result} | Acc])
    catch
        _:_ ->
            erlang:error({?MODULE,
                          {bad_var_value, <<"text">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"text">>, values = []} =
               F
           | Fs],
          XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"text">>,
                             values = [<<>>]}
               | Fs],
              XMLNS,
              Required,
              Acc);
do_decode([#xdata_field{var = <<"text">>} | _], XMLNS,
          _, _) ->
    erlang:error({?MODULE,
                  {too_many_values, <<"text">>, XMLNS}});
do_decode([#xdata_field{var = <<"with">>,
                        values = [Value]}
           | Fs],
          XMLNS, Required, Acc) ->
    try jid:decode(Value) of
        Result ->
            do_decode(Fs,
                      XMLNS,
                      lists:delete(<<"with">>, Required),
                      [{with, Result} | Acc])
    catch
        _:_ ->
            erlang:error({?MODULE,
                          {bad_var_value, <<"with">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"with">>, values = []} =
               F
           | Fs],
          XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"with">>,
                             values = [<<>>]}
               | Fs],
              XMLNS,
              Required,
              Acc);
do_decode([#xdata_field{var = <<"with">>} | _], XMLNS,
          _, _) ->
    erlang:error({?MODULE,
                  {too_many_values, <<"with">>, XMLNS}});
do_decode([#xdata_field{var = <<"start">>,
                        values = [Value]}
           | Fs],
          XMLNS, Required, Acc) ->
    try xmpp_util:decode_timestamp(Value) of
        Result ->
            do_decode(Fs,
                      XMLNS,
                      lists:delete(<<"start">>, Required),
                      [{start, Result} | Acc])
    catch
        _:_ ->
            erlang:error({?MODULE,
                          {bad_var_value, <<"start">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"start">>,
                        values = []} =
               F
           | Fs],
          XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"start">>,
                             values = [<<>>]}
               | Fs],
              XMLNS,
              Required,
              Acc);
do_decode([#xdata_field{var = <<"start">>} | _], XMLNS,
          _, _) ->
    erlang:error({?MODULE,
                  {too_many_values, <<"start">>, XMLNS}});
do_decode([#xdata_field{var = <<"end">>,
                        values = [Value]}
           | Fs],
          XMLNS, Required, Acc) ->
    try xmpp_util:decode_timestamp(Value) of
        Result ->
            do_decode(Fs,
                      XMLNS,
                      lists:delete(<<"end">>, Required),
                      [{'end', Result} | Acc])
    catch
        _:_ ->
            erlang:error({?MODULE,
                          {bad_var_value, <<"end">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"end">>, values = []} =
               F
           | Fs],
          XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"end">>,
                             values = [<<>>]}
               | Fs],
              XMLNS,
              Required,
              Acc);
do_decode([#xdata_field{var = <<"end">>} | _], XMLNS, _,
          _) ->
    erlang:error({?MODULE,
                  {too_many_values, <<"end">>, XMLNS}});
do_decode([#xdata_field{var = <<"conversation-type">>,
                        values = [Value]}
           | Fs],
          XMLNS, Required, Acc) ->
    try Value of
        Result ->
            do_decode(Fs,
                      XMLNS,
                      lists:delete(<<"conversation-type">>, Required),
                      [{'conversation-type', Result} | Acc])
    catch
        _:_ ->
            erlang:error({?MODULE,
                          {bad_var_value, <<"conversation-type">>, XMLNS}})
    end;
do_decode([#xdata_field{var = <<"conversation-type">>,
                        values = []} =
               F
           | Fs],
          XMLNS, Required, Acc) ->
    do_decode([F#xdata_field{var = <<"conversation-type">>,
                             values = [<<>>]}
               | Fs],
              XMLNS,
              Required,
              Acc);
do_decode([#xdata_field{var = <<"conversation-type">>}
           | _],
          XMLNS, _, _) ->
    erlang:error({?MODULE,
                  {too_many_values, <<"conversation-type">>, XMLNS}});
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

-spec encode_text(binary(), binary(),
                  boolean()) -> xdata_field().

encode_text(Value, Lang, IsRequired) ->
    Values = case Value of
                 <<>> -> [];
                 Value -> [Value]
             end,
    Opts = [],
    #xdata_field{var = <<"text">>, values = Values,
                 required = IsRequired, type = 'text-single',
                 options = Opts, desc = <<>>,
                 label = xmpp_tr:tr(Lang, ?T("Text to search for"))}.

-spec encode_with(jid:jid() | undefined, binary(),
                  boolean()) -> xdata_field().

encode_with(Value, Lang, IsRequired) ->
    Values = case Value of
                 undefined -> [];
                 Value -> [jid:encode(Value)]
             end,
    Opts = [],
    #xdata_field{var = <<"with">>, values = Values,
                 required = IsRequired, type = 'jid-single',
                 options = Opts, desc = <<>>,
                 label = xmpp_tr:tr(Lang, ?T("Contact JID"))}.

-spec encode_start(erlang:timestamp() | undefined,
                   binary(), boolean()) -> xdata_field().

encode_start(Value, Lang, IsRequired) ->
    Values = case Value of
                 undefined -> [];
                 Value -> [xmpp_util:encode_timestamp(Value)]
             end,
    Opts = [],
    #xdata_field{var = <<"start">>, values = Values,
                 required = IsRequired, type = 'text-single',
                 options = Opts, desc = <<>>,
                 label = xmpp_tr:tr(Lang, ?T("Search from the date"))}.

-spec encode_end(erlang:timestamp() | undefined,
                 binary(), boolean()) -> xdata_field().

encode_end(Value, Lang, IsRequired) ->
    Values = case Value of
                 undefined -> [];
                 Value -> [xmpp_util:encode_timestamp(Value)]
             end,
    Opts = [],
    #xdata_field{var = <<"end">>, values = Values,
                 required = IsRequired, type = 'text-single',
                 options = Opts, desc = <<>>,
                 label = xmpp_tr:tr(Lang, ?T("Search until the date"))}.

-spec 'encode_conversation-type'(binary(), binary(),
                                 boolean()) -> xdata_field().

'encode_conversation-type'(Value, Lang, IsRequired) ->
    Values = case Value of
                 <<>> -> [];
                 Value -> [Value]
             end,
    Opts = [],
    #xdata_field{var = <<"conversation-type">>,
                 values = Values, required = IsRequired,
                 type = 'text-single', options = Opts, desc = <<>>,
                 label =
                     xmpp_tr:tr(Lang,
                                ?T("Search only messages of the specified "
                                   "conversation type"))}.
