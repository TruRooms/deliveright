module Deliveright
  class Request::Order < Deliveright::Request

    def find(id)
      get('/api/track', {id: id})
    end

  end
end
