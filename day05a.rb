def day05(input)

  begin
    input2 = input
    input = scan(input2.dup)
  end until input == input2

  return input2.length

end

def scan(input)

  ('a'..'z').each do |char|
    input.gsub!(char+char.upcase,"")
    input.gsub!(char.upcase+char,"")
  end

  return input

end

input = File.read("day05_input.txt").chomp
puts day05(input)
