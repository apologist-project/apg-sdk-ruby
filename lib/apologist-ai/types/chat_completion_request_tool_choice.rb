# frozen_string_literal: true

module Apologist-ai
  module Types
    class ChatCompletionRequestToolChoice < Internal::Types::Model
      extend Apologist-ai::Internal::Types::Union

      member -> { Apologist-ai::Types::ChatCompletionRequestToolChoiceZero }

      member -> { Internal::Types::Hash[String, Object] }
    end
  end
end
