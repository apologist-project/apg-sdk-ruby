# frozen_string_literal: true

module Apologist-ai
  module Users
    class Client
      # @param client [Apologist-ai::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of users for the agent's team, with applied tags expanded as { id, name } and the
      # persisted responder id.
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
      # @option params [String, nil] :external_id
      # @option params [String, nil] :tags
      # @option params [String, nil] :responder_id
      # @option params [String, nil] :min_timestamp
      # @option params [String, nil] :max_timestamp
      #
      # @example
      #   client.users.list_users
      #
      # @return [Apologist-ai::Users::Types::ListUsersResponse]
      def list_users(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)
        query_params["external_id"] = params[:external_id] if params.key?(:external_id)
        query_params["tags"] = params[:tags] if params.key?(:tags)
        query_params["responder_id"] = params[:responder_id] if params.key?(:responder_id)
        query_params["min_timestamp"] = params[:min_timestamp] if params.key?(:min_timestamp)
        query_params["max_timestamp"] = params[:max_timestamp] if params.key?(:max_timestamp)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "users",
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
          Apologist-ai::Users::Types::ListUsersResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a paginated list of user flag definitions for the agent's team (all columns from user_flags), ordered by
      # id ascending.
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
      #
      # @example
      #   client.users.list_user_flags
      #
      # @return [Apologist-ai::Users::Types::ListUserFlagsResponse]
      def list_user_flags(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "users/flags",
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
          Apologist-ai::Users::Types::ListUserFlagsResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a single user by external id or internal id, with expanded tags and the persisted responder for the
      # agent.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :user_id
      #
      # @example
      #   client.users.get_user(user_id: "user_id")
      #
      # @return [Apologist-ai::Users::Types::GetUserResponse]
      def get_user(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "users/#{URI.encode_uri_component(params[:user_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist-ai::Users::Types::GetUserResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates a user's external_id and/or tags and upserts the persisted responder for the agent. Only provided fields
      # are changed.
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Users::Types::UserUpdateRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :user_id
      #
      # @example
      #   client.users.update_user(user_id: "user_id")
      #
      # @return [Apologist-ai::Users::Types::UpdateUserResponse]
      def update_user(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist-ai::Users::Types::UserUpdateRequest.new(params).to_h
        non_body_param_names = %w[user_id]
        body = request_data.except(*non_body_param_names)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "users/#{URI.encode_uri_component(params[:user_id].to_s)}",
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
          Apologist-ai::Users::Types::UpdateUserResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
