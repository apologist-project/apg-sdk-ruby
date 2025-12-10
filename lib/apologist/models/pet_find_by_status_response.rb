# frozen_string_literal: true

module Apologist
  module Models
    # @type [Apologist::Internal::Type::Converter]
    PetFindByStatusResponse = Apologist::Internal::Type::ArrayOf[-> { Apologist::PetAPI }]
  end
end
