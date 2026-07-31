# frozen_string_literal: true

module Apologist-ai
  module Corpus
    module Types
      class CorpusSearchRequest < Internal::Types::Model
        field :query, -> { String }, optional: false, nullable: false

        field :prompt_id, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :filters, -> { Apologist-ai::Corpus::Types::CorpusSearchRequestFilters }, optional: true, nullable: false
      end
    end
  end
end
