# frozen_string_literal: true

module Apologist
  module Types
    class ChatCompletionResponse < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :object, -> { String }, optional: true, nullable: false

      field :created, -> { Integer }, optional: true, nullable: false

      field :model, -> { String }, optional: true, nullable: false

      field :choices, -> { Internal::Types::Array[Apologist::Types::ChatCompletionResponseChoicesItem] }, optional: true, nullable: false

      field :usage, -> { Apologist::Types::ChatCompletionResponseUsage }, optional: true, nullable: false

      field :cached, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
