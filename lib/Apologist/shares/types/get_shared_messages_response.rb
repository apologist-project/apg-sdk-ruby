# frozen_string_literal: true

module Apologist
  module Shares
    module Types
      class GetSharedMessagesResponse < Internal::Types::Model
        field :messages, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
      end
    end
  end
end
