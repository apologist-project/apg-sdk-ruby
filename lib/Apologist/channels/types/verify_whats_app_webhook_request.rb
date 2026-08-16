# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class VerifyWhatsAppWebhookRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :hub_mode, -> { Apologist::Channels::Types::VerifyWhatsAppWebhookRequestHubMode }, optional: false, nullable: false, api_name: "hub.mode"

        field :hub_verify_token, -> { String }, optional: false, nullable: false, api_name: "hub.verify_token"

        field :hub_challenge, -> { String }, optional: true, nullable: false, api_name: "hub.challenge"
      end
    end
  end
end
