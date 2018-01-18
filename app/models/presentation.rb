class Presentation < ApplicationRecord
  validates :site, presence: true
  validates :datetime, presence: true
end
