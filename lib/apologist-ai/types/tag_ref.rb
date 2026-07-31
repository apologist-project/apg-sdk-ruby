# frozen_string_literal: true

module Apologist-ai
  module Types
    class TagRef < Internal::Types::Model
      field :id, -> { Integer }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
