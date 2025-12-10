# typed: strong

module Apologist
  module Models
    PetFindByTagsResponse =
      T.let(
        Apologist::Internal::Type::ArrayOf[Apologist::PetAPI],
        Apologist::Internal::Type::Converter
      )
  end
end
