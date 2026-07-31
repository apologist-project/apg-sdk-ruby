# frozen_string_literal: true

module Apologist-ai
  module Types
    # Canonical JSON body POSTed to a configured webhook URL. `notification`, `event`, and `agent` are always present;
    # the remaining sections appear only when relevant to the event. Treat the payload as additive and ignore
    # unrecognised fields.
    class WebhookPayload < Internal::Types::Model
      field :notification, -> { Apologist-ai::Types::WebhookNotificationRef }, optional: false, nullable: false

      field :event, -> { Apologist-ai::Types::WebhookEventInfo }, optional: false, nullable: false

      field :agent, -> { Apologist-ai::Types::WebhookAgentRef }, optional: false, nullable: false

      field :completion, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :channel, -> { Apologist-ai::Types::WebhookNamedRef }, optional: true, nullable: false

      field :platform, -> { Apologist-ai::Types::WebhookNamedRef }, optional: true, nullable: false

      field :cta, -> { Apologist-ai::Types::WebhookCta }, optional: true, nullable: false

      field :guardrail, -> { Apologist-ai::Types::WebhookNamedRef }, optional: true, nullable: false

      field :evaluator, -> { Apologist-ai::Types::WebhookNamedRef }, optional: true, nullable: false

      field :evaluation, -> { Apologist-ai::Types::WebhookEvaluation }, optional: true, nullable: false
    end
  end
end
