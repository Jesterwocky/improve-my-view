require 'rails_helper'
require 'spec_helper'

RSpec.describe Ownership, type: :model do
  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:ownership)).to be_valid
    end
  end

  describe "when an ownership is created" do
    it "is invalid without a space" do
      expect(FactoryGirl.build(:ownership, space: nil)).to_not be_valid
    end
    it "is invalid without an owner" do
      expect(FactoryGirl.build(:ownership, owner: nil)).to_not be_valid
    end
    it "is invalid without an ownership (permission) type" do
      expect(FactoryGirl.build(:ownership, ownership_type: nil)).to_not be_valid
    end
  end
end
