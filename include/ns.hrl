%%%----------------------------------------------------------------------
%%%
%%% Copyright (C) 2002-2018 ProcessOne, SARL. All Rights Reserved.
%%%
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%
%%%-------------------------------------------------------------------

-define(NS_COMPONENT, <<"jabber:component:accept">>).
-define(NS_SERVER, <<"jabber:server">>).
-define(NS_SERVER_DIALBACK, <<"jabber:server:dialback">>).
-define(NS_CLIENT, <<"jabber:client">>).
-define(NS_DISCO_ITEMS,
	<<"http://jabber.org/protocol/disco#items">>).
-define(NS_DISCO_INFO,
	<<"http://jabber.org/protocol/disco#info">>).
-define(NS_VCARD, <<"vcard-temp">>).
-define(NS_VCARD_UPDATE, <<"vcard-temp:x:update">>).
-define(NS_AUTH, <<"jabber:iq:auth">>).
-define(NS_AUTH_ERROR, <<"jabber:iq:auth:error">>).
-define(NS_REGISTER, <<"jabber:iq:register">>).
-define(NS_SEARCH, <<"jabber:iq:search">>).
-define(NS_ROSTER, <<"jabber:iq:roster">>).
-define(NS_ROSTER_VER,
	<<"urn:xmpp:features:rosterver">>).
-define(NS_PRIVACY, <<"jabber:iq:privacy">>).
-define(NS_BLOCKING, <<"urn:xmpp:blocking">>).
-define(NS_PRIVATE, <<"jabber:iq:private">>).
-define(NS_VERSION, <<"jabber:iq:version">>).
-define(NS_TIME, <<"urn:xmpp:time">>).
-define(NS_LAST, <<"jabber:iq:last">>).
-define(NS_XDATA, <<"jabber:x:data">>).
-define(NS_IQDATA, <<"jabber:iq:data">>).
-define(NS_DELAY, <<"urn:xmpp:delay">>).
-define(NS_HINTS, <<"urn:xmpp:hints">>).
-define(NS_EXPIRE, <<"jabber:x:expire">>).
-define(NS_EVENT, <<"jabber:x:event">>).
-define(NS_CHATSTATES,
	<<"http://jabber.org/protocol/chatstates">>).
-define(NS_XCONFERENCE, <<"jabber:x:conference">>).
-define(NS_STATS,
	<<"http://jabber.org/protocol/stats">>).
-define(NS_MUC, <<"http://jabber.org/protocol/muc">>).
-define(NS_MUC_USER,
	<<"http://jabber.org/protocol/muc#user">>).
-define(NS_MUC_ADMIN,
	<<"http://jabber.org/protocol/muc#admin">>).
-define(NS_MUC_OWNER,
	<<"http://jabber.org/protocol/muc#owner">>).
-define(NS_MUC_UNIQUE,
	<<"http://jabber.org/protocol/muc#unique">>).
-define(NS_PUBSUB,
	<<"http://jabber.org/protocol/pubsub">>).
-define(NS_PUBSUB_EVENT,
	<<"http://jabber.org/protocol/pubsub#event">>).
-define(NS_PUBSUB_META_DATA,
	<<"http://jabber.org/protocol/pubsub#meta-data">>).
-define(NS_PUBSUB_OWNER,
	<<"http://jabber.org/protocol/pubsub#owner">>).
-define(NS_PUBSUB_NMI,
	<<"http://jabber.org/protocol/pubsub#node-meta-info">>).
-define(NS_PUBSUB_ERRORS,
	<<"http://jabber.org/protocol/pubsub#errors">>).
-define(NS_PUBSUB_NODE_CONFIG,
	<<"http://jabber.org/protocol/pubsub#node_config">>).
-define(NS_PUBSUB_SUB_OPTIONS,
	<<"http://jabber.org/protocol/pubsub#subscribe_options">>).
-define(NS_PUBSUB_SUBSCRIBE_OPTIONS,
	<<"http://jabber.org/protocol/pubsub#subscribe_options">>).
-define(NS_PUBSUB_PUBLISH_OPTIONS,
	<<"http://jabber.org/protocol/pubsub#publish-options">>).
-define(NS_PUBSUB_SUB_AUTH,
	<<"http://jabber.org/protocol/pubsub#subscribe_authorization">>).
-define(NS_PUBSUB_GET_PENDING,
	<<"http://jabber.org/protocol/pubsub#get-pending">>).
-define(NS_COMMANDS,
	<<"http://jabber.org/protocol/commands">>).
-define(NS_BYTESTREAMS,
	<<"http://jabber.org/protocol/bytestreams">>).
-define(NS_ADMIN,
	<<"http://jabber.org/protocol/admin">>).
-define(NS_ADMIN_ANNOUNCE,
	<<"http://jabber.org/protocol/admin#announce">>).
-define(NS_ADMIN_ANNOUNCE_ALL,
	<<"http://jabber.org/protocol/admin#announce-all">>).
