class Reservation < ApplicationRecord
  belongs_to :offer, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
