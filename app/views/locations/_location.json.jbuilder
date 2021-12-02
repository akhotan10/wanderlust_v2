json.extract! location, :id, :location_type, :location_name, :trip_id,
              :created_at, :updated_at
json.url location_url(location, format: :json)
