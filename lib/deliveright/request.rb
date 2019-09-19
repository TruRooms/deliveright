module Deliveright
  class Request

    def initialize(conn, client_id, client_secret)
      @conn = conn
      @client_id = client_id
      @client_secret = client_secret
    end

    def get(path, opts)
      opts.merge!({client_id: @client_id, client_secret: @client_secret})
      resp = @conn.get(path, opts)
      JSON.parse(resp.body)
    end

  end
end
