require "rspec"
require_relative "day05a"

describe "day05" do
  it "returns 10 for 'dabAcCaCBAcCcaDA'" do
    expect(day05("dabAcCaCBAcCcaDA")).to eq 10
  end
end
