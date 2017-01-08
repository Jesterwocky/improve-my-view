require 'rails_helper'
require 'spec_helper'

RSpec.describe SpaceView, type: :model do
  describe "testing setup" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:space_view)).to be_valid
    end
  end
  
  describe "when a space is created" do
    it "is invalid without a space" do
      expect(FactoryGirl.build(:space_view, space: nil)).to_not be_valid
    end
    it "is invalid without an owner" do
      expect(FactoryGirl.build(:space_view, owner: nil)).to_not be_valid
    end
    it "is invalid without an image" do
      expect(FactoryGirl.build(:space_view,
        image_file_name: nil,
        image_content_type: nil,
        image_file_size: nil,
        image_updated_at: nil
      )).to_not be_valid
    end
  end
end
