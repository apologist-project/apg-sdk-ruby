# frozen_string_literal: true

module Apologist
  module Corpus
    module Types
      class LogCorpusReferralRedirectRequest < Internal::Types::Model
        field :model, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :prompt_id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
