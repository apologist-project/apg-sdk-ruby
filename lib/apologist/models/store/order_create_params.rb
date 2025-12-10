# frozen_string_literal: true

module Apologist
  module Models
    module Store
      # @see Apologist::Resources::Store::Order#create
      class OrderCreateParams < Apologist::Models::Store::StoreOrder
        extend Apologist::Internal::Type::RequestParameters::Converter
        include Apologist::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
