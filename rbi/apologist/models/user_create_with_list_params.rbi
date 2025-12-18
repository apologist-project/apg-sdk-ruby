# typed: strong

module Apologist
  module Models
    class UserCreateWithListParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Apologist::UserCreateWithListParams,
            Apologist::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Apologist::UserAPI])) }
      attr_reader :body

      sig { params(body: T::Array[Apologist::UserAPI::OrHash]).void }
      attr_writer :body

      sig do
        params(
          body: T::Array[Apologist::UserAPI::OrHash],
          request_options: Apologist::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Array[Apologist::UserAPI],
            request_options: Apologist::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
