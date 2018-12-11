def day11(input)

  gsn = input.to_i
  grid = []
  302.times do
    row = []
    302.times do
      row.push 0
    end
    grid.push row
  end
  (1..300).each do |y|
    (1..300).each do |x|
      ri = x+10
      pl = (ri*y+gsn)*ri
      pl = (pl - (pl / 1000)*1000)/100-5
      (-1..1).each do |yy|
        (-1..1).each do |xx|
          grid[x+xx][y+yy] += pl
        end
      end
    end
  end

  xco = grid.each_with_index.max_by {|row| row[0].each_with_index.max}
  yco = xco[0].each_with_index.max

  return "#{xco[1]-1},#{yco[1]-1}"

end

input = File.read("day11_input.txt").chomp
puts day11(input)
