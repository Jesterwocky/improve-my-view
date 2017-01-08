require 'rails_helper'
require 'spec_helper'

RSpec.describe SpaceTypeAssociation, type: :model do

  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:space_type_association)).to be_valid
    end
  end

  describe "when a space/type association is created" do
    it "is invalid without a space" do
      expect(FactoryGirl.build(:space_type_association, space: nil)).to_not be_valid
    end
    it "is invalid without a type" do
      expect(FactoryGirl.build(:space_type_association, space_type: nil)).to_not be_valid
    end
  end
end
