require "rspec"
require_relative "day03b"

describe "day03" do
  it "returns '3' for '#1 @ 1,3: 4x4,#2 @ 3,1: 4x4,#3 @ 5,5: 2x2'" do
    expect(day03("#1 @ 1,3: 4x4\n#2 @ 3,1: 4x4\n#3 @ 5,5: 2x2")).to eq "3"
  end
end
