# frozen_string_literal: true

module Apologist-ai
  module Channels
    module Types
      class GetDiscordChannelStatusRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
