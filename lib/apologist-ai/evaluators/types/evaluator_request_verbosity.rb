# frozen_string_literal: true

module Apologist-ai
  module Evaluators
    module Types
      module EvaluatorRequestVerbosity
        extend Apologist-ai::Internal::Types::Enum

        MINIMAL = "minimal"
        LOW = "low"
        MEDIUM = "medium"
        HIGH = "high"
      end
    end
  end
end
