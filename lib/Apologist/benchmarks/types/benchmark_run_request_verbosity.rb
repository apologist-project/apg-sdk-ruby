# frozen_string_literal: true

module Apologist
  module Benchmarks
    module Types
      module BenchmarkRunRequestVerbosity
        extend Apologist::Internal::Types::Enum

        MINIMAL = "minimal"
        LOW = "low"
        MEDIUM = "medium"
        HIGH = "high"
      end
    end
  end
end
