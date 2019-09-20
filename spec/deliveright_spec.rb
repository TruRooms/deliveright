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
end
