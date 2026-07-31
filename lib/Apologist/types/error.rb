# frozen_string_literal: true

module Apologist
  module Types
    class Error < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :errors, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
