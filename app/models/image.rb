class Image < ApplicationRecord
  belongs_to :presentation

  validates :presentation_id, presence: true
  validates :presentation_id, numericality: { only_integer: true }
  validates :route, presence: true
end
