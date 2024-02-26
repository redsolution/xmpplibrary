%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: sync_query.xdata
%% Form type: https://xabber.com/protocol/synchronization
%% Document: XEP-SYNC


-type property() :: {'pinned_first', boolean()} |
                    {'filter_pinned', boolean()} |
                    {'filter_archived', boolean()}.
-type result() :: [property()].

-type form_property() ::
      {'pinned_first', boolean() | undefined} |
      {'filter_pinned', boolean() | undefined} |
      {'filter_archived', boolean() | undefined}.
-type form() :: [form_property() | xdata_field()].

-type error_reason() :: {form_type_mismatch, binary()} |
                        {bad_var_value, binary(), binary()} |
                        {missing_required_var, binary(), binary()} |
                        {missing_value, binary(), binary()} |
                        {too_many_values, binary(), binary()} |
                        {unknown_var, binary(), binary()}.
