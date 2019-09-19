RSpec.describe Deliveright::Request do
  it "has a get method" do
    expect(Deliveright::Request.new(nil,nil,nil)).to respond_to(:get)
  end

  it "has a post method" do
    expect(Deliveright::Request.new(nil,nil,nil)).to respond_to(:post)
  end
end
