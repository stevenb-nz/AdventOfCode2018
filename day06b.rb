def day06(input,limit)

  input = input.split(/\n/)
  locs = []
  input.each { |l| locs.push l.split(/,/) }
  xs = []
  ys = []
  locs.each do |loc|
    xs.push loc[0].to_i
    ys.push loc[1].to_i
  end
  xs.sort!
  ys.sort!
  xincs = []
  (xs[0]..xs[-1]).each do |x|
    xdist = 0
    xs.each do |x2|
      xdist += (x2-x).abs
    end
    xincs.push xdist
  end
  yincs = []
  (ys[0]..ys[-1]).each do |y|
    ydist = 0
    ys.each do |y2|
      ydist += (y2-y).abs
    end
    yincs.push ydist
  end
  area = 0
  xincs.each do |xinc|
    yincs.each do |yinc|
      if xinc + yinc < limit then
        area += 1
      end
    end
  end
  return area
end

input = File.read("day06_input.txt").chomp
puts day06(input,10000)
