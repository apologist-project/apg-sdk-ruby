# frozen_string_literal: true

module Apologist
  module Users
    module Types
      class ListUserFlagsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
