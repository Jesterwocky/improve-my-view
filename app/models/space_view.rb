class SpaceView < ApplicationRecord

  # validations-------------------------------------
  validates :space_id, :owner_id, :image,
    presence: true

  # associations-------------------------------------
  belongs_to :space

  belongs_to :owner,
    class_name: :User,
    foreign_key: :owner_id
end
