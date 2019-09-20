class Deliveleft < Sinatra::Base

  access_token = 'benderisgreat'
  client_id = 'secret'
  client_secret = 'super_secret'

  get '/api/track' do
    json_response 200, 'order.json'
  end

  get '/api/shipping' do
    if params['method'] == 'weight'
      json_response(200, 'shipping_quote_by_weight.json')
    elsif params['method'] == '3'
      json_response(200, 'shipping_quote_by_cube.json') if params['method'] == '3'
    end
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end
