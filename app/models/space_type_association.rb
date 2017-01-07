class SpaceTypeAssociation < ApplicationRecord
  belongs_to :spaces

  belongs_to :types
end
