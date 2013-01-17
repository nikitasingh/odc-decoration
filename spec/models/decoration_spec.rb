require 'spec_helper'
require 'factory_girl_rails'
describe Decoration do


it "should require a name" do
  Decoration.new(:name => "").should_not be_valid
end
 it "fails validation without unique decoration name" do
    name1 = FactoryGirl.create(:decoration)
    name2 = FactoryGirl.create(:decoration)
    name2.should have(1).error_on(:name)
end


  let(:decoration) { Decoration.new(:name => "test") }

  it "name should be test" do
     decoration.name.should == "test"
  end

   it "is invalid without a name" do
    decoration.name = nil
    decoration.valid?
    decoration.errors[:name].should include("can't be blank")
  end




  it "is valid by default" do
          decoration = mock("Decoration")
    decoration.should be_valid
  end

  it "says it is a Decoration" do
      decoration = mock("Decoration")
      decoration.should be_a(Decoration)
    end
end