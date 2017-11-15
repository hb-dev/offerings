class Offering < ApplicationRecord
  belongs_to :route

  validates :title, :company, :route, :price, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: true
end
