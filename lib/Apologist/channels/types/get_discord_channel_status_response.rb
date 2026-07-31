# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class GetDiscordChannelStatusResponse < Internal::Types::Model
        field :status, -> { String }, optional: true, nullable: false

        field :channel, -> { String }, optional: true, nullable: false

        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
