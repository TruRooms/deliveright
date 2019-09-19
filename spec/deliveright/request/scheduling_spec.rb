RSpec.describe Deliveright::Request::Scheduling do
  it "has a availability method" do
    expect(Deliveright::Request::Scheduling.new(nil,nil,nil)).to respond_to(:availability)
  end
end
