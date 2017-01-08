require 'rails_helper'
require 'spec_helper'

RSpec.describe Space, type: :model do
  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:space)).to be_valid
    end
  end

  describe "when a space is created" do
    it "is invalid without an owner" do
      expect(FactoryGirl.build(:space, owner: nil)).to_not be_valid
    end
    it "is invalid without a name" do
      expect(FactoryGirl.build(:space, name: nil)).to_not be_valid
    end
  end
end
