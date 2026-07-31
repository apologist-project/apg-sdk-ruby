# frozen_string_literal: true

module Apologist
  module Users
    module Types
      class GetUserResponse < Internal::Types::Model
        field :data, -> { Apologist::Types::User }, optional: true, nullable: false
      end
    end
  end
end
