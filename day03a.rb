def day03(input)

  input = input.split(/\n/)

  squares = Hash.new
  input.each do |claim|
    claim.gsub!(/#\d+ @ /,'')
    claim.gsub!(/: /,',')
    claim.gsub!(/x/,',')
    parsed = claim.split(',')
    (parsed[0].to_i...parsed[0].to_i+parsed[2].to_i).each do |x|
      (parsed[1].to_i...parsed[1].to_i+parsed[3].to_i).each do |y|
        xy = x.to_s+','+y.to_s
        squares[xy] = squares.has_key?(xy) ? squares[xy] + 1 : 1
      end
    end
  end

  return squares.select { |_,value| value > 1 }.size

end

input = File.read("day03_input.txt").chomp
puts day03(input)
