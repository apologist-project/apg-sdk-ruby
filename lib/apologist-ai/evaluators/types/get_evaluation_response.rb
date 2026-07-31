# frozen_string_literal: true

module Apologist-ai
  module Evaluators
    module Types
      class GetEvaluationResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
