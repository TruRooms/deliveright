module Deliveright
  class Request::ShippingQuote < Deliveright::Request

    # Gets the rate by weight.
    # @param zip [String] Desination zip code
    # @param weight [String] Total product weight 
    def by_weight(zip:, weight:, service_level:, pickup_region:, retailer_identifier:)
      get('/api/shipping', {method: 'weight', 
        zip: zip, 
        weight: weight, 
        pickup_region: pickup_region, 
        retailer_identifier: retailer_identifier})
    end

    def by_cube(zip:, weight:, service_level:, pickup_region:, retailer_identifier:)
      get('/api/shipping', {method: '3', 
        zip: zip, 
        weight: weight, 
        pickup_region: pickup_region, 
        retailer_identifier: retailer_identifier})
    end

  end
end
