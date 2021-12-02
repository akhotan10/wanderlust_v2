class AddTripReferenceToLocations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :locations, :trips
    add_index :locations, :trip_id
    change_column_null :locations, :trip_id, false
  end
end
