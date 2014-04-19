class AddUserIdToRides < ActiveRecord::Migration
  def change
  	add_column :rides, :user_id, :integer
  	add_index :rides, :user_id
  	remove_column  :rides, :name
  end
end
