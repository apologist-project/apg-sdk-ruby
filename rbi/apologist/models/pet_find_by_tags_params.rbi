# typed: strong

module Apologist
  module Models
    class PetFindByTagsParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Apologist::PetFindByTagsParams, Apologist::Internal::AnyHash)
        end

      # Tags to filter by
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          tags: T::Array[String],
          request_options: Apologist::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Tags to filter by
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { tags: T::Array[String], request_options: Apologist::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
