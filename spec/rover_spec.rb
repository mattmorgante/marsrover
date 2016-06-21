require 'rspec'
require_relative '../rover'

describe Rover do 
  #tests the initialize method
  it "should setup a rover with attributes" do 
    rover = Rover.new("3 2 N")
    rover.x.should == 3
    rover.y.should == 2
    rover.heading.should == "N"
  end 

  # tests the display_location method
  it "should show me the location" do 
    rover = Rover.new("3 2 N")
    rover.display_location.should == "3 2 N"
  end 

end 