# frozen_string_literal: true

module Apologist
  class Client
    # @param api_key [String]
    # @param base_url [String, nil]
    # @param domain [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(api_key:, base_url: nil, domain: nil, max_retries: 2)
      unless domain.nil?
        domain_value = domain.nil? ? "your-agent-domain.com" : domain
        environment_url_templates = {
          Apologist::Environment::DEFAULT => "https://#{domain_value}/api/v1"
        }
        base_url = base_url.nil? ? "https://#{domain_value}/api/v1" : environment_url_templates.fetch(base_url, base_url)
      end

      @raw_client = Apologist::Internal::Http::RawClient.new(
        base_url: base_url || Apologist::Environment::DEFAULT,
        headers: {
          "User-Agent" => "apologist/0.0.4",
          "X-Fern-Language" => "Ruby",
          "x-api-key" => api_key.to_s
        },
        max_retries: max_retries
      )
    end

    # @return [Apologist::Chat::Client]
    def chat
      @chat ||= Apologist::Chat::Client.new(client: @raw_client)
    end

    # @return [Apologist::Corpus::Client]
    def corpus
      @corpus ||= Apologist::Corpus::Client.new(client: @raw_client)
    end

    # @return [Apologist::Evaluators::Client]
    def evaluators
      @evaluators ||= Apologist::Evaluators::Client.new(client: @raw_client)
    end

    # @return [Apologist::CtAs::Client]
    def ct_as
      @ct_as ||= Apologist::CtAs::Client.new(client: @raw_client)
    end

    # @return [Apologist::Users::Client]
    def users
      @users ||= Apologist::Users::Client.new(client: @raw_client)
    end

    # @return [Apologist::Benchmarks::Client]
    def benchmarks
      @benchmarks ||= Apologist::Benchmarks::Client.new(client: @raw_client)
    end

    # @return [Apologist::Channels::Client]
    def channels
      @channels ||= Apologist::Channels::Client.new(client: @raw_client)
    end

    # @return [Apologist::Shares::Client]
    def shares
      @shares ||= Apologist::Shares::Client.new(client: @raw_client)
    end
  end
end
