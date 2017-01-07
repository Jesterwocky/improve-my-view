class Ownership < ApplicationRecord

  # validations-------------------------------------
  validates :space_id, :owner_id, :ownership_type_id,
    presence: true

  validate :space_view_exists?

  validate :user_exists?

  validate :ownership_type_exists?

  def space_exists?
    Space.find(space_id) ? true : false
  end

  def user_exists?
    User.find(owner_id) ? true : false
  end

  def ownership_type_exists?
    OwnershipType.find(ownership_type_id) ? true : false
  end

  # associations-------------------------------------
  belongs_to :space

  belongs_to :owner,
    class_name: :User,
    foreign_key: :owner_id

  belongs_to :ownership_type
end
