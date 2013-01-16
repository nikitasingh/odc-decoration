class AddDecorationIdToTotalExpenses < ActiveRecord::Migration
  def change
    add_column :total_expenses, :decoration_id, :integer

  end
end
