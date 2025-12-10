# typed: strong

module Apologist
  module Models
    class PetUploadImageParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Apologist::PetUploadImageParams, Apologist::Internal::AnyHash)
        end

      sig { returns(Apologist::Internal::FileInput) }
      attr_accessor :body

      # Additional Metadata
      sig { returns(T.nilable(String)) }
      attr_reader :additional_metadata

      sig { params(additional_metadata: String).void }
      attr_writer :additional_metadata

      sig do
        params(
          body: Apologist::Internal::FileInput,
          additional_metadata: String,
          request_options: Apologist::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        body:,
        # Additional Metadata
        additional_metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: Apologist::Internal::FileInput,
            additional_metadata: String,
            request_options: Apologist::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
