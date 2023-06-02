class Flat < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :reservations
  validates :name, :address, :description, :occupancy, :price, presence: true
  validates :image_url, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
