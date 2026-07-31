# frozen_string_literal: true

module Apologist-ai
  module Users
    module Types
      class UpdateUserResponse < Internal::Types::Model
        field :data, -> { Apologist-ai::Types::User }, optional: true, nullable: false
      end
    end
  end
end
