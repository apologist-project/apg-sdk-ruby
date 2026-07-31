# frozen_string_literal: true

module Apologist-ai
  module Users
    module Types
      class UserUpdateRequest < Internal::Types::Model
        field :user_id, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false

        field :tags, -> { Internal::Types::Array[Apologist-ai::Users::Types::UserUpdateRequestTagsItem] }, optional: true, nullable: false

        field :responder_id, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
