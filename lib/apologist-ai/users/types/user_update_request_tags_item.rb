# frozen_string_literal: true

module Apologist-ai
  module Users
    module Types
      class UserUpdateRequestTagsItem < Internal::Types::Model
        extend Apologist-ai::Internal::Types::Union

        member -> { String }

        member -> { Integer }
      end
    end
  end
end
