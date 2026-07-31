# frozen_string_literal: true

module Apologist-ai
  module Benchmarks
    class Client
      # @param client [Apologist-ai::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of runs for a benchmark, scoped to the requesting agent. Each run carries nested
      # evaluators, questions, and a flat evaluations array.
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
      # @option params [String, nil] :min_responses
      # @option params [String, nil] :max_responses
      #
      # @example
      #   client.benchmarks.list_benchmark_runs(id: "id")
      #
      # @return [Apologist-ai::Benchmarks::Types::ListBenchmarkRunsResponse]
      def list_benchmark_runs(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
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
        query_params["min_responses"] = params[:min_responses] if params.key?(:min_responses)
        query_params["max_responses"] = params[:max_responses] if params.key?(:max_responses)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "benchmarks/#{URI.encode_uri_component(params[:id].to_s)}/runs",
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
          Apologist-ai::Benchmarks::Types::ListBenchmarkRunsResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Executes a benchmark run and returns the aggregated result with nested evaluators, questions, and a flat
      # evaluations array.
      #
      # @param request_options [Hash]
      # @param params [Apologist-ai::Benchmarks::Types::BenchmarkRunRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.benchmarks.run_benchmark(id: "id")
      #
      # @return [Hash[String, Object]]
      def run_benchmark(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request_data = Apologist-ai::Benchmarks::Types::BenchmarkRunRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "benchmarks/#{URI.encode_uri_component(params[:id].to_s)}/runs",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Returns a single benchmark run by id or UUID, scoped to the requesting agent, including nested evaluators,
      # questions, and evaluations.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String] :run_id
      #
      # @example
      #   client.benchmarks.get_benchmark_run(
      #     id: "id",
      #     run_id: "runId"
      #   )
      #
      # @return [Apologist-ai::Benchmarks::Types::GetBenchmarkRunResponse]
      def get_benchmark_run(request_options: {}, **params)
        params = Apologist-ai::Internal::Types::Utils.normalize_keys(params)
        request = Apologist-ai::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "benchmarks/#{URI.encode_uri_component(params[:id].to_s)}/runs/#{URI.encode_uri_component(params[:run_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Apologist-ai::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Apologist-ai::Benchmarks::Types::GetBenchmarkRunResponse.load(response.body)
        else
          error_class = Apologist-ai::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
