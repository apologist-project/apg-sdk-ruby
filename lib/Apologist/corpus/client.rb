# frozen_string_literal: true

module Apologist
  module Corpus
    class Client
      # @param client [Apologist::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Performs a semantic search across the agent's corpus of knowledge
      #
      # @param request_options [Hash]
      # @param params [Apologist::Corpus::Types::CorpusSearchRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.corpus.search_corpus(query: "query")
      #
      # @return [Apologist::Corpus::Types::SearchCorpusResponse]
      def search_corpus(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "corpus/search",
          body: Apologist::Corpus::Types::CorpusSearchRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Corpus::Types::SearchCorpusResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Records that a user viewed a specific corpus item
      #
      # @param request_options [Hash]
      # @param params [Apologist::Corpus::Types::ViewRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :model
      # @option params [String] :id
      #
      # @example
      #   client.corpus.log_corpus_view(
      #     model: "model",
      #     id: "id",
      #     prompt_id: "prompt_id"
      #   )
      #
      # @return [Apologist::Types::SuccessResponse]
      def log_corpus_view(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist::Corpus::Types::ViewRequest.new(params).to_h
        non_body_param_names = %w[model id]
        body = request_data.except(*non_body_param_names)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "corpus/#{URI.encode_uri_component(params[:model].to_s)}/#{URI.encode_uri_component(params[:id].to_s)}/view",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Types::SuccessResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Records that a corpus item was shown to a user
      #
      # @param request_options [Hash]
      # @param params [Apologist::Corpus::Types::ImpressionRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :model
      # @option params [String] :id
      #
      # @example
      #   client.corpus.log_corpus_impression(
      #     model: "model",
      #     id: "id",
      #     prompt_id: "prompt_id"
      #   )
      #
      # @return [Apologist::Types::SuccessResponse]
      def log_corpus_impression(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist::Corpus::Types::ImpressionRequest.new(params).to_h
        non_body_param_names = %w[model id]
        body = request_data.except(*non_body_param_names)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "corpus/#{URI.encode_uri_component(params[:model].to_s)}/#{URI.encode_uri_component(params[:id].to_s)}/impression",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Types::SuccessResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Records a referral for a corpus item and, when a `url` is supplied, issues a 302 redirect to it. Without a
      # `url`, responds with a success message. Requires either the search API entitlement or a same-origin request.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :model
      # @option params [String] :id
      # @option params [String] :prompt_id
      # @option params [String, nil] :user_id
      # @option params [String, nil] :url
      #
      # @example
      #   client.corpus.log_corpus_referral_redirect(
      #     model: "model",
      #     id: "id",
      #     prompt_id: "prompt_id"
      #   )
      #
      # @return [Apologist::Types::SuccessResponse]
      def log_corpus_referral_redirect(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["prompt_id"] = params[:prompt_id] if params.key?(:prompt_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["url"] = params[:url] if params.key?(:url)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "corpus/#{URI.encode_uri_component(params[:model].to_s)}/#{URI.encode_uri_component(params[:id].to_s)}/referral",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Types::SuccessResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Records that a user was referred to a corpus item
      #
      # @param request_options [Hash]
      # @param params [Apologist::Corpus::Types::ReferralRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :model
      # @option params [String] :id
      #
      # @example
      #   client.corpus.log_corpus_referral(
      #     model: "model",
      #     id: "id",
      #     prompt_id: "prompt_id"
      #   )
      #
      # @return [Apologist::Types::SuccessResponse]
      def log_corpus_referral(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist::Corpus::Types::ReferralRequest.new(params).to_h
        non_body_param_names = %w[model id]
        body = request_data.except(*non_body_param_names)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "corpus/#{URI.encode_uri_component(params[:model].to_s)}/#{URI.encode_uri_component(params[:id].to_s)}/referral",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Types::SuccessResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
