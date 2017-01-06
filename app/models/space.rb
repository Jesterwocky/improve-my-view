class Space < ApplicationRecord

  # validations-------------------------------------
  validates :owner, :name
    presence: true

  # associations-------------------------------------
  belongs_to :owner,
    class_name: :User,
    foreign_key: :owner_id

  has_many :space_type_associations

  has_many :types,
    through: :space_type_associations,
    source: :types
end
