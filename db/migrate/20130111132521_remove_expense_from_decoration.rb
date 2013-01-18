class RemoveExpenseFromDecoration < ActiveRecord::Migration
  def up
    remove_column :decorations, :expense_name
      end

  def down
    add_column :decorations, :expense_name, :String
  end
end
