class Rover 

  NORTH = 'N'
  EAST  = 'E'
  SOUTH = 'S'
  WEST  = 'W'
  HEADINGS = [NORTH, EAST, SOUTH, WEST]

  attr_accessor :x, :y, :heading

  def initialize(position, heading)
    position = position.split
    self.x = position[0].to_i
    self.y = position[1].to_i
    self.heading = position[2]
    @heading = heading
  end 

  def display_location
    "#{x} #{y} #{heading}"
  end 

end 