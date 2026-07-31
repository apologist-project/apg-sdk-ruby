# frozen_string_literal: true

module Apologist-ai
  module Types
    # The notification configuration that produced this delivery.
    class WebhookNotificationRef < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
