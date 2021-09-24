class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :title, :address, :description, :city, :price, :size, presence: true
  validates :size, numericality: { only_integer: true, grather_than: 0 }  
  validates :price, numericality: { grather_than: 0 } 

  # creates a range of unvailable dates for the specific instance of the flat
  def unavailable_dates
    bookings.pluck(:check_in, :check_out).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
