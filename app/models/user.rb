class User < ApplicationRecord
  # Handles validation of password (and password confirmation)
  # if you choose to use it)
  has_secure_password

  before_save :ensure_name

  # validations-------------------------------------
  validates :name, on: :save,
    presence: true,
    length: { in: 1..20 }

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

  private
  def ensure_name
    self.name = self.email[0..20] if self.name.nil?
  end
end
