# frozen_string_literal: true

module Apologist-ai
  module Types
    class WebhookCta < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :content, -> { String }, optional: true, nullable: false
    end
  end
end
