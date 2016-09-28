class Video < ApplicationRecord
  validates :title, presence: true
  validates :route, presence: true
end
