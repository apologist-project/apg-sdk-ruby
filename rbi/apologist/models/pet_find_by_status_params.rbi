# typed: strong

module Apologist
  module Models
    class PetFindByStatusParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Apologist::PetFindByStatusParams, Apologist::Internal::AnyHash)
        end

      # Status values that need to be considered for filter
      sig do
        returns(T.nilable(Apologist::PetFindByStatusParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Apologist::PetFindByStatusParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: Apologist::PetFindByStatusParams::Status::OrSymbol,
          request_options: Apologist::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Apologist::PetFindByStatusParams::Status::OrSymbol,
            request_options: Apologist::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status values that need to be considered for filter
      module Status
        extend Apologist::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Apologist::PetFindByStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(
            :available,
            Apologist::PetFindByStatusParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Apologist::PetFindByStatusParams::Status::TaggedSymbol
          )
        SOLD =
          T.let(:sold, Apologist::PetFindByStatusParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Apologist::PetFindByStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
