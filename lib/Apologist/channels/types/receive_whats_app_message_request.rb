# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ReceiveWhatsAppMessageRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :hub_signature256, -> { String }, optional: true, nullable: false, api_name: "x-hub-signature-256"

        field :body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
