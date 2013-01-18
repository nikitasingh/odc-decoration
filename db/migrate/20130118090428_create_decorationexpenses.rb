class CreateDecorationexpenses < ActiveRecord::Migration
  def change
    create_table :decorationexpenses do |t|
      t.string :name
      t.integer :amount
      t.integer :decoration_id

      t.timestamps
    end
  end
end
