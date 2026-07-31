# frozen_string_literal: true

module Apologist
  module Types
    module ChatCompletionRequestVerbosity
      extend Apologist::Internal::Types::Enum

      MINIMAL = "minimal"
      LOW = "low"
      MEDIUM = "medium"
      HIGH = "high"
    end
  end
end
