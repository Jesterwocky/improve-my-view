class Space < ApplicationRecord

  # validations-------------------------------------
  validates :owner_id,
    presence: true

  validate :owner_exists?, on: save

  validates :name,
    presence: true,
    length: { in: 1..20 }

  def owner_exists?
    User.find(owner_id) ? true : false
  end

  # associations-------------------------------------
  belongs_to :owner,
    class_name: :User,
    foreign_key: :owner_id

  has_many :space_type_associations

  has_many :types,
    through: :space_type_associations,
    source: :types
end
