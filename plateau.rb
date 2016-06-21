class Plateau 
  attr_accessor :x_max, :x_min, :y_max, :y_min

  def initialize(corner)
    self.x_min = 0 
    self.y_min = 0
    coordinates = corner.split
    self.x_max = coordinates[0].to_i
    self.y_max = coordinates[1].to_i
  end 

  def valid_move?(x, y)
    if (x <= x_max) and (x >= x_min) and (y <= y_max) and (y >= y_min)
      return true 
    else 
      return false
    end 
  end 

  def collide?(rover)


end 