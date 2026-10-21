# frozen_string_literal: true

module Apologist
  module Types
    class ChatwootConversationMeta < Internal::Types::Model
      field :assignee_type, -> { String }, optional: true, nullable: false

      field :sender, -> { Apologist::Types::ChatwootConversationMetaSender }, optional: true, nullable: false
    end
  end
end
