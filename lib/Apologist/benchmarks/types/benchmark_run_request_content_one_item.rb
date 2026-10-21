# frozen_string_literal: true

module Apologist
  module Benchmarks
    module Types
      class BenchmarkRunRequestContentOneItem < Internal::Types::Model
        extend Apologist::Internal::Types::Union

        member -> { String }

        member -> { Apologist::Types::ChatMessage }
      end
    end
  end
end
