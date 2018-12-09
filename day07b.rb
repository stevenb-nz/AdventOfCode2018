def day07(input,s_offset,n_workers)

  input = input.split(/\n/)

  deps = Hash.new
  input.each do |line|
    if deps.has_key?(line[5]) then
      deps[line[5]][1].push line[-12]
    else
      deps[line[5]] = [[],[line[-12]]]
    end
    if deps.has_key?(line[-12]) then
      deps[line[-12]][0].push line[5]
    else
      deps[line[-12]] = [[line[5]],[]]
    end
  end

  workers = []
  n_workers.times do
    workers.push ["",0]
  end
  result = ""
  minutes = -1

  while result.length < deps.count
    minutes += 1
    workers.each_with_index do |worker,i|
      if worker[1] <= 0 then
        if worker[0] != "" then
          result += worker[0]
          workers[i][0] = ""
        end
      end
    end
    workers.each_with_index do |worker,i|
      if worker[1] <= 0 then
        workers[i] = assign(deps,workers,result,s_offset)
      end
      workers[i][1] -= 1
    end
  end

  return minutes

end

def assign(deps,workers,result,s_offset)
  candidates = []
  if result == "" then
    deps.each do |k,v|
      if v[0].empty? then
        check = true
        workers.each do |w|
          if w[0] == k then
            check = false
          end
        end
        if check then
          candidates.append k
        end
      end
    end
  else
    result.each_char do |c|
      deps[c][1].each do |newcandidate|
        if !result.include? newcandidate then
          check = true
          workers.each do |w|
            if w[0] == newcandidate then
              check = false
            end
          end
          if check then
            deps[newcandidate][0].each do |p|
              if !result.include? p then
                check = false
              end
            end
          end
          if check then
            candidates.append newcandidate
          end
        end
      end
    end
  end

  if candidates.empty? then
    return ["",0]
  else
    duration = candidates.min.ord - 64 + s_offset
    return [candidates.min,duration]
  end
end

input = File.read("day07_input.txt").chomp
puts day07(input,60,5)
