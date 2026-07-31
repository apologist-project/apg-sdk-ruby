# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class GetChatCompletionResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
