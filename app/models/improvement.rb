class Improvement < ApplicationRecord

  # validations-------------------------------------
  validates :space_view_id, :author_id,
    presence: true

  validate :space_view_exists?, on: save

  validate :user_exists?, on: save

  validates :description,
    presence: true,
    length: { minimum: 1 }

  def space_view_exists?
    SpaceView.find(space_view_id) ? true : false
  end

  def user_exists?
    User.find(author_id) ? true : false
  end

  # associations-------------------------------------
  belongs_to :space_view

  belongs_to :author,
    class_name: :User,
    foreign_key: :author_id

  has_one :space,
    through: :space_view,
    source: :space
end
