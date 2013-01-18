class RemoveAmountFromDecoration < ActiveRecord::Migration
  def up
    remove_column :decorations, :amount
      end

  def down
    add_column :decorations, :amount, :Integer
  end
end
