class AddChildrenToRides < ActiveRecord::Migration
  def change
    add_column :rides, :children, :boolean
  end
end
