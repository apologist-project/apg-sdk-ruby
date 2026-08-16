# frozen_string_literal: true

module Apologist
  module Conversations
    module Types
      class ListConversationsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
