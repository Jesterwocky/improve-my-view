class SpaceType < ApplicationRecord
  validates :type_id, :name,
    presence: true,
    uniqueness: true

  has_many :space_type_associations

  has_many :spaces,
    through: :space_type_associations,
    source: :spaces
end
