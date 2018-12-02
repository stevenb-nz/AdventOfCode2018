require "rspec"
require_relative "day02a"

describe "day02" do
  it "returns 12 for 'abcdef,bababc,abbcde,abcccd,aabcdd,abcdee,ababab'" do
    expect(day02("abcdef\nbababc\nabbcde\nabcccd\naabcdd\nabcdee\nababab")).to eq 12
  end
end
