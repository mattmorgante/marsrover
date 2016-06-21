require_relative 'rover.rb'
require_relative 'plateau.rb'

puts "What are the starting coordinates of the plateau?"
plateau_coordinates = gets.chomp

# plateau = Plateau.new(plateau_coordinates)

puts "What is the position and heading of the rover?"
start_position = gets.chomp

rover = Rover.new(plateau_coordinates, start_position)

puts "Send instructions, puny earthlings"
instructions = gets.chomp
rover.read_instructions(instructions)

puts rover.display_location