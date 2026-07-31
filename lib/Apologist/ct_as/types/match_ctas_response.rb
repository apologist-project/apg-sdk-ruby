# frozen_string_literal: true

module Apologist
  module CtAs
    module Types
      class MatchCtasResponse < Internal::Types::Model
        field :ctas, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
      end
    end
  end
end
