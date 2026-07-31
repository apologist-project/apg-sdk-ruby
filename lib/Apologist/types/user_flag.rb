# frozen_string_literal: true

module Apologist
  module Types
    # A team-level user flag definition from the user_flags table.
    class UserFlag < Internal::Types::Model
      field :id, -> { Integer }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :user_id, -> { Integer }, optional: true, nullable: false

      field :team_id, -> { Integer }, optional: true, nullable: false

      field :synced_at, -> { String }, optional: true, nullable: false
    end
  end
end
