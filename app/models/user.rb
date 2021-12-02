class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :trips,
             dependent: :destroy

  # Indirect associations

  # Validations

  validates :full_name,
            presence: { message: "Please enter your full name" }

  # Scopes

  def to_s
    full_name
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
