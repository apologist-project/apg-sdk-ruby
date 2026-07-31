# frozen_string_literal: true

module Apologist-ai
  module Types
    class ChatCompletionRequestResponseFormat < Internal::Types::Model
      field :type, -> { Apologist-ai::Types::ChatCompletionRequestResponseFormatType }, optional: true, nullable: false

      field :json_schema, -> { Apologist-ai::Types::ChatCompletionRequestResponseFormatJSONSchema }, optional: true, nullable: false
    end
  end
end
