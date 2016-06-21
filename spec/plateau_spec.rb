require_relative '../plateau'

describe Plateau do 

  it "should makes a plateau with attributes" do 
    plateau = Plateau.new("5 5")
    plateau.x_min.should == 0
    plateau.y_min.should == 0
    plateau.x_max.should == 5
    plateau.y_max.should == 5
  end


end 