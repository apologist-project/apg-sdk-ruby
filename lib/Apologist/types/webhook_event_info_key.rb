# frozen_string_literal: true

module Apologist
  module Types
    module WebhookEventInfoKey
      extend Apologist::Internal::Types::Enum

      PROMPT_SUBMIT = "prompt_submit"
      RESPONSE_START = "response_start"
      RESPONSE_END = "response_end"
      AUTOMATIONS_END = "automations_end"
      RESPONSE_LIKE = "response_like"
      RESPONSE_FLAG = "response_flag"
      RESPONSE_FEEDBACK = "response_feedback"
      REFERRAL_CLICK = "referral_click"
      CTA_TRIGGER = "cta_trigger"
      CTA_CLICK = "cta_click"
      GUARDRAIL_TRIGGER = "guardrail_trigger"
      ATTRIBUTION_CLICK = "attribution_click"
      FOOTER_CLICK = "footer_click"
      NEW_USER = "new_user"
      NEW_DEVICE = "new_device"
      NEW_SESSION = "new_session"
      NEW_CONVERSATION = "new_conversation"
      ERROR = "error"
    end
  end
end
