require 'rspec'
require_relative '../rover'

describe Rover do 
  #tests the initialize method
  it "should setup a rover with attributes" do 
    rover = Rover.new("5 5", "3 2 N")
    expect(rover.x_coordinate).to eq 3
    expect(rover.y_coordinate).to eq 2
    expect(rover.direction).to eq "N"
  end 

  # tests the display_location method
  it "should show me the location" do 
    rover = Rover.new("5 5", "3 2 N")
    expect(rover.display_location).to  eq "3 2 N"
  end

  describe "#move" do
    it "should move the y_coordinate up one if heading north" do
       rover = Rover.new("5 5", "2 2 N")
       expect(rover.move).to eq("2 3 N")
    end
  end

  describe "#valid_move?" do
    it "should not allow the rover to drive off the plateau" do
      rover = Rover.new("5 5", "5 5 N")
      expect(rover.valid_move?(6, 5)).to eq false
    end

    it "should allow the rover to move on the plateau" do
      rover = Rover.new("5 5", "4 4 N")
      expect(rover.valid_move?(4, 4)).to eq true
    end
  end


end 