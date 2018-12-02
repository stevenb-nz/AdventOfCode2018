require 'set'

def day02(input)

  input = input.include?(",") ? input.split(/, /) : input.split(/\n/)

  possibles = Set.new
  input.each do |code|
    (1..code.length).each do |i|
      possible = code.dup
      possible[i-1] = '_'
      if !possibles.add?(possible)
        possible[i-1] = ''
        return possible
      end
    end
  end

end

input = File.read("day02_input.txt").chomp
puts day02(input)
