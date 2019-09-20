RSpec.describe Deliveright do
  it "has a version number" do
    expect(Deliveright::VERSION).not_to be nil
  end

  it "can be toggled in and out of sandbox" do
    expect(Deliveright.api_base).to eq('https://api.deliveright.com')
    Deliveright.sandbox = true
    expect(Deliveright.api_base).to eq('http://uat.deliveright.com')
    Deliveright.sandbox = false
    expect(Deliveright.api_base).to eq('https://api.deliveright.com')
  end

  it "can authorize/login" do
    auth = Deliveright.authorize
    expect(auth).to be_a(Deliveright::Authorization)
    expect(Deliveright.access_token).to eq('B3ND3R1SGR43T')
  end
end
