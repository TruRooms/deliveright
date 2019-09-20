# frozen_string_literal: true

module Deliveright
  class Authorization < Resource

    class << self
    	# Gets a shipping quote by weight.
      # @param [Hash] opts the options to create a message with.
      # @option opts [String] :client_id
      # @option opts [String] :client_secret
      # @option opts [String] :user_name
      # @option opts [String] :password
    	# @return [Deliveright::Authorization]
      def login opts
        options = opts.to_a.map{ |x| "#{x[0]}=#{x[1]}" }.join('&')
      	self.new(perform_request(:post, '/api/user/login', {}, options))
      end
    end

  end
end
