# frozen_string_literal: true

module Apologist-ai
  module CtAs
    module Types
      class CtaClickRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :prompt_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
