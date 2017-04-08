class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.integer    :rider_id
      t.integer    :driver_id
      t.timestamps
    end
  end
end
