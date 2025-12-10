# frozen_string_literal: true

module Apologist
  module Models
    # @see Apologist::Resources::Pet#upload_image
    class PetUploadImageParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Pathname, StringIO, IO, String, Apologist::FilePart]
      required :body, Apologist::Internal::Type::FileInput

      # @!attribute additional_metadata
      #   Additional Metadata
      #
      #   @return [String, nil]
      optional :additional_metadata, String

      # @!method initialize(body:, additional_metadata: nil, request_options: {})
      #   @param body [Pathname, StringIO, IO, String, Apologist::FilePart]
      #
      #   @param additional_metadata [String] Additional Metadata
      #
      #   @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
