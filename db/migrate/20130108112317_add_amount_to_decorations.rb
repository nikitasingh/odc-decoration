class AddAmountToDecorations < ActiveRecord::Migration
  def change
    add_column :decorations, :amount, :integer

  end
end
