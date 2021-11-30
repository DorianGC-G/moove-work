class Place < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :delete_all

  def available?(start_date, end_date)
    reservations.each do |reservation|
      return false if (reservation.start_date..reservation.end_date).overlaps?(start_date..end_date)
    end
    return true
  end
end
