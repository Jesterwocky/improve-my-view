require 'rails_helper'
require 'spec_helper'

RSpec.describe SpaceType, type: :model do
  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:space_type)).to be_valid
    end
  end

  describe "when a space type is created" do
    it "is invalid without a numeric id" do
      expect(FactoryGirl.build(:space_type, type_id: nil)).to_not be_valid
    end
    it "is invalid without a name" do
      expect(FactoryGirl.build(:space_type, name: nil)).to_not be_valid
    end
  end
end
