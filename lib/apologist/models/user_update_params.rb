# frozen_string_literal: true

module Apologist
  module Models
    # @see Apologist::Resources::User#update
    class UserUpdateParams < Apologist::Models::UserAPI
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
