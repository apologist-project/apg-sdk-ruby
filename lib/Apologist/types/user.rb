# frozen_string_literal: true

module Apologist
  module Types
    class User < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :external_id, -> { String }, optional: true, nullable: false

      field :referral_code, -> { String }, optional: true, nullable: false

      field :team_id, -> { Integer }, optional: true, nullable: false

      field :created_at, -> { String }, optional: true, nullable: false

      field :migrated_at, -> { String }, optional: true, nullable: false

      field :migrated_to_user_id, -> { String }, optional: true, nullable: false

      field :tags, -> { Internal::Types::Array[Apologist::Types::TagRef] }, optional: true, nullable: false

      field :responder_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
