# frozen_string_literal: true

module Apologist-ai
  module Corpus
    module Types
      class ImpressionRequest < Internal::Types::Model
        field :model, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :prompt_id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
