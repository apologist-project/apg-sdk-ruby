# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      # Present on message events.
      class ChatwootWebhookPayloadSender < Internal::Types::Model
        field :id, -> { Integer }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false
      end
    end
  end
end
