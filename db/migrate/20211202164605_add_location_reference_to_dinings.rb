class AddLocationReferenceToDinings < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dinings, :locations
    add_index :dinings, :location_id
    change_column_null :dinings, :location_id, false
  end
end
