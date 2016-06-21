require_relative 'rover.rb'
require_relative 'plateau.rb'

puts "What is the X coordinate of the plateau?"

x_max = gets.chomp.to_i

puts "What is the Y coordinate of the plateau?"

y_max = gets.chomp.to_i

plateau = Plateau.new(x_max, y_max)

puts "What is the X coordinate of the rover?"
x_coordinate = gets.chomp.to_i

puts "What is the Y coordinate of the rover?"
y_coordinate = gets.chomp.to_i

puts "What is the heading of the rover?"
direction = gets.chomp

rover = Rover.new(x_coordinate, y_coordinate, direction)

puts "Send instructions, puny earthlings"
instructions = gets.chomp
rover.read_instructions(instructions)

puts rover.display_location