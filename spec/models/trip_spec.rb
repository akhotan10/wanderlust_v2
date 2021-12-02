require 'rails_helper'

RSpec.describe Trip, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:start_date).with_message('Please enter a start date') }

    it { should validate_presence_of(:title).with_message('Please enter a title') }

    end
end
