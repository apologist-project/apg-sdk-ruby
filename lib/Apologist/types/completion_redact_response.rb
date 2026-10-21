# frozen_string_literal: true

module Apologist
  module Types
    # Result of scrubbing or anonymizing a chat completion's message-adjacent text. Rows and identifiers are kept.
    class CompletionRedactResponse < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :mode, -> { Apologist::Types::CompletionRedactResponseMode }, optional: true, nullable: false

      field :messages_redacted, -> { Integer }, optional: true, nullable: false

      field :remaining, -> { Integer }, optional: true, nullable: false
    end
  end
end
