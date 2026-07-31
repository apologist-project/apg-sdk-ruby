# frozen_string_literal: true

module Apologist
  module Users
    module Types
      class UserUpdateRequestTagsItem < Internal::Types::Model
        extend Apologist::Internal::Types::Union

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
