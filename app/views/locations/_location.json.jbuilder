json.extract! location, :id, :name, :location_type, :trip_id, :created_at,
              :updated_at
json.url location_url(location, format: :json)
