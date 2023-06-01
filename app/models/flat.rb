class Flat < ApplicationRecord
  belongs_to :user
  has_many :reservations
  validates :name, :address, :description, :occupancy, :price, presence: true
end
