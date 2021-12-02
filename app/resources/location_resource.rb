class LocationResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :location_type, :string_enum, allow: Location.location_types.keys
  attribute :location_name, :string
  attribute :trip_id, :integer

  # Direct associations

  # Indirect associations

end