require "rspec"
require_relative "day09b"

describe "day09" do
  it "returns 32 for '9 players; last marble is worth 25 points'" do
    expect(day09("9 players; last marble is worth 25 points")).to eq 32
  end
  it "returns 8317 for '10 players; last marble is worth 1618 points'" do
    expect(day09("10 players; last marble is worth 1618 points")).to eq 8317
  end
  it "returns 146373 for '13 players; last marble is worth 7999 points'" do
    expect(day09("13 players; last marble is worth 7999 points")).to eq 146373
  end
  it "returns 2764 for '17 players; last marble is worth 1104 points'" do
    expect(day09("17 players; last marble is worth 1104 points")).to eq 2764
  end
  it "returns 54718 for '21 players; last marble is worth 6111 points'" do
    expect(day09("21 players; last marble is worth 6111 points")).to eq 54718
  end
  it "returns 37305 for '30 players; last marble is worth 5807 points'" do
    expect(day09("30 players; last marble is worth 5807 points")).to eq 37305
  end
end
