class Plateau 
  attr_accessor :x_max, :x_min, :y_max, :y_min

  def initialize(corner)
    self.x_min = 0 
    self.y_min = 0
    coordinates = corner.split
    self.x_max = coordinates[0].to_i
    self.y_max = coordinates[1].to_i
  end 

  
end 