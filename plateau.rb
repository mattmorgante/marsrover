class Plateau 
  attr_accessor :x_max, :x_min, :y_max, :y_min

  def initialize(x, y)
    @x_max = x.to_i
    @y_max = y.to_i
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