def day14(input)

  a = [3,7]
  e1 = 0
  e2 = 1
  goal = ""
  while goal != input
    nr = a[e1] + a[e2]
    if nr < 10 then
      a.push nr
    else
      a.push 1
      goal2 = ""
      input.length.times do |i|
        goal2 += a[i-input.length].to_s
      end
      if goal2 == input then
        return (a.count - input.length).to_s
      end
      a.push nr-10
    end
    e1 += (a[e1]+1)
    e1 %= a.count
    e2 += (a[e2]+1)
    e2 %= a.count
    goal = ""
    input.length.times do |i|
      goal += a[i-input.length].to_s
    end
  end

  return (a.count - input.length).to_s
end

input = File.read("day14_input.txt").chomp
puts day14(input)
