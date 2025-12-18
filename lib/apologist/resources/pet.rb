# frozen_string_literal: true

module Apologist
  module Resources
    class Pet
      # Add a new pet to the store
      #
      # @overload create(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param photo_urls [Array<String>]
      #
      # @param id [Integer]
      #
      # @param category [Apologist::Models::PetAPI::Category]
      #
      # @param status [Symbol, Apologist::Models::PetAPI::Status] pet status in the store
      #
      # @param tags [Array<Apologist::Models::PetAPI::Tag>]
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Apologist::Models::PetAPI]
      #
      # @see Apologist::Models::PetCreateParams
      def create(params)
        parsed, options = Apologist::PetCreateParams.dump_request(params)
        @client.request(method: :post, path: "pet", body: parsed, model: Apologist::PetAPI, options: options)
      end

      # Returns a single pet
      #
      # @overload retrieve(pet_id, request_options: {})
      #
      # @param pet_id [Integer] ID of pet to return
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Apologist::Models::PetAPI]
      #
      # @see Apologist::Models::PetRetrieveParams
      def retrieve(pet_id, params = {})
        @client.request(
          method: :get,
          path: ["pet/%1$s", pet_id],
          model: Apologist::PetAPI,
          options: params[:request_options]
        )
      end

      # Update an existing pet by Id
      #
      # @overload update(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param photo_urls [Array<String>]
      #
      # @param id [Integer]
      #
      # @param category [Apologist::Models::PetAPI::Category]
      #
      # @param status [Symbol, Apologist::Models::PetAPI::Status] pet status in the store
      #
      # @param tags [Array<Apologist::Models::PetAPI::Tag>]
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Apologist::Models::PetAPI]
      #
      # @see Apologist::Models::PetUpdateParams
      def update(params)
        parsed, options = Apologist::PetUpdateParams.dump_request(params)
        @client.request(method: :put, path: "pet", body: parsed, model: Apologist::PetAPI, options: options)
      end

      # delete a pet
      #
      # @overload delete(pet_id, request_options: {})
      #
      # @param pet_id [Integer] Pet id to delete
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Apologist::Models::PetDeleteParams
      def delete(pet_id, params = {})
        @client.request(
          method: :delete,
          path: ["pet/%1$s", pet_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Multiple status values can be provided with comma separated strings
      #
      # @overload find_by_status(status: nil, request_options: {})
      #
      # @param status [Symbol, Apologist::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Apologist::Models::PetAPI>]
      #
      # @see Apologist::Models::PetFindByStatusParams
      def find_by_status(params = {})
        parsed, options = Apologist::PetFindByStatusParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pet/findByStatus",
          query: parsed,
          model: Apologist::Internal::Type::ArrayOf[Apologist::PetAPI],
          options: options
        )
      end

      # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3
      # for testing.
      #
      # @overload find_by_tags(tags: nil, request_options: {})
      #
      # @param tags [Array<String>] Tags to filter by
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Apologist::Models::PetAPI>]
      #
      # @see Apologist::Models::PetFindByTagsParams
      def find_by_tags(params = {})
        parsed, options = Apologist::PetFindByTagsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pet/findByTags",
          query: parsed,
          model: Apologist::Internal::Type::ArrayOf[Apologist::PetAPI],
          options: options
        )
      end

      # Updates a pet in the store with form data
      #
      # @overload update_with_form(pet_id, name: nil, status: nil, request_options: {})
      #
      # @param pet_id [Integer] ID of pet that needs to be updated
      #
      # @param name [String] Name of pet that needs to be updated
      #
      # @param status [String] Status of pet that needs to be updated
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Apologist::Models::PetUpdateWithFormParams
      def update_with_form(pet_id, params = {})
        parsed, options = Apologist::PetUpdateWithFormParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["pet/%1$s", pet_id],
          query: parsed,
          model: NilClass,
          options: options
        )
      end

      # uploads an image
      #
      # @overload upload_image(pet_id, body:, additional_metadata: nil, request_options: {})
      #
      # @param pet_id [Integer] Path param: ID of pet to update
      #
      # @param body [Pathname, StringIO, IO, String, Apologist::FilePart] Body param:
      #
      # @param additional_metadata [String] Query param: Additional Metadata
      #
      # @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Apologist::Models::PetUploadImageResponse]
      #
      # @see Apologist::Models::PetUploadImageParams
      def upload_image(pet_id, params)
        parsed, options = Apologist::PetUploadImageParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["pet/%1$s/uploadImage", pet_id],
          query: parsed.except(:body).transform_keys(additional_metadata: "additionalMetadata"),
          headers: {"content-type" => "application/octet-stream"},
          body: parsed[:body],
          model: Apologist::Models::PetUploadImageResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Apologist::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
