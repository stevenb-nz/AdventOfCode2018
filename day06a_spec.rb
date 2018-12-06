require "rspec"
require_relative "day06a"

describe "day06" do
  it "returns 17 for '1, 1\n1, 6\n8, 3\n3, 4\n5, 5\n8, 9'" do
    expect(day06("1, 1\n1, 6\n8, 3\n3, 4\n5, 5\n8, 9")).to eq 17
  end
end
