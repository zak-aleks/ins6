class Post < ApplicationRecord

  mount_uploader :image, ImageUploader
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy
  validates :image, presence: true

end
