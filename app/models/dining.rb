class Dining < ApplicationRecord
  enum dining_type: {"high_end_restaurant"=>0, "casual_restaurant"=>1, "food_truck"=>2, "street_food"=>3, "home_cooked_meal"=>4, "other"=>5} 

  # Direct associations

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dining_type
  end

end
