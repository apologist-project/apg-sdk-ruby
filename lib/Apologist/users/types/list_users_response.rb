# frozen_string_literal: true

module Apologist
  module Users
    module Types
      class ListUsersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Apologist::Types::User] }, optional: true, nullable: false

        field :total, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
