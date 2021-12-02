class CreateDiningExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :dining_experiences do |t|
      t.string :name
      t.integer :type_of_dining
      t.integer :rating
      t.integer :location_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
