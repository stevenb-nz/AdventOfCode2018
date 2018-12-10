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
  answer = -1
  begin
    answer += 1
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

  return answer

end

input = File.read("day10_input.txt").chomp
puts day10(input)
