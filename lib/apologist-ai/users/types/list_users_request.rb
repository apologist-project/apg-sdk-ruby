# frozen_string_literal: true

module Apologist-ai
  module Users
    module Types
      class ListUsersRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false

        field :tags, -> { String }, optional: true, nullable: false

        field :responder_id, -> { String }, optional: true, nullable: false

        field :min_timestamp, -> { String }, optional: true, nullable: false

        field :max_timestamp, -> { String }, optional: true, nullable: false
      end
    end
  end
end
