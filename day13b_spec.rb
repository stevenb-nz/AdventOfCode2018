require "rspec"
require_relative "day13b"

describe "day13" do
  it "returns '6,4' for '/>-<\
|   |
| /<+-\
| | | v
\>+</ |
  |   ^
  \<->/'" do
    expect(day13('/>-<\
|   |
| /<+-\
| | | v
\>+</ |
  |   ^
  \<->/')).to eq '6,4'
  end
end
