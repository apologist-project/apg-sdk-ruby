# frozen_string_literal: true

module Apologist
  module Types
    class ChatCompletionRequestMetadata < Internal::Types::Model
      field :anonymous, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :conversation, -> { String }, optional: true, nullable: false

      field :language, -> { String }, optional: true, nullable: false

      field :max_memories, -> { Integer }, optional: true, nullable: false

      field :parent_url, -> { String }, optional: true, nullable: false

      field :parent_host, -> { String }, optional: true, nullable: false

      field :session, -> { String }, optional: true, nullable: false

      field :device, -> { String }, optional: true, nullable: false

      field :referral_code, -> { String }, optional: true, nullable: false

      field :shared_prompt, -> { Integer }, optional: true, nullable: false

      field :translation, -> { String }, optional: true, nullable: false

      field :variables, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
    end
  end
end
