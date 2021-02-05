class Post < ApplicationRecord

  mount_uploader :image, ImageUploader
  belongs_to :user
  has_one_attached :image


def total_likes
0
end
end
