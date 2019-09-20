# frozen_string_literal: true

module Deliveright
  class ShippingQuote < Resource

    class << self
    	# Gets a shipping quote by weight.
      # @param [Hash] opts the options to create a message with.
      # @option opts [String] :zip Destination Zip
      # @option opts [String] :weight
      # @option opts [String] :service_level
      # @option opts [String] :pickup_region
      # @option opts [String] :retailer_identifier
    	# @return [Deliveright::ShippingQuote]
      def by_weight opts
        opts.merge!('method': 'weight')
      	resp = perform_request(:get, '/api/shipping', {}, opts)
      	Deliveright::ShippingQuote.new(resp)
      end

      # Gets a shipping quote by cube.
      # @param [Hash] opts the options to create a message with.
      # @option opts [String] :zip Destination Zip
      # @option opts [String] :cubes
      # @option opts [String] :service_level
      # @option opts [String] :pickup_region
      # @option opts [String] :retailer_identifier
    	# @return [Deliveright::ShippingQuote]
      def by_cube opts
        opts.merge!('method': '3')
      	resp = perform_request(:get, '/api/shipping', {}, opts)
      	Deliveright::ShippingQuote.new(resp)
      end
    end

  end
end
