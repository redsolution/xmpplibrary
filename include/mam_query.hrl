%% Created automatically by xdata generator (xdata_codec.erl)
%% Source: mam_query.xdata
%% Form type: urn:xmpp:mam:1
%% Document: XEP-0313


-type property() :: {'with', jid:jid()} |
                    {'start', erlang:timestamp()} |
                    {'end', erlang:timestamp()} |
                    {'withtext', binary()} |
                    {'{https://xabber.com/protocol/archive}last', boolean()} |
                    {'{https://xabber.com/protocol/archive}filter_encrypted', boolean()} |
                    {'{https://xabber.com/protocol/archive}filter_audio', boolean()} |
                    {'{https://xabber.com/protocol/archive}filter_image', boolean()} |
                    {'{https://xabber.com/protocol/archive}filter_document', boolean()} |
                    {'{https://xabber.com/protocol/archive}filter_video', boolean()} |
                    {'{https://xabber.com/protocol/archive}filter_voice', boolean()} |
                    {'{https://xabber.com/protocol/archive}filter_sticker', boolean()} |
                    {'stanza-id', binary()}.
-type result() :: [property()].

-type form() :: [property() | xdata_field()].
