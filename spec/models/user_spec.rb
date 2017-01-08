require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  describe "when user is created" do
    it "is invalid without an email address" do
      expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
    end
    it "is invalid without a password" do
      expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
    end
    it "is valid without a name" do
      expect(FactoryGirl.build(:user, name: nil)).to be_valid
    end
  end
end
