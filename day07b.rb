def day07(input)

  input = input.split(/\n/)

  deps = Hash.new
  input.each do |line|
    if deps.has_key?(line[5]) then
      deps[line[5]].push line[-12]
    else
      deps[line[5]] = [line[-12]]
    end
  end
  peds = Hash.new
  input.each do |line|
    if peds.has_key?(line[-12]) then
      peds[line[-12]].push line[5]
    else
      peds[line[-12]] = [line[5]]
    end
  end
  candidates = []
  peds.each do |a|
    a[1].each do |d|
      if !peds.has_key?(d) then
        candidates.append d
      end
    end
  end

  result = ""
  nextletter = candidates.min

  while deps.has_key?(nextletter)
    result = result + nextletter
    candidates.delete nextletter
    peds.each_key do |newcandidate|
      if !result.include? newcandidate then
        check = true
        peds[newcandidate].each do |p|
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
#puts day07(input)
