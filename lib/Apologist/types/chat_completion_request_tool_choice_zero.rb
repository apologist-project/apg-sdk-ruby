# frozen_string_literal: true

module Apologist
  module Types
    module ChatCompletionRequestToolChoiceZero
      extend Apologist::Internal::Types::Enum

      NONE = "none"
      AUTO = "auto"
      REQUIRED = "required"
    end
  end
end
