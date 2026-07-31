# frozen_string_literal: true

module Apologist-ai
  module Types
    class WebhookEventInfo < Internal::Types::Model
      field :key, -> { Apologist-ai::Types::WebhookEventInfoKey }, optional: false, nullable: false

      field :label, -> { String }, optional: false, nullable: false

      field :occurred_at, -> { String }, optional: false, nullable: false
    end
  end
end
