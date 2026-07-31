# frozen_string_literal: true

module Apologist
  module Corpus
    module Types
      class CorpusSearchRequest < Internal::Types::Model
        field :query, -> { String }, optional: false, nullable: false

        field :prompt_id, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :filters, -> { Apologist::Corpus::Types::CorpusSearchRequestFilters }, optional: true, nullable: false
      end
    end
  end
end
