# typed: strong

module Apologist
  module Models
    class UserLoginParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Apologist::UserLoginParams, Apologist::Internal::AnyHash)
        end

      # The password for login in clear text
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # The user name for login
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          password: String,
          username: String,
          request_options: Apologist::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The password for login in clear text
        password: nil,
        # The user name for login
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            password: String,
            username: String,
            request_options: Apologist::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
