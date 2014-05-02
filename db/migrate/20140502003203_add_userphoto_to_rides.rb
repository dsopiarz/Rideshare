class AddUserphotoToRides < ActiveRecord::Migration
  def change
    add_column :rides, :userphoto, :string
  end
end
