# typed: strong

module Apologist
  module Models
    class PetUpdateWithFormParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Apologist::PetUpdateWithFormParams,
            Apologist::Internal::AnyHash
          )
        end

      # Name of pet that needs to be updated
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Status of pet that needs to be updated
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          name: String,
          status: String,
          request_options: Apologist::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of pet that needs to be updated
        name: nil,
        # Status of pet that needs to be updated
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            status: String,
            request_options: Apologist::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
