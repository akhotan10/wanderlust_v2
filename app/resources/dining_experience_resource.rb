class DiningExperienceResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :type_of_dining, :string_enum,
            allow: DiningExperience.type_of_dinings.keys
  attribute :rating, :integer
  attribute :location_id, :integer
  attribute :trip_id, :integer

  # Direct associations

  has_many   :dishes,
             foreign_key: :dinings_id

  belongs_to :location

  belongs_to :trip

  # Indirect associations
end
