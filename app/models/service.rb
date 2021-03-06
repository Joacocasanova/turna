class Service < ApplicationRecord
  belongs_to :provider
  has_many :bookings
  monetize :price_cents

  validates :title, presence: true
  validates :price, presence: true
  validates :min_duration, presence: true
  has_one_attached :icon

  def available_time_slots(date)
    time_slots = []
    time_interval = min_duration
    opening = provider.opening_time
    closing = provider.closing_time
    while opening < closing
      time_slots << opening
      opening += time_interval.minutes
    end
    time_slots = time_slots.map do |time|
      time.strftime("%H:%M")
    end
    blocked_time_slots = bookings.where("start_datetime::TIMESTAMP::DATE = ?", date).pluck(:start_datetime).map do |time|
      time.strftime("%H:%M")
    end
    time_slots - blocked_time_slots
  end
end
