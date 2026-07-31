# frozen_string_literal: true

module Apologist-ai
  module Evaluators
    module Types
      class GetEvaluationRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :evaluation_id, -> { String }, optional: false, nullable: false, api_name: "evaluationId"
      end
    end
  end
end
