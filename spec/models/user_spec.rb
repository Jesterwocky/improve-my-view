require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it "has a valid factory"
  it "requires a valid email address to save"
  it "requires a valid password to save"
  it "sets the current session user on save"
  it "returns user-owned spaces"
  it "returns user-uploaded views"
  it "returns user-authored improvements"
end
