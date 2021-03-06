class Booking < ApplicationRecord
  belongs_to :customer, foreign_key: "user_id", class_name: "User"
  belongs_to :service
  has_one :review, dependent: :destroy

  before_validation :set_end_datetime, if: :new_record?
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :status, presence: true

  private

  def set_end_datetime
    self.end_datetime = self.start_datetime + service.min_duration
  end
end
