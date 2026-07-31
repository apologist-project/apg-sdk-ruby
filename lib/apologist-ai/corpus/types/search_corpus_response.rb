# frozen_string_literal: true

module Apologist-ai
  module Corpus
    module Types
      class SearchCorpusResponse < Internal::Types::Model
        field :results, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
      end
    end
  end
end
