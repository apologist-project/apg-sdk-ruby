# frozen_string_literal: true

module Apologist
  module CtAs
    module Types
      class CtaMatchRequest < Internal::Types::Model
        field :conversation, -> { String }, optional: true, nullable: false

        field :client, -> { String }, optional: true, nullable: false

        field :device, -> { String }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :messages, -> { Internal::Types::Array[Apologist::Types::ChatMessage] }, optional: true, nullable: false

        field :session, -> { String }, optional: true, nullable: false

        field :user, -> { String }, optional: true, nullable: false

        field :variables, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
