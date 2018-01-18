class Message < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minumum: 4, maximum: 80 }
  validates :email, presence: true
  validates :text, presence: true
end
