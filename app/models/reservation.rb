class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flat


  validates :start_date, comparison: {less_than: :end_date}
  validate :check_maxi_guests

  def check_maxi_guests
    if num_of_guests.nil?
      errors.add(:num_of_guests, "Can't be blank")
    elsif num_of_guests.to_i <= 0
      errors.add(:num_of_guests, "Must be greater than 0")
    elsif num_of_guests.to_i > flat.occupancy
      errors.add(:num_of_guests, "Can't exceed #{flat.occupancy}")
    end
  end
end
