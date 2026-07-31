# frozen_string_literal: true

module Apologist-ai
  module Types
    class ChatCompletionRequestLogprobs < Internal::Types::Model
      extend Apologist-ai::Internal::Types::Union

      member -> { Internal::Types::Boolean }

      member -> { Integer }
    end
  end
end
