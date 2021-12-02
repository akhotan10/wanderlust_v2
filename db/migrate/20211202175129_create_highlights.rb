class CreateHighlights < ActiveRecord::Migration[6.0]
  def change
    create_table :highlights do |t|
      t.string :title
      t.text :description
      t.integer :trip_id

      t.timestamps
    end
  end
end
