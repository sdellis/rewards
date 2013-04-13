require "spec_helper"

describe ChoresController do 
    before do
        @k = Kid.create(name: 'Dylan', image: 'http://sdellis.com/dylan.jpg', dob: '7/5/2005' )
    end

    describe ".create" do
        describe "When kid_id is provided" do
            it "should create a chore and associate it with kid" do

                post :create, kid_id: @k.id, chore: {points: "1", title: "Make Bed"}
                response.should redirect_to kids_path()
                assigns[:chore].should be_kind_of Chore
                assigns[:chore].kid.should == @k

            end
        end
    end

end