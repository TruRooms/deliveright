# frozen_string_literal: true

module Deliveright
  class Order < Resource

    attr_accessor :type, :data

    class << self
      # Finds an order by ID
      # @param [Hash] opts the options to create a message with.
      # @option opts [String] :zip Destination Zip
      # @option opts [String] :weight
      # @option opts [String] :service_level
      # @option opts [String] :pickup_region
      # @option opts [String] :retailer_identifier
    	# @return [Deliveright::ShippingQuote]
      def by_weight opts
      	resp = perform_request(:get, '/api/shipping', {}, opts)
      	Deliveright::ShippingQuote.new(resp)
      end
    end

  end
end
