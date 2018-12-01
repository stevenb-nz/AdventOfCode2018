require "rspec"
require_relative "day01a"

describe "day01" do
  it "returns 3 for '+1, -2, +3, +1'" do
    expect(day01("+1, -2, +3, +1")).to eq 3
  end

  it "returns 3 for '+1, +1, +1'" do
    expect(day01("+1, +1, +1")).to eq 3
  end

  it "returns 0 for '+1, +1, -2'" do
    expect(day01("+1, +1, -2")).to eq 0
  end

  it "returns -6 for '-1, -2, -3'" do
    expect(day01("-1, -2, -3")).to eq -6
  end
end
