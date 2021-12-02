class Trip < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :title, :presence => { :message => "Please enter a title" }

  # Scopes

  def to_s
    title
  end

end
