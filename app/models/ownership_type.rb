class OwnershipType < ApplicationRecord
  validates :type_id,
    presence: true,
    uniqueness: true

  validates :name,
    presence: true,
    uniqueness: true,
    length: { in: 1..20 }
end
