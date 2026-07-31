# frozen_string_literal: true

module Apologist
  module Benchmarks
    module Types
      class ListBenchmarkRunsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false

        field :total, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
