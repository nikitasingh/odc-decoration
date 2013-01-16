require 'spec_helper'

describe "expensesheets/edit" do
  before(:each) do
    @expensesheet = assign(:expensesheet, stub_model(Expensesheet,
      :name => "MyString",
      :amount => 1,
      :decoration_id => 1
    ))
  end

  it "renders the edit expensesheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expensesheets_path(@expensesheet), :method => "post" do
      assert_select "input#expensesheet_name", :name => "expensesheet[name]"
      assert_select "input#expensesheet_amount", :name => "expensesheet[amount]"
      assert_select "input#expensesheet_decoration_id", :name => "expensesheet[decoration_id]"
    end
  end
end
