# frozen_string_literal: true

module Apologist-ai
  module Types
    class ChatCompletionResponseChoicesItem < Internal::Types::Model
      field :index, -> { Integer }, optional: true, nullable: false

      field :message, -> { Apologist-ai::Types::ChatMessage }, optional: true, nullable: false

      field :logprobs, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :finish_reason, -> { String }, optional: true, nullable: false
    end
  end
end
