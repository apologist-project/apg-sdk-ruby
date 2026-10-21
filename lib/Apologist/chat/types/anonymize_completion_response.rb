# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class AnonymizeCompletionResponse < Internal::Types::Model
        field :data, -> { Apologist::Types::CompletionRedactResponse }, optional: true, nullable: false
      end
    end
  end
end
