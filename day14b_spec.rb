require "rspec"
require_relative "day14b"

describe "day14" do
  it "returns '5' for '01245'" do
    expect(day14('01245')).to eq '5'
  end
  it "returns '9' for '51589'" do
    expect(day14('51589')).to eq '9'
  end
  it "returns '18' for '92510'" do
    expect(day14('92510')).to eq '18'
  end
  it "returns '2018' for '59414'" do
    expect(day14('59414')).to eq '2018'
  end
end
