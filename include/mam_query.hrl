%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: mam_query.xdata
%% Form type: urn:xmpp:mam:1
%% Document: XEP-0313


-type property() :: {'with', jid:jid()} |
                    {'start', erlang:timestamp()} |
                    {'end', erlang:timestamp()} |
                    {'withtext', binary()} |
                    {'last', boolean()} |
                    {'filter_encrypted', boolean()} |
                    {'filter_audio', boolean()} |
                    {'filter_image', boolean()} |
                    {'filter_document', boolean()} |
                    {'filter_video', boolean()} |
                    {'filter_voice', boolean()} |
                    {'filter_sticker', boolean()} |
                    {'stanza-id', binary()}.
-type result() :: [property()].

-type form() :: [property() | xdata_field()].
