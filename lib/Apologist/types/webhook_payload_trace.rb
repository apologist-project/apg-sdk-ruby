# frozen_string_literal: true

module Apologist
  module Types
    # OpenTelemetry context for the API request that produced this event. Present when the Agent created or continued a
    # W3C trace.
    class WebhookPayloadTrace < Internal::Types::Model
      field :trace_id, -> { String }, optional: true, nullable: false

      field :span_id, -> { String }, optional: true, nullable: false
    end
  end
end
