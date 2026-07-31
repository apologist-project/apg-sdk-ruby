# frozen_string_literal: true

module Apologist
  module Types
    class WebhookNamedRef < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
