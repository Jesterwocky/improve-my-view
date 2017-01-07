class User < ApplicationRecord
  # Handles validation of password (and password confirmation)
  # if you choose to use it)
  has_secure_password

  # validations-------------------------------------
  validates :name,
    presence: true,
    length: { in: 1..20, allow_nil: true }

  validates :email,
    presence: true,
    uniqueness: true

  # associations-------------------------------------
  has_many :ownerships,
    foreign_key: :owner_id

  has_many :improvements,
    foreign_key: :author_id

  has_many :space_views,
    foreign_key: :owner_id

  has_many :created_spaces,
    class_name: :Space,
    foreign_key: :owner_id

  has_many :owned_spaces,
    through: :ownerships,
    source: :space

  has_many :contributor_spaces,
    through: :improvements,
    source: :space
end
