class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :cover_photo
      t.date :start_date
      t.date :end_date
      t.string :photo_album_link
      t.integer :user_id

      t.timestamps
    end
  end
end
