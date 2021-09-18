class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_many :reviews, dependent: :destroy

  validates :check_in, :check_out, presence: true
end
