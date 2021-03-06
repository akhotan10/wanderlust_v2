require "rails_helper"

RSpec.describe Trip, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user) }

    it { should have_many(:dining_experiences) }

    it { should have_many(:locations) }

    it { should have_many(:highlights) }

    it { should have_many(:activities) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it {
      should validate_presence_of(:end_date).with_message("Please enter an end date")
    }

    it {
      should validate_presence_of(:start_date).with_message("Please enter a start date")
    }

    it {
      should validate_presence_of(:title).with_message("Please enter a title")
    }
  end
end
