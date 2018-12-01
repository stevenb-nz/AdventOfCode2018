require "rspec"
require_relative "day01b"

describe "day01" do
  it "returns 0 for '+1, -1'" do
    expect(day01("+1, -1")).to eq 0
  end

  it "returns 10 for '+3, +3, +4, -2, -4'" do
    expect(day01("+3, +3, +4, -2, -4")).to eq 10
  end

  it "returns 5 for '-6, +3, +8, +5, -6'" do
    expect(day01("-6, +3, +8, +5, -6")).to eq 5
  end

  it "returns 14 for '+7, +7, -2, -7, -4'" do
    expect(day01("+7, +7, -2, -7, -4")).to eq 14
  end
end
