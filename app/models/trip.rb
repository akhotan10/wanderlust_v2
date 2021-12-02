class Trip < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :end_date, :presence => { :message => "Please enter an end date" }

  validates :start_date, :presence => { :message => "Please enter a start date" }

  validates :title, :presence => { :message => "Please enter a title" }

  # Scopes

  def to_s
    title
  end

end
