require "spec_helper"

describe Kid do 
  describe ".total_points" do
      before do
        @c1 = Chore.create(title: "brush teeth", points: "1", kid_id: subject.id)
        @c2 = Chore.create(title: "make bed", points: "5", kid_id: subject.id)
      end
      it "should list the sum of all the kid's chore points" do
        subject.chores << @c1
        subject.chores << @c2
        subject.total_points.should == 6
      end
  end  
end