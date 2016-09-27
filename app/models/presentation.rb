class Presentation < ApplicationRecord 
  validates :site, presence: true
  validates :datetime, presence: true
  validates :p_type, presence: true
  validates :p_type, inclusion: { in: ["Público", "Privado"] }
end
