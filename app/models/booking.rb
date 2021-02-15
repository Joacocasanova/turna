class Booking < ApplicationRecord
  belongs_to :customer, foreign_key: "user_id", class_name: "User"
  belongs_to :provider
  has_many :reviews, dependent: :destroy

  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :status, presence: true
end
