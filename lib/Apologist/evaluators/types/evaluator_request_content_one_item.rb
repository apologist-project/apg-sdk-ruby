# frozen_string_literal: true

module Apologist
  module Evaluators
    module Types
      class EvaluatorRequestContentOneItem < Internal::Types::Model
        extend Apologist::Internal::Types::Union

        member -> { String }

        member -> { Apologist::Types::ChatMessage }
      end
    end
  end
end
