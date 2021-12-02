require "rails_helper"

RSpec.describe DiningExperience, type: :model do
  describe "Direct Associations" do
    it { should have_many(:dishes) }

    it { should belong_to(:location) }

    it { should belong_to(:trip) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it {
      should validate_presence_of(:name).with_message("Please enter a name")
    }

    it {
      should validate_presence_of(:rating).with_message("Please enter a rating")
    }

    it {
      should validate_numericality_of(:rating).is_less_than(5).is_greater_than_or_equal_to(0)
    }

    it {
      should validate_presence_of(:type_of_dining).with_message("Please enter a type")
    }
  end
end
