def day09(input)

  input = input.split(/ /).map(&:to_i)
  ps = input[0]
  tm = input[6]
  circle = Hash.new
  players = Hash.new
  circle[0] = [0,0]
  current = 0
  current_elf = 0
  (1..tm).each do |i|
    current_elf = current_elf == ps ? 1 : current_elf + 1
    if i % 23 == 0 then
      players[current_elf] = players.has_key?(current_elf) ? players[current_elf] + i : i
      remove = current
      7.times do
        remove = circle[remove][0]
      end
      players[current_elf] += remove
      current = circle[remove][1]
      circle[circle[remove][0]][1] = circle[remove][1]
      circle[circle[remove][1]][0] = circle[remove][0]
      circle[remove] = [remove,remove]
    else
      circle[circle[circle[current][1]][1]][0] = i
      circle[i] = [circle[current][1],circle[circle[current][1]][1]]
      circle[circle[current][1]][1] = i
      current = i
    end
  end

  return players.max_by{|k,v| v}[1]

end

input = File.read("day09b_input.txt").chomp
puts day09(input)
