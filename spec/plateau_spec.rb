require 'rspec'
require_relative '../plateau'

describe Plateau do 
  #tests the initialize method
  it "should make a plateau with attributes" do 
    plateau = Plateau.new("5 5")
    plateau.x_min.should == 0
    plateau.y_min.should == 0
    plateau.x_max.should == 5
    plateau.y_max.should == 5
  end

  #tests the valid_move method
  it "should allow valid moves" do 
    plateau = Plateau.new("5 5")
    plateau.valid_move?(3,4).should be true
  end 

  it "should reject invalid moves" do 
    plateau = Plateau.new("5 5")
    plateau.valid_move?(6,6). should be false 
  end 


end 