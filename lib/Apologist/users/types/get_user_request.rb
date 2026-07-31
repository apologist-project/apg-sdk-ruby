# frozen_string_literal: true

module Apologist
  module Users
    module Types
      class GetUserRequest < Internal::Types::Model
        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
