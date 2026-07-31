# frozen_string_literal: true

module Apologist-ai
  module Types
    # Required when type is json_schema. Supplies the JSON Schema the structured output must conform to. Structured
    # outputs are non-streaming.
    class ChatCompletionRequestResponseFormatJSONSchema < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :strict, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
