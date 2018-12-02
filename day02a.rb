def day02(input)

  input = input.include?(",") ? input.split(/, /) : input.split(/\n/)

  twos = 0
  threes = 0
  input.each do |code|
    letters = Hash.new
    code.each_char do |c|
      letters[c] = letters.has_key?(c) ? letters[c] + 1 : 1
    end
    if letters.has_value?(2) then
      twos += 1
    end
    if letters.has_value?(3) then
      threes += 1
    end
  end

  return twos * threes

end

input = File.read("day02_input.txt").chomp
puts day02(input)
