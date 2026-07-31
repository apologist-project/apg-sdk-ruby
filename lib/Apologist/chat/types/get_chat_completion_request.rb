# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class GetChatCompletionRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
