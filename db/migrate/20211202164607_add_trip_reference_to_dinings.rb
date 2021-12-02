class AddTripReferenceToDinings < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dinings, :trips
    add_index :dinings, :trip_id
    change_column_null :dinings, :trip_id, false
  end
end
