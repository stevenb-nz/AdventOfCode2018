require "rspec"
require_relative "day02b"

describe "day02" do
  it "returns 'fgij' for 'abcde,fghij,klmno,pqrst,fguij,axcye,wvxyz'" do
    expect(day02("abcde\nfghij\nklmno\npqrst\nfguij\naxcye\nwvxyz")).to eq "fgij"
  end
end
