# frozen_string_literal: true

module Apologist-ai
  module Evaluators
    module Types
      class EvaluatorRequestContent < Internal::Types::Model
        extend Apologist-ai::Internal::Types::Union

        member -> { String }

        member -> { Internal::Types::Array[Object] }
      end
    end
  end
end
