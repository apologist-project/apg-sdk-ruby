# frozen_string_literal: true

module Apologist
  module Agent
    module Types
      class ResumeAgentResponse < Internal::Types::Model
        field :data, -> { Apologist::Types::AgentPauseState }, optional: true, nullable: false
      end
    end
  end
end