-define(NS_ADMIN_SET_MOTD,
	<<"http://jabber.org/protocol/admin#set-motd">>).
-define(NS_ADMIN_EDIT_MOTD,
	<<"http://jabber.org/protocol/admin#edit-motd">>).
-define(NS_ADMIN_DELETE_MOTD,
	<<"http://jabber.org/protocol/admin#delete-motd">>).
-define(NS_ADMIN_ANNOUNCE_ALLHOSTS,
	<<"http://jabber.org/protocol/admin#announce-allhosts">>).
-define(NS_ADMIN_ANNOUNCE_ALL_ALLHOSTS,
	<<"http://jabber.org/protocol/admin#announce-all-allhosts">>).
-define(NS_ADMIN_SET_MOTD_ALLHOSTS,
	<<"http://jabber.org/protocol/admin#set-motd-allhosts">>).
-define(NS_ADMIN_EDIT_MOTD_ALLHOSTS,
	<<"http://jabber.org/protocol/admin#edit-motd-allhosts">>).
-define(NS_ADMIN_DELETE_MOTD_ALLHOSTS,
	<<"http://jabber.org/protocol/admin#delete-motd-allhosts">>).
-define(NS_SERVERINFO,
	<<"http://jabber.org/network/serverinfo">>).
-define(NS_RSM, <<"http://jabber.org/protocol/rsm">>).
-define(NS_EJABBERD_CONFIG, <<"ejabberd:config">>).
-define(NS_STREAM,
	<<"http://etherx.jabber.org/streams">>).
-define(NS_STANZAS,
	<<"urn:ietf:params:xml:ns:xmpp-stanzas">>).
-define(NS_STREAMS,
	<<"urn:ietf:params:xml:ns:xmpp-streams">>).
-define(NS_TLS, <<"urn:ietf:params:xml:ns:xmpp-tls">>).
-define(NS_SASL,
	<<"urn:ietf:params:xml:ns:xmpp-sasl">>).
-define(NS_SESSION,
	<<"urn:ietf:params:xml:ns:xmpp-session">>).
-define(NS_BIND,
	<<"urn:ietf:params:xml:ns:xmpp-bind">>).
-define(NS_FEATURE_IQAUTH,
	<<"http://jabber.org/features/iq-auth">>).
-define(NS_FEATURE_IQREGISTER,
	<<"http://jabber.org/features/iq-register">>).
-define(NS_FEATURE_COMPRESS,
	<<"http://jabber.org/features/compress">>).
-define(NS_FEATURE_MSGOFFLINE, <<"msgoffline">>).
-define(NS_FLEX_OFFLINE, <<"http://jabber.org/protocol/offline">>).
-define(NS_COMPRESS,
	<<"http://jabber.org/protocol/compress">>).
-define(NS_CAPS, <<"http://jabber.org/protocol/caps">>).
-define(NS_SHIM, <<"http://jabber.org/protocol/shim">>).
-define(NS_ADDRESS,
	<<"http://jabber.org/protocol/address">>).
