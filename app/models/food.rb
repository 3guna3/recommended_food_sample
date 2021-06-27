class Food < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :name, presence: true
end
