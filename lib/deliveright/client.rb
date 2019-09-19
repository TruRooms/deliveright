module Deliveright
  class Client

    # @param [Hash] opts Options as specified in the Deliveright API docs.
    # @option opts [String] :client_id
    # @option opts [String] :client_secret
    # @option opts [String] :user_name
    # @option opts [String] :password
    def initialize(opts)
      @client_id = opts[:client_id]
      @client_secret = opts[:client_secret]
      @user_name = opts[:user_name]
      @password = opts[:password]
    end

    def order
      @order = Deliveright::Request::Order.new(conn, @client_id, @client_secret)
    end

    def scheduling
      @scheduling = Deliveright::Request::Scheduling.new(conn, @client_id, @client_secret)
    end

    def shipping_quote
      @shipping_quote = Deliveright::Request::ShippingQuote.new(conn, @client_id, @client_secret)
    end

    private

    def conn
      @conn ||= Faraday.new(url:'https://api.deliveright.com') do |conn|
        conn.use FaradayMiddleware::DeliverightErrorHandler
        conn.adapter Faraday.default_adapter
      end
    end

  end
end
