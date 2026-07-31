# frozen_string_literal: true

module Apologist-ai
  module Benchmarks
    module Types
      module BenchmarkRunRequestVerbosity
        extend Apologist-ai::Internal::Types::Enum

        MINIMAL = "minimal"
        LOW = "low"
        MEDIUM = "medium"
        HIGH = "high"
      end
    end
  end
end
