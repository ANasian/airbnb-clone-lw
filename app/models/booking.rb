class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_many :reviews, dependent: :destroy

  validates :check_in, :check_out, presence: true
  validate :check_out_after_check_in

  private

  def check_out_after_check_in
    return if check_in.blank? || check_out.blank?

    if check_out < check_in
      errors.add(:check_out, "must be after the start date")
    end
  end
end
