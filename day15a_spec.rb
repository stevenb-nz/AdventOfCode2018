require "rspec"
require_relative "day15a"

describe "day15" do
  it "returns 27730 for '#######\n#G..#E#\n#...EG#\n#.#.#G#\n#..G#E#\n#.....#\n#######'" do
    expect(day15("#######\n#.G...#\n#...EG#\n#.#.#G#\n#..G#E#\n#.....#\n#######")).to eq 27730
  end
  it "returns 36334 for '#######\n#G..#E#\n#E#E.E#\n#G.##.#\n#...#E#\n#...E.#\n#######'" do
    expect(day15("#######\n#G..#E#\n#E#E.E#\n#G.##.#\n#...#E#\n#...E.#\n#######")).to eq 36334
  end
  it "returns 39514 for '#######\n#E..EG#\n#.#G.E#\n#E.##E#\n#G..#.#\n#..E#.#\n#######'" do
    expect(day15("#######\n#E..EG#\n#.#G.E#\n#E.##E#\n#G..#.#\n#..E#.#\n#######")).to eq 39514
  end
  it "returns 27755 for '#######\n#E.G#.#\n#.#G..#\n#G.#.G#\n#G..#.#\n#...E.#\n#######'" do
    expect(day15("#######\n#E.G#.#\n#.#G..#\n#G.#.G#\n#G..#.#\n#...E.#\n#######")).to eq 27755
  end
  it "returns 28944 for '#######\n#.E...#\n#.#..G#\n#.###.#\n#E#G#G#\n#...#G#\n#######'" do
    expect(day15("#######\n#.E...#\n#.#..G#\n#.###.#\n#E#G#G#\n#...#G#\n#######")).to eq 28944
  end
  it "returns 18740 for '#########\n#G......#\n#.E.#...#\n#..##..G#\n#...##..#\n#...#...#\n#.G...G.#\n#.....G.#\n#########'" do
    expect(day15("#########\n#G......#\n#.E.#...#\n#..##..G#\n#...##..#\n#...#...#\n#.G...G.#\n#.....G.#\n#########")).to eq 18740
  end
end
