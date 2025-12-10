# frozen_string_literal: true

module Apologist
  module Models
    # @see Apologist::Resources::Pet#create
    class PetAPI < Apologist::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute photo_urls
      #
      #   @return [Array<String>]
      required :photo_urls, Apologist::Internal::Type::ArrayOf[String], api_name: :photoUrls

      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute category
      #
      #   @return [Apologist::Models::PetAPI::Category, nil]
      optional :category, -> { Apologist::PetAPI::Category }

      # @!attribute status
      #   pet status in the store
      #
      #   @return [Symbol, Apologist::Models::PetAPI::Status, nil]
      optional :status, enum: -> { Apologist::PetAPI::Status }

      # @!attribute tags
      #
      #   @return [Array<Apologist::Models::PetAPI::Tag>, nil]
      optional :tags, -> { Apologist::Internal::Type::ArrayOf[Apologist::PetAPI::Tag] }

      # @!method initialize(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil)
      #   @param name [String]
      #
      #   @param photo_urls [Array<String>]
      #
      #   @param id [Integer]
      #
      #   @param category [Apologist::Models::PetAPI::Category]
      #
      #   @param status [Symbol, Apologist::Models::PetAPI::Status] pet status in the store
      #
      #   @param tags [Array<Apologist::Models::PetAPI::Tag>]

      # @see Apologist::Models::PetAPI#category
      class Category < Apologist::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end

      # pet status in the store
      #
      # @see Apologist::Models::PetAPI#status
      module Status
        extend Apologist::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Tag < Apologist::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end
    end
  end
end
