# typed: strong

module Apologist
  module Models
    PetFindByStatusResponse =
      T.let(
        Apologist::Internal::Type::ArrayOf[Apologist::PetAPI],
        Apologist::Internal::Type::Converter
      )
  end
end
