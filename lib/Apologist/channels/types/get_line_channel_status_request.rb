# frozen_string_literal: true

module Apologist
  module Channels
    module Types
      class GetLineChannelStatusRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
