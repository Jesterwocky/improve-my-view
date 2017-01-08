class Improvement < ApplicationRecord

  # validations-------------------------------------
  validates :space_view, :author,
    presence: true

  validates :description,
    presence: true,
    length: { minimum: 1 }

  # associations-------------------------------------
  belongs_to :space_view

  belongs_to :author,
    class_name: :User,
    foreign_key: :author_id

  has_one :space,
    through: :space_view,
    source: :space
end
