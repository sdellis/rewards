require "spec_helper"

describe Kid do 
  before do
        @c1 = Chore.create(title: "brush teeth", points: "1", kid_id: subject.id)
        @c2 = Chore.create(title: "make bed", points: "5", kid_id: subject.id)
        subject.debt = 1
  end
  describe ".total_points" do     
      it "should display the sum of all the kid's chore points minus debt" do
        subject.chores << @c1
        subject.chores << @c2
        subject.total_points.should == 5
      end
  end 

  describe ".spend" do
      
      it "should add any number of points to debt" do
        subject.spend(5)
        subject.debt.should == 6
      end

  end 
end