# frozen_string_literal: true

module Apologist
  module Models
    # @see Apologist::Resources::Pet#create
    class PetCreateParams < Apologist::Models::PetAPI
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
