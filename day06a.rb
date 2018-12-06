def day06(input)

  input = input.split(/\n/)
  locs = []
  input.each { |l| locs.push l.split(/,/) }
  xmin = locs[0][0].to_i
  xmax = locs[0][0].to_i
  ymin = locs[0][1].to_i
  ymax = locs[0][1].to_i
  locs.each do |l|
    l[0] = l[0].to_i
    xmin = l[0] < xmin ? l[0] : xmin
    xmax = l[0] > xmax ? l[0] : xmax
    l[1] = l[1].to_i
    ymin = l[1] < ymin ? l[1] : ymin
    ymax = l[1] > ymax ? l[1] : ymax
  end

  grid = []
  ((xmax-xmin)+1).times do
    col = []
    ((ymax-ymin)+1).times { col.push -1 }
    grid.push col
  end

  locs.each_with_index do |l,i|
    grid[l[0]-xmin][l[1]-ymin] = i
  end

  (xmin..xmax).each do |x|
    (ymin..ymax).each do |y|
      if grid[x-xmin][y-ymin] < 0 then
        mdmin = ((xmax-xmin)+1)*((ymax-ymin)+1)
        mdlocs = []
        locs.each_with_index do |l,i|
          md = (x-l[0]).abs + (y-l[1]).abs
          if md < mdmin then
            mdmin = md
            mdlocs = [i]
          elsif md == mdmin then
            mdlocs.push i
          end
        end
        if mdlocs.count == 1 then
          grid[x-xmin][y-ymin] = mdlocs[0]
        end
      end
    end
  end

  countnearest = Hash.new
  ((xmin+1)...xmax).each do |x|
    ((ymin+1)...ymax).each do |y|
      if grid[x-xmin][y-ymin] > -1 then
        countnearest[grid[x-xmin][y-ymin]] = countnearest.has_key?(grid[x-xmin][y-ymin]) ? countnearest[grid[x-xmin][y-ymin]] += 1 : 1
      end
    end
  end

  (xmin..xmax).each do |x|
    if grid[x-xmin][0] > -1 then
      countnearest[grid[x-xmin][0]] = 0
    end
    if grid[x-xmin][ymax-ymin] > -1 then
      countnearest[grid[x-xmin][ymax-ymin]] = 0
    end
  end
  (ymin..ymax).each do |y|
    if grid[0][y-ymin] > -1 then
      countnearest[grid[xmin-xmin][y-ymin]] = 0
    end
    if grid[xmax-xmin][y-ymin] > -1 then
      countnearest[grid[xmax-xmin][y-ymin]] = 0
    end
  end

  return countnearest.max_by{|k,v| v}[1]

end

input = File.read("day06_input.txt").chomp
puts day06(input)
