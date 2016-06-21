require 'rspec'
require_relative '../rover'

describe Rover do 
  #tests the initialize method
  it "should setup a rover with attributes" do 
    rover = Rover.new("3", "2", "N")
    expect(rover.x_coordinate).to eq 3
    expect(rover.y_coordinate).to eq 2
    expect(rover.direction).to eq "N"
  end 

  # tests the display_location method
  it "should show me the location" do 
    rover = Rover.new("3", "2", "N")
    expect(rover.display_location).to  eq "3 2 N"
  end 

end 