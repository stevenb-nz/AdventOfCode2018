def day04(input)

  input = input.split(/\n/).sort

  minutes = Hash.new
  input.each_with_index do |line,i|
    if line[19,5] == "Guard" then
      guardnum = line[26..-13].to_i
      if !minutes.has_key?(guardnum) then
        minutes[guardnum] = Array.new(60,0)
      end
      j = i+1
      if j < input.count then
        while input[j][19,5] != "Guard"
          for k in input[j][15,2].to_i...input[j+1][15,2].to_i do
            minutes[guardnum][k] += 1
          end
          j += 2
          if j == input.count then
            break
          end
        end
      end
    end
  end

  guardminutes = minutes.max_by{|k,v| v.max}

  return guardminutes[0] * guardminutes[1].index(guardminutes[1].max)

end

input = File.read("day04_input.txt").chomp
puts day04(input)
