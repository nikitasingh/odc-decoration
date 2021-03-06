require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DecorationsController do

   include Devise::TestHelpers
	before :each do
    @user = User.create!(:email => 'abc@gmail.com', :password => 'password', :username => 'test', :password_confirmation => 'password')
  sign_in @user  


  end
describe "#new" do
    it "must take 4 parameter and returns a decoration object" do
    	 get "new"
        @decorations=Decoration.new(:name=>'decoration',:year=>'2012',:zone_id=>'1',:expense=> File.new(Rails.root + 'spec/fixtures/test.xls'))
       @decorations.should be_an_instance_of Decoration

    end
end

describe "#show" do
	it "must take decoration id and render show page of decoration" do 

    @decorations=Decoration.create!(:name=>'decoration',:year=>'2012')
		get "show",:id=>@decorations.id
		response.should render_template(:action => 'show')

end
end


describe "#home" do 
	it "it takes nothing as input and render users tasks with decoration and zones" do
		get "home"


      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @decorations }
      response.should render_template(:action => 'index')
    end
  end
end
describe "#update" do
  it "must take decoration id and render show page of decoration" do 

    @decorations=Decoration.create!(:name=>'decoration',:year=>'2012')
		get "update",:id=>@decorations.id
		response.should render_template(:action => 'edit')

end
end


end