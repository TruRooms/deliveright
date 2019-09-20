# frozen_string_literal: true

module Deliveright
  class Order < Resource

    attr_accessor :type, :data

    class << self
    	# Gets an order
    	# @param id [String]
      def find id
      	resp = perform_request(:get, '/api/shipping')
      	Deliveright::Order.new(resp)
      end

      # Creates an order
      # @param opts [Hash] See Deliveright dev docs.
      def create opts
        resp = perform_request(:get, '/api/shipping')
        Deliveright::Order.new(resp)
      end
    end

  end
end
