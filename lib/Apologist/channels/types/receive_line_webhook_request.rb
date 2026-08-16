# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ReceiveLineWebhookRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :line_signature, -> { String }, optional: true, nullable: false, api_name: "x-line-signature"

        field :body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
