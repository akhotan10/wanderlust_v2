class DiningResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dining_type, :string_enum, allow: Dining.dining_types.keys
  attribute :dining_name, :string
  attribute :rating, :integer
  attribute :location_id, :integer
  attribute :trip_id, :integer

  # Direct associations

  belongs_to :trip

  # Indirect associations

end
