require 'spec_helper'

describe "expensesheets/show" do
  before(:each) do
    @expensesheet = assign(:expensesheet, stub_model(Expensesheet,
      :name => "Name",
      :amount => 1,
      :decoration_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
