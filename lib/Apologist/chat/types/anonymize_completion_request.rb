# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class AnonymizeCompletionRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
