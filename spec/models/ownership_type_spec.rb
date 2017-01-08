require 'rails_helper'
require 'spec_helper'

RSpec.describe OwnershipType, type: :model do
  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:ownership_type)).to be_valid
    end
  end

  describe "when an ownership type is created" do
    it "is invalid without a numeric type id" do
      expect(FactoryGirl.build(:ownership_type, type_id: nil)).to_not be_valid
    end
    it "is invalid without a name" do
      expect(FactoryGirl.build(:ownership_type, name: nil)).to_not be_valid
    end
    it "is valid without a description" do
      expect(FactoryGirl.build(:ownership_type, description: nil)).to be_valid
    end
  end
end
