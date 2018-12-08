def day08(input)

  input = input.split(/ /).map(&:to_i)

  return count_metadata(input,0,0)[0]

end

def count_metadata(input,i,total)

  if input[i] > 0 then
    n = input[i]
    m = input[i+1]
    i += 2
    n.times do
      x = count_metadata(input,i,total)
      total = x[0]
      i = x[1]
    end
    m.times do |mm|
      total += input[i+mm]
    end
    return [total,i+m]
  else
    i += 1
    1.upto(input[i]) do |m|
      total += input[i+m]
    end
    return [total,i+input[i]+1]
  end

end

input = File.read("day08_input.txt").chomp
puts day08(input)
