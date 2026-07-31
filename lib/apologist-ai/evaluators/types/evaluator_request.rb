# frozen_string_literal: true

module Apologist-ai
  module Evaluators
    module Types
      class EvaluatorRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :frequency_penalty, -> { Integer }, optional: true, nullable: false

        field :confidence_threshold, -> { Integer }, optional: true, nullable: false

        field :content, -> { Apologist-ai::Evaluators::Types::EvaluatorRequestContent }, optional: false, nullable: false

        field :model, -> { String }, optional: true, nullable: false

        field :presence_penalty, -> { Integer }, optional: true, nullable: false

        field :reasoning_effort, -> { Apologist-ai::Evaluators::Types::EvaluatorRequestReasoningEffort }, optional: true, nullable: false

        field :verbosity, -> { Apologist-ai::Evaluators::Types::EvaluatorRequestVerbosity }, optional: true, nullable: false

        field :temperature, -> { Integer }, optional: true, nullable: false

        field :top_p, -> { Integer }, optional: true, nullable: false

        field :variables, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
