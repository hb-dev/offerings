class Port < ApplicationRecord
  validates :name, :code, :country, presence: true
  validates :name, :code, uniqueness: true
end
