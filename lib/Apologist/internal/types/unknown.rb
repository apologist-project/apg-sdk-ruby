# frozen_string_literal: true

module Apologist
  module Internal
    module Types
      module Unknown
        include Apologist::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
