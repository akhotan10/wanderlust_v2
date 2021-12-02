json.extract! dining_experience, :id, :name, :type_of_dining, :rating,
              :location_id, :trip_id, :created_at, :updated_at
json.url dining_experience_url(dining_experience, format: :json)
