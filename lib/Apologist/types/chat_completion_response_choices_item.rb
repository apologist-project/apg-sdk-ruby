# frozen_string_literal: true

module Apologist
  module Types
    class ChatCompletionResponseChoicesItem < Internal::Types::Model
      field :index, -> { Integer }, optional: true, nullable: false

      field :message, -> { Apologist::Types::ChatMessage }, optional: true, nullable: false

      field :logprobs, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :finish_reason, -> { String }, optional: true, nullable: false
    end
  end
end
