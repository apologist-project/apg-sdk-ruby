# frozen_string_literal: true

module Apologist
  module Types
    module ChatCompletionRequestResponseFormatType
      extend Apologist::Internal::Types::Enum

      TEXT = "text"
      HTML = "html"
      JSON_ = "json"
      RAW = "raw"
      JSON_SCHEMA = "json_schema"
    end
  end
end
