class SpaceView < ApplicationRecord

  # validations-------------------------------------
  validates :space, :owner,
    presence: true

  has_attached_file :image
  validates_attachment_presence :image

  # associations-------------------------------------
  belongs_to :space

  belongs_to :owner,
    class_name: :User,
    foreign_key: :owner_id
end
