require 'set'

def day12(input)

  input = input.split(/\n/)
  rules = Set.new
  lindex = 0
  i = 0
  apresult = 0
  presult = 0
  result = 0
  padding = '....'

  state = input[0][15..-1]
  input.shift

  input.each do |line|
    if line[-1] == '#' then
      rules.add(line[0..4])
    end
  end

  begin
    i += 1
    apresult = presult
    presult = result
    state = padding + state + padding
    lindex -= 2
    newstate = ""
    (state.length-4).times do |i|
      if rules.include?(state[i..i+4]) then
        newstate += '#'
      else
        newstate += '.'
      end
    end
    while newstate[0] == '.'
      newstate = newstate[1..-1]
      lindex += 1
    end
    while newstate[-1] == '.'
      newstate = newstate[0...-1]
    end
    state = newstate
    result = 0
    resindex = lindex
    state.each_char do |c|
      if c == '#' then
        result += resindex
      end
      resindex += 1
    end
  end until result - presult == presult - apresult

  return result + (50000000000-i)*(result-presult)

end

input = File.read("day12_input.txt").chomp
puts day12(input)
