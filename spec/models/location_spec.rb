require "rails_helper"

RSpec.describe Location, type: :model do
  describe "Direct Associations" do
    it { should have_many(:dining_experiences) }

    it { should belong_to(:trip) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it {
      should validate_presence_of(:location_type).with_message("Please select a type")
    }

    it {
      should validate_presence_of(:name).with_message("Please enter a name")
    }
  end
end
