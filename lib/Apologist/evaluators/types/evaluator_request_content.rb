# frozen_string_literal: true

module Apologist
  module Evaluators
    module Types
      class EvaluatorRequestContent < Internal::Types::Model
        extend Apologist::Internal::Types::Union

        member -> { String }

        member -> { Internal::Types::Array[Object] }
      end
    end
  end
end
