require 'spec_helper'

describe "expensesheets/new" do
  before(:each) do
    assign(:expensesheet, stub_model(Expensesheet,
      :name => "MyString",
      :amount => 1,
      :decoration_id => 1
    ).as_new_record)
  end

  it "renders new expensesheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expensesheets_path, :method => "post" do
      assert_select "input#expensesheet_name", :name => "expensesheet[name]"
      assert_select "input#expensesheet_amount", :name => "expensesheet[amount]"
      assert_select "input#expensesheet_decoration_id", :name => "expensesheet[decoration_id]"
    end
  end
end
