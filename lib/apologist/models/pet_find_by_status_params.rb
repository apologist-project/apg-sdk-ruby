# frozen_string_literal: true

module Apologist
  module Models
    # @see Apologist::Resources::Pet#find_by_status
    class PetFindByStatusParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      # @!attribute status
      #   Status values that need to be considered for filter
      #
      #   @return [Symbol, Apologist::Models::PetFindByStatusParams::Status, nil]
      optional :status, enum: -> { Apologist::PetFindByStatusParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Apologist::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      #   @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}]

      # Status values that need to be considered for filter
      module Status
        extend Apologist::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
