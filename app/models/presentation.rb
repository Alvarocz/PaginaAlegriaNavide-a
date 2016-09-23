class Presentation < ApplicationRecord
  has_many :images

  validates :site, presence: true
  validates :date, presence: true
end
