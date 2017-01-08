require 'rails_helper'
require 'spec_helper'

RSpec.describe Improvement, type: :model do
  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:improvement)).to be_valid
    end
  end

  describe "when an improvement is created" do
    it "is invalid without a space view" do
      expect(FactoryGirl.build(:improvement, space_view: nil)).to_not be_valid
    end
    it "is invalid without an author" do
      expect(FactoryGirl.build(:improvement, author: nil)).to_not be_valid
    end
    it "is invalid without a description" do
      expect(FactoryGirl.build(:improvement, description: nil)).to_not be_valid
    end
  end
end
