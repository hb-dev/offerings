class Route < ApplicationRecord
  has_many :offerings
  has_many :stops

  validates :name, presence: true, uniqueness: true
end
