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
        # @todo Implement a post
      end
      resp
    end

    private

    def preflight
      client_id ||= Deliveright.client_id
      client_secret ||= Deliveright.client_secret
      user_name ||= Deliveright.user_name
      password ||= Deliveright.password

      @params.merge!(client_id: client_id, client_secret: client_secret)
    end

    # Standard GET request that submits and expects JSON.
    def get
      resp = conn.get(@path, @params, {'Accept' => 'application/json'})
      begin
        resp_body = JSON.parse(resp.body)
      rescue JSON::ParserError
        raise Deliveright::Error, "Unable to Parse JSON response"
      end
      resp_body
    end

    def conn
      @conn ||= Faraday.new(url: Deliveright.api_base) do |conn|
        conn.use FaradayMiddleware::DeliverightErrorHandler
        conn.adapter Faraday.default_adapter
      end
    end

  end
end
