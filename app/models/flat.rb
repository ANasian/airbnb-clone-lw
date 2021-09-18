class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, :address, :description, :city, :price, :size, presence: true
  validates :size, numericality: { only_integer: true, grather_than: 0 }  
  validates :price, numericality: { grather_than: 0 } 
end
