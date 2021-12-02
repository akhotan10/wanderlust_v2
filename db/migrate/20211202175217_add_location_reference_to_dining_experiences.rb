class AddLocationReferenceToDiningExperiences < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dining_experiences, :locations
    add_index :dining_experiences, :location_id
    change_column_null :dining_experiences, :location_id, false
  end
end
