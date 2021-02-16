class Provider < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  has_many :reviews, through: :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :category, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: {minimum:5}
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 100,  only_integer: true }
  validates :opening_time, presence: true
  validates :closing_time, presence: true
  validates :neighborhood, presence:true
end
