%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: sync_query.xdata
%% Form type: http://xabber.com/protocol/synchronization
%% Document: XEP-SYNC


-type property() :: {'pinned_first', boolean()} |
                    {'filter_pinned', boolean()} |
                    {'filter_archived', boolean()}.
-type result() :: [property()].

-type form() :: [property() | xdata_field()].
