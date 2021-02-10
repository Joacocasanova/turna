class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :provider

  validates :start_datetime, presence :true
  validates :end_datetime, presence :true
  validates :status, presence :true
end
