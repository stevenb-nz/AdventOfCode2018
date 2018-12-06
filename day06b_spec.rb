require "rspec"
require_relative "day06b"

describe "day06" do
  it "returns 16 for '1, 1\n1, 6\n8, 3\n3, 4\n5, 5\n8, 9,32'" do
    expect(day06("1, 1\n1, 6\n8, 3\n3, 4\n5, 5\n8, 9",32)).to eq 16
  end
end
