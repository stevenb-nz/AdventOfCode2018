def day14(input)

  input = input.to_i

  a = [3,7]
  e1 = 0
  e2 = 1
  while a.count < (input + 10)
    nr = a[e1] + a[e2]
    if nr < 10 then
      a.push nr
    else
      a.push 1
      a.push nr-10
    end
    e1 += (a[e1]+1)
    e1 %= a.count
    e2 += (a[e2]+1)
    e2 %= a.count
  end
  result = ""
  10.times do |i|
    result += a[input+i].to_s
  end

  return result
end

input = File.read("day14_input.txt").chomp
puts day14(input)
