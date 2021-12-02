class Dining < ApplicationRecord
  enum dining_type: { "high_end_restaurant" => 0, "casual_restaurant" => 1,
                      "food_truck" => 2, "street_food" => 3, "home_cooked_meal" => 4, "other" => 5 }

  # Direct associations

  has_many   :dishes,
             foreign_key: "dinings_id",
             dependent: :destroy

  belongs_to :location

  belongs_to :trip

  # Indirect associations

  # Validations

  validates :dining_name, presence: { message: "Please enter a name" }

  validates :dining_type, presence: { message: "Please select a type" }

  validates :rating, presence: { message: "Please enter a rating" }

  # Scopes

  def to_s
    dining_type
  end
end
