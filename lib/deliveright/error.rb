module Deliveright
  class Error < StandardError; end
  class NotAuthorized < Error; end
  class NotFound < Error; end
  class GatewayTimeout < Error; end
  class TooManyRequests < Error; end
end

module FaradayMiddleware
  class DeliverightErrorHandler < Faraday::Response::Middleware
    ERROR_STATUSES = 400..600
    def on_complete(env)
      case env[:status]
      when 401
        raise Deliveright::NotAuthorized, env.body
      when 404
        raise Deliveright::NotFound, env.body
      when 429
        raise Deliveright::TooManyRequests, env.body
      when 504
        raise Deliveright::GatewayTimeout, env.body
      when ERROR_STATUSES
        raise Deliveright::Error, "#{env[:status]}: #{env.body}"
      end
    end
  end
end
