# frozen_string_literal: true

module Apologist-ai
  module Corpus
    module Types
      class CorpusSearchRequestFilters < Internal::Types::Model
        field :model, -> { String }, optional: true, nullable: false

        field :ids, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

        field :types, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :collection_ids, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

        field :contributor_ids, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

        field :category_ids, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

        field :classification_ids, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false
      end
    end
  end
end
