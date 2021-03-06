require "rails_helper"

RSpec.describe Dish, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:dinings) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it {
      should validate_presence_of(:name).with_message("Please enter a dish name")
    }
  end
end
