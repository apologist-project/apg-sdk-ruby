# frozen_string_literal: true

module Apologist
  module Types
    # A conversation scoped to the requesting agent.
    class Conversation < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :external_id, -> { String }, optional: true, nullable: false

      field :agent_id, -> { Integer }, optional: true, nullable: false

      field :team_id, -> { Integer }, optional: true, nullable: false

      field :tags, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :started_at, -> { String }, optional: true, nullable: false

      field :ended_at, -> { String }, optional: true, nullable: false

      field :agent_paused, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :agent_paused_at, -> { String }, optional: true, nullable: false

      field :agent_resumed_at, -> { String }, optional: true, nullable: false
    end
  end
end
