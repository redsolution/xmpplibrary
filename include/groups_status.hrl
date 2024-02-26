%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: groups_status.xdata
%% Form type: https://xabber.com/protocol/groups#status
%% Document: XEP-GROUPS


-type property() :: {'header1', binary()} |
                    {'header2', binary()} |
                    {'status', binary()} |
                    {'fiesta', binary()} |
                    {'discussion', binary()} |
                    {'regulated', binary()} |
                    {'limited', binary()} |
                    {'restricted', binary()} |
                    {'inactive', binary()}.
-type result() :: [property()].

-type form_property() ::
      {'header1', binary()} |
      {'header2', binary()} |
      {'status', binary()} |
      {'fiesta', binary()} |
      {'discussion', binary()} |
      {'regulated', binary()} |
      {'limited', binary()} |
      {'restricted', binary()} |
      {'inactive', binary()}.
-type form() :: [form_property() | xdata_field()].

-type error_reason() :: {form_type_mismatch, binary()} |
                        {bad_var_value, binary(), binary()} |
                        {missing_required_var, binary(), binary()} |
                        {missing_value, binary(), binary()} |
                        {too_many_values, binary(), binary()} |
                        {unknown_var, binary(), binary()}.
