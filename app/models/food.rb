class Food < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  validates :name, presence: true

  def liked_by?(user)
    likes.any? { |like| like.user_id == user.id }
  end
end
