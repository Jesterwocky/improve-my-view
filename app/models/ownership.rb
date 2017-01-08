class Ownership < ApplicationRecord

  # validations-------------------------------------
  validates :space, :owner, :ownership_type,
    presence: true

  # associations-------------------------------------
  belongs_to :space

  belongs_to :owner,
    class_name: :User,
    foreign_key: :owner_id

  belongs_to :ownership_type
end
