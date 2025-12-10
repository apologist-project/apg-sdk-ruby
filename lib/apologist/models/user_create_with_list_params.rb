# frozen_string_literal: true

module Apologist
  module Models
    # @see Apologist::Resources::User#create_with_list
    class UserCreateWithListParams < Apologist::Internal::Type::BaseModel
      extend Apologist::Internal::Type::RequestParameters::Converter
      include Apologist::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Array<Apologist::Models::UserAPI>, nil]
      optional :body, -> { Apologist::Internal::Type::ArrayOf[Apologist::UserAPI] }

      # @!method initialize(body: nil, request_options: {})
      #   @param body [Array<Apologist::Models::UserAPI>]
      #   @param request_options [Apologist::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
