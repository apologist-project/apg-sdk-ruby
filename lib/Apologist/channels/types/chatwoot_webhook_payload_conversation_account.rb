# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ChatwootWebhookPayloadConversationAccount < Internal::Types::Model
        field :id, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
