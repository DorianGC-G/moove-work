class Reservation < ApplicationRecord
  belongs_to :place
  belongs_to :user

  validates :start_date, :end_date, :total_price, presence: true
end
