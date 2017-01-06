class OwnershipType < ApplicationRecord
  validates :type_id, :name,
    presence: true
end
