# frozen_string_literal: true

module Apologist-ai
  module Types
    class ChatMessage < Internal::Types::Model
      field :role, -> { Apologist-ai::Types::ChatMessageRole }, optional: true, nullable: false

      field :content, -> { String }, optional: true, nullable: false
    end
  end
end
