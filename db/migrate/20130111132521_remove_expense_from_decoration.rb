class RemoveExpenseFromDecoration < ActiveRecord::Migration
  def up
    remove_column :decorations, :Expense
      end

  def down
    add_column :decorations, :Expense, :String
  end
end
