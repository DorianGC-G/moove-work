class Reservation < ApplicationRecord
  belongs_to :place
  belongs_to :user
  validates :start_date, :end_date, :total_price, presence: true
  validates :status, inclusion: { in: ["Sent", "Validated", "Refused"] }
  validate :dates_available

  private

  def dates_available
    errors.add(:start_date, "This office is not available on those dates.") if (place.available?(start_date, end_date) == false)
  end
end
