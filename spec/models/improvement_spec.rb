require 'rails_helper'
require 'spec_helper'

RSpec.describe Improvement, type: :model do
  it "requires a valid space view id on save"
  it "requires a valid author id on save"
  it "requires a valid description on save"
  it "returns the associated space view"
  it "returns the associated space"
  it "returns its author"
end
