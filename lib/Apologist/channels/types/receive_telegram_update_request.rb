# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class ReceiveTelegramUpdateRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
