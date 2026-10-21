# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class ChatCompletionRequest < Internal::Types::Model
        field :traceparent, -> { String }, optional: true, nullable: false

        field :tracestate, -> { String }, optional: true, nullable: false

        field :baggage, -> { String }, optional: true, nullable: false

        field :audio, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :frequency_penalty, -> { Integer }, optional: true, nullable: false

        field :logit_bias, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :logprobs, -> { Apologist::Chat::Types::ChatCompletionRequestLogprobs }, optional: true, nullable: false

        field :top_logprobs, -> { Integer }, optional: true, nullable: false

        field :max_completion_tokens, -> { Integer }, optional: true, nullable: false

        field :max_tokens, -> { Integer }, optional: true, nullable: false

        field :messages, -> { Internal::Types::Array[Apologist::Types::ChatMessage] }, optional: true, nullable: false

        field :metadata, -> { Apologist::Chat::Types::ChatCompletionRequestMetadata }, optional: true, nullable: false

        field :modalities, -> { Internal::Types::Array[Object] }, optional: true, nullable: false

        field :model, -> { String }, optional: true, nullable: false

        field :n, -> { Integer }, optional: true, nullable: false

        field :parallel_tool_calls, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :prediction, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :presence_penalty, -> { Integer }, optional: true, nullable: false

        field :prompt, -> { String }, optional: true, nullable: false

        field :reasoning_effort, -> { Apologist::Chat::Types::ChatCompletionRequestReasoningEffort }, optional: true, nullable: false

        field :verbosity, -> { Apologist::Chat::Types::ChatCompletionRequestVerbosity }, optional: true, nullable: false

        field :response_format, -> { Apologist::Chat::Types::ChatCompletionRequestResponseFormat }, optional: true, nullable: false

        field :seed, -> { Integer }, optional: true, nullable: false

        field :service_tier, -> { String }, optional: true, nullable: false

        field :stop, -> { String }, optional: true, nullable: false

        field :store, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :stream, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :stream_options, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :temperature, -> { Integer }, optional: true, nullable: false

        field :top_p, -> { Integer }, optional: true, nullable: false

        field :tools, -> { Internal::Types::Array[Object] }, optional: true, nullable: false

        field :tool_choice, -> { Apologist::Chat::Types::ChatCompletionRequestToolChoice }, optional: true, nullable: false

        field :user, -> { String }, optional: true, nullable: false
      end
    end
  end
end
