require "rspec"
require_relative "day08b"

describe "day08" do
  it "returns 66 for '2 3 0 3 10 11 12 1 1 0 1 99 2 1 1 2'" do
    expect(day08("2 3 0 3 10 11 12 1 1 0 1 99 2 1 1 2")).to eq 66
  end
end
