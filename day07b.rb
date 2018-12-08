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

  candidates = []
  deps.each do |k,v|
    if v[0].empty? then
      candidates.append k
    end
  end

  result = ""
  nextletter = candidates.min

  while !deps[nextletter][1].empty?
    result = result + nextletter
    candidates.delete nextletter
    deps[nextletter][1].each do |newcandidate|
      if !result.include? newcandidate then
        check = true
        deps[newcandidate][0].each do |p|
          if !result.include? p then
            check = false
          end
        end
        if check then
          candidates.append newcandidate
        end
      end
    end
    nextletter = candidates.min
  end
  result = result + nextletter

  return result

end

#input = File.read("day07_input.txt").chomp
#puts day07(input,60,5)
