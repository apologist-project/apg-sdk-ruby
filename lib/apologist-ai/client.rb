# frozen_string_literal: true

module Apologist-ai
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
          Apologist-ai::Environment::DEFAULT => "https://#{domain_value}/api/v1"
        }
        base_url = base_url.nil? ? "https://#{domain_value}/api/v1" : environment_url_templates.fetch(base_url, base_url)
      end

      @raw_client = Apologist-ai::Internal::Http::RawClient.new(
        base_url: base_url || Apologist-ai::Environment::DEFAULT,
        headers: {
          "User-Agent" => "apologist/0.0.3",
          "X-Fern-Language" => "Ruby",
          "x-api-key" => api_key.to_s
        },
        max_retries: max_retries
      )
    end

    # @return [Apologist-ai::Chat::Client]
    def chat
      @chat ||= Apologist-ai::Chat::Client.new(client: @raw_client)
    end

    # @return [Apologist-ai::Corpus::Client]
    def corpus
      @corpus ||= Apologist-ai::Corpus::Client.new(client: @raw_client)
    end

    # @return [Apologist-ai::Evaluators::Client]
    def evaluators
      @evaluators ||= Apologist-ai::Evaluators::Client.new(client: @raw_client)
    end

    # @return [Apologist-ai::CtAs::Client]
    def ct_as
      @ct_as ||= Apologist-ai::CtAs::Client.new(client: @raw_client)
    end

    # @return [Apologist-ai::Users::Client]
    def users
      @users ||= Apologist-ai::Users::Client.new(client: @raw_client)
    end

    # @return [Apologist-ai::Benchmarks::Client]
    def benchmarks
      @benchmarks ||= Apologist-ai::Benchmarks::Client.new(client: @raw_client)
    end

    # @return [Apologist-ai::Channels::Client]
    def channels
      @channels ||= Apologist-ai::Channels::Client.new(client: @raw_client)
    end

    # @return [Apologist-ai::Shares::Client]
    def shares
      @shares ||= Apologist-ai::Shares::Client.new(client: @raw_client)
    end
  end
end
