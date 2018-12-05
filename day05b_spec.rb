require "rspec"
require_relative "day05b"

describe "day05" do
  it "returns 4 for 'dabAcCaCBAcCcaDA'" do
    expect(day05("dabAcCaCBAcCcaDA")).to eq 4
  end
end
