class Provider < ApplicationRecord
  has_many_attached :photos
  has_many :reviews, through: :bookings
  has_many :services, dependent: :destroy
  has_many :bookings, through: :services, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  before_save :calculate_average

  scope :with_geocode, -> { where.not(latitude: nil, longitude: nil) }

  validates :category, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: {minimum:5}
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 100,  only_integer: true }
  validates :opening_time, presence: true
  validates :closing_time, presence: true
  validates :neighborhood, presence:true

  accepts_nested_attributes_for :services, reject_if: :all_blank

  def opens
    opening_time.strftime("%H:%M")
  end

  def closes
    closing_time.strftime("%H:%M")
  end

  def average_price(provider)
    precio = 0
    count = 0
    provider.services.each do |service|
      precio += service.price
      count += 1
    end
    if count != 0
      return (precio / count).round
    else
      return 0
    end
  end

  def calculate_average
    self.avg_price = average_price(self)
  end
end
