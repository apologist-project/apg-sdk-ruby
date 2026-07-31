# frozen_string_literal: true

module Apologist-ai
  module Benchmarks
    module Types
      class BenchmarkRunRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :content, -> { Apologist-ai::Benchmarks::Types::BenchmarkRunRequestContent }, optional: true, nullable: false

        field :completion_id, -> { String }, optional: true, nullable: false

        field :source_id, -> { Integer }, optional: true, nullable: false

        field :model, -> { String }, optional: true, nullable: false

        field :num_responses, -> { Integer }, optional: true, nullable: false

        field :use_question_variants, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :reasoning_effort, -> { Apologist-ai::Benchmarks::Types::BenchmarkRunRequestReasoningEffort }, optional: true, nullable: false

        field :verbosity, -> { Apologist-ai::Benchmarks::Types::BenchmarkRunRequestVerbosity }, optional: true, nullable: false

        field :score_threshold, -> { Integer }, optional: true, nullable: false

        field :value_threshold, -> { Integer }, optional: true, nullable: false

        field :temperature, -> { Integer }, optional: true, nullable: false

        field :top_p, -> { Integer }, optional: true, nullable: false

        field :frequency_penalty, -> { Integer }, optional: true, nullable: false

        field :presence_penalty, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
