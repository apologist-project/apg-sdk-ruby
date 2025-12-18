# typed: strong

module Apologist
  module Models
    StoreListInventoryResponse =
      T.let(
        Apologist::Internal::Type::HashOf[Integer],
        Apologist::Internal::Type::Converter
      )
  end
end
