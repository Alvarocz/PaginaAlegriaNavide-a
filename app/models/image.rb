class Image < ApplicationRecord
  #validates :presentation_id, numericality: { only_integer: true }
  validates :route, presence: true

  mount_uploader :route, ImagenUploader
end
