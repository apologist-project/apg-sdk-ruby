# frozen_string_literal: true

module Apologist
  module Benchmarks
    module Types
      class GetBenchmarkRunRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :run_id, -> { String }, optional: false, nullable: false, api_name: "runId"
      end
    end
  end
end
