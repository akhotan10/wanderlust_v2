class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :location_type
      t.string :location_name
      t.integer :trip_id

      t.timestamps
    end
  end
end
