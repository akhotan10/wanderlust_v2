class Location < ApplicationRecord
  enum location_type: { "country" => 0, "city" => 1, "neighborhood" => 2,
                        "nature_park" => 3, "other" => 4 }

  # Direct associations

  has_many   :dining_experiences,
             dependent: :destroy

  belongs_to :trip

  # Indirect associations

  # Validations

  validates :location_type, presence: { message: "Please select a type" }

  validates :name, presence: { message: "Please enter a name" }

  # Scopes

  def to_s
    name
  end
end
