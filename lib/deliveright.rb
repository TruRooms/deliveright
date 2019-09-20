# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'json'

require 'deliveright/error'
require 'deliveright/version'
require 'deliveright/request'

require "deliveright/resource"
require "deliveright/resource/authorization"
require "deliveright/resource/order"
require "deliveright/resource/schedule"
require "deliveright/resource/shipping_quote"

# Namespace for classes and modules that handle interacting with the Deliveright API
# @since 0.1.0
module Deliveright

  class << self
		attr_accessor :client_id, :client_secret, :user_name, :password,
      :access_token, :sandbox

    # Determine the base API path.
    # @return [String]
		def api_base
			if sandbox
				'http://uat.deliveright.com'
			else
				'https://api.deliveright.com'
			end
		end

    # Grab an auth object and also set the access token to be used for some requests.
    # @return [Deliveright::Authorization]
    def authorize
      @auth = Deliveright::Authorization.login({client_id: @client_id,
        client_secret: @client_secret, user_name: @user_name, password: @password})
      @access_token = @auth['access_token']
      @auth
    end

	end
end
