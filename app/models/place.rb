class Place < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :delete_all
  validates :city, :address, :categories, :renter, :max_capacity, :price_per_day, :size, presence: true
  validates :address, uniqueness: { case_sensitive: false }
  validates :categories, inclusion: { in: ["Open Spaces", "Work Spaces", "Meeting Rooms", "Peculiar Places"] }

  def available?(start_date, end_date)
    reservations.each do |reservation|
      return false if (reservation.start_date..reservation.end_date).overlaps?(start_date..end_date)
    end
    return true
  end

  def start_available?(start_date)
    reservations.each do |reservation|
      return false if (reservation.start_date..reservation.end_date).cover?(start_date)
    end
    return true
  end
end
