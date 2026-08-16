# frozen_string_literal: true

module Apologist
  module Types
    # Agent-wide pause or resume result, including fan-out counts.
    class AgentPauseState < Internal::Types::Model
      field :is_paused, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :paused_at, -> { String }, optional: true, nullable: false

      field :resumed_at, -> { String }, optional: true, nullable: false

      field :emitted, -> { Integer }, optional: true, nullable: false

      field :skipped, -> { Integer }, optional: true, nullable: false
    end
  end
end
