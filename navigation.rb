class Navigation

  NORTH = 'N'
  EAST  = 'E'
  SOUTH = 'S'
  WEST  = 'W'
  DIRECTIONS = [NORTH, EAST, SOUTH, WEST]

  def move(rover, plateau, commands)
    results = []

    commands.split('').each do |command|
      command = command.downcase 
      if command == 'l' 
        # rotate rover left, West becomes South, South becomes East, East becomes North, North becomes West
      elsif command == "r"
        # rotate rover right
        # --> 
      elsif command = "m"
        rover.x, rover.y = move(rover.x, rover.y, rover.heading, plateau)
        # move forward one space
      end 
    end 
  end 

  def move(x, y, direction, plateau)
    x_new = x
    y_new = y

    case mover 
      when "N" then y_new = y+1
      when "S" then y_new = y-1
      when "E" then x_new = x+1
      when "W" then x_new = x-1
    end 

    if !plateau.valid_move? 
      abort("This is not a valid move")
      return x, y
    else 
      return x_new, y_new
    end 
    
    def rotate(previous_direction, command)
    end 
end 