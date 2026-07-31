# frozen_string_literal: true

module Apologist-ai
  module Types
    module ChatMessageRole
      extend Apologist-ai::Internal::Types::Enum

      SYSTEM = "system"
      USER = "user"
      ASSISTANT = "assistant"
    end
  end
end
