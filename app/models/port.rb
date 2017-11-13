class Port < ApplicationRecord
  has_many :stops

  validates :name, :code, :country, presence: true
  validates :name, :code, uniqueness: true
end
