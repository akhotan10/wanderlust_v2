require 'rails_helper'

RSpec.describe Dining, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:dining_name).with_message('Please enter a name') }

    it { should validate_presence_of(:dining_type).with_message('Please select a type') }

    it { should validate_presence_of(:rating).with_message('Please enter a rating') }

    end
end
