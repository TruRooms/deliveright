class Deliveleft < Sinatra::Base

  # Basic auth values
  ACCESS_TOKEN = 'B3ND3R1SGR43T'
  CLIENT_ID = 'planet_express'
  CLIENT_SECRET = 's3cr37'
  USER_NAME = 'bender@planetexpress.com'
  PASSWORD = 'benderisgreat'

  post '/api/user/login' do
    json_response 200, 'auth.json'
  end

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

  get '/api/region/zipcodes/10000/schedule_availability' do
    json_response(200, 'schedule.json')
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end

end
