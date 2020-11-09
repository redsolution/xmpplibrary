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

-type form() :: [property() | xdata_field()].
