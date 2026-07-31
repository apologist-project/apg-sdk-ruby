# frozen_string_literal: true

module Apologist
  module Types
    class ChatCompletionRequestToolChoice < Internal::Types::Model
      extend Apologist::Internal::Types::Union

      member -> { Apologist::Types::ChatCompletionRequestToolChoiceZero }

      member -> { Internal::Types::Hash[String, Object] }
    end
  end
end
