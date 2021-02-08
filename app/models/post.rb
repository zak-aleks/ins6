class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :comments
  validates :image, presence: true
end
