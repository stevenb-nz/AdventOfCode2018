def day13(input)

  input = input.split(/\n/)
  layout = []
  carts = []
  input.each do |line|
    row = []
    line.each_char do |c|
      row.push c
    end
    layout.push row
  end
  rl = layout.max_by { |r| r.count }.count
  layout.each_index do |i|
    ((rl+1)-layout[i].count).times do
      layout[i].push ' '
    end
  end
  layout.each_with_index do |row,y|
    row.each_with_index do |c,x|
      case c
      when '>'
        carts.push [[x,y],[1,0],'L']
        layout[y][x] = '-'
      when 'v'
        carts.push [[x,y],[0,1],'L']
        layout[y][x] = '|'
      when '<'
        carts.push [[x,y],[-1,0],'L']
        layout[y][x] = '-'
      when '^'
        carts.push [[x,y],[0,-1],'L']
        layout[y][x] = '|'
      end
    end
  end

  while true
    colloc = collision?(carts)
    while colloc.empty?
      carts = carts.sort_by { |cart| "%03d,%03d" % [cart[0][0],cart[0][1]] }
      carts.each_with_index do |cart,i|
        if !cart.empty? then
          carts[i] = move(cart,layout)
          colloc = collision?(carts)
          if !colloc.empty? then
            carts.each_with_index do |cart2,j|
              if cart2[0] == colloc[0] then
                carts[j] = []
              end
            end
          end
        end
      end
      newcarts = []
      cartcount = 0
      carts.each do |cart|
        if !cart.empty? then
          newcarts.push cart
          cartcount += 1
        end
      end
      carts = newcarts
      if cartcount == 1 then
        return "#{carts[0][0][0]},#{carts[0][0][1]}"
      end
    end
  end

end

def collision?(carts)
  unique = Hash.new
  collisions = []
  carts.each do |cart|
    if !cart.empty? then
      if unique.has_key?(cart[0]) then
        collisions.push cart[0]
      else
        unique[cart[0]] = ""
      end
    end
  end
  return collisions
end

def move(cart,layout)
  newcart = [[cart[0][0]+cart[1][0],cart[0][1]+cart[1][1]],cart[1],cart[2]]
  case layout[newcart[0][1]][newcart[0][0]]
  when '+'
    case newcart[2]
    when 'L'
      newcart = [newcart[0],newcart[1],'S']
      case newcart[1]
      when [1,0]
        newcart = [newcart[0],[0,-1],newcart[2]]
      when [0,1]
        newcart = [newcart[0],[1,0],newcart[2]]
      when [-1,0]
        newcart = [newcart[0],[0,1],newcart[2]]
      when [0,-1]
        newcart = [newcart[0],[-1,0],newcart[2]]
      end
    when 'S'
      newcart = [newcart[0],newcart[1],'R']
    when 'R'
      newcart = [newcart[0],newcart[1],'L']
      case newcart[1]
      when [1,0]
        newcart = [newcart[0],[0,1],newcart[2]]
      when [0,1]
        newcart = [newcart[0],[-1,0],newcart[2]]
      when [-1,0]
        newcart = [newcart[0],[0,-1],newcart[2]]
      when [0,-1]
        newcart = [newcart[0],[1,0],newcart[2]]
      end
    end
  when '\\'
    case newcart[1]
    when [1,0]
      newcart = [newcart[0],[0,1],newcart[2]]
    when [0,1]
      newcart = [newcart[0],[1,0],newcart[2]]
    when [-1,0]
      newcart = [newcart[0],[0,-1],newcart[2]]
    when [0,-1]
      newcart = [newcart[0],[-1,0],newcart[2]]
    end
  when '/'
    case newcart[1]
    when [1,0]
      newcart = [newcart[0],[0,-1],newcart[2]]
    when [0,1]
      newcart = [newcart[0],[-1,0],newcart[2]]
    when [-1,0]
      newcart = [newcart[0],[0,1],newcart[2]]
    when [0,-1]
      newcart = [newcart[0],[1,0],newcart[2]]
    end
  end

  return newcart
end

input = File.read("day13_input.txt").chomp
puts day13(input)
