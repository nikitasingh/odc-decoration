class AddZoneIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zone_id, :integer

  end
end
