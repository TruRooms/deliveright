# frozen_string_literal: true

module Deliveright
  # A resource represents a collection of API endpoints that represent a 'Model'
  class Resource
    attr_accessor :response
    class << self
      # Performs a request and then returns the results of the requests output.
      # @param method [Symbol] The method to be used, NOT a standard verb.
      # @param path [String] Relative path of the request.
      # @param headers [Hash] Additional Faraday headers
      # @param params [Hash] Any params to be passed.
      # @return [Hash] Parsed response of the server.
      def perform_request(method, path, headers = {}, params = {})
        request = Deliveright::Request.new(method, path, headers, params)
        request.perform
      end
    end

    # Sets the response object received from a request as the data.
    # @param resp [Hash]
    def initialize resp
      @response = resp
    end

    # Getter for any data in the response set easily accessible while
    # maintaining the original data structure.
    # @param key [String]
    def [](key)
      @response['data'][key]
    end

  end
end
