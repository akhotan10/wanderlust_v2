class Dish < ApplicationRecord
  # Direct associations

  belongs_to :dinings,
             :class_name => "Dining"

  # Indirect associations

  # Validations

  validates :name, :presence => { :message => "Please enter a dish name" }

  # Scopes

  def to_s
    name
  end

end
