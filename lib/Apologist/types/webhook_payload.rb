# frozen_string_literal: true

module Apologist
  module Types
    # Canonical JSON body POSTed to a configured webhook URL. `notification`, `event`, and `agent` are always present;
    # the remaining sections appear only when relevant to the event. Treat the payload as additive and ignore
    # unrecognised fields.
    class WebhookPayload < Internal::Types::Model
      field :notification, -> { Apologist::Types::WebhookNotificationRef }, optional: false, nullable: false

      field :event, -> { Apologist::Types::WebhookEventInfo }, optional: false, nullable: false

      field :agent, -> { Apologist::Types::WebhookAgentRef }, optional: false, nullable: false

      field :completion, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :channel, -> { Apologist::Types::WebhookNamedRef }, optional: true, nullable: false

      field :platform, -> { Apologist::Types::WebhookNamedRef }, optional: true, nullable: false

      field :cta, -> { Apologist::Types::WebhookCta }, optional: true, nullable: false

      field :guardrail, -> { Apologist::Types::WebhookNamedRef }, optional: true, nullable: false

      field :evaluator, -> { Apologist::Types::WebhookNamedRef }, optional: true, nullable: false

      field :evaluation, -> { Apologist::Types::WebhookEvaluation }, optional: true, nullable: false
    end
  end
end
