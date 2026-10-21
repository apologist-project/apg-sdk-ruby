# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ChatwootWebhookPayload < Internal::Types::Model
        field :channel_id, -> { String }, optional: false, nullable: false, api_name: "channelId"

        field :chatwoot_signature, -> { String }, optional: true, nullable: false, api_name: "X-Chatwoot-Signature"

        field :chatwoot_timestamp, -> { String }, optional: true, nullable: false, api_name: "X-Chatwoot-Timestamp"

        field :event, -> { String }, optional: true, nullable: false

        field :id, -> { Integer }, optional: true, nullable: false

        field :content, -> { String }, optional: true, nullable: false

        field :message_type, -> { String }, optional: true, nullable: false

        field :private, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :account, -> { Apologist::Channels::Types::ChatwootWebhookPayloadAccount }, optional: true, nullable: false

        field :sender, -> { Apologist::Channels::Types::ChatwootWebhookPayloadSender }, optional: true, nullable: false

        field :conversation, -> { Apologist::Channels::Types::ChatwootWebhookPayloadConversation }, optional: true, nullable: false

        field :status, -> { String }, optional: true, nullable: false

        field :meta, -> { Apologist::Types::ChatwootConversationMeta }, optional: true, nullable: false
      end
    end
  end
end
