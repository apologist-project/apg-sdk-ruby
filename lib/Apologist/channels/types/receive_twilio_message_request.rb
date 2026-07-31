# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ReceiveTwilioMessageRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :from, -> { String }, optional: true, nullable: false, api_name: "From"

        field :body, -> { String }, optional: true, nullable: false, api_name: "Body"
      end
    end
  end
end
