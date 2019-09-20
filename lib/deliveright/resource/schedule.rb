# frozen_string_literal: true

module Deliveright
  class Schedule < Resource

    class << self
    	# Gets a shipping quote by weight.
      # @param [Hash] opts the options to create a message with.
      # @option opts [String] :zip
    	# @return [Deliveright::Schedule]
      def availability opts
        Deliveright.authorize if Deliveright.access_token.nil?
        path = "/api/region/zipcodes/#{opts[:zip]}/schedule_availability"
      	self.new(perform_request(:get, path, {}, {access_token: Deliveright.access_token}))
      end
    end

  end
end
