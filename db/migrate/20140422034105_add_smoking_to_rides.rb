class AddSmokingToRides < ActiveRecord::Migration
  def change
    add_column :rides, :smoking, :boolean
  end
end
