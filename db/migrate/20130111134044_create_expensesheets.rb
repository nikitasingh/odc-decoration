class CreateExpensesheets < ActiveRecord::Migration
  def change
    create_table :expensesheets do |t|
      t.string :name
      t.integer :amount
      t.integer :decoration_id

      t.timestamps
    end
  end
end
