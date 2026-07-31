# frozen_string_literal: true

module Apologist-ai
  module Types
    class ChatCompletionResponseUsage < Internal::Types::Model
      field :prompt_tokens, -> { Integer }, optional: true, nullable: false

      field :completion_tokens, -> { Integer }, optional: true, nullable: false

      field :total_tokens, -> { Integer }, optional: true, nullable: false
    end
  end
end
