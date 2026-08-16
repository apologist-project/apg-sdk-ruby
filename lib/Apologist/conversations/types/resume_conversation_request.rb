# frozen_string_literal: true

module Apologist
  module Conversations
    module Types
      class ResumeConversationRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
