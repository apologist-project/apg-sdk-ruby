# frozen_string_literal: true

module Apologist
  module Types
    # Result of scrubbing or anonymizing a user's message-adjacent text. Rows and identifiers are kept.
    class UserRedactResponse < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :mode, -> { Apologist::Types::UserRedactResponseMode }, optional: true, nullable: false

      field :redact_requested_at, -> { String }, optional: true, nullable: false

      field :messages_redacted, -> { Integer }, optional: true, nullable: false

      field :remaining, -> { Integer }, optional: true, nullable: false
    end
  end
end
