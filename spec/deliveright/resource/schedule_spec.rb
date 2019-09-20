# frozen_string_literal: true

RSpec.describe Deliveright::Schedule do

  it "has a availability method" do
    expect(Deliveright::Schedule).to respond_to(:availability)
  end

  it "can get availability for a zip code" do
    sq = Deliveright::Schedule.availability({zip: '10000'})
    expect(sq).to be_a(Deliveright::Schedule)
  end
end
