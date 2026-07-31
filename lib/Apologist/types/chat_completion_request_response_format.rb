# frozen_string_literal: true

module Apologist
  module Types
    class ChatCompletionRequestResponseFormat < Internal::Types::Model
      field :type, -> { Apologist::Types::ChatCompletionRequestResponseFormatType }, optional: true, nullable: false

      field :json_schema, -> { Apologist::Types::ChatCompletionRequestResponseFormatJSONSchema }, optional: true, nullable: false
    end
  end
end
