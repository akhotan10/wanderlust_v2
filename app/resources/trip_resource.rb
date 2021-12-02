class TripResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :cover_photo, :string
  attribute :start_date, :date
  attribute :end_date, :date
  attribute :photo_album_link, :string
  attribute :user_id, :integer

  # Direct associations

  belongs_to :user

  has_many   :dining_experiences

  has_many   :locations

  has_many   :highlights

  has_many   :activities

  # Indirect associations
end