-define(NS_OOB, <<"jabber:x:oob">>).
-define(NS_CAPTCHA, <<"urn:xmpp:captcha">>).
-define(NS_MEDIA, <<"urn:xmpp:media-element">>).
-define(NS_BOB, <<"urn:xmpp:bob">>).
-define(NS_MAM_TMP, <<"urn:xmpp:mam:tmp">>).
-define(NS_MAM_0, <<"urn:xmpp:mam:0">>).
-define(NS_MAM_1, <<"urn:xmpp:mam:1">>).
-define(NS_MAM_2, <<"urn:xmpp:mam:2">>).
-define(NS_SID_0, <<"urn:xmpp:sid:0">>).
-define(NS_PING, <<"urn:xmpp:ping">>).
-define(NS_PUSH_0, <<"https://xabber.com/protocol/push">>).
-define(NS_CARBONS_2, <<"urn:xmpp:carbons:2">>).
-define(NS_CARBONS_1, <<"urn:xmpp:carbons:1">>).
-define(NS_FORWARD, <<"urn:xmpp:forward:0">>).
-define(NS_CLIENT_STATE,  <<"urn:xmpp:csi:0">>).
-define(NS_STREAM_MGMT_2,  <<"urn:xmpp:sm:2">>).
-define(NS_STREAM_MGMT_3,  <<"urn:xmpp:sm:3">>).
-define(NS_HTTP_UPLOAD, <<"urn:xmpp:http:upload">>).
-define(NS_HTTP_UPLOAD_0, <<"urn:xmpp:http:upload:0">>).
-define(NS_HTTP_UPLOAD_OLD, <<"eu:siacs:conversations:http:upload">>).
-define(NS_THUMBS_1, <<"urn:xmpp:thumbs:1">>).
-define(NS_NICK,  <<"http://jabber.org/protocol/nick">>).
-define(NS_RECEIPTS, <<"urn:xmpp:receipts">>).
-define(NS_SIC_0, <<"urn:xmpp:sic:0">>).
-define(NS_SIC_1, <<"urn:xmpp:sic:1">>).
-define(NS_MIX_0, <<"urn:xmpp:mix:0">>).
-define(NS_MIX_SERVICEINFO_0, <<"urn:xmpp:mix:0#serviceinfo">>).
-define(NS_MIX_NODES_MESSAGES, <<"urn:xmpp:mix:nodes:messages">>).
-define(NS_MIX_NODES_PRESENCE, <<"urn:xmpp:mix:nodes:presence">>).
-define(NS_MIX_NODES_PARTICIPANTS, <<"urn:xmpp:mix:nodes:participants">>).
-define(NS_MIX_NODES_SUBJECT, <<"urn:xmpp:mix:nodes:subject">>).
-define(NS_MIX_NODES_CONFIG, <<"urn:xmpp:mix:nodes:config">>).
-define(NS_PRIVILEGE, <<"urn:xmpp:privilege:1">>).
-define(NS_DELEGATION, <<"urn:xmpp:delegation:1">>).
-define(NS_MUCSUB, <<"urn:xmpp:mucsub:0">>).
-define(NS_MUCSUB_NODES_PRESENCE, <<"urn:xmpp:mucsub:nodes:presence">>).
-define(NS_MUCSUB_NODES_MESSAGES, <<"urn:xmpp:mucsub:nodes:messages">>).
-define(NS_MUCSUB_NODES_PARTICIPANTS, <<"urn:xmpp:mucsub:nodes:participants">>).
-define(NS_MUCSUB_NODES_AFFILIATIONS, <<"urn:xmpp:mucsub:nodes:affiliations">>).
-define(NS_MUCSUB_NODES_SUBJECT, <<"urn:xmpp:mucsub:nodes:subject">>).
-define(NS_MUCSUB_NODES_CONFIG, <<"urn:xmpp:mucsub:nodes:config">>).
-define(NS_MUCSUB_NODES_SYSTEM, <<"urn:xmpp:mucsub:nodes:system">>).
-define(NS_MUCSUB_NODES_SUBSCRIBERS, <<"urn:xmpp:mucsub:nodes:subscribers">>).
-define(NS_AVATAR_DATA, <<"urn:xmpp:avatar:data">>).
-define(NS_AVATAR_METADATA, <<"urn:xmpp:avatar:metadata">>).
-define(NS_PEP_VCARD_CONVERSION_0, <<"urn:xmpp:pep-vcard-conversion:0">>).
-define(NS_UNIQUE, <<"http://xabber.com/protocol/delivery">>).
-define(NS_PREVIOUS, <<"http://xabber.com/protocol/previous">>).
-define(NS_GROUPCHAT, <<"http://xabber.com/protocol/groupchat">>).
-define(NS_XABBER_TOKEN,<<"http://xabber.com/protocol/auth-tokens">>).
-define(NS_XABBER_TOKEN_QUERY,<<"http://xabber.com/protocol/auth-tokens#items">>).
-define(NS_GROUPCHAT_RETRACT,<<"http://xabber.com/protocol/retract">>).
-define(NS_GROUPCHAT_RETRACT_HISTORY,<<"http://xabber.com/protocol/groupchat#history">>).
-define(NS_XABBER_REWRITE,<<"http://xabber.com/protocol/rewrite">>).
-define(NS_XABBER_REWRITE_NOTIFY,<<"http://xabber.com/protocol/rewrite#notify">>).
-define(NS_REFERENCE_0, <<"urn:xmpp:reference:0">>).
-define(NS_GROUPCHAT_UPDATE, <<"http://xabber.com/protocol/groupchat#update">>).
-define(NS_GROUPCHAT_USER_UPDATED, <<"http://xabber.com/protocol/groupchat#user-updated">>).
-define(NS_GROUPCHAT_USER_LEFT, <<"http://xabber.com/protocol/groupchat#left">>).
-define(NS_GROUPCHAT_USER_JOIN, <<"http://xabber.com/protocol/groupchat#join">>).
-define(NS_GROUPCHAT_USER_KICK, <<"http://xabber.com/protocol/groupchat#kick">>).
-define(NS_GROUPCHAT_SYSTEM_MESSAGE, <<"http://xabber.com/protocol/groupchat#system-message">>).
-define(NS_GROUPCHAT_RIGHTS, <<"http://xabber.com/protocol/groupchat#rights">>).
-define(NS_GROUPCHAT_DEFAULT_RIGHTS, <<"http://xabber.com/protocol/groupchat#default-rights">>).
-define(NS_GROUPCHAT_MEMBERS, <<"http://xabber.com/protocol/groupchat#members">>).
-define(NS_GROUPCHAT_CREATE, <<"http://xabber.com/protocol/groupchat#create">>).
-define(NS_XABBER_SYNCHRONIZATION, <<"http://xabber.com/protocol/synchronization">>).
-define(NS_JINGLE_MESSAGE, <<"urn:xmpp:jingle-message:0">>).