# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ChatwootWebhookPayloadAccount < Internal::Types::Model
        field :id, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
