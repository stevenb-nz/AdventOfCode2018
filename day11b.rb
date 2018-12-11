def day11(input)

  gsn = input.to_i
  max = 0
  result = ""
  grid = []

  row = []
  301.times do
    row.push 0
  end
  grid.push row
  (1..300).each do |y|
    row = []
    row.push 0
    (1..300).each do |x|
      ri = x+10
      pl = (ri*y+gsn)*ri
      pl = (pl - (pl / 1000)*1000)/100-5
      row.push row[x-1]+grid[y-1][x]+pl-grid[y-1][x-1]
      if row[x] > max then
        max = row[x]
        result = "#{x},#{y},1"
      end
      (1..[x,y].min-1).each do |n|
        square = row[x]+grid[y-n][x-n]-row[x-n]-grid[y-n][x]
        if square > max then
          max = square
          result = "#{x-n+1},#{y-n+1},#{n}"
        end
      end
    end
    grid.push row
  end

  return result

end

input = File.read("day11_input.txt").chomp
puts day11(input)
