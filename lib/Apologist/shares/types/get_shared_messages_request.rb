# frozen_string_literal: true

module Apologist
  module Shares
    module Types
      class GetSharedMessagesRequest < Internal::Types::Model
        field :token, -> { String }, optional: false, nullable: false
      end
    end
  end
end
