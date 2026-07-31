# frozen_string_literal: true

module Apologist
  module Evaluators
    module Types
      class EvaluateContentResponse < Internal::Types::Model
        field :result, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
