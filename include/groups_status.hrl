%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: groups_status.xdata
%% Form type: https://xabber.com/protocol/groups#status
%% Document: XEP-GROUPS


-type property() :: {'status', binary()}.
-type result() :: [property()].

-type form() :: [property() | xdata_field()].
