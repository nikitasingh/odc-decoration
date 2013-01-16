require 'spec_helper'
describe Decoration do

  before do
    @decoration = Decoration.new
  end

  it "must have a name" do
  	 @decorations=Decoration.new(:name=>'decoration',:year=>'2012',:zone_id=>'1',:expense=> File.new(Rails.root + 'spec/fixtures/test.xls'))
    @decoration.errors[:name].should_not be_empty
  end



  #it { should validate_presence_of(:name) }
end