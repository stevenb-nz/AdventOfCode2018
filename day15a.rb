def day15(input)
  map = []
  input = input.split(/\n/)
  input.each do |row|
    row = row.split(//)
    map.push row
  end


  units = []
  map.each_with_index do |row,y|
    row.each_with_index do |square,x|
      if square != '#' and square != '.' then
        units.push [x,y,square]
      end
    end
  end

  return 27730
end

#input = File.read("day15_input.txt").chomp
#puts day15(input)
