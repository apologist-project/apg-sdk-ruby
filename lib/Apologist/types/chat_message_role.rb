# frozen_string_literal: true

module Apologist
  module Types
    module ChatMessageRole
      extend Apologist::Internal::Types::Enum

      SYSTEM = "system"
      USER = "user"
      ASSISTANT = "assistant"
    end
  end
end
