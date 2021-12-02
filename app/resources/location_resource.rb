class LocationResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :location_type, :string_enum, allow: Location.location_types.keys
  attribute :trip_id, :integer

  # Direct associations

  has_many   :dining_experiences

  belongs_to :trip

  # Indirect associations
end
