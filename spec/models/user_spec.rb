require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:trips) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it {
      should validate_presence_of(:full_name).with_message("Please enter your full name")
    }
  end
end
