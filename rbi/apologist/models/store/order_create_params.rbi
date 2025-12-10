# typed: strong

module Apologist
  module Models
    module Store
      class OrderCreateParams < Apologist::Models::Store::StoreOrder
        extend Apologist::Internal::Type::RequestParameters::Converter
        include Apologist::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Apologist::Store::OrderCreateParams,
              Apologist::Internal::AnyHash
            )
          end

        sig do
          params(request_options: Apologist::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Apologist::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
