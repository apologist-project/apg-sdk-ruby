# frozen_string_literal: true

module Apologist
  module Types
    class ChatCompletionRequestLogprobs < Internal::Types::Model
      extend Apologist::Internal::Types::Union

      member -> { Internal::Types::Boolean }

      member -> { Integer }
    end
  end
end
