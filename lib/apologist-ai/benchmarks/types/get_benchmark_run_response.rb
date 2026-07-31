# frozen_string_literal: true

module Apologist-ai
  module Benchmarks
    module Types
      class GetBenchmarkRunResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
