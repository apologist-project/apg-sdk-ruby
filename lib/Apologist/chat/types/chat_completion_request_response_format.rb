# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class ChatCompletionRequestResponseFormat < Internal::Types::Model
        field :type, -> { Apologist::Chat::Types::ChatCompletionRequestResponseFormatType }, optional: true, nullable: false

        field :json_schema, -> { Apologist::Chat::Types::ChatCompletionRequestResponseFormatJSONSchema }, optional: true, nullable: false
      end
    end
  end
end
