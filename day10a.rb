def day10(input)

  input.gsub!(/position=</,"")
  input.gsub!(/> velocity=</,",")
  input.gsub!(/>/,"")
  input = input.split(/\n/)
  points = []
  newpoints = []
  input.each do |pos|
    newpoints.push pos.split(/,/).map(&:to_i)
  end
  xminmax = newpoints.minmax_by { |p| p[0] }
  yminmax = newpoints.minmax_by { |p| p[1] }
  bounds = 0
  newbounds = (xminmax[1][0]-xminmax[0][0])+(yminmax[1][1]-yminmax[0][1])
  begin
    bounds = newbounds
    points = newpoints
    newpoints = []
    points.each do |point|
      newpoints.push [point[0]+point[2],point[1]+point[3],point[2],point[3]]
    end
    xminmax = newpoints.minmax_by { |p| p[0] }
    yminmax = newpoints.minmax_by { |p| p[1] }
    newbounds = (xminmax[1][0]-xminmax[0][0])+(yminmax[1][1]-yminmax[0][1])
  end until newbounds > bounds

  xminmax = points.minmax_by { |p| p[0] }
  yminmax = points.minmax_by { |p| p[1] }
  xmin = xminmax[0][0]
  xmax = xminmax[1][0]
  ymin = yminmax[0][1]
  ymax = yminmax[1][1]
  message_display = []
  (ymax-ymin+1).times do
    row = []
    (xmax-xmin+1).times do
      row.push "."
    end
    message_display.push row
  end
  points.each do |point|
    message_display[point[1]-ymin][point[0]-xmin] = '#'
  end
  message_display.each do |row|
    row.each do |c|
      print c
    end
    puts
    puts
  end
  print "Answer? "
  answer = STDIN.gets.chomp

  return answer

end

input = File.read("day10_input.txt").chomp
puts day10(input)
