class Stop < ApplicationRecord
  belongs_to :route
  belongs_to :port

  validates :route, :port, :arrival, presence: true
end
