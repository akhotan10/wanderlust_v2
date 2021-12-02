class DiningExperience < ApplicationRecord
  enum type_of_dining: { "highend_restaurant" => 0, "casual_restaurant" => 1,
                         "food_truck" => 2, "street_food" => 3, "home_cooked_meal" => 4, "other" => 5 }

  # Direct associations

  has_many   :dishes,
             foreign_key: "dinings_id",
             dependent: :destroy

  belongs_to :location

  belongs_to :trip

  # Indirect associations

  # Validations

  validates :name, presence: { message: "Please enter a name" }

  validates :rating, presence: { message: "Please enter a rating" }

  validates :rating,
            numericality: { less_than_or_equal_to: 5,
                            greater_than_or_equal_to: 0 }

  validates :type_of_dining, presence: { message: "Please enter a type" }

  # Scopes

  def to_s
    name
  end
end
