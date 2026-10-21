# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class ChatCompletionRequestToolChoice < Internal::Types::Model
        extend Apologist::Internal::Types::Union

        member -> { Apologist::Chat::Types::ChatCompletionRequestToolChoiceZero }

        member -> { Internal::Types::Hash[String, Object] }
      end
    end
  end
end
