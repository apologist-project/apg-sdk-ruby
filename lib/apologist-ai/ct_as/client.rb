# frozen_string_literal: true

module Apologist-ai
  module CtAs
    class Client
      # @param client [Apologist-ai::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Finds matching CTAs based on conversation context, user, session, device, or messages
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Types::CtaMatchRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.ct_as.match_ctas(request: {
      #     key: "value"
      #   })
      #
      # @return [Apologist-ai::CtAs::Types::MatchCtasResponse]
      def match_ctas(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ctas/match",
          body: Apologist-ai::Types::CtaMatchRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist-ai::CtAs::Types::MatchCtasResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Records that a user clicked on a specific CTA
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::CtAs::Types::CtaClickRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.ct_as.log_cta_click(
      #     id: "id",
      #     prompt_id: "prompt_id"
      #   )
      #
      # @return [Apologist-ai::Types::SuccessResponse]
      def log_cta_click(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist-ai::CtAs::Types::CtaClickRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "ctas/#{URI.encode_uri_component(params[:id].to_s)}/click",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist-ai::Types::SuccessResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
