class RemoveAmountFromDecoration < ActiveRecord::Migration
  def up
    remove_column :decorations, :Amount
      end

  def down
    add_column :decorations, :Amount, :Integer
  end
end
