class Provider < ApplicationRecord
  has_many :bookings
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :category, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: {minimum:5}
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 100,  only_integer: true }
end
