class Place < ApplicationRecord
  belongs_to :user
  has_many :reservations

  def available?
    return "pouet"
  end
end
