# frozen_string_literal: true

module Apologist
  module Chat
    module Types
      class LikeRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :liked, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
