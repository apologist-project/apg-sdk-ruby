# frozen_string_literal: true

module Apologist-ai
  module Chat
    module Types
      class FeedbackRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :feedback, -> { String }, optional: false, nullable: false
      end
    end
  end
end
