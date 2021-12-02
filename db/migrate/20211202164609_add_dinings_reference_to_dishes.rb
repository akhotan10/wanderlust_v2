class AddDiningsReferenceToDishes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dishes, :dinings, column: :dinings_id
    add_index :dishes, :dinings_id
    change_column_null :dishes, :dinings_id, false
  end
end
