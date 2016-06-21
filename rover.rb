class Rover

  # the directions are a loop, passing through the next value depending on left or right
  DIRECTIONS = ["n", "e", "s", "w"]

  attr_accessor :x_coordinate, :y_coordinate, :direction


  def initialize(x_coordinate =0, y_coordinate = 0, direction = "N")
    @x_coordinate = x_coordinate.to_i
    @y_coordinate = y_coordinate.to_i
    @direction = direction
  end 

  def display_location
    "#{@x_coordinate} #{@y_coordinate} #{@direction}"
  end 


  def read_instructions(instruction_string) 
    instruction_string.upcase!
    instruction_string.each_char do |i|
      case i 
      when 'L' || 'R'
        turn(i)
      when 'M'
        move 
      when "EXIT" || "Q"
        break
      end 
      display_location
    end 
  end 

  def turn(direction)
    direction.upcase!
    if direction == "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "W"
        @direction = "S"
      elsif @direction == "E"
        @direction = "N"
      elsif @direction == "S"
        @direction = "E"
      else
        raise "Bad direction"
      end
    elsif direction == "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "W"
        @direction = "N"
      elsif @direction == "E"
        @direction = "S"
      elsif @direction == "S"
        @direction = "W"
      else
        raise "Bad direction"
      end
    end
  end 

  def move
    case @direction 
    when "N"
      @y_coordinate += 1
    when "S"
      @y_coordinate -= 1
    when "E"
      @x_coordinate += 1
    when "W"
      @x_coordinate -= 1
    end 
    # valid_move?(@x_coordinate, @y_coordinate)
  end
end 


