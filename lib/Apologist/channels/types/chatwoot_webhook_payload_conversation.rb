# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      # Nested on message events. Conversation events send `id`, `status`, and `meta` at the top level instead.
      class ChatwootWebhookPayloadConversation < Internal::Types::Model
        field :id, -> { Integer }, optional: true, nullable: false

        field :status, -> { String }, optional: true, nullable: false

        field :account, -> { Apologist::Channels::Types::ChatwootWebhookPayloadConversationAccount }, optional: true, nullable: false

        field :meta, -> { Apologist::Types::ChatwootConversationMeta }, optional: true, nullable: false
      end
    end
  end
end
