require 'set'

def day01(input)

  input = input.include?(",") ? input.split(/, /) : input.split(/\n/)
  input = input.map { |s| s.to_i }

  currentfreq = 0 # current frequency
  pos = 0 # position in input
  freqset = Set.new

  # if you can add the current freq to the Set, you haven't seen it before
  while freqset.add?(currentfreq) do
    currentfreq = currentfreq + input[pos]
    pos = pos+1 == input.count ? 0 : pos+1
  end

  return currentfreq

end

input = File.read("day01_input.txt").chomp
puts day01(input)
