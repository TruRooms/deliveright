module Deliveright
  class Request::Scheduling < Deliveright::Request

    def availability(zip_code)
      get("/api/region/#{zip_code}/schedule_availability")
    end

  end
end
