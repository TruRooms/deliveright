# frozen_string_literal: true

RSpec.describe Deliveright::ShippingQuote do

  it "has a by_weight method" do
    expect(Deliveright::ShippingQuote).to respond_to(:by_weight)
  end

  it "can get a shipping quote by weight" do
    sq = Deliveright::ShippingQuote.by_weight({})
    expect(sq).to be_a(Deliveright::ShippingQuote)
  end

  it "has a by_cube method" do
    expect(Deliveright::ShippingQuote).to respond_to(:by_cube)
  end

  it "can get a shipping quote by cube" do
    sq = Deliveright::ShippingQuote.by_cube({})
    expect(sq).to be_a(Deliveright::ShippingQuote)
  end
end
