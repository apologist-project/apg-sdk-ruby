# frozen_string_literal: true

module Apologist
  module Resources
    class Store
      # @return [Apologist::Resources::Store::Order]
      attr_reader :order

      # Returns a map of status codes to quantities
      #
      # @overload list_inventory(request_options: {})
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Integer}]
      #
      # @see Apologist::Models::StoreListInventoryParams
      def list_inventory(params = {})
        @client.request(
          method: :get,
          path: "store/inventory",
          model: Apologist::Internal::Type::HashOf[Integer],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Apologist::Client]
      def initialize(client:)
        @client = client
        @order = Apologist::Resources::Store::Order.new(client: client)
      end
    end
  end
end
