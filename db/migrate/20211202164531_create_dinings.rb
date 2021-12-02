class CreateDinings < ActiveRecord::Migration[6.0]
  def change
    create_table :dinings do |t|
      t.integer :dining_type
      t.string :dining_name
      t.integer :rating
      t.integer :location_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
