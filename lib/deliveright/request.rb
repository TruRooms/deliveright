module Deliveright
  class Request

    def initialize(method, path, headers, params)
      @method = method
      @path = path
      @headers = headers
      @params = params
    end

    def perform
      preflight
      case @method
      when :get
        resp = get
      when :post
        resp = post
      end
      resp
    end

    private

    def preflight
      client_id ||= Deliveright.client_id
      client_secret ||= Deliveright.client_secret
      if @params.is_a? Hash
        @params.merge!(client_id: client_id, client_secret: client_secret)
      end
    end

    # Standard GET request that submits and expects JSON.
    def get
      resp = conn.get(@path, @params)
      parse_response(resp)
    end

    # Post Request
    def post
      resp = conn.post(@path, @params)
      parse_response(resp)
    end

    # Parse a response that is expected to be valid JSON
    # @param resp [String]
    # @return [Hash]
    def parse_response(resp)
      begin
        JSON.parse(resp.body)
      rescue JSON::ParserError
        raise Deliveright::Error, "Unable to Parse JSON response"
      end
    end

    def conn
      @conn ||= Faraday.new(url: Deliveright.api_base) do |conn|
        conn.use FaradayMiddleware::DeliverightErrorHandler
        conn.adapter Faraday.default_adapter
      end
    end

  end
end
