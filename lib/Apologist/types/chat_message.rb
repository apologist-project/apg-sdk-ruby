# frozen_string_literal: true

module Apologist
  module Types
    class ChatMessage < Internal::Types::Model
      field :role, -> { Apologist::Types::ChatMessageRole }, optional: true, nullable: false

      field :content, -> { String }, optional: true, nullable: false
    end
  end
end
