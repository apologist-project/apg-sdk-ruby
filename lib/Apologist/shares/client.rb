# frozen_string_literal: true

module Apologist
  module Shares
    class Client
      # @param client [Apologist::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Public, unauthenticated read of the messages behind a share token. The token is the bearer capability and
      # enforces tenant isolation against the host agent. An empty or invalid token yields an empty messages array.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :token
      #
      # @example
      #   client.shares.get_shared_messages(token: "token")
      #
      # @return [Apologist::Shares::Types::GetSharedMessagesResponse]
      def get_shared_messages(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "shares/#{URI.encode_uri_component(params[:token].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Shares::Types::GetSharedMessagesResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
