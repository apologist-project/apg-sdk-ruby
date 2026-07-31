# frozen_string_literal: true

module Apologist-ai
  module Chat
    module Types
      class ListChatCompletionsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false

        field :agent_id, -> { String }, optional: true, nullable: false

        field :channel_id, -> { String }, optional: true, nullable: false

        field :bible_id, -> { String }, optional: true, nullable: false

        field :cached, -> { String }, optional: true, nullable: false

        field :client, -> { String }, optional: true, nullable: false

        field :config_id, -> { String }, optional: true, nullable: false

        field :conversation_id, -> { String }, optional: true, nullable: false

        field :device_id, -> { String }, optional: true, nullable: false

        field :flagged, -> { String }, optional: true, nullable: false

        field :favorited, -> { String }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :liked, -> { String }, optional: true, nullable: false

        field :session_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :min_timestamp, -> { String }, optional: true, nullable: false

        field :max_timestamp, -> { String }, optional: true, nullable: false
      end
    end
  end
end
