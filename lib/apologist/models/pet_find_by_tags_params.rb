# frozen_string_literal: true

module Apologist
  module Models
    # @see Apologist::Resources::Pet#find_by_tags
    class PetFindByTagsParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      # @!attribute tags
      #   Tags to filter by
      #
      #   @return [Array<String>, nil]
      optional :tags, Apologist::Internal::Type::ArrayOf[String]

      # @!method initialize(tags: nil, request_options: {})
      #   @param tags [Array<String>] Tags to filter by
      #
      #   @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
