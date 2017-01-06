class Ownership < ApplicationRecord

  # validations-------------------------------------
  validates :space_id, :owner_id, :ownership_type_id,
    presence: true

  # associations-------------------------------------
  belongs_to :space

  belongs_to :owner,
    class_name: :User,
    foreign_key: :owner_id

  belongs_to :ownership_type
end
