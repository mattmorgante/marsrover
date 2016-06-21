require 'rspec'
require_relative '../plateau'

describe Plateau do 
  #tests the initialize method
  it "should make a plateau with attributes" do 
    plateau = Plateau.new("5 5")
    expect(plateau.x_min).to eq 0
    expect(plateau.y_min).to eq 0
    expect(plateau.x_max).to eq 5
    expect(plateau.y_max).to eq 5
  end

  #tests the valid_move method
  it "expect to allow valid moves" do 
    plateau = Plateau.new("5 5")
    expect(plateau.valid_move?(3,4)).to be true
  end 

  it "expect to reject invalid moves" do 
    plateau = Plateau.new("5 5")
    expect(plateau.valid_move?(6,6)).to be false 
  end 


end 