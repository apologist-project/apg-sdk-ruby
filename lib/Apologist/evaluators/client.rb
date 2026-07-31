# frozen_string_literal: true

module Apologist
  module Evaluators
    class Client
      # @param client [Apologist::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of evaluations for the evaluator, scoped to the requesting agent.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :per_page
      # @option params [String, nil] :min_timestamp
      # @option params [String, nil] :max_timestamp
      # @option params [String, nil] :min_duration
      # @option params [String, nil] :max_duration
      # @option params [String, nil] :min_score
      # @option params [String, nil] :max_score
      # @option params [String, nil] :passed
      # @option params [String, nil] :benchmark
      # @option params [String, nil] :benchmark_run_id
      # @option params [String, nil] :benchmark_question_id
      #
      # @example
      #   client.evaluators.list_evaluations(id: "id")
      #
      # @return [Apologist::Evaluators::Types::ListEvaluationsResponse]
      def list_evaluations(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["per_page"] = params[:per_page] if params.key?(:per_page)
        query_params["min_timestamp"] = params[:min_timestamp] if params.key?(:min_timestamp)
        query_params["max_timestamp"] = params[:max_timestamp] if params.key?(:max_timestamp)
        query_params["min_duration"] = params[:min_duration] if params.key?(:min_duration)
        query_params["max_duration"] = params[:max_duration] if params.key?(:max_duration)
        query_params["min_score"] = params[:min_score] if params.key?(:min_score)
        query_params["max_score"] = params[:max_score] if params.key?(:max_score)
        query_params["passed"] = params[:passed] if params.key?(:passed)
        query_params["benchmark"] = params[:benchmark] if params.key?(:benchmark)
        query_params["benchmark_run_id"] = params[:benchmark_run_id] if params.key?(:benchmark_run_id)
        query_params["benchmark_question_id"] = params[:benchmark_question_id] if params.key?(:benchmark_question_id)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "evaluators/#{URI.encode_uri_component(params[:id].to_s)}/evaluations",
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
          Apologist::Evaluators::Types::ListEvaluationsResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Runs an evaluation on the provided content using the specified evaluator
      #
      # @param request_options [Hash]
      # @param params [Apologist::Evaluators::Types::EvaluatorRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.evaluators.evaluate_content(
      #     id: "id",
      #     content: "content"
      #   )
      #
      # @return [Apologist::Evaluators::Types::EvaluateContentResponse]
      def evaluate_content(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist::Evaluators::Types::EvaluatorRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "evaluators/#{URI.encode_uri_component(params[:id].to_s)}/evaluations",
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
          Apologist::Evaluators::Types::EvaluateContentResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a single evaluation for the evaluator, scoped to the requesting agent.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String] :evaluation_id
      #
      # @example
      #   client.evaluators.get_evaluation(
      #     id: "id",
      #     evaluation_id: "evaluationId"
      #   )
      #
      # @return [Apologist::Evaluators::Types::GetEvaluationResponse]
      def get_evaluation(request_options: {}, **params)
        params = Apologist::Internal::Types::Utils.normalize_keys(params)
        request = Apologist::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "evaluators/#{URI.encode_uri_component(params[:id].to_s)}/evaluations/#{URI.encode_uri_component(params[:evaluation_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist::Evaluators::Types::GetEvaluationResponse.load(response.body)
        else
          error_class = Apologist::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
