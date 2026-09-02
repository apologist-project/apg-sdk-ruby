# frozen_string_literal: true

module Apologist
  module Types
    module UserRedactResponseMode
      extend Apologist::Internal::Types::Enum

      SCRUB = "scrub"
      ANONYMIZE = "anonymize"
    end
  end
end
