class Plateau 
  attr_accessor :x_max, :x_min, :y_max, :y_min

  def initialize(plateau_coordinates)
    max_values = plateau_coordinates.split
    @x_max = max_values[0].to_i
    @y_max = max_values[1].to_i
    @x_min = 0
    @y_min = 0
  end 

  def valid_move?(x, y)
    if (x <= @x_max) and (x >= @x_min) and (y <= @y_max) and (y >= @y_min)
      return true 
    else 
      abort("you tried to move off the plateau")
    end 
  end 

end 