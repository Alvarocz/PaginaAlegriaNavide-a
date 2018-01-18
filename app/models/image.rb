class Image < ApplicationRecord
  attr_accessor :title, :bytes, :image, :image_cache

  mount_uploader :image, ImageUploader
  validates :image, presence: true
end
