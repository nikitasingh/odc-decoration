class AddExpenseNameToDecorations < ActiveRecord::Migration
  def change
    add_column :decorations, :expense_name, :string

  end
end
