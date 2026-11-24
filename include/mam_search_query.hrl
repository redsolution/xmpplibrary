%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: mam_search_query.xdata
%% Form type: urn:xmpp:mam:2:search
%% Document: XEP-MAMEXT


-type property() :: {'text', binary()} |
                    {'with', jid:jid()} |
                    {'start', erlang:timestamp()} |
                    {'end', erlang:timestamp()} |
                    {'conversation-type', binary()}.
-type result() :: [property()].

-type form_property() ::
      {'text', binary()} |
      {'with', jid:jid() | undefined} |
      {'start', erlang:timestamp() | undefined} |
      {'end', erlang:timestamp() | undefined} |
      {'conversation-type', binary()}.
-type form() :: [form_property() | xdata_field()].

-type error_reason() :: {form_type_mismatch, binary()} |
                        {bad_var_value, binary(), binary()} |
                        {missing_required_var, binary(), binary()} |
                        {missing_value, binary(), binary()} |
                        {too_many_values, binary(), binary()} |
                        {unknown_var, binary(), binary()}.
