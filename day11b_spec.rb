require "rspec"
require_relative "day11b"

describe "day11" do
  it "returns '90,269,16' for '18'" do
    expect(day11("18")).to eq "90,269,16"
  end
  it "returns '232,251,12' for '42'" do
    expect(day11("42")).to eq "232,251,12"
  end
end
