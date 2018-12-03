def day03(input)

  input = input.split(/\n/)

  squares = Hash.new
  input.each do |claim|
    claim.gsub!(/#/,'')
    claim.gsub!(/ @ /,',')
    claim.gsub!(/: /,',')
    claim.gsub!(/x/,',')
    parsed = claim.split(',')
    (parsed[1].to_i...parsed[1].to_i+parsed[3].to_i).each do |x|
      (parsed[2].to_i...parsed[2].to_i+parsed[4].to_i).each do |y|
        xy = x.to_s+','+y.to_s
        squares[xy] = squares.has_key?(xy) ? squares[xy] + 1 : 1
      end
    end
  end
  input.each do |claim|
    check = true
    parsed = claim.split(',')
    (parsed[1].to_i...parsed[1].to_i+parsed[3].to_i).each do |x|
      (parsed[2].to_i...parsed[2].to_i+parsed[4].to_i).each do |y|
        xy = x.to_s+','+y.to_s
        if squares[xy] > 1 then
          check = false
        end
      end
    end
    if check then
      return parsed[0]
    end
  end

end

input = File.read("day03_input.txt").chomp
puts day03(input)
