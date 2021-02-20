class Service < ApplicationRecord
  belongs_to :provider
  has_many :bookings

  validates :title, presence: true
  validates :price, presence: true
  validates :min_duration, presence: true
  has_one_attached :icon
end
