# frozen_string_literal: true

module Apologist
  module Conversations
    module Types
      class GetConversationResponse < Internal::Types::Model
        field :data, -> { Apologist::Types::Conversation }, optional: true, nullable: false
      end
    end
  end
end
