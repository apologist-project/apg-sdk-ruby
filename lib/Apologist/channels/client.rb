# frozen_string_literal: true

module Apologist
  module Channels
    class Client
      # @param client [Apologist::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns the status of the Discord channel. Used as a lightweight health/verification endpoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.get_discord_channel_status(id: "id")
      #
      # @return [Apologist::Channels::Types::GetDiscordChannelStatusResponse]
      def get_discord_channel_status(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/discord",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Channels::Types::GetDiscordChannelStatusResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Receives Discord interaction callbacks for the channel. Requests are verified via Ed25519 signature headers;
      # unsigned or invalid requests are rejected. Payload shape is defined by Discord.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String] :signature_ed25519
      # @option params [String] :signature_timestamp
      #
      # @example
      #   client.channels.receive_discord_interaction(
      #     id: "id",
      #     signature_ed25519: "x-signature-ed25519",
      #     signature_timestamp: "x-signature-timestamp",
      #     body: {
      #       key: "value"
      #     }
      #   )
      #
      # @return [untyped]
      def receive_discord_interaction(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)

        headers = {}
        headers["x-signature-ed25519"] = params[:signature_ed25519] if params[:signature_ed25519]
        headers["x-signature-timestamp"] = params[:signature_timestamp] if params[:signature_timestamp]

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/discord",
          headers: headers,
          body: body_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Handles the Meta webhook verification handshake, echoing `hub.challenge` when `hub.verify_token` matches the
      # channel's configured token.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Apologist::Channels::Types::VerifyFacebookWebhookRequestHubMode] :hub_mode
      # @option params [String] :hub_verify_token
      # @option params [String, nil] :hub_challenge
      #
      # @example
      #   client.channels.verify_facebook_webhook(
      #     id: "id",
      #     hub_mode: "subscribe",
      #     hub_verify_token: "hub.verify_token"
      #   )
      #
      # @return [String]
      def verify_facebook_webhook(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["hub.mode"] = params[:hub_mode] if params.key?(:hub_mode)
        query_params["hub.verify_token"] = params[:hub_verify_token] if params.key?(:hub_verify_token)
        query_params["hub.challenge"] = params[:hub_challenge] if params.key?(:hub_challenge)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/facebook",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Receives Facebook/Messenger (and Instagram-style) message events for the channel. Payload shape is defined by
      # Meta.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.receive_facebook_message(
      #     id: "id",
      #     body: {
      #       key: "value"
      #     }
      #   )
      #
      # @return [untyped]
      def receive_facebook_message(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/facebook",
          body: body_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Returns a static HTML privacy policy page for the Instagram integration.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.get_instagram_privacy_policy(id: "id")
      #
      # @return [String]
      def get_instagram_privacy_policy(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/instagram/privacy",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Receives Telegram bot update events for the channel. Non-message updates are acknowledged and ignored. Payload
      # shape is defined by Telegram.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.receive_telegram_update(
      #     id: "id",
      #     body: {
      #       key: "value"
      #     }
      #   )
      #
      # @return [untyped]
      def receive_telegram_update(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/telegram",
          body: body_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Receives inbound Twilio messages for the channel as form-encoded data. Payload fields are defined by Twilio.
      #
      # @param request_options [Hash]
      # @param params [Apologist::Channels::Types::ReceiveTwilioMessageRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.receive_twilio_message(id: "id")
      #
      # @return [untyped]
      def receive_twilio_message(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist::Channels::Types::ReceiveTwilioMessageRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist::Internal::UrlEncoded::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/twilio",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
