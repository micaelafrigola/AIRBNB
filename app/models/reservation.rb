class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flat


  validates :start_date, comparison: {less_than: :end_date}
  validate :check_maxi_guests

  def check_maxi_guests
    errors.add(:num_of_guests, "Can't exceed #{flat.occupancy} guests") if num_of_guests.to_i > flat.occupancy || num_of_guests.nil?
  end
end
