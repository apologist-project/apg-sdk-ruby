# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ReceiveChatwootWebhookRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :chatwoot_signature, -> { String }, optional: true, nullable: false, api_name: "X-Chatwoot-Signature"

        field :chatwoot_timestamp, -> { String }, optional: true, nullable: false, api_name: "X-Chatwoot-Timestamp"

        field :body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
