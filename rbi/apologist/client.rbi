# typed: strong

module Apologist
  class Client < Apologist::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Apologist::Resources::Pet) }
    attr_reader :pet

    sig { returns(Apologist::Resources::Store) }
    attr_reader :store

    sig { returns(Apologist::Resources::User) }
    attr_reader :user

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["APOLOGIST_API_KEY"]`
      api_key: ENV["APOLOGIST_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["APOLOGIST_BASE_URL"]`
      base_url: ENV["APOLOGIST_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Apologist::Client::DEFAULT_MAX_RETRIES,
      timeout: Apologist::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Apologist::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Apologist::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
