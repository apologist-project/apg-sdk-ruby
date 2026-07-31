# frozen_string_literal: true

module Apologist-ai
  module Chat
    class Client
      # @param client [Apologist-ai::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of chat completions (prompts) for the agent, with applied tags expanded as { id, name }
      # and share metadata.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :per_page
      # @option params [String, nil] :agent_id
      # @option params [String, nil] :channel_id
      # @option params [String, nil] :bible_id
      # @option params [String, nil] :cached
      # @option params [String, nil] :client
      # @option params [String, nil] :config_id
      # @option params [String, nil] :conversation_id
      # @option params [String, nil] :device_id
      # @option params [String, nil] :flagged
      # @option params [String, nil] :favorited
      # @option params [String, nil] :language
      # @option params [String, nil] :liked
      # @option params [String, nil] :session_id
      # @option params [String, nil] :user_id
      # @option params [String, nil] :min_timestamp
      # @option params [String, nil] :max_timestamp
      #
      # @example
      #   client.chat.list_chat_completions
      #
      # @return [Apologist-ai::Chat::Types::ListChatCompletionsResponse]
      def list_chat_completions(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)
        query_params["agent_id"] = params[:agent_id] if params.key?(:agent_id)
        query_params["channel_id"] = params[:channel_id] if params.key?(:channel_id)
        query_params["bible_id"] = params[:bible_id] if params.key?(:bible_id)
        query_params["cached"] = params[:cached] if params.key?(:cached)
        query_params["client"] = params[:client] if params.key?(:client)
        query_params["config_id"] = params[:config_id] if params.key?(:config_id)
        query_params["conversation_id"] = params[:conversation_id] if params.key?(:conversation_id)
        query_params["device_id"] = params[:device_id] if params.key?(:device_id)
        query_params["flagged"] = params[:flagged] if params.key?(:flagged)
        query_params["favorited"] = params[:favorited] if params.key?(:favorited)
        query_params["language"] = params[:language] if params.key?(:language)
        query_params["liked"] = params[:liked] if params.key?(:liked)
        query_params["session_id"] = params[:session_id] if params.key?(:session_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["min_timestamp"] = params[:min_timestamp] if params.key?(:min_timestamp)
        query_params["max_timestamp"] = params[:max_timestamp] if params.key?(:max_timestamp)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "chat/completions",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist-ai::Chat::Types::ListChatCompletionsResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a chat completion using the agent's configured model. Supports both streaming and non-streaming
      # responses.
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Types::ChatCompletionRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.chat.create_chat_completion(request: {
      #     key: "value"
      #   })
      #
      # @return [Apologist-ai::Types::ChatCompletionResponse]
      def create_chat_completion(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "chat/completions",
          body: Apologist-ai::Types::ChatCompletionRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist-ai::Types::ChatCompletionResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the like status of a specific chat completion
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Chat::Types::LikeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.chat.like_completion(
      #     id: "id",
      #     liked: true
      #   )
      #
      # @return [Apologist-ai::Types::SuccessResponse]
      def like_completion(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist-ai::Chat::Types::LikeRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "chat/completions/#{URI.encode_uri_component(params[:id].to_s)}/like",
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

      # Updates the flagged status of a specific chat completion
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Chat::Types::FlagRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.chat.flag_completion(
      #     id: "id",
      #     flagged: true
      #   )
      #
      # @return [Apologist-ai::Types::SuccessResponse]
      def flag_completion(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist-ai::Chat::Types::FlagRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "chat/completions/#{URI.encode_uri_component(params[:id].to_s)}/flag",
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

      # Adds user feedback to a specific chat completion
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Chat::Types::FeedbackRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.chat.feedback_completion(
      #     id: "id",
      #     feedback: "feedback"
      #   )
      #
      # @return [Apologist-ai::Types::SuccessResponse]
      def feedback_completion(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist-ai::Chat::Types::FeedbackRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "chat/completions/#{URI.encode_uri_component(params[:id].to_s)}/feedback",
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

      # Creates a share record for a specific chat completion
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Chat::Types::ShareRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.chat.share_completion(id: "id")
      #
      # @return [Apologist-ai::Types::SuccessResponse]
      def share_completion(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist-ai::Chat::Types::ShareRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "chat/completions/#{URI.encode_uri_component(params[:id].to_s)}/share",
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

      # Returns a single chat completion (prompt) by numeric id or UUID, including applied tags, guardrail/cta metadata,
      # share metadata, and automation results.
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
      #   client.chat.get_chat_completion(id: "id")
      #
      # @return [Apologist-ai::Chat::Types::GetChatCompletionResponse]
      def get_chat_completion(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "chat/completions/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist-ai::Chat::Types::GetChatCompletionResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
