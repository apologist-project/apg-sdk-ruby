# frozen_string_literal: true

module Apologist
  module Benchmarks
    module Types
      # Content to evaluate. Required when `source_id` is supplied.
      class BenchmarkRunRequestContent < Internal::Types::Model
        extend Apologist::Internal::Types::Union

        member -> { String }

        member -> { Internal::Types::Array[Object] }
      end
    end
  end
end
