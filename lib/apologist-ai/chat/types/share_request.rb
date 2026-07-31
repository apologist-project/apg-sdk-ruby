# frozen_string_literal: true

module Apologist-ai
  module Chat
    module Types
      class ShareRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :conversation_id, -> { String }, optional: true, nullable: false

        field :session_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
