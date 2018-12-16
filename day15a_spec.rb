require "rspec"
require_relative "day15a"

describe "day15" do
  it "returns '0124515891' for '5'" do
    expect(day15('5')).to eq '0124515891'
  end
  it "returns '5158916779' for '9'" do
    expect(day15('9')).to eq '5158916779'
  end
  it "returns '9251071085' for '18'" do
    expect(day15('18')).to eq '9251071085'
  end
  it "returns '5941429882' for '2018'" do
    expect(day15('2018')).to eq '5941429882'
  end
end
