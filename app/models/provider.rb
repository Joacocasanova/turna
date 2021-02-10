class Provider < ApplicationRecord
  has_many :bookings

  validates :category, presence :true
  validates :name, presence :true
  validates :address, presence :true
  validates :description, presence :true, length: {minimum:5}
end
