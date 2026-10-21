# frozen_string_literal: true

module Apologist
  module Evaluators
    module Types
      # Text to evaluate, an array of strings, or chat messages.
      class EvaluatorRequestContent < Internal::Types::Model
        extend Apologist::Internal::Types::Union

        member -> { String }

        member -> { Internal::Types::Array[Apologist::Evaluators::Types::EvaluatorRequestContentOneItem] }
      end
    end
  end
end
