class SpaceTypeAssociation < ApplicationRecord
  validates :space, :space_type,
    presence: true

  belongs_to :space

  belongs_to :space_type
end
