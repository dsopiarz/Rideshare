class AddDisabledToUsers < ActiveRecord::Migration
  def change
    add_column :users, :disabled, :boollean
  end
end
