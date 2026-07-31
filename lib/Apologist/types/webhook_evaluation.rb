# frozen_string_literal: true

module Apologist
  module Types
    # Result of an evaluation run for CTA/guardrail events.
    class WebhookEvaluation < Internal::Types::Model
      field :score, -> { Integer }, optional: true, nullable: false

      field :passed, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :content, -> { String }, optional: true, nullable: false
    end
  end
end
