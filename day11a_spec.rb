require "rspec"
require_relative "day11a"

describe "day11" do
  it "returns '33,45' for '18'" do
    expect(day11("18")).to eq "33,45"
  end
  it "returns '21,61' for '42'" do
    expect(day11("42")).to eq "21,61"
  end
end
