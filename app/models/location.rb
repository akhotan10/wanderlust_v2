class Location < ApplicationRecord
  enum location_type: { "country" => 0, "city" => 1, "neighborhood" => 2, "park" => 3,
                        "other" => 4 }

  # Direct associations

  has_many   :dinings,
             dependent: :destroy

  belongs_to :trip

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    location_type
  end
end
