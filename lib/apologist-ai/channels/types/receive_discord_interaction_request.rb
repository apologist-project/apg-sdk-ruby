# frozen_string_literal: true

module Apologist-ai
  module Channels
    module Types
      class ReceiveDiscordInteractionRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :signature_ed25519, -> { String }, optional: false, nullable: false, api_name: "x-signature-ed25519"

        field :signature_timestamp, -> { String }, optional: false, nullable: false, api_name: "x-signature-timestamp"

        field :body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
