json.extract! trip, :id, :title, :cover_photo, :start_date, :end_date,
              :photo_album_link, :user_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
