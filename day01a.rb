def day01(input)

input = input.include?(",") ? input.split(/, /) : input.split(/\n/)
return input.map {|s| s.to_i}.sum
end

input = File.read("day01_input.txt").chomp
puts day01(input)
