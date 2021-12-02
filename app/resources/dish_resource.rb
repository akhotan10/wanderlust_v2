class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :dinings_id, :integer

  # Direct associations

  belongs_to :dinings,
             resource: DiningResource

  # Indirect associations
end
