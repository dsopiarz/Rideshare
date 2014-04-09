class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :departlocation
      t.string :arrivelocation
      t.datetime :departtime
      t.datetime :arrivetime
      t.integer :seatsavailable
      t.decimal :costperseat
      t.text :preferences

      t.timestamps
    end
  end
end
