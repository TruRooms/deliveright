# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'json'

require 'deliveright/error'
require 'deliveright/version'
require 'deliveright/request'

require "deliveright/resource"
require "deliveright/resource/order"
require "deliveright/resource/shipping_quote"

# Namespace for classes and modules that handle interacting with the Deliveright API
# @since 0.1.0
module Deliveright

  class << self
		attr_accessor :client_id, :client_secret, :user_name, :password, :sandbox

		def api_base
			if sandbox
				'http://uat.deliveright.com'
			else
				'https://api.deliveright.com'
			end
		end

	end
end
