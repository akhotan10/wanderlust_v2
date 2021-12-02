class Trip < ApplicationRecord
  mount_uploader :cover_photo, CoverPhotoUploader

  # Direct associations

  belongs_to :user

  has_many   :highlights,
             dependent: :destroy

  has_many   :activities,
             dependent: :destroy

  has_many   :dinings,
             dependent: :destroy

  has_many   :locations,
             dependent: :destroy

  # Indirect associations

  # Validations

  validates :end_date, presence: { message: "Please enter an end date" }

  validates :start_date,
            presence: { message: "Please enter a start date" }

  validates :title, presence: { message: "Please enter a title" }

  # Scopes

  def to_s
    title
  end
end
