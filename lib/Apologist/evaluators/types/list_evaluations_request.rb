# frozen_string_literal: true

module Apologist
  module Evaluators
    module Types
      class ListEvaluationsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false

        field :min_timestamp, -> { String }, optional: true, nullable: false

        field :max_timestamp, -> { String }, optional: true, nullable: false

        field :min_duration, -> { String }, optional: true, nullable: false

        field :max_duration, -> { String }, optional: true, nullable: false

        field :min_score, -> { String }, optional: true, nullable: false

        field :max_score, -> { String }, optional: true, nullable: false

        field :passed, -> { String }, optional: true, nullable: false

        field :benchmark, -> { String }, optional: true, nullable: false

        field :benchmark_run_id, -> { String }, optional: true, nullable: false

        field :benchmark_question_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
