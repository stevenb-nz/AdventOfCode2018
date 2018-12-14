require "rspec"
require_relative "day13a"

describe "day13" do
  it "returns '7,3' for '/->-\
|   |  /----\
| /-+--+-\  |
| | |  | v  |
\-+-/  \-+--/
  \------/   '" do
    expect(day13('/->-\
|   |  /----\
| /-+--+-\  |
| | |  | v  |
\-+-/  \-+--/
  \------/   ')).to eq '7,3'
  end
end
