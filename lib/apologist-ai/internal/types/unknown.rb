# frozen_string_literal: true

module Apologist-ai
  module Internal
    module Types
      module Unknown
        include Apologist-ai::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
