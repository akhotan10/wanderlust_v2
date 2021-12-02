class AddTripReferenceToDiningExperiences < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dining_experiences, :trips
    add_index :dining_experiences, :trip_id
    change_column_null :dining_experiences, :trip_id, false
  end
end
