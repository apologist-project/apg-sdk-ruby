# frozen_string_literal: true

module Apologist-ai
  module Errors
    class ServerError < ResponseError
    end

    class ServiceUnavailableError < ApiError
    end
  end
end
