class Booking < ApplicationRecord
  belongs_to :customer, foreign_key: "user_id", class_name: "User"
  belongs_to :service
  has_one :review, dependent: :destroy

  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :status, presence: true
end
